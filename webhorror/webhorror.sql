------------ ------------ ------------
  --SpookShack database attributes--
------------ ------------ ------------
--Id 
--Title
--Director
--Release
--Genre

------------ ------------ ------------
             -- tables --
------------ ------------ ------------

create table Movies ( -- MovieID, Title, Director, Release
    MovieID int not null,
    Title nchar(40) not null,
    Director nchar(40) not null,
    Release int not null,
    MovieMonster nchar(30) not null,
    CreatureFeature nchar(2) not null,
    PRIMARY KEY (MovieID)
);

create table Genres ( --GenreID, GenreName
    GenreID int not null,
    GenreName nchar(20) not null,
    primary key (GenreID)
);

create table MovieGenres ( --MovieID, GenreID (junction table)
    MovieID int not null,
    GenreID int not null,
    primary key (MovieID, GenreID),
    foreign key (MovieID) references Movies(MovieID) on delete cascade,
    foreign key (GenreID) references Genres(GenreID) on delete cascade
);

------------ ------------ ------------
             -- iserts --
------------ ------------ ------------

delete from Movies
insert into Movies (MovieID, Title, Director, Release, MovieMonster, CreatureFeature) 
values
(1, 'Alien', 'Ridley Scott', 1979, 'Aliens', 'y'),
(2, 'Aliens', 'James Cameron', 1986, 'Aliens', 'y'),
(3, 'Alien 3', 'David Fincher', 1992, 'Aliens', 'y'),
(4, 'Alien Resurrection', 'Jean-Pierre Jeunet', 1997, 'Aliens', 'y'),
(5, 'Alien vs Predator', 'Paul W.S. Anderson', 2004, 'Aliens', 'y'),
(6, 'Alien vs Predator 2', 'the Brothers Strause', 2007, 'Aliens', 'y'),
(7, 'The Thing', 'John Carpenter', 1982, 'Aliens', 'y'),
(8, 'War of the Worlds', 'Steven Spielberg', 2005, 'Aliens', 'y'),
(9, 'War of the Worlds', 'Byron Haskin', 1953, 'Aliens', 'y'),
(10, 'Braindead', 'Peter Jackson', 1992, 'Zombies', 'y'),
(11, 'Shaun of the Dead', 'Edgar Wright', 2004, 'Zombies', 'y'),
(12, 'The Texas Chainsaw Massacre', 'Tobe Hooper', 1974, 'Humans', 'n'),
(13, 'Silence of the Lambs', 'Jonathan Demme', 1991, 'Humans', 'n'),
(14, 'Get Out', 'Jordan Peele', 2017, 'Humans', 'n'),
(15, 'Nightmare on Elm Street', 'Wes Craven', 1984, 'Spirits', 'n'),
(16, 'House of 1000 Corpses', 'Rob Zombie', 2003, 'Humans', 'n'),
(17, 'The Last Exorcism', 'Daniel Stamm', 2010, 'Demons', 'n'),
(18, 'Underworld', 'Len Wiseman', 2003, 'Vampires', 'y'),
(19, 'Underworld 2', 'Len Wiseman', 2006, 'Vampires', 'y'),
(20, 'Children of the Corn', 'Fritz Kiersch', 1984, 'Demons', 'n'),
(21, 'Children of the Corn 2', 'David Price', 1992, 'Demons', 'n'),
(22, 'Night of the Living Dead', 'George A. Romero', 1968, 'Zombies', 'y'),
(23, 'Gremlins 1', 'Joe Dante', 1984, 'Gremlins', 'y'),
(24, '28 Days Later', 'Danny Boyle', 2002, 'Zombies', 'n'),
(25, '28 Weeks Later', 'Juan Carlos Fresnadillo', 2007, 'Zombies', 'n'),
(26, 'Midsommar', 'Ari Aster', 2019, 'Humans', 'n'),
(27, 'The Crow: salvation', 'Bharat Nalluri', 2000, 'Spirits', 'n'),
(28, 'The Crow', 'Alex Proyas', 1994, 'Spirits', 'n'),
(29, 'The Ring (JP)', 'Hideo Nakata', 1998, 'Ghosts', 'n'),
(30, 'The Ring (US)', 'Gore Verbinski', 2002, 'Ghosts', 'n'),
(31, 'Cabin in the Woods', 'Drew Goddard', 2011, 'Multiple Monsters', 'y'),
(32, 'The Vvitch', 'Robert Eggers', 2015, 'Witches', 'n'),
(33, 'Dog Soldiers', 'Neil Marshall', 2002, 'Werewolves', 'y'),
(34, 'Army of Darkness', 'Sam Raimi', 1992, 'Skeletons', 'y'),
(35, 'Hannibal', 'Ridley Scott', 2001, 'Humans', 'n'),
(36, 'World War Z', 'Marc Foster', 2013, 'Zombies', 'y'),
(37, 'Let Me In', 'Matt Reeves', 2010, 'Vampires', 'n'),
(38, '30 Days of Night', 'David Slade', 2007, 'Vampires', 'n'),
(39, 'Silent Hill', 'Christophe Gans', 2006, 'Demons', 'y'),
(40, 'From Hell', 'Albert Hughes', 2001, 'Humans', 'n'),
(41, 'Black Swan', 'Darren Aronofsky', 2010, 'Humans', 'n'),
(42, 'Dream House', 'Jim Sheridan', 2011, 'Humans', 'n'),
(43, 'My bloody valentine', 'Patrick Lussier', 2009, 'Humans', 'n'),
(44, 'The Haunting in Conneticut', 'Peter Cornwell', 2009, 'Ghosts', 'n'),
(45, 'A Quiet Place', 'John Krasinski', 2018, 'Aliens', 'y'),
(46, 'Dracula Untold', 'Gary Shore', 2014, 'Vampires', 'y'),
(47, 'Paranormal Activity 1', 'Oren Peli', 2007, 'Demons', 'n'),
(48, 'Paranormal Activity 2', 'Tod Williams', 2010, 'Demons', 'n'),
(49, 'Paranormal Activity 3', 'Henry Joost', 2011, 'Demons', 'n'),
(50, 'Paranormal Activity 4', 'Henry Joost', 2012, 'Demons', 'n'),
(51, 'Death Proof', 'Quentin Tarantino', 2007, 'Humans', 'n'),
(52, 'Creep', 'Patrick Brice', 2014, 'Humans', 'n'),
(53, 'Hellraiser 1', 'Clive Barker', 1987, 'Demons', 'n'),
(54, 'Hellraiser 2', 'Tony Randel', 1988, 'Demons', 'n'),
(55, 'Hellraiser 3', 'Anthony Hickox', 1992, 'Demons', 'n'),
(56, 'Blair Witch', 'Daniel Myrick', 1999, 'Witches', 'n'),
(57, 'Saw 1', 'James Wan', 2004, 'Humans', 'n'),
(58, 'Hostel', 'Eli Roth', 2005, 'Humans', 'n'),
(59, 'The Exorcist OG', 'William Friedkin', 1973, 'Demons', 'n'),
(60, 'The Strangers', 'Bryan Bertino', 2008, 'Humans', 'n'),
(61, 'Evil Dead 1', 'Sam Raimi', 1981, 'Demons', 'y'),
(62, 'The Shining', 'Stanley Kubrick', 1980, 'Ghosts', 'n'),
(63, 'The Omen', 'Richard Donner', 1976, 'Antichrist', 'n'),
(64, 'Dawn of the Dead', 'Zack Snyder', 2004, 'Zombies', 'y'),
(65, 'The Collector', 'Marcus Dunstan', 2009, 'Humans', 'n'),
(66, 'Frankenstein', 'Marcus Nispel', 2004, 'Frankensteins Monster', 'y'),
(67, 'The Sin Eater', 'Brian Helgeland', 2003, 'Humans', 'n'),
(68, 'Summer of Fear', 'Wes Craven', 1978, 'Witches', 'n'),
(69, 'White Noise', 'Geoffrey Sax', 2005, 'Ghosts', 'n');

