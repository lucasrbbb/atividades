CREATE DATABASE LIVROS;

USE LIVROS;

CREATE TABLE editora(
id_editora INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome varchar(200),
telefone VARCHAR(12),
rua VARCHAR(40)
);

CREATE TABLE categoria(
id_categoria INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome varchar(200)
);

CREATE TABLE autor(
id_autor INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome varchar(200),
telefone VARCHAR(12),
rua VARCHAR(40)
);

CREATE TABLE livro(
id_livro INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome varchar(200),
numero_pag INT,
data_publicacao varchar(40),
id_editora int,
FOREIGN KEY (id_editora) REFERENCES editora (id_editora)
);

CREATE TABLE livro_autor(
id_livro_autor INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_livro int,
id_autor int,
FOREIGN KEY (id_livro) REFERENCES livro (id_livro),
FOREIGN KEY (id_autor) REFERENCES autor (id_autor)
);

CREATE TABLE livro_categoria(
id_livro_categoria INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_livro int,
id_categoria int,
FOREIGN KEY (id_livro) REFERENCES livro (id_livro),
FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria)
);

INSERT INTO editora
VALUES (1, 'Sao Paulo', '45998025818', 'Visconde do Rio Branco'), (2, 'Sao Paulo', '459980256356', 'Rio de Janeiro');

INSERT INTO categoria
VALUES (1, 'Terror'), (2, 'Fantasia') ;

INSERT INTO autor
VALUES (1,'Paulo', '459980256356', 'Laranjeiras'), (2,'Rodrigo', '419880256356', 'Bombinhas');

INSERT INTO livro
VALUES (1, 'Bolinha', 320, '2002/02/21', '1'), (2,'Roca e o Rei', 415, '2007/03/02', 2);

INSERT INTO livro_categoria
VALUES (1, 1, 1),(2, 2, 2);

UPDATE editora
SET nome = 'Rio de Janeiro'
WHERE id_editora = 1;

UPDATE categoria
SET nome = 'Suspense'
WHERE id_categoria = 1;

UPDATE autor
SET nome = 'Ze do Caixão'
WHERE id_autor = 1;

UPDATE livro
SET nome = 'A cabana'
WHERE id_livro = 1;

DELETE FROM livro_categoria
WHERE id_livro_categoria = 1;

DELETE FROM livro_autor
WHERE id_livro_autor = 1;

DELETE FROM livro
WHERE id_livro = 1;

DELETE FROM autor
WHERE id_autor = 1;

DELETE FROM categoria
WHERE id_categoria = 1;

DELETE FROM editora
WHERE id_editora = 1;








