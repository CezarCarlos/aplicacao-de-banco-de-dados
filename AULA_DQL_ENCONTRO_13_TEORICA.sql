

-- OPERADOR IGUAL
SELECT * FROM TB_PRODUTOS
WHERE preco = 120.00;


-- operador diferente <> 
SELECT * FROM TB_CLIENTES
WHERE cidade <> 'Rio de Janeiro'
ORDER BY cidade ASC;

-- operador diferente !=
SELECT * FROM TB_CLIENTES
WHERE cidade != 'Curitiba'
ORDER BY cidade ASC;


-- operador maior que ">"
SELECT * FROM TB_PEDIDOS_CLIENTE
WHERE valor_total > 300.00
ORDER BY valor_total ASC;


-- operador maior ou igual que ">="
SELECT * FROM TB_PEDIDOS_CLIENTE
WHERE valor_total >= 300.00
ORDER BY valor_total ASC;


-- operador menor que "<"
SELECT * FROM TB_PEDIDOS_CLIENTE
WHERE valor_total < 300.00
ORDER BY valor_total DESC;

-- operador menor ou igual que "<="
SELECT * FROM TB_PEDIDOS_CLIENTE
WHERE valor_total <= 300.00
ORDER BY valor_total DESC;

-- TABELA PARA APOIAR NA CONSTRUÇÃO DOS TESTES COM OPERADORES LOGICOS
CREATE TABLE TB_CLIENTES_PEDIDOS AS
SELECT P.id_pedido,
       P.valor_total,
       C.nome,
       C.cidade
FROM TB_PEDIDOS AS P
INNER JOIN TB_CLIENTES AS C
ON P.id_cliente = C.id_cliente;


-- OPERADOR LOGICO - AND - EXEMPLO 1
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade = 'São Paulo' AND valor_total > 200.00
ORDER BY valor_total ASC;


-- OPERADOR LOGICO - AND - EXEMPLO 1
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade <> 'São Paulo' AND valor_total <= 200.00
ORDER BY valor_total DESC;

-- OPERADOR LOGICO OR
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade = 'São Paulo' OR cidade = 'Belo Horizonte' OR cidade = 'Curitiba';


-- CLAUSULA IN
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade IN ('São Paulo', 'Curitiba', 'Belo Horizonte')
ORDER BY cidade ASC;

-- FALANDO OPERADOR LOGICO - OR
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade = 'São Paulo' OR valor_total <= 300.00
ORDER BY cidade ASC;

-- OPERADOR LOGICO - NOT (NEGAÇÃO)
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE NOT cidade = 'Rio de Janeiro'
ORDER BY cidade ASC;


-- OPERADOR LOGICO NOT COM A CLAUSULA IN
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade NOT IN ('Curitiba', 'Belo Horizonte', 'Brasília')
ORDER BY cidade ASC;

-- OPERADOR LOGICO NOT COM A CLAUSULA IN
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE NOT cidade IN ('Curitiba', 'Belo Horizonte', 'Brasília')
ORDER BY cidade ASC;


-- COMBINAÇÃO NO USO DE OPERADORES LOGICOS -- SEM PARETENSES
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade = 'São Paulo' AND valor_total > 300.00 OR nome LIKE '%o%'
ORDER BY valor_total ASC;

-- QUANTIDADE RETORNO
SELECT count(*) as total FROM TB_CLIENTES_PEDIDOS
WHERE cidade = 'São Paulo' AND valor_total > 300.00 OR nome LIKE '%o%';


-- COMBINAÇÃO NO USO DE OPERADORES LOGICOS -- COM PARETENSES
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE cidade = 'São Paulo' AND (valor_total > 300.00 OR nome LIKE '%o%')
ORDER BY valor_total ASC;


SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE (cidade = 'São Paulo' AND valor_total > 300.00) OR nome LIKE '%o%'
ORDER BY valor_total ASC;

-- OPERADOR LIKE
SELECT * FROM TB_CLIENTES_PEDIDOS
WHERE nome LIKE '%o%';



-- removendo duplicados
SELECT DISTINCT cidade FROM TB_CLIENTES_PEDIDOS
ORDER BY 1 ASC;

-- LIMITANDO A QUANTIDADE DE REGISTROS
SELECT * FROM TB_CLIENTES_PEDIDOS
LIMIT 5;































