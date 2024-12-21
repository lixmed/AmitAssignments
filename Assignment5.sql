select * from employees;
select employee_id , first_name , department_id from employees ;

select distinct department_id from employees;

CREATE TABLE students (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) DEFAULT 'Unknown',
    Address VARCHAR(100) DEFAULT 'N/A',
    City VARCHAR(50) DEFAULT 'N/A',
    Birth_Date DATE
);

DROP TABLE students;

INSERT INTO students (First_Name, Last_Name, Address, City, Birth_Date)
VALUES ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');

UPDATE students
SET Address = 'Garden City'
WHERE Last_Name = 'Ahmed';


BEGIN TRANSACTION;

DELETE FROM students
WHERE City = 'Cairo';

ROLLBACK;
