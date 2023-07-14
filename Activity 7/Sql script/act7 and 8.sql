SELECT * FROM DBO.Customers;
SELECT * FROM DBO.Activity4;
SELECT * FROM DBO.Group_member;
TRUNCATE TABLE DBO.Customers;
TRUNCATE TABLE DBO.Group_member;
TRUNCATE TABLE DBO.Activity4;

INSERT INTO Group_member (id,Firstname,Lastname,Address,Phone_Number) values (501,'Rayan','Siddiqui','Dubai','03002006362');
INSERT INTO Group_member (id,Firstname,Lastname,Address,Phone_Number) values (502,'Mohsin','Khan','Johar','03224678362');
INSERT INTO Group_member (id,Firstname,Lastname,Address,Phone_Number) values (503,'Zian','Ihsan','Malir','03344973933');