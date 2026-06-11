-- Hausübung vom 23. April 2026 – LeetCode SQL
-- Lösungen zu 3 LeetCode-Problemen

-- Problem 1: LC 180 – Consecutive Numbers
-- Findet alle Zahlen, die mindestens dreimal hintereinander vorkommen.
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l1.id = l3.id - 2
WHERE l1.num = l2.num AND l2.num = l3.num;

-- Problem 2: LC 586 – Customer Placing the Largest Number of Orders
-- Findet die Kundennummer, die die meisten Bestellungen aufgegeben hat.
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Problem 3: LC 596 – Classes More Than 5 Students
-- Findet Klassen mit mindestens 5 Schülern.
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
