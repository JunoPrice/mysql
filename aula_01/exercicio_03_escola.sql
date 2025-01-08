CREATE DATABASE db_escola;
 -- scripts para a tabelo do exercicio 03 de banco de dados
use db_escola;
CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int, 
formacao varchar(255) NOT NULL,
inclusao varchar(255) NOT NULL,
nota decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, formacao, inclusao, nota)
VALUES  ("Marcos",16, "Ensino Médio", "autismo", 3.00),
		("Caio",9, "Ensino Fundamental I", "autismo", 6.00),
        ("Lucas",15, "Ensino Médio", "Não se aplica", 4.00),
        ("Pablo",15, "Ensino Médio", "Não se aplica", 5.00),
        ("Camila",9, "Ensino Fundamental I", "Não se aplica", 7.00),
		("Leticia",16, "Ensino Médio", "Deficiencia Auditiva", 10.00),
        ("Luan",13, "Ensino Fundamental II", "Não se aplica", 6.00),
        ("Renan",12, "Ensino Fundamental II", "Não se aplica", 9.00);
        
SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;
UPDATE tb_estudantes SET nota = 7 WHERE id = 1;