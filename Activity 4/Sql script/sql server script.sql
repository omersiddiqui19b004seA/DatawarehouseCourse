--create database [DWH assignment];
use [DWH assignment ];


truncate table dbo.Customers;
select * from dbo.Customers;
drop table dbo.Customers;
create table dbo.Customers(
	pid int IDENTITY(1,1) PRIMARY KEY,
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11),
	times datetime DEFAULT current_timestamp,
	SourceName varchar(255)
);