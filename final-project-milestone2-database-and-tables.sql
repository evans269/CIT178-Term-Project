CREATE DATABASE fictionalStudents;
GO

USE fictionalStudents;

CREATE TABLE Student(
	StudentID int NOT NULL,
	FName varchar(20) NOT NULL,
	LName varchar(30) NOT NULL,
	Gender char(1),
	Ethnicity varchar(20),
	DOB date,
	MajorCode varchar(5) NOT NULL,
	AdvisorID char(4),
	PRIMARY KEY(StudentID)
);
GO

CREATE TABLE Area(
	AreaCode varchar(5) NOT NULL,
	Area varchar(20)
	PRIMARY KEY(AreaCode)
);
GO 
CREATE TABLE Major(
	MajorCode varchar(5) NOT NULL,
	Major varchar(20),
	Area varchar(5) NOT NULL,
	PRIMARY KEY(MajorCode)
);
GO
CREATE TABLE Grade(
	StudentID int NOT NULL,
	Term char(6) NOT NULL,
	GPA int,
	DeansList varchar(3),
	PRIMARY KEY(StudentID, Term)
);
GO 
CREATE TABLE Advisor(
	AdvisorID char(4) NOT NULL,
	Advisor varchar(40),
	StudentID int NOT NULL,
	PRIMARY KEY(StudentID, AdvisorID) 
);


