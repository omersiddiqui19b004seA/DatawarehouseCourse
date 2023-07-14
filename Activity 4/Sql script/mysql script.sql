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
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(303,'Farooq','Ahmed','Golimar','03876354323');
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(304,'Naseeb','Ullah','Malir','03627283742');
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(305,'Muavia','Khan','Maymar','033926473629');
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(306,'Maaz','Qalandar','Johar','03256373849');
insert into customer(id,Firstname,Lastname,Address,Phone_Number) values(307,'Saim','Mehmood','Cantt','03006473838');
select * from customer;
