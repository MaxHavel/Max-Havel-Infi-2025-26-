SELECT a.answer FROM Answer a
    JOIN _IncorrectAnswers ia ON ia.A = a.id
    JOIN Question q ON ia.B = q.id
WHERE q.question = 'Who won the 2018 Monaco Grand Prix?'
ORDER BY a.answer ASC;
