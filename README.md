# database_MusicLibrary

# Think Kickstarter

  We would like to offer you an exciting investment opportunity in the
development of a comprehensive music database project. In this project, we aim
to revolutionize the music industry by creating a centralized platform that brings
together artists, composers, songwriters, albums, songs and genres, providing an
invaluable resource for music enthusiasts, professionals and businesses. The
music database project is designed to address the current challenges facing the
music industry, including fragmented information, limited accessibility, and a
lack of efficient data management. By creating a robust and user-friendly
database, we will empower users to explore, discover and interact with music in
new and immersive ways.


  The music industry continues to experience exponential growth, with streaming
services and digital platforms dominating the landscape. Our project aims to
capitalize on this trend by providing a centralized hub for music-related
information and services. With a potential target audience of millions of music
enthusiasts, professionals, and businesses, we have a vast market waiting to be
tapped into. To bring this project to fruition, we are seeking an investment of
[Amount] to cover the costs of development, infrastructure, marketing, and
talent acquisition. With your support, we can build a platform that
revolutionizes the way people engage with music and generates significant
returns on investment

# Who is our target audience?

  Since we are making a music library application, our target audience will
mainly be between the ages of 13 and 50 . because people in this age range
listen to music more actively and are picky about it.compared to others, they
connect music more to their daily lives.especially the young audience has the
ability to listen to music for a longer time.using our application, they can search
and find the names of their favorite music, or they can access their songs by
searching for the artist's name.in October, they can add their favorite music to
their favorites or create a playlist from these songs.lists with ease they can
steal.they can then change the list names or the names of the songs on their
list.they can listen to music from our application in a pleasant and easy way.

# What is our purpose?
  Our goal is to provide the user with the best performance and a scalable
database. In this way, the user will be able to access the features quickly.

# How will you achieve our goal?
  While designing our database, we designed it by paying attention to the basic
principles. A few of these principles are data normalization, data integrity,
relational modeling, and scalability. In this way, we have obtained a scalable
and responsive database.

# Fact Finding Techniques

Interviewing:
  We first discussed it among ourselves in order to collect useful information
about the database. How can we be more active, how can we use it more
efficiently, or how can it be more understandable.Then, before making the UI
design, we also worked on improving the design by interviewing different
people around us

Research:
  We did research on the subject before creating the database.it will be useful to
use various websites or documents to see different ideas when implementing a
project.the more extensive knowledge we have on the subject, the easier it will
be to progress in the project and create an understandable project

# ER DIAGRAM

<img width="978" alt="Screenshot 2024-03-25 at 13 39 39" src="https://github.com/busecoban/database_MusicLibrary/assets/73944611/cd59dbb4-f56b-4386-a125-af5821feaa3d">

NOTE:Sungby,include artist and include playlist tables are extra relationships.Their
purpose is avoid the data repetition.When we pull the data from UNF we saw that our
system a bit overload.Because of that we created extra relationships and connect to tables
with foreign keys.

NOTE:A artist have lots of songs of course.Sungby and song relationship gave us
this.Artist and sungby connected to one to
one because this is key matching table for avoiding data repetition and overloading.

NOTE:Same logic working for include artist and include playlist.
Middle tables for key matching and then became to one to many relationship.


# TASKS
# 1- List all songs by a certain artist and on what albums it appears

<img width="520" alt="Screenshot 2024-03-25 at 13 41 09" src="https://github.com/busecoban/database_MusicLibrary/assets/73944611/375bc90b-8309-47c1-9d37-0299530a8e1a">

# 2-Get a list of playlists and their owners and how many songs are on
each playlist

<img width="1032" alt="Screenshot 2024-03-25 at 13 41 36" src="https://github.com/busecoban/database_MusicLibrary/assets/73944611/d174d63c-9850-4101-a462-3a5a148b2f19">

# 3-Change title of a song

<img width="989" alt="Screenshot 2024-03-25 at 13 42 00" src="https://github.com/busecoban/database_MusicLibrary/assets/73944611/e0268d9e-1f44-4f45-ab10-9e6a59306227">

# 4-Add a new Artist

<img width="988" alt="Screenshot 2024-03-25 at 13 42 37" src="https://github.com/busecoban/database_MusicLibrary/assets/73944611/10542c91-6682-491c-b42e-70078befa9cb">

# 5 -Remove an album and all songs on it (if the song does not appear on
another album.)

SELECT SongID FROM Songs

WHERE AlbumID = {AlbumID};

DELETE FROM Songs

WHERE SongID IN ( SELECT SongID FROM Songs

WHERE AlbumID = {AlbumID}

GROUP BY SongID HAVING COUNT(*) = 1);

DELETE FROM ALBUM

WHERE AlbumID= {AlbumID}






# 6-How user can add songs in a new Playlist

▪ CREATE TABLE PLAYLIST(

PlaylistID integer PRIMARY KEY AUTO_INCREMENT,

UserID integer,

PlaylistName_ varChar(50),

FOREIGN KEY(UserID) REFERENCES USERS(UserID) );

▪ INSERT INTO playlist ( UserID, PlaylistName_)

VALUES ( , );

▪ CREATE TABLE INCLUDEPLAYLIST( PlaylistID int NOT NULL, SongID int

NOT NULL, AlbumID int NOT NULL,

PRIMARY KEY(PlaylistID,SongID,AlbumID),

FOREIGN KEY(PlaylistID) REFERENCES playlist(PlaylistID),

FOREIGN KEY(SongID) REFERENCES song(SongID),

FOREIGN KEY(AlbumID) REFERENCES album(AlbumID) );

▪ INSERT INTO includeplaylist VALUES(,,);

<img width="1062" alt="Screenshot 2024-03-25 at 13 43 55" src="https://github.com/busecoban/database_MusicLibrary/assets/73944611/a2914beb-ff3e-4e7f-9ef0-216cfadb7aa8">



