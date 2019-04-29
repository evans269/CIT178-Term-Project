/*Summary and Views

USE fictionalStudents;
SELECT MIN(GPA) AS LowestGrade,
MAX(GPA) AS HighestGrade
FROM Grade
WHERE GPA >0;

USE fictionalStudents;
SELECT COUNT(StudentID) AS 'Gender'
FROM Student
WHERE Gender = 'F';*/



USE fictionalStudents;
GO
CREATE VIEW AreaList
AS
SELECT  * FROM Area
WHERE Area IN ('Business', 'Technology');
GO
SELECT * FROM AreaList;



USE fictionalStudents;
GO
CREATE VIEW TopOfClass
AS
SELECT  * FROM Grade
WHERE DeansList IN ('Yes');
GO
SELECT * FROM TopOfClass;







