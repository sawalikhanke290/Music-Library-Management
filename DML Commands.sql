INSERT INTO users (user_id, user_name, password, email) VALUES
(1, 'Rajesh Kumar', 'Rajesh123', 'rajesh.kumar@gmail.com'),
(2, 'Priya Sharma', 'Priya123', 'priya.sharma@gmail.com'),
(3, 'Anita Desai', 'Anita123', 'anita.desai@gmail.com'),
(4, 'Vikram Singh', 'Vikram123', 'vikram.singh@gmail.com'),
(5, 'Sunita Reddy', 'Sunita123', 'sunita.reddy@gmail.com'),
(6, 'Ravi Patel', 'Ravi123', 'ravi.patel@gmail.com'),
(7, 'Aishwarya Rao', 'Aishwarya123', 'aishwarya.rao@gmail.com');

INSERT INTO artists (artist_id, artist_name, description, genre) VALUES
(1, 'Ravi Shankar', 'Sitar virtuoso known for popularizing Indian classical music in the West.', 'Classical'),
(2, 'A. R. Rahman', 'Award-winning composer known for his work in Indian cinema and international collaborations.', 'Film Score'),
(3, 'Lata Mangeshkar', 'Iconic playback singer with a career spanning over seven decades.', 'Playback Singing'),
(4, 'Zakir Hussain', 'Renowned tabla player celebrated for his contributions to world music.', 'Percussion'),
(5, 'M. S. Subbulakshmi', 'Legendary Carnatic vocalist, first musician to be awarded Bharat Ratna.', 'Classical'),
(6, 'Sonu Nigam', 'Versatile playback singer known for his contributions to Bollywood music.', 'Playback Singing'),
(7, 'Arijit Singh', 'Popular playback singer noted for his soulful voice and romantic songs.', 'Playback Singing'),
(8, 'Shreya Ghoshal', 'Acclaimed playback singer with numerous awards and chart-topping hits.', 'Playback Singing');

INSERT INTO albums (album_id, album_title, artist_id, release_year, genre) VALUES
(1, 'Call of the Valley', 1, 1967, 'Classical'),
(2, 'Slumdog Millionaire OST', 2, 2008, 'Film Score'),
(3, 'Aayega Aanewala', 3, 1949, 'Playback Singing'),
(4, 'Making Music', 4, 1987, 'World Music'),
(5, 'Bhaja Govindam', 5, 1966, 'Classical'),
(6, 'Deewana', 6, 1999, 'Playback Singing'),
(7, 'Aashiqui 2', 7, 2013, 'Playback Singing'),
(8, 'Devdas OST', 8, 2002, 'Playback Singing');

INSERT INTO songs (song_id, song_title, album_id, duration, song_url) VALUES
(1, 'Jai Ho', 2, '00:05:19', 'http://example.com/jai_ho'),
(2, 'Tum Hi Ho', 7, '00:04:22', 'http://example.com/tum_hi_ho'),
(3, 'Dola Re Dola', 8, '00:06:36', 'http://example.com/dola_re_dola'),
(4, 'Kal Ho Naa Ho', 6, '00:05:21', 'http://example.com/kal_ho_naa_ho'),
(5, 'Chaiyya Chaiyya', 2, '00:06:53', 'http://example.com/chaiyya_chaiyya'),
(6, 'Tujh Mein Rab Dikhta Hai', 6, '00:04:44', 'http://example.com/tujh_mein_rab_dikhta_hai'),
(7, 'Mere Haath Mein', 7, '00:04:41', 'http://example.com/mere_haath_mein'),
(8, 'Madhuban Me Radhika Nache Re', 1, '00:03:43', 'http://example.com/madhuban_me_radhika'),
(9, 'Lag Ja Gale', 3, '00:04:15', 'http://example.com/lag_ja_gale'),
(10, 'Chalte Chalte', 3, '00:04:55', 'http://example.com/chalte_chalte');

INSERT INTO playlist (playlist_id, user_id, playlist_title, description) VALUES
(1, 1, 'Bollywood Classics', 'A collection of timeless Bollywood classics'),
(2, 2, 'Romantic Hits', 'Top romantic songs from Bollywood'),
(3, 3, 'Dance Numbers', 'Best Bollywood songs to dance to'),
(4, 4, 'Soulful Melodies', 'Soul-stirring Bollywood melodies'),
(5, 5, 'Party Anthems', 'Bollywood songs perfect for a party'),
(6, 6, 'Latest Hits', 'Recent chart-toppers from Bollywood'),
(7, 7, 'Golden Era', 'Songs from Bollywood\'s golden era'),
(8, 1, 'Rahat & Shreya Special', 'Best songs by Rahat Fateh Ali Khan and Shreya Ghoshal'),
(9, 2, 'Love Songs', 'Romantic hits from the 90s and 2000s'),
(10, 3, 'Retro Bollywood', 'Classic hits from the 70s and 80s');

INSERT INTO playlist_songs (playlistsong_id, playlist_id, song_id) VALUES
(1, 1, 1),  -- 'Jai Ho' in 'Bollywood Classics'
(2, 1, 5),  -- 'Chaiyya Chaiyya' in 'Bollywood Classics'
(3, 2, 2),  -- 'Tum Hi Ho' in 'Romantic Hits'
(4, 2, 7),  -- 'Mere Haath Mein' in 'Romantic Hits'
(5, 3, 3),  -- 'Dola Re Dola' in 'Dance Numbers'
(6, 3, 5),  -- 'Chaiyya Chaiyya' in 'Dance Numbers'
(7, 4, 6),  -- 'Tujh Mein Rab Dikhta Hai' in 'Soulful Melodies'
(8, 4, 9),  -- 'Lag Ja Gale' in 'Soulful Melodies'
(9, 5, 10), -- 'Chalte Chalte' in 'Party Anthems'
(10, 6, 4); -- 'Kal Ho Naa Ho' in 'Latest Hits'