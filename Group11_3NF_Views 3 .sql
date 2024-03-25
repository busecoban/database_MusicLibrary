
CREATE VIEW albumView AS
SELECT AlbumID,ArtistID
FROM album;

CREATE VIEW artistView AS 
SELECT ArtistID,ArtistName_,ArtistLastName_,Gender,Birthday,Country,MonthlyAuditiourCount
FROM artist;

CREATE VIEW composerView AS
SELECT ComposerID,ComposerName_,ComposerLastName_ 
FROM composer;

CREATE VIEW genreView AS 
SELECT GenreID,Title
FROM genre;


CREATE VIEW lyricsView AS
SELECT LyricsID,LyricsTxt
FROM lyrics;

CREATE VIEW lyricsistView AS
SELECT LyricistID,LyricistName_,LyricistLastName_
FROM lyricsist;

CREATE VIEW membershiptypeView AS
SELECT MembershipTypeID,Title,Cost
FROM membershiptype;

CREATE VIEW songsView AS 
SELECT SongID,Title,Language_,SongLength,Frequency,isLiked,NumberOfLikes,ComposerID,LyricistID,LyricsID,ArtistID,GenreID,AlbumID
FROM songs;

CREATE VIEW usersView AS
SELECT UserID,Name_,LastName_,email,Password_,Gender,Birthday,Country,MembershipTypeID,FollowerCount,FollowedCount
FROM users;
