SELECT COUNT(*) AS anzahl, D.level AS difficulty
FROM Question Q
    JOIN Difficulty D ON Q.difficultyId = D.id
GROUP BY D.level order by anzahl desc;
