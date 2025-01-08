CREATE DATABASE db_ecomerse;
 -- scripts para a tabelo do exercicio 02 de banco de dados
use db_ecomerse;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
data_lote date,
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_lote, preco)
VALUES  ("placa mãe",20, "2022-04-15", 350.00),
		("processador",25, "2022-01-15", 750.00),
        ("memoria RAM",100, "2022-03-15", 125.00),
        ("Disco Rígido",150, "2022-06-15", 180.00),
        ("Drive DVD-RW",200, "2022-07-15", 78.00),
        ("Gabinete",220, "2022-08-15", 200.00),
        ("Water Cooler",330, "2022-09-15", 650.00),
        ("Fonte ATX",250, "2022-12-15", 820.00);
        
        
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 1155 WHERE id = 1;









CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
data_validade date,
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate",100, "2022-04-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã",20, "2022-04-12", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("laranja",50, "2022-04-10", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana",200, "2022-04-13", 12.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("uva",1200, "2022-04-14", 30.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("pêra",500, "2022-04-15", 2.90);