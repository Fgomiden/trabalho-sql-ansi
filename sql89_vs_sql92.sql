--Comparação SQL89 x SQL92

--INNER JOIN

--SQL89
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id = alunos.aula_id
    AND alunos.id = 1;

--SQL92
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM  aulas
INNER JOIN alunos 
    ON aulas.id = alunos.aula_id
WHERE alunos.id = 1;


--LEFT JOIN

--SQL89
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id(+) = alunos.aula_id --com o (+) não roda mas era assim antigamente
    AND alunos.id = 1;

--SQL92
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM  aulas
    LEFT JOIN alunos 
        ON aulas.id = alunos.aula_id
WHERE alunos.id = 1;


--RIGHT JOIN

--SQL89
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id = alunos.aula_id(+)
    AND alunos.id = 1;

--SQL92
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM  aulas
    RIGHT JOIN alunos 
        ON aulas.id = alunos.aula_id
WHERE alunos.id = 1;


--No SQL 89 colacava o (+) do lado esquerdo ou no direito
