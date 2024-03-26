CREATE DATABASE STUDENTS;


USE STUDENTS;

2 a

CREATE TABLE PersonalInfo (
        StudentID INT PRIMARY KEY,
        FirstName NVARCHAR(50),
        LastName NVARCHAR(50),
        DateOfBirth DATE
    );

b
CREATE TABLE AcademicInfo (
        RecordID INT PRIMARY KEY,
        StudentID INT FOREIGN KEY REFERENCES PersonalInfo(StudentID),
        Faculty NVARCHAR(100),
        Curator NVARCHAR(100),
        EnrollmentYear INT
    );


	c
CREATE TABLE ContactInfo (
        ContactID INT PRIMARY KEY,
        StudentID INT FOREIGN KEY REFERENCES PersonalInfo(StudentID),
        Email NVARCHAR(100),
        PhoneNumber NVARCHAR(15)
    );


3 a

ALTER TABLE ContactInfo ADD Address NVARCHAR(200);

b

    ALTER TABLE ContactInfo DROP COLUMN PhoneNumber;

c 
    EXEC sp_rename 'ContactInfo.Email', 'EmailAddress', 'COLUMN';

*/   Caution: Changing any part of an object name could break scripts and stored procedures.
4
   ALTER TABLE AcademicInfo
   ALTER COLUMN Faculty NVARCHAR(150);

5

          CREATE TABLE Extracurricular (
        ActivityID INT PRIMARY KEY,
        StudentID INT FOREIGN KEY REFERENCES PersonalInfo(StudentID),
        ActivityName NVARCHAR(100),
        JoinDate DATE
    );


DROP TABLE Extracurricular;

6
 CREATE DATABASE TEACHER;

 DROP DATABASE TEACHER;


 7
 USE STUDENTS;

 INSERT INTO PersonalInfo (StudentID, FirstName, LastName, DateOfBirth)
VALUES 
    (1, 'Олександр', 'Петров', '2000-05-15'),
    (2, 'Марія', 'Іваненко', '2001-03-22'),
    (3, 'Василь', 'Коваленко', '1999-10-10');
/* (3 rows affected)