delete from Genres
insert into Genres (GenreID, GenreName) 
values
(1, 'Action'), 
(2, 'Body Horror'), 
(3, 'Christmas'), 
(4, 'Comedy'), 
(5, 'Dark Fantasy'), 
(6, 'Drama'), 
(7, 'Folk Horror'), 
(8, 'Found Footage'), 
(9, 'Independent Horror'), 
(10, 'Mystery'), 
(11, 'Psychological'), 
(12, 'Romance'), 
(13, 'Scifi'), 
(14, 'Slasher'), 
(15, 'Splatter'), 
(16, 'Supernatural'), 
(17, 'Suspense'), 
(18, 'Survival'), 
(19, 'Thriller'),
(20, 'Apocalyspe');

delete from MovieGenres
insert into MovieGenres (MovieID, GenreID)
values
-- 1: Alien (Sci-fi, Action)
(1, 13), (1, 1),
-- 2: Aliens (Sci-fi, Action)
(2, 13), (2, 1),
-- 3: Alien 3 (Sci-fi, Survival)
(3, 13), (3, 18),
-- 4: Alien Resurrection (Sci-fi, Action)
(4, 13), (4, 1),
-- 5: Alien vs Predator (Sci-fi, Action)
(5, 13), (5, 1),
-- 6: Alien vs Predator 2 (Sci-fi, Action)
(6, 13), (6, 1),
-- 7: The Thing (Sci-fi, Body Horror)
(7, 13), (7, 2),
-- 8: War of the Worlds 2005 (Sci-fi, Thriller)
(8, 13), (8, 19),
-- 9: War of the Worlds 1953 (Sci-fi, Action)
(9, 13), (9, 1),
-- 10: Braindead (Splatter, Comedy)
(10, 15), (10, 4),
-- 11: Shaun of the Dead (Comedy, Splatter)
(11, 4), (11, 15),
-- 12: The Texas Chainsaw Massacre (Slasher, Survival)
(12, 14), (12, 18),
-- 13: Silence of the Lambs (Psychological, Thriller)
(13, 11), (13, 19),
-- 14: Get Out (Psychological, Mystery)
(14, 11), (14, 10),
-- 15: Nightmare on Elm Street (Slasher, Supernatural)
(15, 14), (15, 16),
-- 16: House of 1000 Corpses (Slasher, Splatter)
(16, 14), (16, 15),
-- 17: The Last Exorcism (Suspense, Found Footage)
(17, 17), (17, 8),
-- 18: Underworld (Supernatural, Action)
(18, 16), (18, 1),
-- 19: Underworld 2 (Supernatural, Action)
(19, 16), (19, 1),
-- 20: Children of the Corn (Psychological, Slasher)
(20, 11), (20, 14),
-- 21: Children of the Corn 2 (Psychological, Slasher)
(21, 11), (21, 14),
-- 22: Night of the Living Dead (Sci-fi, Independent Horror)
(22, 13), (22, 9),
-- 23: Gremlins 1 (Christmas, Comedy)
(23, 3), (23, 4),
-- 24: 28 Days Later (Drama, Apocalypse)
(24, 6), (24, 20),
-- 25: 28 Weeks Later (Drama, Apocalypse)
(25, 6), (25, 20),
-- 26: Midsommar (Psychological, Folk Horror)
(26, 11), (26, 7),
-- 27: The Crow: salvation (Action, Thriller)
(27, 1), (27, 19),
-- 28: The Crow (Action, Thriller)
(28, 1), (28, 19),
-- 29: The Ring (JP) (Mystery, Supernatural)
(29, 10), (29, 16),
-- 30: The Ring (US) (Mystery, Supernatural)
(30, 10), (30, 16),
-- 31: Cabin in the Woods (Comedy, Thriller)
(31, 4), (31, 19),
-- 32: The Vvitch (Supernatural, Folk Horror)
(32, 16), (32, 7),
-- 33: Dog Soldiers (Action, Thriller)
(33, 1), (33, 19),
-- 34: Army of Darkness (Comedy, Supernatural)
(34, 4), (34, 16),
-- 35: Hannibal (Psychological, Thriller)
(35, 11), (35, 19),
-- 36: World War Z (Action, Thriller)
(36, 1), (36, 19),
-- 37: Let Me In (Drama, Romance)
(37, 6), (37, 12),
-- 38: 30 Days of Night (Thriller, Splatter)
(38, 19), (38, 15),
-- 39: Silent Hill (Supernatural, Psychological)
(39, 16), (39, 11),
-- 40: From Hell (Psychological, Thriller)
(40, 11), (40, 19),
-- 41: Black Swan (Psychological, Thriller)
(41, 11), (41, 19),
-- 42: Dream House (Psychological, Supernatural)
(42, 11), (42, 16),
-- 43: My bloody valentine (Slasher, Supernatural)
(43, 14), (43, 16),
-- 44: The Haunting in Conneticut (Supernatural, Thriller)
(44, 16), (44, 19),
-- 45: A Quiet Place (Suspense, Drama)
(45, 17), (45, 20),
-- 46: Dracula Untold (Action, Dark Fantasy)
(46, 1), (46, 5),
-- 47: Paranormal Activity 1 (Supernatural, Suspense)
(47, 16), (47, 17),
-- 48: Paranormal Activity 2 (Supernatural, Suspense)
(48, 16), (48, 17),
-- 49: Paranormal Activity 3 (Supernatural, Suspense)
(49, 16), (49, 17),
-- 50: Paranormal Activity 4 (Supernatural, Suspense)
(50, 16), (50, 17),
-- 51: Death Proof (Action, Slasher)
(51, 1), (51, 14),
-- 52: Creep (Psychological, Thriller)
(52, 11), (52, 19),
-- 53: Hellraiser 1 (Slasher, Supernatural)
(53, 14), (53, 16),
-- 54: Hellraiser 2 (Slasher, Supernatural)
(54, 14), (54, 16),
-- 55: Hellraiser 3 (Slasher, Supernatural)
(55, 14), (55, 16),
-- 56: Blair Witch (Found Footage, Psychological)
(56, 8), (56, 11),
-- 57: Saw 1 (Psychological, Body Horror)
(57, 11), (57, 2),
-- 58: Hostel (Suspense, Body Horror)
(58, 17), (58, 2),
-- 59: The Exorcist OG (Supernatural, Thriller)
(59, 16), (59, 19),
-- 60: The Strangers (Psychological, Suspense)
(60, 11), (60, 17),
-- 61: Evil Dead 1 (Supernatural, Comedy)
(61, 16), (61, 4),
-- 62: The Shining (Psychological, Thriller)
(62, 11), (62, 19),
-- 63: The Omen (Supernatural, Psychological)
(63, 16), (63, 11),
-- 64: Dawn of the Dead (Action, Drama)
(64, 1), (64, 6),
-- 65: The Collector (Slasher, Body Horror)
(65, 14), (65, 2),
-- 66: Frankenstein (Thriller, Sci-fi)
(66, 19), (66, 13),
-- 67: The Sin Eater (Supernatural, Mystery)
(67, 16), (67, 10),
-- 68: Summer of Fear (Supernatural, Thriller)
(68, 16), (68, 19),
-- 69: White Noise (Supernatural, Thriller)
(69, 16), (69, 19);

