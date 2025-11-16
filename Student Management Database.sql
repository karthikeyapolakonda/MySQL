CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    branch VARCHAR(50),
    year INT
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

--> Get top 3 students by average marks
SELECT s.name, AVG(m.marks) AS avg_marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_id
ORDER BY avg_marks DESC
LIMIT 3;
