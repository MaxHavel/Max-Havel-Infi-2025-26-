 SELECT q.question, a.answer FROM Question q 
   JOIN Category c ON q.categoryId = c.id 
   JOIN Difficulty d ON q.difficultyId = d.id 
   JOIN Answer a ON q.correct_answer_id = a.id 
WHERE c.name = 'Sports' AND d.level = 'easy' ORDER BY q.question ASC LIMIT 5;
