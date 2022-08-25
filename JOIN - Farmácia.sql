CREATE DATABASE  db_farmacia_bem_estar;
USE  db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
sessao varchar(255),
descricao varchar(255)
);

CREATE TABLE  tb_produtos(
id bigint auto_increment primary key,
nome varchar(255),
preco double (5,2),
tipo varchar (255),
receita boolean,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(sessao,descricao)VALUE("Antiinflamatório", "Genérico");
INSERT INTO tb_categorias(sessao,descricao)VALUE("Analgésico", "Similar");
INSERT INTO tb_categorias(sessao,descricao)VALUE("Antibiótico", "Original");
INSERT INTO tb_categorias(sessao,descricao)VALUE("Vitamina", "Manipulado");
INSERT INTO tb_categorias(sessao,descricao)VALUE("Creme", "Genérico");

INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Dorflex", 20.00, "Comprimido", false,2);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Lisador", 10.00, "Comprimido", false,2);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Amoxcilina", 50.00, "Xarope", true,3);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Centrum", 60.00, "Comprimido", false,4);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Monange", 29.90, "Loção", false,5);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Nimesulida", 14.75, "Comprimido", true,1);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Ciprofloxacino ", 34.00, "Comprimido", true,3);
INSERT INTO tb_produtos(nome, preco, tipo, receita, categoria_id)VALUE("Ômega 3", 60.00, "Comprimido", false,4);

SELECT nome, preco FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT id, nome FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id; 

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE descricao = "Genérico"; 






