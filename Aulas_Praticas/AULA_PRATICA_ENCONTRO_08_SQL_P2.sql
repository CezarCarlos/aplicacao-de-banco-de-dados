-- ACESSANDO NOSSO BD
USE DB_04017C_CEZAR_SILVA;

-- CRIANDO A TABELA GRUPO DE CONTATOS
CREATE TABLE TB_AGENDA_GRUPO_CONTATOS (
	id_grupo int auto_increment primary key,
    grupo varchar(100) not null
);

-- CRIAR A TABELA CONTATOS
CREATE TABLE TB_AGENDA_CONTATOS (
	id_contato int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(120) not null unique,
    id_grupo_contato int not null,
    foreign key (id_grupo_contato) references TB_AGENDA_GRUPO_CONTATOS(id_grupo)
);


-- CRIAR A TABELA DE TELEFONES
CREATE TABLE TB_AGENDA_TELEFONES (
	telefone varchar(20) primary key,
	id_contato_telefone int not null,
    foreign key (id_contato_telefone) references TB_AGENDA_CONTATOS(id_contato)
);


-- inserindo registros nas tabelas de grupos
INSERT INTO TB_AGENDA_GRUPO_CONTATOS (grupo) VALUES
('Familia'),
('Trabalho'),
('Amigos');


-- inserir contatos
INSERT INTO TB_AGENDA_CONTATOS (nome, email, id_grupo_contato) values
('Cezar', 'cezar@email.com', 1),
('Luiza', 'luiza@email.com', 2),
('Pedro', 'pedro@email.com', 3);

-- inserir registros na tabela de telefones
INSERT INTO TB_AGENDA_TELEFONES (telefone, id_contato_telefone) VALUES
('(11) 978784545', 1),
('(12) 963369874', 1),
('(13) 912344321', 1),
('(14) 987878878', 2),
('(15) 966663333', 2),
('(16) 944445555', 3);


-- CONSULTAR AS INFORMAÇÕES NAS TABELAS
SELECT * FROM TB_AGENDA_GRUPO_CONTATOS;
SELECT * FROM TB_AGENDA_TELEFONES;
SELECT * FROM TB_AGENDA_CONTATOS;

-- RETORNAR A COLUNA NOME e email
SELECT nome, email FROM TB_AGENDA_CONTATOS;

-- retornar um contato especifico
SELECT * FROM TB_AGENDA_CONTATOS
WHERE nome = 'Pedro';

-- retornar todos os contatos, menos algum especifico
SELECT * FROM TB_AGENDA_CONTATOS
WHERE nome <> 'Pedro';

-- retornar todos os contatos, menos algum especifico
SELECT * FROM TB_AGENDA_CONTATOS
WHERE nome != 'Pedro';














