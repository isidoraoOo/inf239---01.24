drop table table2;

create table table2 (
	IDt2 int,
	title varchar (100),
	released_year float,
	rated_class varchar (10),
	run_time varchar (15),
	stars float,
	total_ratings varchar (50),
	genre varchar (50),
	summary varchar (500)
	CONSTRAINT FK_table1_ID FOREIGN KEY (IDt2) REFERENCES table1(ID)
);

bulk insert table2 from 'C:\Users\isidora\Downloads\data\final_movies.csv'
with
(
    keepnulls,
    format = 'CSV',
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\n',
    tablock
);