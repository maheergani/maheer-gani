create schema marketco;
-- Q1
create table company
(
 companyid int primary key,
 coampanyname varchar(45) not null unique,
 street varchar(45) not null,
 city varchar(45) not null,
 state varchar(2) not null, 
 zip varchar(10) not null
);
insert into company value(1,'Mahendra',' Dr. G.M. Bhosale Marg P.K. Kurne Chowk Worli','Mumbai','MH',400018);
insert into company value(2,'toyota',' Bidadi Industrial Area,','Karnataka','KR',562109);
insert into company value(3,'tata','  Bombay House, 24 Homi Mody Street, ','Mumbai','MH',400001);
select * from company;
-- Q3
create table contact
(
contactid int primary key,
companyid int not null,
firstname varchar(45) not null,
lastname varchar(45) not null,
street varchar(45) not null,
city  varchar(45) not null,
state varchar(2) not null,
zip  varchar(10) not null,
ismain boolean,
email varchar(45) not null unique,
phone varchar(12) not null unique,
foreign key contact(companyid) references company(companyid)
);

insert into contact value(1001,1,'mohan','kumar','mg road','mumbai','MH','400001',true,'mohansharma@example.com','9106471105');
insert into contact value(1002,2,'sohan','panchal','brigad road','karnatak','KR','560001',false,'sohanpanchal@example.com','8826471105');
insert into contact value(1003,3,'shyam','gupta','bandra west','mumbai','MH','400001',true,'shyamgupta@example.com','9170764567');
select * from contact;
-- Q2
create table contactemployee
(
contactemployeeid int not null unique,
contactid int not null,
employeeid int primary key,
contactdate date,
description varchar(100) not null,
foreign key contactemployee(contactid) references contact(contactid )

);
insert into contactemployee value(2001,1001,3001,'2022-02-14','intital metting with Mahendra reprentative.');
insert into contactemployee value(2002,1002,3002,'2024-10-16','follow up with a dissuse toyota reprentative.');
insert into contactemployee value(2003,1003,3003,'2023-06-11','techninal disscution with a tata.');
create table employee
(
employeeid int not null unique,
firstname varchar(45) not null, 
lastname varchar(45) not null,
salary  decimal(10,2),
hiredate date,
jobtitle varchar(25) not null,
email varchar(45) not null unique,
phone varchar(12) not null unique,
foreign key employee(employeeid) references contactemployee(employeeid )

);
INSERT INTO employee VALUES (3001, 'John', 'Doe', 55000.00, '2022-01-15', 'Software Engineer', 'john.doe@example.com', '123-456-7890');
INSERT INTO employee VALUES(3002, 'Jane', 'Smith', 62000.00, '2021-05-22', 'Project Manager', 'jane.smith@example.com', '098-765-4321');
INSERT INTO employee VALUEs (3003, 'Mike', 'Johnson', 48000.00, '2020-10-10', 'Marketing Specialist', 'mike.johnson@example.com', '234-567-8901');
select * from employee;

describe contact;
describe company;
describe contactemployee;
describe employee;

-- Q 4 In the Employee table, the statement that changes anjali sharma phone number to 215-555-8800 
update employee set phone = '215-555-8800' where employeeid=3002;
-- Q 5) In the Company table, the statement that changes the name of “Mahendra.” to “Mahendra Enterprises Ltd.” 
update company set companyname= 'Mahendra Enterprises Ltd' where companyid=1;
/* Q8) What is the significance of “%” and “_” operators in the LIKE statement? 
i) %(percent):- The percent sign represents zero, one, or multiple characters 
ii) _(underscore):- The underscore represent single character.
*/

/* 9) Explain normalization in the context of databases. 
-   Normalization is the process of organizing the data and the attributes of a database.
-   It performed to reduce the data redundancy in a database & ensure that data is stored logical
-   Normalization is systematic approach of decomposing table to eliminate data redundancy and
    undesirable characteristics like insertion, update and delete.
   */ 
    
 /*   Q 10) What does a join in MySQL mean?
A SQL Join statement is used to combine data or rows from two or more tables based on a common
field between them.
● Different types of Joins are:
1.INNER JOIN
2.LEFT JOIN
3.RIGHT JOIN
4.FULL JOIN
    
   */ 
/*   Q 11) What do you understand about DDL, DCL, and DML in MySQL? 

i)DDL :-Data Defination Lecture
- Create : Create a new table , view table or other object in data base.
- Alter : Modifies an exiting database object, such as a table.
- Drop : deletes an entire table , view of a table or other object in database.

ii)DCL :- Data Control Language 
- Grant : Gives a privilege to  user.
- Revoke : Takes back privileges granted from user.

iii)DML :- Data Manipulation Language      
- Insert :Creates a  record.
- Update : Modifies a records.
- Delete : Delete records. 

*/
/* Q12
 A SQL Join statement is used to combine data or rows from two or more tables based on a common
field between them.
● Different types of Joins are:
1.INNER JOIN
2.LEFT JOIN
3.RIGHT JOIN
4.FULL JOIN
i)Inner Join 
● The most frequently used and important of the joins is the INNER JOIN
ii)Left Join 
● The SQL LEFT JOIN returns all rows from the left table, even if there are no matches in the right table.
This means that if the ON clause matches 0 (zero) records in right table, the join will still return a row
in the result, but with NULL in each column from right table.
iii)Right Join 
● The SQL RIGHT JOIN returns all rows from the right table, even if there are no matches in the left
table. This means that if the ON clause matches 0 (zero) records in left table, the join will still return a
row in the result, but with NULL in each column from left table.
iv)Full Join 
● The SQL FULL JOIN combines the results of both left and right outer joins.
● The joined table will contain all records from both tables, and fill in NULLs for missing matches on
either side.

*/



