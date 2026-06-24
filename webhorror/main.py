from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
import pypyodbc as odbc # Or whatever driver your arcade uses (pyodbc / pymssql)

app = FastAPI()

# Enable CORS so your frontend can communicate with it
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

CONNECTION_STRING = (
    "DRIVER={ODBC Driver 18 for SQL Server};"
    "SERVER=x.x.x.x;" 
    "DATABASE=HorrorDatabase;"
    "UID=user;"
    "PWD=Password1;"
    "TrustServerCertificate=yes;"
    "Encrypt=no;" 
)

def get_db_connection():
    try:
        return odbc.connect(CONNECTION_STRING)
    except Exception as e:
        print(f"Database connection failed: {e}")
        return None

# 2. API Endpoint: Fetch all movies joined with their genres
@app.get("/api/movies")
def get_movies_by_genre():
    conn = get_db_connection()
    if not conn:
        raise HTTPException(status_code=500, detail="Database connection error")
    
    cursor = conn.cursor()
    
    query = """
        SELECT 
            m.MovieID, 
            RTRIM(m.Title) as Title, 
            RTRIM(m.Director) as Director, 
            m.Release, 
            RTRIM(m.MovieMonster) as MovieMonster, 
            RTRIM(m.CreatureFeature) as CreatureFeature,
            STRING_AGG(RTRIM(g.GenreName), ', ') WITHIN GROUP (ORDER BY g.GenreName ASC) as GenreName
        FROM Movies m
        INNER JOIN MovieGenres mg ON m.MovieID = mg.MovieID
        INNER JOIN Genres g ON mg.GenreID = g.GenreID
        GROUP BY 
            m.MovieID, 
            m.Title, 
            m.Director, 
            m.Release, 
            m.MovieMonster, 
            m.CreatureFeature
        ORDER BY 
            Title ASC
    """
    
    try:
        cursor.execute(query)
        columns = [column[0] for column in cursor.description]
        rows = cursor.fetchall()
        
        results = []
        for row in rows:
            results.append(dict(zip(columns, row)))
            
        return {"status": "SUCCESS", "data": results}
        
    except Exception as e:
        print(f"Query execution failed: {e}")
        raise HTTPException(status_code=500, detail=str(e))
    finally:
        cursor.close()
        conn.close()
