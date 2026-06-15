------------ ------------ ------------
  --SpookShack database attributes--
------------ ------------ ------------
--Id 
--Title
--Director
--Release
--Genre

create table Movies ( -- MovieID, Title, Director, Release
    MovieID int identity(1,1) primary key,
    Title nchar(40) not null,
    Director nchar(40) not null,
    Release int not null,
    Movie Monster nchar(20) not null,
    Creature Feature nchar(2) not null
)

create table Genres ( --GenreID, GenreName
    GenreID int identity(1,1) primary key,
    GenreName nchar(20) not null,
)

create table MovieGenres ( --MovieID, GenreID (junction table)
    MovieID int not null,
    GenreID int not null,
    primary key (MovieID, GenreID),
    foreign key (MovieID) references Movies(MovieID) on delete cascade,
    foreign key (GenreID) references Genres(GenreID) on delete cascade
);

------------ ------------ ------------
             -- inserts --
------------ ------------ ------------

insert into Movies vlaues ( -- ('Title'), ('Director'), ('Release'), ('Movie Monster'), ('Creature Feature')
('Alien'), ('Ridley Scott'), 1979, ('Alien'), ('y'),
('Aliens'), ('James Cameron'), 1986, ('Aliens'), ('y'),
('Alien 3'), ('David Fincher'), 1992, ('Aliens'), ('y'),
('Alien Resurrection'), ('Jean-Pierre Jeunet'), 1997, ('Aliens'), ('y'),
('Alien vs Predator'), ('Paul W.S. Anderson'), 2004, ('Aliens'), ('y'),
('Alien vs Predator 2'), ('the Brothers Strause'), 2007, ('Aliens'), ('y'),
('The Thing'), ('John Carpenter'), 1982, ('Aliens'), ('y'),
('War of the Worlds'), ('Steven Spielberg'), 2005, ('Aliens'), ('y'),
('War of the Worlds'), ('Byron Haskin'), 1953, ('Aliens'), ('y'),
('Braindead'), ('Peter Jackson'), 1992, ('Zombies'), ('y'),
('Shaun of the Dead'), ('Edgar Wright'), 2004, ('Zombies'), ('y'),
('The Texas Chainsaw Massacre'), ('Tobe Hooper'), 1974, ('Humans'), ('n'),
('Silence of the Lambs'), ('Jonathan Demme'), 1991, ('Humans'), ('n'),
('Get Out'), ('Jordan Peele'), 2017, ('Humans'), ('n'),
('Nightmare on Elm Street'), ('Wes Craven'), 1984, ('Spirits'), ('n'),
('House of 1000 Corpses'), ('Rob Zombie'), 2003, ('Humans'), ('n'),
('The Last Exorcism'), ('Daniel Stamm'), 2010, ('Demons'), ('n'),
('Underworld'), ('Len Wiseman'), 2003, ('Vampires'), ('y'),
('Underworld 2'), ('Len Wiseman'), 2006, ('Vampires'), ('y'),
('Children of the Corn'), ('Fritz Kiersch'), 1984, ('Demons'), ('n'),
('Children of the Corn 2'), ('David Price'), 1992, ('Demons'), ('n'),
('Night of the Living Dead'), ('George A. Romero'), 1968, ('Zombies'), ('y'),
('Gremlins 1'), ('Joe Dante'), 1984, ('Gremlins'), ('y'),
('28 Days Later'), ('Danny Boyle'), 2002, ('Zombies'), ('n'),
('28 Weeks Later'), ('Juan Carlos Fresnadillo'), 2007, ('Zombies'), ('n'),
('Midsommar'), ('Ari Aster'), 2019, ('Humans'), ('n'),
('The Crow: salvation'), ('Bharat Nalluri'), 2000, ('Spirits'), ('n'),
('The Crow'), ('Alex Proyas'), 1994, ('Spirits'), ('n'),
('The Ring (JP)'), ('Hideo Nakata'), 1998, ('Ghosts'), ('n'),
('The Ring (US)'), ('Gore Verbinski'), 2002, ('Ghosts'), ('n'),
('Cabin in the Woods'), ('Drew Goddard'), 2011, ('Multiple Monsters'), ('y'),
('The Vvitch'), ('Robert Eggers'), 2015, ('Witch'), ('n'),
('Dog Soldiers'), ('Neil Marshall'), 2002, ('Werewolves'), ('y'),
('Army of Darkness'), ('Sam Raimi'), 1992, ('Skeletons'), ('y'),
('Hannibal'), ('Ridley Scott'), 2001, ('Humans'), ('n'),
('World War Z'), ('Marc Foster'), 2013, ('Zombies'), ('y'),
('Let Me In'), ('Matt Reeves'), 2010, ('Vampires'), ('n'),
('30 Days of Night'), ('David Slade'), 2007, ('Vampires'), ('n'),
('Silent Hill'), ('Christophe Gans'), 2006, ('Demons'), ('y'),
('From Hell'), ('Albert Hughes'), 2001, ('Humans'), ('n'),
('Black Swan'), ('Darren Aronofsky'), 2010, ('Human'), ('n'),
('Dream House'), ('Jim Sheridan'), 2011, ('Human'), ('n'),
('My bloody valentine'), ('Patrick Lussier'), 2009, ('Humans'), ('n'),
('The Haunting in Conneticut'), ('Peter Cornwell'), 2009, ('Ghosts'), ('n'),
('A Quiet Place'), ('John Krasinski'), 2018, ('Aliens'), ('y'),
('Dracula Untold'), ('Gary Shore'), 2014, ('Vampires'), ('y'),
('Paranormal Activity 1'), ('Oren Peli'), 2007, ('Demons'), ('n'),
('Paranormal Activity 2'), ('Tod Williams'), 2010, ('Demons'), ('n'),
('Paranormal Activity 3'), ('Henry Joost'), 2011, ('Demons'), ('n'),
('Paranormal Activity 4'), ('Henry Joost'), 2012, ('Demons'), ('n'),
('Death Proof'), ('Quentin Tarantino'), 2007, ('Humans'), ('n'),
('Creep'), ('Patrick Brice'), 2014, ('Humans'), ('n'),
('Hellraiser 1'), ('Clive Barker'), 1987, ('Demons'), ('n'),
('Hellraiser 2'), ('Tony Randel'), 1988, ('Demons'), ('n'),
('Hellraiser 3'), ('Anthony Hickox'), 1992, ('Demons'), ('n'),
('Blair Witch'), ('Daniel Myrick'), 1999, ('Witch'), ('n'),
('Saw 1'), ('James Wan'), 2004, ('Humans'), ('n'),
('Hostel'), ('Eli Roth'), 2005, ('Humans'), ('n'),
('The Exorcist OG'), ('William Friedkin'), 1973, ('Demon'), ('n'),
('The Strangers'), ('Bryan Bertino'), 2008, ('Humans'), ('n'),
('Evil Dead 1'), ('Sam Raimi'), 1981, ('Demons'), ('y'),
('The Shining'), ('Stanley Kubrick'), 1980, ('Ghosts'), ('n'),
('The Omen'), ('Richard Donner'), 1976, ('Antichrist'), ('n'),
('Dawn of the Dead'), ('Zack Snyder'), 2004, ('Zombie'), ('y'),
('The Collector'), ('Marcus Dunstan'), 2009, ('Humans'), ('n'),
('Frankenstein'), ('Marcus Nispel'), 2004, ("Frankenstein's Monster"), ('y'),
('The Sin Eater'), ('Brian Helgeland'), 2003, ('Humans'), ('n'),
('Summer of Fear'), ('Wes Craven'), 1978, ('Witch'), ('n'),
('White Noise'), ('Geoffrey Sax'), 2005, ('Ghosts'), ('n') 
)

insert into Genres (GenreName) values 
('Action'), ('Body Horror'), ('Christmas'), ('Comedy'), ('Dark Fantasy'), ('Drama'), ('Folk Horror'), ('Found Footage'), ('Independent Horror'), ('Mystery'), ('Psychological'), ('Romance'), ('Sci-fi'), ('Slasher'), ('Splatter'), ('Supernatural'), ('Suspense'), ('Survival'), ('Thriller');

------------ ------------ ------------
            --sql queries--
------------ ------------ ------------

select * from [SpookShack].[dbo].[Movies]
select * from [SpookShack].[dbo].[Genres]
select * from [SpookShack].[dbo].[MovieGenres]