------------ ------------ ------------
             -- queries --
------------ ------------ ------------

select * from [SpookShack].[dbo].[Movies]
select * from [SpookShack].[dbo].[Genres]
select * from [SpookShack].[dbo].[MovieGenres]

------------ ------------ ------------

-- creature feature
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where CreatureFeature = 'y'
--where CreatureFeature = 'n'
order by Release asc;


------------ ------------ ------------

-- filter by movie monsters
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Aliens'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Antichrist'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Demons'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Frankensteins Monster'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Ghosts'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Gremlins'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Humans'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Skeletons'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Spirits'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Vampires'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Werewolves'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Witches'
order by Release asc;
--
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where MovieMonster = 'Zombies'
order by Release asc;

------------ ------------ ------------

-- timespan search --
select Title, Director, Release
from [SpookShack].[dbo].[Movies]
where ((Release>=1980) AND (Release<1990))
order by Release asc;

------------ ------------ ------------

-- movie count by monsters + total count--
select count(*) as [Total Movies] 
from [SpookShack].[dbo].[Movies]

select
isnull(MovieMonster, 'Total Movies') as [Movie Monster],
count(*) as [Movies]
from [SpookShack].[dbo].[Movies]
group by rollup(MovieMonster)
order by [Movies] desc;

------------ ------------ ------------

-- search by genre --
select Title, Director, Release, MovieMonster from Movies m
join MovieGenres mg on m.MovieID = mg.MovieID
join Genres g on mg.GenreID = g.GenreID
where g.GenreName = 'Body Horror'
order by Release asc;

-- search by director --
select Title, Director, Release from Movies 
where Director = 'Wes Craven'
order by Release asc;
