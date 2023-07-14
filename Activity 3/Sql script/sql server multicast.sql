create database [DWH assignment ];

use [DWH assignment ];


create table dbo.Exploring_multicast(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);

select * from Exploring_multicast;
truncate table Exploring_multicast;