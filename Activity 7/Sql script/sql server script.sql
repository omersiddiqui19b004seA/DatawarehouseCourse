--create database [DWH assignment];
use [DWH assignment ];

create table dbo.Customers(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);
select * from dbo.Customers;
-- truncate table dbo.Customers;