/* Exercicio 01*/
SELECT *
FROM student AS s
INNER JOIN takes AS t
    ON s.ID = t.ID;

/* Exercicio 02*/

SELECT 
    s.ID,
    s.name,
    COUNT(t.course_id) AS [Quantidade de cursos]
FROM student AS s
INNER JOIN takes AS t
    ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY 
    s.ID,
    s.name
ORDER BY [Quantidade de cursos] DESC;


/* EXercicio 03*/
CREATE VIEW civil_eng_students AS
SELECT 
    s.ID,
    s.name,
    COUNT(t.course_id) AS [Quantidade de cursos]
FROM student AS s
INNER JOIN takes AS t
    ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY 
    s.ID,
    s.name;


SELECT *
FROM civil_eng_students
ORDER BY [Quantidade de cursos] DESC;