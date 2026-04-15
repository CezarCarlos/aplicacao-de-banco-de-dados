
-- ACESSANDO BD
USE DB_04017C_CEZAR_SILVA;

-- ELIMINANDO AS TABELAS CASO EXISTAM
DROP TABLE if exists tb_pedidos;
DROP TABLE if exists tb_detalhes_pedido;

-- CRIANDO TABELAS E INSERINDO DADOS
CREATE TABLE tb_pedidos (
	clienteid INT AUTO_INCREMENT PRIMARY KEY, 
	data_pedido DATE
);

CREATE TABLE tb_detalhes_pedido (
	PedidoID INT PRIMARY KEY, 
	Produto VARCHAR(100) NOT NULL,
	Quantidade INT NOT NULL
);

SELECT * FROM tb_pedidos;
SELECT * FROM tb_detalhes_pedido;

-- EXEMPLOS REGISTROS
START TRANSACTION; -- INICIO DA TRANSAÇÃO

-- insere o registro na tabela pedidos
INSERT INTO tb_pedidos (data_pedido) VALUES (CURDATE());
SAVEPOINT pedido_inserido;

-- registra a informações na tabela detalhes do pedido
INSERT INTO tb_detalhes_pedido (PedidoID, Produto, Quantidade) 
VALUES (last_insert_id(), 'Laptop', 1);

-- estoque de laptop indisponiviel
ROLLBACK TO SAVEPOINT pedido_inserido; -- Defaz insert do Laptop

INSERT INTO tb_detalhes_pedido (PedidoID, Produto, Quantidade) 
VALUES (last_insert_id(), 'Teclado', 1);

COMMIT; -- confirma insert pedido e detalhes do pedido teclado

-- conferindo o resultado das tabelas
SELECT * FROM tb_pedidos;
SELECT * FROM tb_detalhes_pedido;

-- desabilita o autocommit
-- SET autocommit = 0;

-- HAbilita o autocommit
-- SET autocommit = 1;
 

