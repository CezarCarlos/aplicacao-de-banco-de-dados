
-- ACESSANDO O NOSSO BD
USE DB_04017C_CEZAR_SILVA;

-- CRIAR TABELA CONTATOS
CREATE TABLE TB_CONTATOS (
	id int auto_increment primary key,
    nome varchar(100),
    telefone varchar(20) not null,
    email varchar(100) not null,
    data_nasc date not null
);

-- inserindo registros na tabela de contatos
INSERT INTO TB_CONTATOS (nome, telefone, email, data_nasc) VALUES
('Tatiana', '(11) 9874-1234', 'tatiana@email.com', '2001-06-09'),
('Aline', '(12) 9874-1245', 'aline@email.com', '1999-06-09');

-- consultando a tabela de contatos
SELECT * FROM TB_CONTATOS;


-- ALTERANDO A ESTRUTURA DE UMA TABELA
ALTER TABLE TB_CONTATOS
ADD COLUMN ativo boolean default true;

-- consultando a tabela de contatos
-- apos a inclusao de um novo campo
SELECT * FROM TB_CONTATOS;

-- modificando um campo já existente
ALTER TABLE TB_CONTATOS
MODIFY COLUMN email varchar(120) not null;


-- RENOMEAR O NOME DE UMA COLUNA
ALTER TABLE TB_CONTATOS
CHANGE COLUMN telefone celular varchar(20) not null;

-- APELIDO DE CAMPOS
SELECT 
	id as ID,
    nome as NOME,
    celular as CELULAR,
    email as EMAIL,
    data_nasc as DATA_NASC,
    ativo as ATIVO
 FROM TB_CONTATOS;

-- Eliminar uma coluna da tabela
ALTER TABLE TB_CONTATOS
DROP COLUMN ativo;

-- consultando a tabela contatos, apos a exclusao do campo
SELECT * FROM TB_CONTATOS;




