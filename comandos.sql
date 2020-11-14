-- CREATE: Criar Tabela
CREATE TABLE aulas(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    professor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)  
);
CREATE TABLE alunos(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    matricula INT NOT NULL,
    aula_id INT UNSIGNED NOT NULL,
    UNIQUE KEY (matricula),
    PRIMARY KEY (id),
    FOREIGN KEY (aula_id) REFERENCES aulas (id)  
);

 

--INSERT

INSERT INTO aulas 
    (nome, professor)
VALUES
    ('Calculo I', 'Jorge Azevedo'),
    ('Algebra Linear', 'Maria Teresa'),
    ('Estatistica', 'Fabiana Santos');

INSERT INTO alunos
    (nome, idade, matricula, aula_id)
VALUES 
    ('Eduarda Souza', 23, 2364, 1),
    ('João Almeida', 22, 4768, 3),
    ('Felipe Vieira', 30, 4098, 1),
    ('Alessandra Mendes', 25, 2632, 2);



--SELECT
SELECT * FROM aulas

SELECT * FROM alunos

SELECT idade, nome as 'Nome do Aluno' FROM alunos
WHERE idade >= 25
ORDER BY idade DESC



--UPDATE
--mudar o nome
UPDATE alunos
SET nome = 'Filipe Vieira' 
WHERE matricula = 4098

--mudar a matricula
UPDATE alunos
SET matricula = 6334 
WHERE nome = 'Eduarda Souza'



-- Juntar tabelas

-- Sem JOIN
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM aulas, alunos
WHERE aulas.id = alunos.aula_id;

--Com JOIN (especifica melhor)
SELECT 
    alunos.nome as Aluno, 
    aulas.nome as Aula,
    professor as Professor
FROM  aulas
INNER JOIN alunos ON aulas.id = alunos.aula_id;



--DELETE
DELETE FROM alunos
WHERE nome = 'Alessandra Mendes' 


--DROP
DROP TABLE aulas
DROP TABLE alunos
