create table employees1
(
worker_id int not null unique,
first_name varchar (25) not null,
last_name varchar (25) not null,
salary int not null,
joining_date varchar (25) not null, -- 2/20/2024 9.00
department varchar (25) not null
);

select * from employees1;

insert into employees1 values (1 ,'Monika' , 'Arora' , 100000 , '2/20/2024 9:00' , 'HR');
insert into employees1 values (2 ,'Niharika' , 'Verma' , 80000 , '6/11/2014 9:00' , 'Admin');
insert into employees1 values (3 ,'Vishal' , 'Singhal' , 300000 , '2/20/2024 9:00', 'HR');
insert into employees1 values (4 ,'Amitabh' , 'Singh' , 500000 , '2/20/2024 9:00' ,'Admin');
insert into employees1 values (5 ,'Vivek' , 'Bhati' , 50000 , '6/11/2014 9:00' , 'Admin');
insert into employees1 values (6 ,'Vipul' , 'Diwan' , 200000 , '6/11/2014 9:00' ,'Account');
insert into employees1 values (7 ,'Satish' , 'Kumar' , 75000 , '1/20/2014 9:00','Account');
insert into employees1 values (8 ,'Geetika' , 'Chauhan' , 90000 , '4/11/2014 9:00','Admin');


select * from employees1;

describe employees1;


-- Q1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- // Ascending and DEPARTMENT Descending


select department,first_name,max(salary) from employees1 group by department,first_name;
-- Q9 Write an SQL query to print the name of employees having the highest salary in each department. 
select employees1_int,count(*) as number_people from workers group by employees1_int;
-- Q8  Write an SQL query to show all departments along with the number of people in there. 

select department,count(*) as number_people from employees1 group by department;

 -- Q7 Write an SQL query to fetch the departments that have less than five people in them

select * from employees1 order by 6 desc;
-- Q6 Write an SQL query to show the top 6 records of a table.

select * from employees1 limit 6;
-- Q5 Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

select * from employees1 where salary between 50000 and 100000;
-- Q4 Write an SQL query to print details of the Workers whose SALARY lies between.1

select * from employees1 where first_name like '_h' and length(first_name) = 6;
-- Q3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabet

select * from employees1 where first_name in ('vipul','satish');
-- Q2 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table

select * from employees1 order by first_name asc
-- Q1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME