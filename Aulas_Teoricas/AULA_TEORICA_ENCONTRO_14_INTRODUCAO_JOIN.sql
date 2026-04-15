
-- ACESSANDO O BD
USE DB_04017C_CEZAR_SILVA;

-- ELIMINANDO AS TABELAS, CASO JA EXISTAM
DROP TABLE IF EXISTS TabelaA;
DROP TABLE IF EXISTS TabelaB;

-- CRIANDO A TABELA A
CREATE TABLE TabelaA (
    Nome VARCHAR(50) NULL
);

-- INSERTS DA TABELA - A
INSERT INTO TabelaA VALUES ('Fernanda');
INSERT INTO TabelaA VALUES ('Josefa');
INSERT INTO TabelaA VALUES ('Luiz');
INSERT INTO TabelaA VALUES ('Fernando');


-- CRIANDO A TABELA B
CREATE TABLE TabelaB (
    Nome VARCHAR(50) NULL
);

-- INSERTS DA TABELA - B
INSERT INTO TabelaB VALUES ('Carlos');
INSERT INTO TabelaB VALUES ('Manoel');
INSERT INTO TabelaB VALUES ('Luiz');
INSERT INTO TabelaB VALUES ('Fernando');


-- INNER JOIN 
-- RETORNA OS REGISTROS EM COMUM NAS DUAS TABELAS A SEGUIR
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
 FROM TabelaA as A
INNER JOIN TabelaB as B
ON A.Nome = B.Nome;


-- LEFT JOIN 
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
 FROM TabelaA as A
LEFT JOIN TabelaB as B
ON A.Nome = B.Nome;


-- RIGHT JOIN 
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
  FROM TabelaA as A
RIGHT JOIN TabelaB as B
ON A.Nome = B.Nome;


-- SIMULANDO O FULL OUTER JOIN NO MYSQL
-- LEFT JOIN 
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
 FROM TabelaA as A
LEFT JOIN TabelaB as B
ON A.Nome = B.Nome
UNION
-- RIGHT JOIN 
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
  FROM TabelaA as A
RIGHT JOIN TabelaB as B
ON A.Nome = B.Nome;


-- LEFT EXCLUDING JOIN
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
 FROM TabelaA as A
LEFT JOIN TabelaB as B
ON A.Nome = B.Nome
WHERE B.Nome is null;



-- RIGHT EXCLUDING JOIN 
SELECT A.Nome as Nome_A,
	   B.Nome as Nome_B
  FROM TabelaA as A
RIGHT JOIN TabelaB as B
ON A.Nome = B.Nome
WHERE A.Nome is null;