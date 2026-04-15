
-- ACESSANDO O DB
USE DB_04017C_CEZAR_SILVA;

-- ELIMINANDO TABELAS
DROP TABLE TB_VENDAS;
DROP TABLE TB_PRODUTOS;
DROP TABLE TB_FORNECEDORES;

-- Desafio - Empresa Papelaria
-- criar 3 tabelas

-- criar tabela fornecedores
CREATE TABLE TB_FORNECEDORES (
	id_forn INT auto_increment PRIMARY KEY,
    nome_fornecedor varchar(100) not null
);

-- criar tabela produtos
CREATE TABLE TB_PRODUTOS (
	id_prod INT auto_increment PRIMARY KEY,
    nome_produto varchar(100) not null,
    id_fornecedor int not null,
    FOREIGN key (id_fornecedor) references TB_FORNECEDORES (id_forn)
);

-- criar tabela vendas
CREATE TABLE TB_VENDAS (
	id_venda INT auto_increment PRIMARY KEY,
    id_produto_vendas int not null,
    qtde_vendida int not null,
    data_venda date not null,
    FOREIGN key (id_produto_vendas) references TB_PRODUTOS (id_prod)
);


-- inserir registros nestas tabelas 
-- (produtos, vendas, fornecedores)

INSERT INTO TB_FORNECEDORES (nome_fornecedor) VALUES
('Papeis Brasil S.A'),
('Cores Pasteis');

INSERT INTO TB_PRODUTOS (nome_produto, id_fornecedor) VALUES
('Lapis', 1),
('Pincel', 2),
('Caneta', 2);

INSERT INTO TB_VENDAS (id_produto_vendas, qtde_vendida, data_venda) VALUES
(1, 50, '2026-01-01'),
(2, 150, '2026-02-01'),
(3, 350, '2026-03-01');

-- consultar informações nas tabelas

SELECT * FROM TB_FORNECEDORES;

SELECT * fROM TB_PRODUTOS;

SELECT * FROM TB_VENDAS;


