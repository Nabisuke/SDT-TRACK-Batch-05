USE programminghero;
CREATE table Student(
		Roll CHAR(5) PRIMARY KEY,
        Name VARCHAR(50),
        Marks DOUBLE
);

INSERT INTO Student (Roll, Name, Marks) values (123, "Nabil", 90);

SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Name = "Nabil Safowan"
WHERE Roll = 123;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Student
WHERE Roll = 123;
SET SQL_SAFE_UPDATES = 1;

DROP table Student;
        
        