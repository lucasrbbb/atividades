CREATE DATABASE escola;

USE escola; 

CREATE TABLE turma (
id_turma INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  
nome VARCHAR(200) UNIQUE,
horario VARCHAR(200) NOT NULL
);

CREATE TABLE professor (
id_professor INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
nome VARCHAR(200),
salario DOUBLE NOT NULL 
);

CREATE TABLE turma_professor (
id_turma_professor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_turma INT,
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES professor (id_professor),
FOREIGN KEY (id_turma) REFERENCES turma (id_turma) 
);
 
CREATE TABLE aluno (
id_aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
nome VARCHAR(200),
responsavel VARCHAR(200) NOT NULL,
id_turma INT,
FOREIGN KEY (id_turma) REFERENCES turma (id_turma)   
);

CREATE TABLE aula (
id_aula INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
nome VARCHAR(200),
horario VARCHAR(200) NOT NULL,
sala VARCHAR(200) NOT NULL,
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES professor (id_professor)
);

CREATE TABLE aluno_aula (
id_aluno_aula INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_aluno INT,
id_aula INT,
FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
FOREIGN KEY (id_aula) REFERENCES aula (id_aula) 
);

INSERT INTO turma
VALUES (1, '2A', '13:30 ás 17:30'), (2, '2B', '13:30 ás 17:30');

INSERT INTO professor
VALUES (1, 'Paulo Henrique', 3200), (2, 'Ana Claudia', 1500);

INSERT INTO turma_professor
VALUES (1, 1, 1), (2, 2, 2);

INSERT INTO aluno
VALUES (1, 'Carlos Pascal', 'Sergio Carlos', 1), (2, 'Vera Amanda', 'Paula Medeiros', 2);

INSERT INTO aula
VALUES (1, 'Geografia', '15:30', '302', 1), (2, 'História', '13:30', '301', 2);

INSERT INTO aluno_aula
VALUES (1, 1, 1), (2, 2, 2);

UPDATE turma
SET nome = '3A', horario = '08:30 ás 12:30'  
WHERE id_turma = 1;  

UPDATE professor
SET nome = 'Paula Limeira', salario = 3500 
WHERE id_professor = 1;

UPDATE aluno
SET nome = 'João Medeiros', responsavel = 'Maria Medeiros'  
WHERE id_aluno = 1;

UPDATE aula
SET nome = 'Matematica', horario = '16:30', sala = '304'  
WHERE id_aula = 1;

DELETE FROM turma_professor 
WHERE id_turma = 1;

DELETE FROM aluno_aula
WHERE id_aluno = 1;

DELETE FROM aluno
WHERE id_aluno = 1;

DELETE FROM aula
WHERE id_aula = 1;

DELETE FROM turma
WHERE id_turma = 1;

DELETE FROM professor
WHERE id_professor = 1;

