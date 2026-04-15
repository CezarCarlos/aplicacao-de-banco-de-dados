USE DB_04017C_CEZAR_SILVA;


-- ESTRUTURA TABELA FORNECEDOR
CREATE TABLE TB_FORNECEDOR_PADARIA (
   id_fornecedor int NOT NULL AUTO_INCREMENT,
   nome_fornecedor varchar(100) NOT NULL,
   telefone varchar(20) UNIQUE
 );
 
  -- ESTRUTURA TABELA PRODUTOS
 CREATE TABLE TB_PRODUTOS_PADARIA (
   id_produto int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nome varchar(100) NOT NULL,
   preco decimal(8,2) DEFAULT '0.00'
 );
 
-- ESTRUTURA TABELA VENDAS
CREATE TABLE TB_VENDAS_PADARIA (
   id_venda int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   id_produto_venda int NOT NULL,
   quantidade int NOT NULL,
   data_venda datetime DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (id_produto_venda) REFERENCES TB_PRODUTOS_PADARIA (id_produto)
 ) ;
 
 -- INSERINDO REGISTROS NAS TABELAS
 
 -- FORNECEDOR
 INSERT INTO TB_FORNECEDOR_PADARIA (nome_fornecedor, telefone) values
 ('Dona Benta', '11 91234-7896'),
 ('Royal', '41 96325-4120'),
 ('Padaria Xavier', '78 96666-0000');
 
 -- PRODUTOS 
INSERT INTO TB_FORNECEDOR_PADARIA (nome, preco) values
('Bolo de Fuba', '9.99'),
('Bolo de Chocolate', '15.99'),
('Sonho', '5.63'),
('Lua de Mel', '4.79');
 
 -- VENDAS
 INSERT INTO TB_VENDAS_PADARIA (id_produto_venda, quantidade) VALUES
 (1, 10),
 (2, 19),
 (3, 52),
 (4, 93),
 (1, 94);
 
 
 -- CONSULTANDO AS TABELAS
SELECT * FROM TB_VENDAS_PADARIA;
SELECT * FROM TB_PRODUTOS_PADARIA;
SELECT * FROM TB_FORNECEDOR_PADARIA;
 
 
 -- RESPOSTA SQL - CONSULTAS - RESP 1
 SELECT * FROM TB_PRODUTOS_PADARIA;
 
 -- RESPOSTA SQL - CONSULTAS - RESP 1 (OPCAO B)
  SELECT nome FROM TB_PRODUTOS_PADARIA;
  
  
-- somatatoria toal de quantidade vendidas
SELECT sum(quantidade) as total FROM TB_VENDAS_PADARIA;
  
-- somatatoria toal de quantidade vendidas por produto
SELECT id_produto_venda, sum(quantidade) as total FROM TB_VENDAS_PADARIA
GROUP BY id_produto_venda;


-- Vendas - Bolo de Fuba
SELECT sum(quantidade) as total FROM TB_VENDAS_PADARIA
WHERE id_produto_venda = 1;


-- Vendas - Bolo de Chocolate
SELECT sum(quantidade) as total FROM TB_VENDAS_PADARIA
WHERE id_produto_venda = 2;


-- Usando subquerie - respondendo - vendas bolo de fuba
SELECT * FROM  TB_VENDAS_PADARIA
WHERE id_produto_venda = (
	SELECT id_produto FROM TB_PRODUTOS_PADARIA
	 WHERE nome = 'Bolo de Fuba');

  
  
  
 
 
 
 
