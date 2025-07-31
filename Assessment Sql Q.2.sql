# Question 2: Open school database, then select student table and use following SQL statements. 
# TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT 

use school;

CREATE TABLE Student (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex varchar(10),
    Percentage int,
    Class int,
    Sec varchar(2),
	Stream VARCHAR(30),
    DOB DATE) ;
    
# Q.1) To display all the records form STUDENT table. 
	SELECT * FROM student;

# Q.2 To display any name and date of birth from the table STUDENT.  
SELECT StdName, DOB FROM student;

# Q.3 To display all students record where percentage is greater of equal to 80 FROM student table. 
SELECT * FROM student WHERE percentage >= 80;

#Q.4. To display student name, stream and percentage where percentage of student is more than 80 
 SELECT StdName, Stream, Percentage FROM student WHERE percentage > 80;

# Q.5  To display all records of science students whose percentage is more than 75 form student table. 
SELECT * FROM student WHERE Stream = 'Science' AND Percentage > 75;
