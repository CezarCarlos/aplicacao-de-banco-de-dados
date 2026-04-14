
-- ACESSANDO O BD
USE DB_04017C_CEZAR_SILVA;

DROP TABLE if EXISTS produtos;

-- CRIANDO A TABELA PRODUTOS
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(5,2),
    estoque INT
);

-- INSERINDO REGISTROS
INSERT INTO produtos (nome, preco, estoque) VALUES
('Pão Francês', 0.80, 100),
('Pão de Queijo', 2.50, 50),
('Pão Integral', 6.00, 15),
('Bolo de Chocolate', 12.00, 10),
('Bolo de Cenoura', 10.00, 8),
('Bolo de Fubá', 7.50, 25),
('Croissant', 8.00, 35),
('Croissant de Chocolate', 9.50, 20),
('Sonho', 4.50, 18),
('Sonho de Creme', 5.50, 12),
('Coxinha', 6.00, 40),
('Esfiha', 3.00, 60),
('Pão de Forma', 5.00, 22),
('Pão Australiano', 8.50, 14),
('Baguete', 7.00, 19),
('Torta de Frango', 15.00, 5),
('Torta de Limão', 13.00, 7),
('Pão Doce', 2.00, 30),
('Bolo Gelado', 11.00, 9),
('Mini Pizza', 4.00, 45);


-- CONSULTANDO A TABELA DE PRODUTOS
SELECT * FROM produtos;

-- 1 - PRODUTOS COM PREÇOS MAIOR QUE 5 REAIS
SELECT nome, preco FROM produtos
WHERE preco > 5.00
ORDER BY preco ASC;

-- 1 - PRODUTOS COM PREÇOS MAIOR QUE 5 REAIS
SELECT nome, preco FROM produtos
WHERE preco > 5.00
ORDER BY nome ASC;


-- 2 - PRODUTOS COM A PALAVRA BOLO
SELECT nome, preco, estoque FROM produtos
WHERE nome LIKE '%Bolo%'
ORDER BY preco ASC;

-- EXERCICIO 3 - ESTOQUE MENOR QUE 20 UNID
SELECT nome, estoque FROM produtos
WHERE estoque < 20
ORDER BY estoque ASC;


-- EXERCICIO 4 - produtos entre 3 e 10 reais
SELECT nome, preco FROM produtos
WHERE preco >= 3.00 AND preco <= 10.00
ORDER BY preco DESC;


-- EXERCICIO 4 - produtos entre 3 e 10 reais - FORMATO 2
SELECT nome, preco FROM produtos
WHERE preco BETWEEN 3.00 AND 10.00
ORDER BY preco DESC;


-- EXERCICIO 5 - produtos nome começa com pao
SELECT nome, preco, estoque FROM produtos
WHERE nome LIKE 'Pão%'
ORDER BY preco ASC;

-- EXERCICIO 6 - PRODUTOS COM CROISSANT E TENHAM MAIS DE 30 UNID
SELECT nome, preco, estoque FROM produtos
WHERE nome LIKE '%Croissant%' AND estoque > 30;


-- retorno da quantidade de estoque dos produtos que contem a palavra pão
SELECT sum(estoque) as total FROM produtos
WHERE nome LIKE 'Pão%';












 


















-- OPÇÕES DE RESPOSTAS AOS EXERCICIOS

