-- Hausübung vom 19. Februar 2026
-- SQL-Praxis mit LeetCode
-- 2 LeetCode Easy Probleme

-- Problem 1: LC 175 – Combine Two Tables
-- Gibt Vorname, Nachname, Stadt und Bundesland jeder Person aus.
-- Wenn keine Adresse existiert, wird NULL ausgegeben.
SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a ON p.personId = a.personId;

-- Problem 2: LC 183 – Customers Who Never Order
-- Findet alle Kunden, die nie etwas bestellt haben.
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;
