create database DWass2;

use DWass2;


create table Exploring_multicast(
    id int,
    Firstname varchar(50),
    Lastname varchar(50),
    Address varchar(50),
    Phone_Number varchar(11)
);

select * from Exploring_multicast;
truncate table Exploring_multicast;


insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(1,'Omer','Siddiqui','Bahadurabad','03052295554');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(2,'Ahsan','Amir','Gulshan','03052456443');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(3,'Faaiz','Faroqi','PIB','03003982773');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(4,'Farooq','Ahmed','Golimar','03876354323');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(5,'Naseeb','Ullah','Malir','03627283742');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(6,'Muavia','Khan','Maymar','033926473629');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(7,'Maaz','Qalandar','Johar','03256373849');
insert into Exploring_multicast(id,Firstname,Lastname,Address,Phone_Number) values(8,'Saim','Mehmood','Cantt','03006473838');


