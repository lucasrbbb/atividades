CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE instrutores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  valor_hora INTEGER UNSIGNED NULL,
  certificados VARCHAR(255) NULL,
  PRIMARY KEY(id)
);
CREATE TABLE cursos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  requisito VARCHAR(255) NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  preco DOUBLE UNSIGNED NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE alunos (
  id INT NOT NULL AUTO_INCREMENT,
  cpf CHAR(11) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  fone CHAR(14) NOT NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE turmas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  instrutores_id INT NOT NULL,
  cursos_id INTEGER UNSIGNED NOT NULL,
  data_inicio DATE NULL,
  data_final DATE NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX turmas_FKIndex1(cursos_id),
  INDEX turmas_FKIndex2(instrutores_id),
  CONSTRAINT CURSO_TURMA_FK FOREIGN KEY(cursos_id)
    REFERENCES cursos(id),
  CONSTRAINT INSTRUTOR_TURMA_FK FOREIGN KEY(instrutores_id)
    REFERENCES instrutores(id)
);
 
CREATE TABLE matriculas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  turmas_id INTEGER UNSIGNED NOT NULL,
  alunos_id INT NOT NULL,
  data_matricula DATE NULL,
  PRIMARY KEY(id),
  CONSTRAINT ALUNO_MATRICULA_FK FOREIGN KEY(alunos_id)
    REFERENCES alunos(id),
  CONSTRAINT TURMA_MATRICULA_FK FOREIGN KEY(turmas_id)
    REFERENCES turmas(id)
);

INSERT INTO instrutores
VALUES (1,'Paulo','paulo@hotmail.com',1500,'Estetica'),
(2,'Rubens','rubens@hotmail.com',1600,'Farmacia'),
(3,'Carlos','carlos@hotmail.com',1600,'Estetica'),
(4,'Lidia','lidia@hotmail.com',1200,'Engenharia'),
(5,'Roberto','roberto@hotmail.com',1300,'Tecnologia');

SELECT * FROM instrutores;

INSERT INTO cursos
VALUES (1,'Medicina','Ensino Medio',320, 1499.50),
(2,'Engenharia Civil','Ensino Medio',480, 1499.50),
(3,'Moda','Ensino Medio',180, 1499.50),
(4,'Administração','Ensino Medio',360, 1499.50),
(5,'Letras','Ensino Medio',200, 1499.50);

SELECT * FROM cursos;

INSERT INTO alunos
VALUES (1,'12345678910','Ricardo','ricardo@hotmail.com', '4598025818','1997/01/28'),
(2,'12345678910','Pietro','pietro@hotmail.com', '4598025818','1998/10/08'),
(3,'12345678910','Lisa','lisa@hotmail.com', '4598025818','2001/06/04'),
(4,'12345678910','Ana','ana@hotmail.com', '4598025818','2005/03/06'),
(5,'12345678910','Indio','indio@hotmail.com', '4598025818','1989/12/18');

SELECT * FROM alunos;

INSERT INTO turmas
VALUES (1,1,1,'2022/01/15', '2022/12/20',400),
(2,2,2,'2022/01/15', '2022/12/20',400),
(3,3,3,'2022/01/15', '2022/12/20',400),
(4,4,4,'2022/01/15', '2022/12/20',400),
(5,5,5,'2022/01/15', '2022/12/20',400);

SELECT * FROM turmas;

INSERT INTO matriculas
VALUES (1,1,1,'2022/01/13'),
(2,2,2,'2022/01/13'),
(3,3,3,'2022/01/12'),
(4,4,4,'2022/01/10'),
(5,5,5,'2022/01/9');

SELECT * FROM matriculas;

UPDATE instrutores
SET nome = 'Leoncio'
WHERE id = 1;  

SELECT * FROM instrutores;

UPDATE instrutores
SET email = 'lidia_novo@gmail.com'
WHERE nome = 'lidia';

SELECT * FROM instrutores;  

UPDATE cursos
SET nome = 'Direito'
WHERE id = 1;  

SELECT * FROM cursos;

UPDATE cursos
SET requisito = 'Curso Técnico'
WHERE nome = 'Moda';

SELECT * FROM cursos; 

UPDATE turmas
SET instrutores_id = 1
WHERE id = 2; 

SELECT * FROM turmas;

UPDATE turmas
SET instrutores_id = 2
WHERE id = 1; 

SELECT * FROM turmas; 

DELETE FROM matriculas
WHERE id = 1;

DELETE FROM matriculas
WHERE id = 2;

DELETE FROM turmas
WHERE id = 1;

DELETE FROM turmas
WHERE id = 2;

DELETE FROM alunos
WHERE id = 1;

DELETE FROM alunos
WHERE id = 2;

DELETE FROM cursos
WHERE id = 1;

DELETE FROM cursos
WHERE id = 2;

DELETE FROM instrutores
WHERE id = 1;

DELETE FROM instrutores
WHERE id = 2;