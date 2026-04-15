
-- ACESSANDO O BD
USE DB_04017C_CEZAR_SILVA;

-- ELIMINANDO AS TABELAS CASOS JA EXISTAM
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS pedidos;

-- CRIANDO AS TABELAS
-- CLIENTE
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    cidade VARCHAR(50)
);

-- PEDIDOS
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    produto VARCHAR(100),
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- INSERT INTO DOS REGISTROS
-- CLIENTES
INSERT INTO clientes (nome, email, cidade) VALUES
('Maria Souza', 'maria@gmail.com', 'Campina Grande'),
('João Pedro', 'joao@gmail.com', 'João Pessoa'),
('Ana Clara', 'ana@hotmail.com', 'Campina Grande'),
('Carlos Lima', 'carlos@gmail.com', 'Recife');

-- PEDIDOS
INSERT INTO pedidos (id_cliente, produto, data_pedido) VALUES
(1, 'Camisa Branca', '2025-06-01'),
(2, 'Tênis Esportivo', '2025-06-02'),
(1, 'Calça Jeans', '2025-06-03'),
(3, 'Mochila Escolar', '2025-06-03');


-- TESTANDO OS COMANDOS
-- EXEMPLO 1 - COM SELECT
SELECT * FROM clientes;


-- EXEMPLO 2 - COM SELECT
SELECT nome, cidade FROM clientes;

-- EXEMPLO 3 - COM SELECT
SELECT * FROM clientes
WHERE cidade = 'Campina Grande';






















