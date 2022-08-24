CREATE DATABASE db_escola_generation; 
USE db_escola_generation;
CREATE TABLE tb_alunes(
id bigint auto_increment primary key,
nome varchar(255),
data_nascimento date,
turma int,
nota decimal (4,2)
);

SELECT * FROM tb_alunes;

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Luis Pires", "1994-11-10",57,10);

/*Seleciona todos os dados da tabela de alunes*/
SELECT * FROM tb_alunes;

/*Seleciona todos os dados da tabela de alunes ONDE a nota for maior que 7*/
SELECT * FROM tb_alunes WHERE nota > 7;

/*Seleciona todos os dados da tabela de alunes ONDE a nota for menor que 7*/
SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 7 WHERE id=5;

