use project;
create table Persons
(id int,name varchar(50),date date);
select * from persons;

insert into persons
values (1,'Otieno','12/05/2024')

update persons
set name = 'Dedan'
where id = 1;

insert into persons
values (3,'Onyango','14 may 2024'),
       (5,'Anyango','15 may 2024'),
	   (2,'valary','15 may 2024'),
	   (6,'Owino','17 may 2024'),
	   (7,'Okoth','16 may 2024');


insert into persons
values (10,'Vicky','2024 may 21')
select * from persons;

ALTER TABLE persons
ADD COLUMN department VARCHAR(50);

create table employees
(id int, name varchar(30), age varchar(20));
select * from persons;
select * from employees;

INSERT INTO employees (id, name, age)
VALUES
    (1, 'John', 30),
    (2, 'Alice', 25),
    (3, 'Bob', 35),
    (4, 'Emily', 28);

INSERT INTO employees (id, name, age)
VALUES
    (1, 'James', 38),
    (2, 'Alara', 45),
    (3, 'Bob marley', 34),
    (4, 'Emilio Kibaki', 78);

ALTER TABLE employees
ALTER COLUMN age int;

## Aggregate functions.

select AVG(age) as Avarage
from employees;

select COUNT(id)
from employees;

select SUM(age)
from employees;
select min(age) as lower_age
from employees;

select max(age) as lower_age
from employees;
select min(age) as lower_age
from employees;

## String functions.

use Project;
select LEN(name)as numberletters from employees;
select TRIM(name) as trimstring from employees;
select LEFT(name,2) as leftstring from employees;
select right(name,2) as rightstring from employees;
select upper(name) as uppercase from employees;
select lower(name) as lowercase from employees;

select ltrim(name) as lefttrim from employees;
select rtrim(name) as righttrim from employees;
SELECT SUBSTRING('Hello World', 7, 5) AS SubString;


## Date and time functions.

SELECT GETDATE() AS CurrentDateTime;
SELECT SYSDATETIME() AS CurrentDateTime;
SELECT DATEADD(day, 7, GETDATE()) AS DateAfter7Days;
SELECT DATEDIFF(day, '2022-01-01', '2022-01-07') AS DaysDifference;


select * from persons;
select * from employees;


## Mathematical functions.

SELECT SQRT(25) AS SquareRoot;
SELECT ABS(age) from employees AS ABSvalues;
use  Project;
select * from employees;

select ROUND(45.54,2)as result;
insert into employees
values (10,'Misiga',37,2000),
       (21,'Arnold',65,40003);
alter table employees
alter column age float;

select ROUND(age,1) from employees
where id = '10';
SELECT FLOOR(10.8) AS FloorValue;
SELECT ceiling(10.8) AS CeilValue;
SELECT POWER(2, 3) AS PowerValue;
SELECT LOG(10) AS NaturalLogarithm;




INSERT INTO Employees (ID, Name, Salary)
VALUES 
    (1, 'John', 50000.00),
    (2, 'Alice', 75000.00),
    (3, 'Bob', 90000.00),
    (4, 'Jane', 60000.00);

ALTER TABLE Employees
ADD MonthlySalary DECIMAL(10, 2);
select * from employees;
INSERT INTO Employees 
VALUES 
    (14, 'John',46, 50000.00),
    (24, 'Alice',21, 75000.00),
    (35, 'Bob',98, 90000.00),
    (43, 'Jane',31, 60000.00);


update employees
set age = '32'
where age = '5464';
update employees
set age = '32'
where age = '5464.37';
update employees
set age = '56'
where age = '45.54';

select * from employees;
alter table employees alter column age varchar(50);

## Conditional functions.

select * from employees;
use Project;
select age,
CASE 
     when age >= 70 then 'old'
        when age >= 50 then 'medium'
			when age >= 30 then  'jryouth'
				 when age >= 20 then 'youth'
				     else 'child' end as 'agebracket'
				        from employees;
	
select name, age, iif(age > 46,'old employee','young employee') as employeegroups from employees;	

DECLARE @number INT = 10;

IF @number > 5
BEGIN
    PRINT 'The number is greater than 5.';
END
ELSE
BEGIN
    PRINT 'The number is less than or equal to 5.';
END


## Conversion functions.

select CAST('123' as float ) as CastValue;
SELECT CONVERT(INT, '123') AS ConvertedValue;
