drop table table1;

create table table1 (
    ID int not null primary key,
    title varchar(100),
    episodes int,
    years varchar (30),
    original_channel varchar (80),
    american_company varchar(100),
    note varchar(100),
    technique varchar(200),
    imdb float,
    google_users varchar(10)
);

bulk insert table1 from
'C:\Users\isidora\Downloads\data\Animated_Tv_Series.csv'
with
(
    keepnulls,
    format = 'CSV',
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\n',
    tablock
);