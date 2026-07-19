------------ ------------ ------------

CREATE TABLE Movies ( -- MovieID, Title, Release, Animanted, Location
    MovieID int not null,
    Title nchar(50) not null,
    Release int not null,
    Animated nchar(5) not null,
    Location nchar(10) not null
);

insert into Movies (Title, Release, Animanted, Location) 
values
