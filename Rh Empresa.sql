CREATE DATABASE db_rh_empresa;
USE db_rh_empresa;
CREATE TABLE tb_colaboradores (
id bigint auto_increment primary key,
nome varchar(255),
setor varchar (255),
turno varchar (255),
salario decimal (8,2)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome,setor,turno,salario)VALUE("Jair Melo","distribuição","intermediário",1500.00);

SELECT nome, setor, salario FROM tb_colaboradores WHERE salario > 2000.00;
SELECT nome, setor, salario FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario=1000.00 WHERE id=5;
