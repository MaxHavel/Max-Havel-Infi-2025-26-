SELECT X.question, a.answer FROM Question X
    JOIN Category c ON X.categoryId = c.id
    JOIN Difficulty d ON X.difficultyId = d.id
    JOIN Answer a ON X.correct_answer_id = a.id
WHERE c.name = 'Science: Gadgets'
AND d.level = 'hard'
ORDER BY X.question ASC;