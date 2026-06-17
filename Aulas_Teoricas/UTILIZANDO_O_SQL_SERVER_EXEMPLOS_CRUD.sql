

-- CONECTANDO O BD
USE BD_TESTE_TURMA;

-- CRIANDO A TABELA ALUNOS
CREATE TABLE alunos (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    idade INT,
    curso VARCHAR(200)
);

-- INSERINDO REGISTROS
INSERT INTO alunos (nome, idade, curso) VALUES 
('Felipe', 33,'Sistemas de Informação'),
('Adriana', 22,'Medicina'),
('Michelle', 21,'Matematica'),
('Pedro', 45, 'Ciencias Contabeis');

-- CONSULTA A TABELA ALUNOS
SELECT * FROM alunos;


-- UPDATE NA TABELA ALUNOS
UPDATE alunos
SET idade = 36
WHERE id = 4;


-- DELETAR UM REGISTRO DA TABELA ALUNOS
DELETE FROM alunos
WHERE id = 4;























