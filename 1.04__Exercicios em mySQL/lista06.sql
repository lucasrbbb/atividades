CREATE DATABASE LIVROS;

USE LIVROS;

CREATE TABLE editora(
id_editora INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome varchar(50),
telefone VARCHAR(12)
);

CREATE TABLE estilo(
id_estilo INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome varchar(50)
);

CREATE TABLE autor(
id_autor INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
idade INT,
valor_hr DECIMAL(10,2)
);

CREATE TABLE livro(
id_livro INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
titulo 	VARCHAR(50),
valor DECIMAL(10,2),
data_publicacao varchar(40),
id_editora INT,
id_autor INT,
id_estilo INT,
FOREIGN KEY (id_editora) REFERENCES editora (id_editora),
FOREIGN KEY (id_autor) REFERENCES autor (id_autor),
FOREIGN KEY (id_estilo) REFERENCES estilo (id_estilo)
);
