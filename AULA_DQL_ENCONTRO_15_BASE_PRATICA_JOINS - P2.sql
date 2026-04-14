

-- ACESSANDO O BD
USE DB_04017C_CEZAR_SILVA;

-- ELIMINANDO A TABELA CASO EXISTA
DROP TABLE IF EXISTS tb_alunos_tecnica; 
DROP TABLE IF EXISTS tb_cursos_tecnica;
DROP TABLE IF EXISTS tb_matriculas_tecnica;

-- CRIANDO A TABELAS

-- criando tabela alunos
CREATE TABLE tb_alunos_tecnica ( 
	id_aluno INT PRIMARY KEY, 
	nome VARCHAR(50) 
); 

-- criando tabela cursos
CREATE TABLE tb_cursos_tecnica ( 
	id_curso INT PRIMARY KEY, 
	nome_curso VARCHAR(50) 
);

-- criando tabela matriculas
CREATE TABLE tb_matriculas_tecnica ( 
	id_aluno INT, 
	id_curso INT
);

-- insert tabela - alunos
INSERT INTO tb_alunos_tecnica (id_aluno, nome) 
VALUES (1, 'Ana'), 
	   (2, 'Bruno'), 
	   (3, 'Carla'), 
	   (4, 'Daniel'); 

-- insert tabela - cursos
INSERT INTO tb_cursos_tecnica (id_curso, nome_curso) 
VALUES (100, 'Excel'), 
	   (101, 'SQL'), 
	   (102, 'Python'); 

-- insert tabela - matriculas
INSERT INTO tb_matriculas_tecnica (id_aluno, id_curso) 
VALUES (1, 100), 
	   (2, 101), 
	   (2, 102), 
	   (5, 100); -- Aluno inexistente


-- CONSULTANDO AS INFORMAÇÕES DAS TABELAS
SELECT * FROM tb_alunos_tecnica;
SELECT * FROM tb_cursos_tecnica;
SELECT * FROM tb_matriculas_tecnica;



-- EXERCICIO 01
SELECT A.nome as Aluno,
       C.nome_curso as Curso 
  FROM tb_alunos_tecnica as A
INNER JOIN tb_matriculas_tecnica as M
ON A.id_aluno = M.id_aluno
INNER JOIN tb_cursos_tecnica as C
ON M.id_curso = C.id_curso;

-- EXERCICIO 02
SELECT A.nome as Aluno,
       C.nome_curso as Curso
 FROM tb_alunos_tecnica as A
LEFT JOIN tb_matriculas_tecnica as M
ON A.id_aluno = M.id_aluno
LEFT JOIN tb_cursos_tecnica as C
ON M.id_curso = C.id_curso;



-- EXERCICIO 03


-- EXERCICIO 04



