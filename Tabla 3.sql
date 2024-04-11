--14. TABLA
drop table table3;

create table table3 (
	IDt3 int,
	title varchar (100),
    episodes int,
    years varchar (30),
    original_channel varchar (80),
    american_company varchar(100),
    note varchar(100),
    technique varchar(200),
    imdb float,
    google_users varchar(10),
	released_year float,
	rated_class varchar (10),
	run_time varchar (15),
	stars float,
	total_ratings varchar (50),
	genre varchar (50),
	summary varchar (500),
	CONSTRAINT FK_table1_ID FOREIGN KEY (IDt3) REFERENCES table1(ID)
);


INSERT INTO table3 (IDt3, title, episodes, years, original_channel, american_company, note, technique, imdb, google_users, released_year, rated_class, run_time, stars, total_ratings, genre, summary)
SELECT table1.ID, table1.title, table1.episodes, table1.years, table1.original_channel, table1.american_company, table1.note, table1.technique, table1.imdb, table1.google_users, table2.released_year, table2.rated_class, table2.run_time, table2.stars, table2.total_ratings, table2.genre, table2.summary 
FROM table1
INNER JOIN table2 ON table1.title = table2.title;
