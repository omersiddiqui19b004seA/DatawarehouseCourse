use [DWH assignment ];
select * from dbo.Group_member;


create table dbo.Group_member(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);


create table dbo.Exploring_multicast(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);

select * from dbo.Exploring_multicast;
truncate table dbo.Customers;


