CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo_personagens VARCHAR(100) NOT NULL,
    descricao TEXT
    );
    
INSERT INTO tb_classes (tipo_personagens, descricao)
VALUES
	("ADCarry", "Causa alto dano físico com ataques automáticos, mas é frágil e depende de proteção."),
    ("Tank", "São personagens com alta resistência, focados em absorver dano e proteger seus aliados nas lutas."),
    ("APCarry", "Causa alto dano mágico, crescendo em poder com itens de habilidade.."),
	("Jungler", "Coleta recursos na selva, controla objetivos e realiza emboscadas.."),
	("Support", "Ajuda aliados com cura, proteção e controle de visão..");
    
SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(100) NOT NULL,
    forca INT,
    velocidade_movimento INT,
    ataque INT,
    defesa INT,
    ataque_magico INT,
    defesa_magica INT,
    tipo_personagem BIGINT,
    FOREIGN KEY (tipo_personagem) REFERENCES tb_classes(id)
    );

INSERT INTO tb_personagens (nome_personagem, forca, velocidade_movimento, ataque, defesa, ataque_magico, defesa_magica, tipo_personagem)
VALUES
	("Caitlyn", 140, 50, 50, 65, 30, 65, 1), -- AD Carry - ATIRADOR
	("Annie", 50, 40, 30, 65, 120, 65, 3), -- AP Carry - MAGO
	("Volibear", 165, 30, 100, 120, 10, 100, 2), -- Tank - Tank AD 
	("Rengar", 100, 60, 90, 65, 30, 65, 4), -- Jungler - Caçador
	("Sona", 20, 40, 20, 40, 80, 80, 5); -- Support - Suporte AP Controle

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 40;

SELECT * FROM tb_personagens WHERE velocidade_movimento BETWEEN 50 AND 100;

SELECT * FROM tb_personagens WHERE nome_personagem Like "%n%";

SELECT tb_personagens.id, nome_personagem, forca, velocidade_movimento, ataque, defesa, ataque_magico, defesa_magica, tb_classes.tipo_personagens
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.tipo_personagem = tb_classes.id
ORDER BY tb_personagens.id;

SELECT tb_personagens.id, nome_personagem, forca, velocidade_movimento, ataque, defesa, ataque_magico, defesa_magica, tb_classes.tipo_personagens
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.tipo_personagem = tb_classes.id
WHERE tb_classes.tipo_personagens = "ADCarry";