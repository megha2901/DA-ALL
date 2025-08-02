use school;
create table Worker
( WORKER_ID INT PRIMARY KEY,
 FIRST_NAME VARCHAR (50) ,
 LAST_NAME VARCHAR (50),
 SALARY NUMERIC,
 JOINING_DATE  datetime ,
 DEPARTMENT VARCHAR (30));
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');


# Q.1)Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
  select * from worker order by  FIRST_NAME asc, DEPARTMENT desc;


# Q.2)Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
select * from worker where  FIRST_NAME in ('vipul' ,'satish'); 


# Q.3)Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets
select * from worker where
FIRST_NAME like '_____h' and length (FIRST_NAME) =6;


# Q.4) . Write an SQL query to print details of the Workers whose SALARY lies between 1
SELECT * FROM Worker 
WHERE SALARY BETWEEN 70000 AND 100000;

#Q.5)Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
SELECT FIRST_NAME, COUNT(WORKER_ID) FROM Worker
GROUP BY FIRST_NAME HAVING COUNT(WORKER_ID) > 1;

#Q.6) Write an SQL query to show the top 6 records of a table. 
SELECT * FROM Worker LIMIT 6;
  

# Q.7) Write an SQL query to fetch the departments that have less than five people in them. 
SELECT DEPARTMENT FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID) < 5;

# Q.8) Write an SQL query to show all departments along with the number of people in there. 
SELECT DEPARTMENT, COUNT(WORKER_ID) AS Num_Workers FROM Worker
GROUP BY DEPARTMENT;

# Q.9)  Write an SQL query to print the name of employees having the highest salary in each department.
SELECT W1.* FROM Worker W1
INNER JOIN (
    SELECT DEPARTMENT, MAX(SALARY) AS MaxSalary
    FROM Worker
    GROUP BY DEPARTMENT)
  W2 ON W1.DEPARTMENT = W2.DEPARTMENT AND W1.SALARY = W2.MaxSalary;
