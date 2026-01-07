create database july_13;
use july_13;

# 1) Statement to create the Contact table 

create table contact
( ContactID int primary key ,
CompanyID int ,
Firstname varchar(45),
Lastname varchar(45),
Street  varchar(45),
City  varchar(45),
State varchar(2),
Zip varchar(10),
Ismain boolean ,
Email varchar(45) ,
Phone varchar(12 ));


# 2) Statement to create the Employee table

create table employee
( EmployeeID int primary key,
FirstName varchar(45),
LastName varchar(45),
Salary decimal(10,2),
HireDate date,
JobTitle varchar(25),
 Email varchar(45) ,
Phone varchar(12 ));

create table company
( CompanyID int primary key,
CompanyName varchar(45),
Street varchar(45),
City varchar(45),
State varchar(2) ,
Zip varchar(10));

# 3) Statement to create the ContactEmployee table

create table ContactEmployee
 (ContactEmployeeID int primary key,
 ContactID int ,
 EmployeeID int,
ContactDate date,
Description varchar (100));
  
# 4) In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 

UPDATE Employee SET phone_number = '215-555-8800'
WHERE first_name = 'Lesley' AND last_name = 'Bland';


# 5) In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” . 

UPDATE Company SET CompanyName = 'Urban Outfitters' 
WHERE CompanyName ='Urban Outfitters, Inc.' ;


#6) In ContactEmployee table, the statement that removes Dianne Connor’s contact event with Jack Lee (one statement).

DELETE FROM ContactEmployee WHERE contact_id = 1; 


# 7) Write the SQL SELECT query that displays the names of the employees that have contacted Toll Brothers (one statement). Run the SQL SELECT query in 
# MySQL Workbench. Copy esults below as well.  

SELECT e.FirstName, e.LastName
FROM Employee e
JOIN ContactEmployee ce ON e.EmployeeID = ce.EmployeeID
JOIN Contact c ON ce.ContactID = c.ContactID
JOIN Company co ON c.CompanyID = co.CompanyID
WHERE co.CompanyName = 'Toll Brothers';

/* 8) What is the significance of “%” and “_” operators in the LIKE statement? 

ans:-  The percent sign (%) represents zero, one, or multiple characters The underscore sign (_) represents one, single character

9)  Explain normalization in the context of databases. 
ans:-Normalization is the process of organizing data in a database to:
		1.Remove duplicate data (redundancy)
		2.Ensure data consistency
		3.Improve data integrity
		4.Make the database efficient and easier to maintain

10) What does a join in MySQL mean? 
 ans:- A JOIN in MySQL is used to combine data from two or more tables based on a related column, usually a foreign key.

11) What do you understand about DDL, DCL, and DML in MySQL?
 ans:- DDL (Data Definition Language) Used to define or change the structure of tables.
 Commands:CREATE – create table, ALTER – modify table, DROP – delete table
 
	DCL (Data Control Language)Used to control access and permissions.
Commands:GRANT – give access, REVOKE – take back access

DML (Data Manipulation Language)Used to work with the data inside the tables.
 Commands:SELECT – retrieve data, INSERT – add data, UPDATE – modify data, DELETE – remove data
 
 12) What is the role of the MySQL JOIN clause in a query, and what are some common types of joins?
ans:-The JOIN clause in MySQL is used to combine rows from two or more tables based on a related column.
	It helps to get complete data that is stored in different tables.
    Common Types of JOINs:
	1.INNER JOIN – Returns only matching rows from both tables.
	2.LEFT JOIN – Returns all rows from the left table, and matching rows from the right.
	3.RIGHT JOIN – Returns all rows from the right table, and matching rows from the left.
	4.CROSS JOIN – Returns all possible combinations of rows from both tables.



