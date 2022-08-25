CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment primary key,
categoria varchar(255),
plataforma varchar(255)
);

CREATE TABLE tb_personagens(
id bigint auto_increment primary key,
nick varchar(255),
habilidade varchar(255),
poder_ataque int,
poder_defesa int,
classe_id bigint,

FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(categoria,plataforma)VALUE("Ação", "PC");
INSERT INTO tb_classes(categoria,plataforma)VALUE("Aventura", "Mobile");
INSERT INTO tb_classes(categoria,plataforma)VALUE("RPG", "Console");
INSERT INTO tb_classes(categoria,plataforma)VALUE("Ação", "Mobile");
INSERT INTO tb_classes(categoria,plataforma)VALUE("Aventura", "PC");

INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Bigas", "Velocidade", 5000, 3000,4);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Rosemaryb", "Tiro", 5000, 1000,4);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Scooby", "Destreza", 2000, 5000,5);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Jutsu", "Invisibilidade", 500, 5000,2);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Ramona", "Velocidade", 300, 1000,1);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Barack", "Destreza", 2000, 5000,3);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Jurema", "Tiro", 3000, 500,1);
INSERT INTO tb_personagens(nick,habilidade,poder_ataque,poder_defesa,classe_id)VALUE("Jorge", "Velocidade", 500, 6000,5);

SELECT * FROM tb_personagens WHERE poder_ataque>2000;
SELECT * FROM tb_personagens WHERE poder_defesa >=1000 AND poder_defesa <=2000;

SELECT id, nick FROM tb_personagens WHERE nick LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes WHERE tb_classes.id = 4 AND tb_personagens.classe_id = 4;

