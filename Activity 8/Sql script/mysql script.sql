create database DWass2;

use DWass2;

create table Customer(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);



-- truncate table customer;


insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(300,'Omer','Siddiqui','Bahadurabad','03052295554');
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(301,'Ahsan','Amir','Gulshan','03052456443');
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(302,'Faaiz','Faroqi','PIB','03003982773');

select * from customer;
