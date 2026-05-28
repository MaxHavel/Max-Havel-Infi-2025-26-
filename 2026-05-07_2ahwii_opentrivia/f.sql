SELECT k.name AS kategorie, COUNT(*) AS anzahl FROM Question q
    JOIN Category k ON q.categoryId = k.id
GROUP BY k.name
HAVING COUNT(*) >= 300
ORDER BY anzahl DESC;
