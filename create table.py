import psycopg2

conn = psycopg2.connect(database="netology_hm", user="postgres", password="pass")

create table if not exists Genre (
id SERIAL primary key,
genres_names VARCHAR(60)
);

create table if not exists Perfomers (
id SERIAL primary key,
perfomer_name VARCHAR(80)
);

create table if not exists PerfomersGenre (
id SERIAL primary key,
genre_id INTEGER references Genre(id),
perfomer_id INTEGER references Perfomers(id)
);

create table if not exists Albums(
id SERIAL primary key,
name VARCHAR(60),
realese_date date
);

create table if not exists PerfomersAlbum(
id SERIAL primary key,
album_id INTEGER references Albums(id),
perfomer_id INTEGER references Perfomers(id)
);

create table if not exists Track(
id SERIAL primary key,
name VARCHAR(60),
duration INTEGER,
album_id INTEGER references Albums(id)
);

create table if not exists Compilation(
id SERIAL primary key,
compilation_name VARCHAR(60),
realese_date date
);

create table if not exists CompilationTrack(
id SERIAL primary key,
compilation_id INTEGER references Compilation(id),
track_id INTEGER references Track(id)
);