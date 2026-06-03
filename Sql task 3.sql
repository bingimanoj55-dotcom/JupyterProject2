CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT,
gender VARCHAR(10),
email VARCHAR(100) UNIQUE,
salary DECIMAL(10,2),
dob DATE,
city VARCHAR(50),
joining_date DATE,
is_active BOOLEAN
);

INSERT INTO employees (id, name, age, gender, email, salary, dob, city, joining_date, is_active)
VALUES
(1, 'Amit Sharma', 28, 'Male', 'amit.sharma@example.com', 45000.00, '1998-05-12', 'Hyderabad', '2022-01-15', TRUE),
(2, 'Priya Reddy', 32, 'Female', 'priya.reddy@example.com', 52000.00, '1992-03-08', 'Bangalore', '2021-07-10', TRUE),
(3, 'Rahul Verma', 26, 'Male', 'rahul.verma@example.com', 38000.00, '1999-11-20', 'Delhi', '2023-02-01', TRUE),
(4, 'Sneha Iyer', 29, 'Female', 'sneha.iyer@example.com', 47000.00, '1997-07-14', 'Chennai', '2020-09-25', FALSE),
(5, 'Arjun Patel', 35, 'Male', 'arjun.patel@example.com', 60000.00, '1989-01-30', 'Mumbai', '2019-05-12', TRUE),
(6, 'Meera Nair', 31, 'Female', 'meera.nair@example.com', 51000.00, '1993-04-18', 'Kochi', '2022-11-20', TRUE),
(7, 'Karan Singh', 27, 'Male', 'karan.singh@example.com', 42000.00, '1997-09-09', 'Pune', '2023-03-05', TRUE),
(8, 'Divya Joshi', 30, 'Female', 'divya.joshi@example.com', 48000.00, '1994-06-22', 'Jaipur', '2021-12-01', FALSE),
(9, 'Vikram Rao', 33, 'Male', 'vikram.rao@example.com', 55000.00, '1991-02-15', 'Hyderabad', '2020-08-18', TRUE),
(10, 'Anjali Gupta', 25, 'Female', 'anjali.gupta@example.com', 37000.00, '1999-10-05', 'Delhi', '2023-04-10', TRUE),
(11, 'Suresh Kumar', 40, 'Male', 'suresh.kumar@example.com', 70000.00, '1984-12-12', 'Chennai', '2018-06-20', TRUE),
(12, 'Neha Kapoor', 28, 'Female', 'neha.kapoor@example.com', 46000.00, '1996-08-25', 'Mumbai', '2022-02-14', TRUE),
(13, 'Rohan Das', 34, 'Male', 'rohan.das@example.com', 58000.00, '1990-05-19', 'Kolkata', '2019-11-30', FALSE),
(14, 'Pooja Mehta', 27, 'Female', 'pooja.mehta@example.com', 43000.00, '1997-03-11', 'Ahmedabad', '2023-01-22', TRUE),
(15, 'Manish Yadav', 29, 'Male', 'manish.yadav@example.com', 47000.00, '1995-07-07', 'Lucknow', '2021-09-15', TRUE),
(16, 'Shalini Roy', 36, 'Female', 'shalini.roy@example.com', 62000.00, '1988-11-02', 'Kolkata', '2018-04-05', TRUE),
(17, 'Deepak Jain', 31, 'Male', 'deepak.jain@example.com', 50000.00, '1993-01-17', 'Indore', '2022-07-19', FALSE),
(18, 'Ritika Sen', 26, 'Female', 'ritika.sen@example.com', 39000.00, '1998-09-29', 'Bhopal', '2023-05-01', TRUE),
(19, 'Nikhil Choudhary', 30, 'Male', 'nikhil.choudhary@example.com', 48000.00, '1994-12-21', 'Nagpur', '2021-11-11', TRUE),
(20, 'Ayesha Khan', 28, 'Female', 'ayesha.khan@example.com', 45000.00, '1996-06-03', 'Hyderabad', '2022-08-08', TRUE);


select id,name from employees;

select * from employees where age >35;

select * from employees where age >35 AND city = 'Chennai';

select * from employees where city = 'Kolkata' or city = 'Chennai';

select * from employees where name like 'an%';

select * from employees where salary between 35000 and 40000;

select * from employees order by salary desc;

select * from employees limit 5;

select * from employees limit 5 offset 5;

select distinct city from employees;

select * from employees
order by salary desc
limit 3;

select @@autocommit;


INSERT INTO account (id,name,balance) 
VALUES
(1 , 'Rohith' , 10000),
(2 , 'Anjali' , 5000);

select * from account;

update account
set balance = balance - 2000
where id = 1;

select * from account;

commit;

update account
set balance = balance - 3000
where id = 1;

rollback;

update account
set balance = balance + 3000
where id = 1;

set autocommit = 0;

update account
set balance = balance - 3000
where id = 1;

rollback;

set autocommit = 1;

use college;

select length(name) from employees;

select * from employees limit 3;

select count(*) from employees;

select count(*) from employees where age > 30;

select max(salary) from employees;

select min(salary) from employees;

select max(salary) as max_salary from employees;

select sum(salary) as sum_salary from employees;

select sum(salary) as sum_salary from employees where age > 30 and gender= 'Male';

