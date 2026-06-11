-- Hausübung vom 26. Februar 2026
-- SQL-Übungen mit LeetCode (Self-JOIN, Duplikate finden)
-- 2 weitere LeetCode Easy Probleme

-- Problem 1: LC 181 – Employees Earning More Than Their Managers
-- Self-JOIN: Findet Angestellte, die mehr verdienen als ihre Vorgesetzten.
SELECT e.name AS Employee
FROM Employee e
JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;

-- Problem 2: LC 596 – Classes More Than 5 Students
-- GROUP BY mit HAVING: Findet Klassen mit mindestens 5 Schülern.
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
