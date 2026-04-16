
USE DB_04017C_CEZAR_SILVA;

DROP TABLE IF EXISTS contatos;
DROP TABLE IF EXISTS chamadas;

-- Tabela de contatos
CREATE TABLE contatos (
    contato_id INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Inserts contatos
INSERT INTO contatos (contato_id, nome) VALUES
(201, 'Daniel'),
(202, 'Eduarda'),
(203, 'Fernanda');


-- Tabela de chamadas
CREATE TABLE chamadas (
    chamada_id INT PRIMARY KEY,
    contato_id INT,
    duracao_seg INT,
    FOREIGN KEY (contato_id) REFERENCES contatos(contato_id)
);

-- Inserts chamadas
INSERT INTO chamadas (chamada_id, contato_id, duracao_seg) VALUES
(1, 201, 120),
(2, 201, 60),
(3, 202, 300);