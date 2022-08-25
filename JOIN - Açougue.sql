CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
tipo varchar (255),
corte varchar (255)
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
nome varchar (255),
preco_kg double (5,2),
promocao boolean,
tipo_id bigint,

FOREIGN KEY (tipo_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(tipo,corte)VALUE("Bovino","Moído");
INSERT INTO tb_categorias(tipo,corte)VALUE("Bovino","Peça");
INSERT INTO tb_categorias(tipo,corte)VALUE("Bovino","Picado");
INSERT INTO tb_categorias(tipo,corte)VALUE("Suíno","Picado");
INSERT INTO tb_categorias(tipo,corte)VALUE("Suíno","Peça");

INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Patinho",36.99, true, 1);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Alcatra",100.28, false, 2);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Colchão Duro",25.40, true,3);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Coxa da Asa",18.50, true, 4);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Asinha",25.99, true, 5);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Peito",35.99, false, 4);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Linguiça Apimentada",37.88, false, 5);
INSERT INTO tb_produtos(nome,preco_kg,promocao,tipo_id)VALUE("Acem",50.00, false, 3);

SELECT id,nome,preco_kg FROM tb_produtos WHERE preco_kg > 50.00;

SELECT * FROM tb_produtos WHERE preco_kg BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%"; 

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.tipo_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.tipo_id WHERE tipo = "Bovino";