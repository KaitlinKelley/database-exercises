USE codeup_test_db;

#Use this to clear albums before re-seeding
truncate albums;

insert into albums (artist, name, release_date, genre, sales)
values ('Michael Jackson', 'Thriller', 1982, 'Pop, Rock, R&B', 47.3),
       ('AC/DC', 'Back in Black', 1980, 'Hard rock', 26.1),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 'Progressive rock', 24.2),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock, Progressive rock', 21.5),
       ('Whitney Houston / Various artists', 'The Bodyguard', 1992, 'R&B, Soul, Pop, Soundtrack', 28.4),
       ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Rock, Soft rock, Folk rock', 32.2),
       ('Bee Gees / Various artists', 'Saturday Night Fever', 1977, 'Disco', 21.6),
       ('Fleetwood Mac', 'Rumours', 1977, 'Soft rock', 27.9),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 'Soundtrack', 14.4),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Hard rock, Heavy metal, Folk', 29.0),
       ('Michael Jackson', 'Bad', 1987, 'Pop, Funk, Rock', 19.3),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 'Alternative rock', 24.4),
       ('Shania Twain', 'Come On Over', 1997, 'Country, Pop', 29.6),
       ('Celine Dion', 'Falling into You', 1996, 'Pop, Soft rock', 20.2),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 'Rock', 13.1),
       ('Eagles', 'Hotel California', 1976, 'Rock, Soft rock, Folk rock', 21.5),
       ('Various artists', 'Dirty Dancing', 1987, 'Pop, Rock, R&B', 17.9),
       ('Adele', '21', 2011, 'Pop, Soul', 25.3),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 'Pop, Soft rock', 19.3),
       ('The Beatles', '1', 2000, 'Rock', 22.6),
       ('Michael Jackson', 'Dangerous', 1991, 'Rock, Funk, Pop', 16.3),
       ('Madonna', 'The Immaculate Collection', 1990, 'Pop, Dance', 19.4),
       ('The Beatles', 'Abbey Road', 1969, 'Rock', 14.4),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 'Rock', 19.6),
       ('Dire Straits', 'Brothers in Arms', 1985, 'Rock, Pop', 17.7),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 'Soundtrack', 18.1),
       ('Metallica', 'Metallica', 1991, 'Thrash metal, Heavy metal', 21.2),
       ('Nirvana', 'Nevermind', 1991, 'Grunge, Alternative rock', 16.7),
       ('Pink Floyd', 'The Wall', 1979, 'Progressive rock', 17.6),
       ('Santana', 'Supernatural', 1999, 'Rock', 20.5),
       ('Guns N'' Roses', 'Appetite for Destruction', 1987, 'Hard rock', 21.6);

INSERT INTO albums (artist, name, release_date, genre, sales) VALUES ('Porcupine Tree', 'In Absentia', 2002,'Progressive Rock', 1.2);
INSERT INTO albums (artist, name, release_date, genre, sales) VALUES ('Porcupine Tree', 'Lightbulb Sun', 2000, 'Progressive Rock', 7.5);
INSERT INTO albums (artist, name, release_date, genre, sales) VALUES ('Queen', 'Night at the Opera', 1975, 'Rock', 12.2);
INSERT INTO albums (artist, name, release_date, genre, sales) VALUES ('Katzenjammer', 'A Kiss Before You Go', 2011, 'Pop-Rock Dark-Cabaret Alternative', 3.2);
INSERT INTO albums (artist, name, release_date, genre, sales) VALUES ('Katzenjammer', 'Le Pop', 2008, 'Pop-Rock Dark-Cabaret Alternative', 2.4);

INSERT INTO albums (artist, name, release_date, genre, sales) VALUES
    ('Original London Cast', 'Les Miserables', 1985, 'Musical Soundtrack', 5.5),
    ('Neko Case', 'Fox Confessor Brings The Flood', 2006, 'Alternative Country', 3.3),
    ('Neko Case', 'Furnace Room Lullaby', 2000, 'Alternative Country', 5.6),
    ('Stephen Trask and John Cameron Mitchell', 'Hedwig and the Angry Inch', 1999, 'Musical Soundtrack', 2.3),
    ('Lucius', 'NUDES', 2018, 'Indie Pop', 2.1);

