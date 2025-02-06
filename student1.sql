create schema assesment2;


create table students
 (

std_id int not null unique,
STD_name varchar (25) ,
sex varchar (25) ,
percentage float,
class int not null,
sec varchar (1) not null,
stream varchar(25) not null,
dob varchar (25) not null
);
describe students;
insert into students values (1001 ,'surekha joshi','female','82', '12','A','scince','3/8/1998');
insert into students values (1002 ,'maahi agrawal','female','56', '11','c','commerce','11/23/2008');
insert into students values (1003 ,'sanam verma','male','59', '11','c','commerce','6/29/2006');
insert into students values (1004 ,'ronit kumar','male','63', '11','c','commerce','11/5/1997');
insert into students values (1005 ,'dipesh pulkit','male','78', '11','b','scince','14/9/2003');
insert into students values (1006 ,'jahanvi puri','female','60', '11','b','commerce','11/7/2008');
insert into students values (1007 ,'sanam kumar','male','23', '12','f','commerce','3/8/1998');
insert into students values (1008 ,'sahil saras','male','56', '11','c','commerce','3/8/1998');
insert into students values (1009 ,'akshra agrawal','female','72', '12','b','commerce','3/8/1998');
insert into students values (1010 ,'stuti mishra','female','39', '11','f','scince','3/8/1998');
insert into students values (1011 ,'harsh agrawal','male','42', '11','c','scince','3/8/1998');
insert into students values (1012 ,'nikunj agrawal','male','49', '12','c','commerce','3/8/1998');
insert into students values (1013 ,'akriti saxena','female','89', '12','A','scince','3/8/1998');
insert into students values (1014 ,'tani','female','82', '12','A','scince','3/8/1998');

-- Q 1 To display all the records form STUDENT table;
select * from students;

-- Q 2 To display any name and date of birth from the table STUDENT.
select STD_name,dob from students;

-- Q 3 To display all students record where percentage is greater of equal to 80 FROM student table. 
select * from students where percentage >=80;

-- Q 4 To display student name, stream and percentage where percentage of student is more than 80.
select STD_name,stream,percentage from students where percentage>80;
 
-- Q 5 To display all records of science students whose percentage is more than 75 form student table. 
select * from students where percentage >75;