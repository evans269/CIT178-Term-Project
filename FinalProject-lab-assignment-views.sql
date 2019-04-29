/*Final Project Views 

USE fictionalStudents;
GO
--Updateable View:
CREATE VIEW VI_view
AS
SELECT Grade.StudentID, Term, GPA
FROM Grade
JOIN Student ON Grade.StudentID = Student.StudentID;



USE fictionalStudents;
GO
--Limited View:
CREATE VIEW VI_limited_view
AS
SELECT Advisor.StudentID, Advisor, Student.MajorCode
FROM Advisor
JOIN Student ON Advisor.StudentID = Student.StudentID;
GO

USE fictionalStudents;
GO
--Limited View:
CREATE VIEW VI_limited_view2
AS
SELECT Grade.StudentID, DeansList, Student.MajorCode
FROM Grade
JOIN Student ON Grade.StudentID = Student.StudentID;
GO

USE fictionalStudents;
GO
--Limited View:
CREATE VIEW VI_limited3
AS
SELECT AreaCode, Major
FROM Area
JOIN Major ON Area.Area = Major.Area;
GO

SELECT * FROM VI_limited_view;
SELECT * FROM VI_view;*/
