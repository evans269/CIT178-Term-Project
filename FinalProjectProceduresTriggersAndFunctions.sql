/*Final Project Procedures

USE fictionalStudents;
GO
CREATE PROC spFindStudent
	@Advisor varchar(40) = '%'
AS 
BEGIN
	SELECT LName, FName
	FROM Student
	WHERE StudentID LIKE @Student;
END
GO
EXEC spFindStudent 'Jo%';


USE fictionalStudents;
GO
CREATE PROC spMajorArea
	@Area varchar(20) = NULL
AS
BEGIN
IF @Area IS NULL
	SELECT * FROM Major
ELSE 
	SELECT * FROM Major
	WHERE Area=@Area
END
GO
EXEC spMajorArea;
EXEC spMajorArea 'SS';

USE fictionalStudents;
GO
CREATE PROC spStudentAdvisors
	@AdvisorVar varchar(40) = '%'
AS
DECLARE @AdCount int;
SELECT @AdCount = COUNT(Advisor)
FROM Advisor
JOIN Student on Advisor.StudentID = Student.StudentID
WHERE Advisor LIKE @AdvisorVar;
RETURN @AdCount;
GO


USE fictionalStudents;
GO
IF OBJECT_ID('spStudentAdvisors') IS NOT NULL
	DROP PROC spStudentAdvisors;
GO

CREATE PROC spStudentAdvisors
	@AdvisorVar varchar(40) = '%',
	@AdvisorName varchar(40) OUTPUT
AS
DECLARE @AdCount int;
SELECT @AdCount = COUNT(Advisor), @AdvisorName=Advisor
FROM Advisor
JOIN Student on Advisor.StudentID = Student.StudentID
WHERE Advisor LIKE @AdvisorVar
GROUP BY Advisor
RETURN @AdCount;
GO

DECLARE @AdvisorName varchar(40);
DECLARE @AdCount int;
EXEC @AdCount=spStudentAdvisors', A%', @AdvisorName OUTPUT
SELECT @AdCount AS 'Advisor', @AdCount AS 'Number of Advisors'

USE fictionalStudents;
GO
IF OBJECT_ID('spStudentAdvisors') IS NOT NULL
	DROP PROC spStudentAdvisors;
GO

CREATE PROC spStudentAdvisors
	@AdvisorVar varchar(40) = '%',
	@AdvisorName varchar(40) OUTPUT,
	@MajorCode varchar(5) OUTPUT
AS
DECLARE @AdCount int;
SELECT @AdCount = COUNT(Advisor), @AdvisorName=Advisor, @MajorCode = @AdvisorVar
FROM Advisor
JOIN Student on Advisor.StudentID = Student.StudentID
WHERE Advisor LIKE @AdvisorVar
GROUP BY Advisor, MajorCode
RETURN @AdCount;
GO

DECLARE @AdvisorName varchar(40);
DECLARE @AdCount int;
DECLARE @MajorCode varchar(5);
EXEC @AdCount=spStudentAdvisors', A%', @AdvisorName OUTPUT, @MajorCode OUTPUT
SELECT @AdCount AS 'Advisor', @AdCount AS 'Number of Advisors', @MajorCode AS 'Student Major';

Final Project User Defined Functions 

USE fictionalStudents;
GO
CREATE FUNCTION fnStudentID
	(@StudentName varchar(50))
	RETURNS int
BEGIN 
	RETURN (SELECT StudentID FROM Student WHERE StudentID=@StudentName);
END;


USE fictionalStudents;
GO
CREATE FUNCTION fnStudents
	(@StudentID int)
	RETURNS table
RETURN
	(SELECT * FROM Student WHERE @StudentID=Student.StudentID);

Final Project Triggers

USE fictionalStudents;
SELECT StudentID, LName, FName, DOB INTO TestStudents
FROM Student;

CREATE TABLE StudentLogs(
	StudentID varchar(40),
	status varchar(40)
);

CREATE TRIGGER TestStudents_INSERT ON TestStudents
	AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @StudentID varchar(40)
	SELECT @StudentID=INSERTED.StudentID
	FROM INSERTED
	INSERT INTO StudentLogs
	VALUES(@StudentID, 'Inserted')
END

INSERT INTO TestStudents(StudentID, LName, FName, DOB) VALUES (900112,'Reagan', 'Ronald', 2/6/1911);
INSERT INTO TestStudents(StudentID, LName, FName, DOB) VALUES (902312,'Reagan', 'Nancy', 7/6/1921);


CREATE TRIGGER TestStudents_DELETE ON TestStudents
	AFTER DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @StudentID varchar(40)
	SELECT @StudentID=DELETED.StudentID
	FROM DELETED
	INSERT INTO StudentLogs
	VALUES(@StudentID, 'Deleted')
END*/









