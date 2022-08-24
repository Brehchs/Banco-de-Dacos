CREATE DATABASE db_ecommerce;
USE db_ecommerce; 

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
categoria varchar(255),
garantia varchar(255),
frete decimal(5,2),
preço decimal(8,2)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(categoria,garantia,frete,preço)VALUE("Vestuário", "7 dias", 00.00, 100.00);

SELECT id,categoria,preço FROM tb_produtos WHERE preço>500.00;
SELECT id,categoria,preço FROM tb_produtos WHERE preço<500.00; 

UPDATE tb_produtos SET frete=7.50 WHERE id=2;