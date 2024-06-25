CREATE DATABASE music_library;
use music_library;

CREATE TABLE
    users (
        user_id INT PRIMARY KEY,
        user_name VARCHAR(50),
        password VARCHAR(25) UNIQUE,
        email VARCHAR(50)
    );
CREATE TABLE
    artists (
        artist_id INT PRIMARY KEY,
        artist_name VARCHAR(50),
        description VARCHAR(200),
        genre VARCHAR(50)
    );
    
CREATE TABLE
    albums (
        album_id INT PRIMARY KEY,
        album_title VARCHAR(50),
        artist_id INT,
        release_year YEAR,
        genre VARCHAR(50)
    );
    
CREATE TABLE
    songs (
        song_id INT PRIMARY KEY,
        song_title VARCHAR(50),
        album_id INT,
        duration TIME,
        song_url VARCHAR(100)
    );
    
CREATE TABLE
    playlist (
        playlist_id INT PRIMARY KEY,
        user_id INT,
        playlist_title VARCHAR(50),
        description VARCHAR(100)
    );
    
CREATE TABLE
    playlist_songs (
        playlistsong_id INT PRIMARY KEY,
        playlist_id INT,
        song_id INT
    );
SHOW TABLES;

