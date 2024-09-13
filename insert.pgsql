INSERT INTO perfomers(perfomer_name)
VALUES('Linkin Park');

INSERT INTO perfomers(perfomer_name)
VALUES('Radiohead');

INSERT INTO perfomers(perfomer_name)
VALUES('Daft Punk');

INSERT INTO perfomers(perfomer_name)
VALUES('BUSHIDO ZHO');

INSERT INTO genre(genres_names)
VALUES('Rock');

INSERT INTO genre(genres_names)
VALUES('Rap');

INSERT INTO genre(genres_names)
VALUES('Electro');

INSERT INTO albums(name, realese_date)
VALUES('Random Access Memories', '17.05.2013');

INSERT INTO albums(name, realese_date)
VALUES('Hybrid Theory', '24.10.2000');

INSERT INTO albums(name, realese_date)
VALUES('WE LIVE ONLY ONCE', '09.08.2019');

INSERT INTO track(name, duration, album_id)
VALUES('BEST TIMES', '108', 3);

INSERT INTO track(name, duration, album_id)
VALUES('MOSCOW', '157', 3);

INSERT INTO track(name, duration, album_id)
VALUES('Beyond', '290', 1);

INSERT INTO track(name, duration, album_id)
VALUES('Exit Music', '267', null);

INSERT INTO track(name, duration, album_id)
VALUES('In the End', '212', 2);

INSERT INTO track(name, duration, album_id)
VALUES('My December', '263', 2);

INSERT INTO track(name, duration, album_id)
VALUES('With you', '103', 2);

INSERT INTO compilation(compilation_name, realese_date)
VALUES('Radio_park', '1.09.2021');

INSERT INTO compilation(compilation_name, realese_date)
VALUES('Radio_Zho', '12.12.2012');

INSERT INTO compilation(compilation_name, realese_date)
VALUES('Rock_Rap', '11.08.2024');

INSERT INTO compilation(compilation_name, realese_date)
VALUES('all_in_one', '01.09.2024');

INSERT INTO compilation(compilation_name, realese_date)
VALUES('Linkin_Park_Compilation', '12.07.2019');

INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(1, 4);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(1, 5);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(1, 6);

INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(2, 1);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(2, 2);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(2, 4);

INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(3, 1);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(3, 2);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(3, 5);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(3, 6);

INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(4, 1);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(4, 2);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(4, 3);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(4, 4);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(4, 5);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(4, 6);

INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(5, 5);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(5, 6);
INSERT INTO compilationtrack(compilation_id, track_id)
VALUES(5, 7);

INSERT INTO perfomersgenre(genre_id, perfomer_id)
VALUES(1, 1);
INSERT INTO perfomersgenre(genre_id, perfomer_id)
VALUES(1, 2);
INSERT INTO perfomersgenre(genre_id, perfomer_id)
VALUES(2, 4);
INSERT INTO perfomersgenre(genre_id, perfomer_id)
VALUES(3, 3);

INSERT INTO perfomersalbum(album_id, perfomer_id)
VALUES(1, 3);

INSERT INTO perfomersalbum(album_id, perfomer_id)
VALUES(2, 1);

INSERT INTO perfomersalbum(album_id, perfomer_id)
VALUES(3, 4);
