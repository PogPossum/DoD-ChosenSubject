import pyodbc
from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(title="Ashii's Arcade API")

# Allow your frontend HTML file to read data from this API
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"], 
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Microsoft SQL Server Connection Configuration
CONNECTION_STRING = (
    "DRIVER={ODBC Driver 18 for SQL Server};"
    "SERVER=192.168.x.x;" 
    "DATABASE=ArcadeBlockade;"
    "UID=user;"
    "PWD=Password1;"
    "TrustServerCertificate=yes;"
    "Encrypt=no;" 
)

def get_db_cursor():
    """Helper function to safely open a database connection."""
    try:
        conn = pyodbc.connect(CONNECTION_STRING)
        return conn, conn.cursor()
    except Exception as e:
        print(f"Database Connection Error: {e}")
        raise HTTPException(status_code=500, detail="Internal server database error")

# --- API ROUTES ---

@app.get("/api/game")
def get_all_games():
    conn, cursor = get_db_cursor()
    
    query = """
        SELECT G.ID, G.Title, G.Release, C.Console AS ConsoleName 
        FROM Game G
        INNER JOIN Console C ON G.ConID = C.ConID
    """
    cursor.execute(query)
    
    columns = [column[0] for column in cursor.description]
    results = [dict(zip(columns, row)) for row in cursor.fetchall()]
    
    conn.close()
    return {"status": "SUCCESS", "count": len(results), "data": results}


@app.get("/api/console")
def get_all_consoles():
    conn, cursor = get_db_cursor()
    
    cursor.execute("SELECT ConID, Console, Company FROM Console")
    
    columns = [column[0] for column in cursor.description]
    results = [dict(zip(columns, row)) for row in cursor.fetchall()]
    
    conn.close()
    return {"status": "SUCCESS", "count": len(results), "data": results}


@app.get("/api/search")
def search_arcade(q: str = ""):
    if not q:
        return {"status": "SUCCESS", "data": []}
        
    conn, cursor = get_db_cursor()
    
    query = """
        SELECT (G.Title + ' (' + CAST(G.Release AS VARCHAR(4)) + ') [' + TRIM(C.Console) + ']') AS Name, 
               'Game' AS Type, 
               G.Release AS SortYear
        FROM Game G
        INNER JOIN Console C ON G.ConID = C.ConID
        WHERE G.Title LIKE ? OR C.Console LIKE ?
        
        UNION ALL
        
        SELECT (Console + ' - ' + Company) AS Name, 
               'Console' AS Type, 
               9999 AS SortYear
        FROM Console 
        WHERE Console LIKE ?
        
        ORDER BY SortYear ASC, Name ASC
    """
    search_term = f"%{q}%"
    
    cursor.execute(query, (search_term, search_term, search_term))
    
    columns = [column[0] for column in cursor.description]
    results = [dict(zip(columns, row)) for row in cursor.fetchall()]
    
    conn.close()
    return {"status": "SUCCESS", "query": q, "data": results}
