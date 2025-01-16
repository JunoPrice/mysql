CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_cursos (
	id_cursos INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    curso_categoria INT NOT NULL,
    FOREIGN KEY (curso_categoria) REFERENCES tb_categorias(id_categoria)
);
    
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
	("Fundos Imobiliarios", "Aprender a verificar valor patrimonial, endividamento e vacância."),
    ("Ações", "Aprender a escolher os melhores cases de investimento, ações descontadas e de valor."),
    ("SmallCaps", "Aprender a escolher ações com alta chance de crescimento de valor de mercado."),
	("Renda Fixa", "Aprender a escolher os melhores ativos de renda fixa de acordo com seu perfil de risco.");

INSERT INTO tb_cursos (nome_curso, duracao, preco, curso_categoria)
VALUES
	("Ações de Dividendos", 80, 400.00, 2), -- SUNO - Thiago Reis
	("Ações de Valor", 120, 700.00, 2), -- DICA DE HOJE - Daniel Nigri
	("Nova Previdencia", 150, 400.00, 1), -- SUNO - Professor Baroni
	("Fique rico com pequenas empresas", 90, 800.00, 3), -- AUVP - Raul Senna
	("Crescendo com segurança", 20, 1000.00, 4); -- ME POUPE - Natália Arcuri
    
SELECT * FROM tb_categorias;

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco < 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%v%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.curso_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.curso_categoria = tb_categorias.id_categoria
WHERE curso_categoria = 2;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.curso_categoria = tb_categorias.id_categoria
ORDER BY preco DESC;
