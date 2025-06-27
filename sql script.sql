
CREATE DATABASE IF NOT EXISTS aggregate;
USE aggregate;


DROP TABLE IF EXISTS teacher;

CREATE TABLE teacher (
    name VARCHAR(100),
    subject VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2)
);


INSERT INTO teacher (name, subject, age, salary) VALUES
('swetha', 'telugu', 21, 20000),
('swathi', 'hindi', 30, 30000), 
('ramya', 'english', 27, 40000),
('viksha', 'hindi', 15, 50000),
('vrishank', 'telugu', 25, 60000),
('nishitha', 'english', 23, 45000),
('bharadwaj', 'telugu', 25, 50000);


SELECT subject,
       SUM(salary) AS total_salary,
       COUNT(*) AS subject_count,
       AVG(salary) AS avg_salary
FROM teacher
GROUP BY subject
HAVING COUNT(*) > 2;








