USE fictionalStudents;
GO
CREATE INDEX idx_MajorCode ON Student(MajorCode);
GO
CREATE INDEX idx_Area ON Major(MajorCode);
GO
CREATE INDEX idx_StudentID ON Advisor(AdvisorID);
GO
