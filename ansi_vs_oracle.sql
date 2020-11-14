--Comparação ANSI x Dialeto Oracle

-- LEFT JOIN

--Oracle
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id = alunos.aula_id; --(+) pesquisar simbolo depois

-- ANSI

SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM  aulas
LEFT JOIN alunos ON aulas.id = alunos.aula_id;

-- FULL OUTER JOIN

--Oracle
 SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id = alunos.aula_id;
UNION
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id = alunos.aula_id;

-- ANSI
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM  aulas
FULL OUTER JOIN alunos ON aulas.id = alunos.aula_id; --MySQL nao suporta 


