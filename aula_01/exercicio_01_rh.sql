CREATE DATABASE db_RH;
 -- scripts para a tabelo do exercicio 01 de banco de dados
use db_RH;
CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int, 
formacao varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
salario decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, formacao, cargo, salario)
VALUES  ("Marcelo",38, "Superior", "Gerente", 5000.00),
		("Ruy",70, "Fundamental", "Diretor", 30000.00),
        ("Marise",68, "Fundamental", "Vice-diretor", 18000.00),
        ("Renato",33, "Medio", "Secretario", 3000.00),
        ("Carla",34, "Medio", "Servente", 1500.00);
        
SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 1850 WHERE id = 4;