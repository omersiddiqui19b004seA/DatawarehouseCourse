-- create database DWass2;

use DWass2;
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;

create table Activity4(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);


-- truncate table Activity4;


insert into Activity4(id,Firstname,Lastname,Address,Phone_Number) values(400,'BAig','Safdar','Bahadurabad','03052295554');
insert into Activity4(id,Firstname,Lastname,Address,Phone_Number) values(401,'Irfan','junejo','Gulshan','03052456443');
insert into Activity4(id,Firstname,Lastname,Address,Phone_Number) values(402,'Saad','Hussain','PIB','03003982773');

select * from Activity4;

