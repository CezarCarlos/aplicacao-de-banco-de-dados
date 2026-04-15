
-- ACESSANDO O BANCO DE DADOS
USE DB_04017C_CEZAR_SILVA;

-- ELIMINADO AS TABELAS
DROP TABLE IF EXISTS tb_fornecedores;
DROP TABLE IF EXISTS tb_produtos;
DROP TABLE IF EXISTS tb_vendas;

-- CRIANDO AS TABELAS
-- criando a tabela de fornecedores
CREATE TABLE tb_fornecedores (
	fornecedor_id INT PRIMARY KEY,
	nome_fornecedor VARCHAR(100) NOT NULL,
	cidade VARCHAR(50)
);

-- criando a tabela de produtos
CREATE TABLE tb_produtos (
	produto_id INT PRIMARY KEY,
	nome_produto VARCHAR(100) NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
	estoque INT NOT NULL,
	fornecedor_id INT,
	FOREIGN KEY (fornecedor_id) REFERENCES tb_fornecedores(fornecedor_id)
);

-- Criar tabela de vendas
CREATE TABLE tb_vendas (
	venda_id INT PRIMARY KEY,
	produto_id INT,
	quantidade INT NOT NULL,
	data_venda DATE NOT NULL,
	FOREIGN KEY (produto_id) REFERENCES tb_produtos(produto_id)
);

-- INSERINDO INFORMAÇÕES

-- insert na tabela de fornecedores
INSERT INTO tb_fornecedores (fornecedor_id, nome_fornecedor, cidade) VALUES
(1, 'Café do Brasil', 'São Paulo'),
(2, 'Sabor Mineiro Alimentos', 'Belo Horizonte'),
(3, 'Grãos Gourmet', 'Curitiba'),
(4, 'Delícias da Serra', 'Porto Alegre');
 
-- insert na tabela de produtos
INSERT INTO tb_produtos (produto_id,nome_produto, preco, estoque, fornecedor_id) VALUES
(1, 'Café Espresso Premium 250g', 29.90, 20, 1),
(2, 'Pão de Queijo Congelado 1kg', 39.90, 45, 2),
(3, 'Chá Verde Orgânico 100g', 24.90, 25, 3),
(4, 'Doce de Leite Artesanal 500g', 19.90, 15, 2),
(5, 'Bolo de Cenoura com Cobertura', 49.90, 30, 4),
(6, 'Café Moído Reserva Especial 500g', 54.90, 10, 1),
(7, 'Cookies de Chocolate 200g', 14.90, 35, 4);

-- insert na tabela de vendas
INSERT INTO tb_vendas (venda_id,produto_id, quantidade, data_venda) VALUES
(1, 1, 2, '2025-08-01'),
(2, 2, 1, '2025-08-01'),
(3, 3, 3, '2025-08-02'),
(4, 4, 1, '2025-08-02'),
(5, 5, 2, '2025-08-03'),
(6, 6, 1, '2025-08-03'),
(7, 1, 1, '2025-08-04'),
(8, 2, 2, '2025-08-04'),
(9, 3, 1, '2025-08-05'),
(10, 4, 2, '2025-08-05'),
(11, 5, 3, '2025-08-06'),
(12, 7, 4, '2025-08-06'),
(13, 6, 1, '2025-08-07'),
(14, 3, 2, '2025-08-07'),
(15, 1, 1, '2025-08-08'),
(16, 2, 1, '2025-08-08'),
(17, 5, 2, '2025-08-09'),
(18, 7, 3, '2025-08-09'),
(19, 4, 1, '2025-08-10'),
(20, 6, 1, '2025-08-10');


-- CONSULTANDO OS DADOS
SELECT * FROM tb_fornecedores;
SELECT * FROM tb_produtos;
SELECT * FROM tb_vendas;


-- EXERCICIO 01 
SELECT P.nome_produto as Produto,
       P.preco,
       P.estoque,
       F.nome_fornecedor as Fornecedor
  FROM tb_produtos as P
 INNER JOIN tb_fornecedores as F
ON P.fornecedor_id = F.fornecedor_id
ORDER BY 1 ASC;


-- EXERCICIO 02
SELECT V.venda_id as ID_Venda,
       P.nome_produto as Produto,
       V.quantidade as Quantidade,
       V.data_venda as Data_Venda
 FROM tb_vendas as V
INNER JOIN tb_produtos as P
ON V.produto_id = P.produto_id
ORDER BY 1 ASC;

-- EXERCICIO 03
SELECT V.venda_id,
	   F.nome_fornecedor,
       P.nome_produto,
       P.preco,
       V.quantidade,
       (P.preco * V.quantidade) as Total      
  FROM tb_vendas as V
INNER JOIN tb_produtos as P
ON V.produto_id = P.produto_id
INNER JOIN tb_fornecedores as F
ON P.fornecedor_id = F.fornecedor_id
ORDER BY 1 ASC;

-- EXERCICIO 04
SELECT P.nome_produto as Produto, 
       P.estoque as Estoque,
       F.nome_fornecedor as Fornecedor
FROM tb_produtos as P
INNER JOIN tb_fornecedores as F
ON P.fornecedor_id = F.fornecedor_id
WHERE P.estoque < 30
ORDER BY P.estoque ASC;











