/* #1: Count of students with 4.0
USE fictionalStudents;
SELECT MAX(GPA) AS 'Highest GPA',
       COUNT (GPA) AS 'Number of Students'
FROM Grade
WHERE GPA > 3.5;

#2: Average GPA in Fall Term

SELECT COUNT (GPA) AS [Number of Students], MAX (GPA) AS [Highest GPA], MIN(GPA) AS [Lowest GPA],
       AVG(GPA) AS [Average GPA]
FROM Grade
WHERE Term = '201801';

#3: Lowest, Highest, and Average GPA for 2018-19

SELECT MIN(GPA) AS [Minimum GPA],
	   MAX(GPA) AS [Maximum GPA],
	   AVG(GPA) AS [Average GPA]
FROM Grade;

#4: Age of Student - I wanted to get the year to round up- not sure where to put 'FLOOR'?

SELECT DATEDIFF(DAY, DOB, GetDate())/365.25 AS [Age]
FROM Student;*/