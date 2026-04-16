-- Tabela de alunos

DROP TABLE IF EXISTS matriculas;
DROP TABLE IF EXISTS alunos;


CREATE TABLE alunos (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Inserts alunos
INSERT INTO alunos (aluno_id, nome) VALUES
(101, 'Alice'),
(102, 'Bruno'),
(103, 'Carla');


-- Tabela de matrículas
CREATE TABLE matriculas (
    matricula_id INT PRIMARY KEY,
    aluno_id INT,
    curso VARCHAR(100),
    FOREIGN KEY (aluno_id) REFERENCES alunos(aluno_id)
);

-- Inserts matrículas
INSERT INTO matriculas (matricula_id, aluno_id, curso) VALUES
(1, 101, 'Matemática'),
(2, 102, 'História');


-- CONSULTANDO AS TABELAS
SELECT * FROM alunos;
SELECT * FROM matriculas;


-- UTILIZANDO O LEFT JOIN PARA VISUALIZAR ALUNOS COM OU SEM MATRICULA.
SELECT A.nome,
       M.curso
  FROM alunos AS A
LEFT JOIN matriculas AS M
ON A.aluno_id = M.aluno_id;





