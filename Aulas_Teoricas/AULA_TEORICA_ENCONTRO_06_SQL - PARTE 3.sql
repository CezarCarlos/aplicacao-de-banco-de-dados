
-- CRIANDO O BANCO DE DADOS
CREATE DATABASE DB_04017C_CEZAR_SILVA;

-- ACESSA O BD
USE DB_04017C_CEZAR_SILVA;

-- CRIANDO A TABELA LIVROS
CREATE TABLE TB_LIVROS (
	id int auto_increment primary key,   
    titulo varchar(100),
    autor varchar(80),
    ano_publicacao int,
    genero varchar(50)
);

-- consulta os registros e colunas da tabela
SELECT * FROM TB_LIVROS;

/*
COMENTARIO LONGO
INSERINDO REGISTROS NA TABELA
*/

-- inserindo um registro
INSERT INTO TB_LIVROS (titulo, autor, ano_publicacao, genero) 
values ('Senhor dos Aneis', 'J. R. R. Tolkien', 2003, 'Aventura');

-- inserindo segundo registro
INSERT INTO TB_LIVROS (titulo, autor, ano_publicacao, genero) 
values ('', '', null, '');


-- CRIANDO A TABELA LIVROS
CREATE TABLE TB_LIVROS_v2 (
	id int auto_increment primary key,   
    titulo varchar(100) not null,
    autor varchar(80) not null,
    ano_publicacao int not null,
    genero varchar(50) not null,
    data_lancamento date not null
);

-- inserindo segundo registro
INSERT INTO TB_LIVROS_v2 (titulo, autor, 
                          ano_publicacao, genero, data_lancamento) 
VALUES ('Dom Casmurro', 'Machado de Assis', 
         1899, 'Romance', '2026-01-01');
         
-- consultado a tabela
SELECT * FROM TB_LIVROS_v2;


-- tentando ingressar um registro na tabela com campos nulos
INSERT INTO TB_LIVROS_v2 (titulo, autor, 
                          ano_publicacao, genero, data_lancamento) 
VALUES ('', 'Machado de Assis', 
         1899, 'Romance', '2026-01-01');









         
         





         
         

























