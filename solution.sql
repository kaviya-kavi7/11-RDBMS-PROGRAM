CREATE DATABASE KAVIYA_DB;
USE KAVIYA_DB;
CREATE TABLE Department11 (
    Department_ID NUMBER(5) PRIMARY KEY,
    Department_Name VARCHAR2(30)
);

INSERT INTO Department11 VALUES (101, 'Computer Science');
INSERT INTO Department11 VALUES (102, 'Mathematics');
INSERT INTO Department11 VALUES (103, 'Physics');

CREATE TABLE Student11 (
    Student_ID NUMBER(5) PRIMARY KEY,
    Student_Name VARCHAR2(20),
    Department_ID NUMBER(5)
);

INSERT INTO Student11 VALUES (1001, 'Arun', 101);
INSERT INTO Student11 VALUES (1002, 'Divya', 102);
INSERT INTO Student11 VALUES (1003, 'Karthick', 101);

CREATE TABLE Course11 (
    Course_ID NUMBER(5) PRIMARY KEY,
    Course_Name VARCHAR2(30)
);

INSERT INTO Course11 VALUES (201, 'Database System');
INSERT INTO Course11 VALUES (202, 'Data Structure');
INSERT INTO Course11 VALUES (203, 'Mathematics');

CREATE TABLE Enrollment11 (
    Enrollment_ID NUMBER(5) PRIMARY KEY,
    Student_ID NUMBER(5),
    Course_ID NUMBER(5)
);

INSERT INTO Enrollment11 VALUES (1, 1001, 201);
INSERT INTO Enrollment11 VALUES (2, 1001, 202);
INSERT INTO Enrollment11 VALUES (3, 1002, 203);

CREATE VIEW Student_Details AS
SELECT S.Student_Name,
       C.Course_Name,
       D.Department_Name
FROM Student11 S
JOIN Enrollment11 E
ON S.Student_ID = E.Student_ID
JOIN Course11 C
ON E.Course_ID = C.Course_ID
JOIN Department11 D
ON S.Department_ID = D.Department_ID;

SELECT * FROM Student_Details;
