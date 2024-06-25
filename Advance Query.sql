SELECT songs.song_title, artists.artist_name
FROM songs
INNER JOIN albums ON songs.album_id = albums.album_id
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE albums.genre = 'Classical';

SELECT songs.song_title, artists.artist_name
FROM songs
INNER JOIN albums ON songs.album_id = albums.album_id
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE albums.genre = 'Playback Singing';

SELECT songs.song_title, artists.artist_name
FROM songs
INNER JOIN albums ON songs.album_id = albums.album_id
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE albums.genre = 'World Music';

-- Retrieve all songs in a given user's playlist
SELECT u.user_name, p.playlist_title, s.song_title
FROM users u
JOIN playlist p ON u.user_id = p.user_id
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
WHERE u.user_name = 'Rajesh Kumar';

SELECT u.user_name, p.playlist_title, s.song_title
FROM users u
JOIN playlist p ON u.user_id = p.user_id
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
WHERE u.user_name = 'Vikram Singh';

-- Find all playlists that contain a specific song
SELECT p.playlist_title, u.user_name, s.song_title
FROM playlist p
JOIN users u ON p.user_id = u.user_id
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
WHERE s.song_title = 'Tum Hi Ho';

SELECT p.playlist_title, u.user_name, s.song_title
FROM playlist p
JOIN users u ON p.user_id = u.user_id
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
WHERE s.song_title = 'Lag Ja Gale';
 
-- Get the total duration of all songs in a specific playlist
SELECT p.playlist_title, SEC_TO_TIME(SUM(TIME_TO_SEC(s.duration))) AS total_duration
FROM playlist p
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
WHERE p.playlist_title = 'Soulful Melodies'
GROUP BY p.playlist_title;

SELECT p.playlist_title, SEC_TO_TIME(SUM(TIME_TO_SEC(s.duration))) AS total_duration
FROM playlist p
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
WHERE p.playlist_title = 'Romantic Hits'
GROUP BY p.playlist_title;

-- List all albums by a specific artist with song details
SELECT a.artist_name, al.album_title, s.song_title, s.duration
FROM artists a
JOIN albums al ON a.artist_id = al.artist_id
JOIN songs s ON al.album_id = s.album_id
WHERE a.artist_name = 'Arijit Singh';

-- Retrieve users who have playlists with more than 1 songs
SELECT u.user_name, p.playlist_title, COUNT(ps.song_id) AS song_count
FROM users u
JOIN playlist p ON u.user_id = p.user_id
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
GROUP BY p.playlist_id
HAVING song_count > 1;

-- List all songs that appear in more than one playlist
SELECT s.song_title, COUNT(ps.playlist_id) AS playlist_count
FROM songs s
JOIN playlist_songs ps ON s.song_id = ps.song_id
GROUP BY s.song_title
HAVING playlist_count > 1;

--  Find the average song duration for each artist
SELECT a.artist_name, SEC_TO_TIME(AVG(TIME_TO_SEC(s.duration))) AS avg_duration
FROM artists a
JOIN albums al ON a.artist_id = al.artist_id
JOIN songs s ON al.album_id = s.album_id
GROUP BY a.artist_name;

-- Get the playlist details (playlist title and user name) along with the count of unique songs in each playlist
SELECT p.playlist_title, u.user_name, COUNT(DISTINCT ps.song_id) AS unique_song_count
FROM playlist p
JOIN users u ON p.user_id = u.user_id
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
GROUP BY p.playlist_id;
