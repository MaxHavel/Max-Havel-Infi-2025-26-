SELECT a.answer, COUNT(*) AS anzahl FROM _IncorrectAnswers ia
    JOIN Answer a ON ia.A = a.id
WHERE a.answer NOT IN ('True', 'False')
GROUP BY a.answer
ORDER BY anzahl DESC, a.answer ASC LIMIT 3;



