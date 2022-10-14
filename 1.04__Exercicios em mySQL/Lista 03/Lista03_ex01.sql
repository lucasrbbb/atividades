-- create schema

CREATE DATABASE CLINICA;

USE CLINICA;

CREATE TABLE medicos (
id_medico INT PRIMARY KEY AUTO_INCREMENT,
crm VARCHAR(15) NOT NULL UNIQUE,
nome VARCHAR(40) NOT NULL,
idade INT,
especialidade CHAR(20) NOT NULL DEFAULT 'Ortopedia',
cpf VARCHAR(15) UNIQUE NOT NULL,
data_admissao DATE,
CHECK (idade < 23)
);

CREATE TABLE salas (
id_sala INT PRIMARY KEY AUTO_INCREMENT,
numero_sala INT NOT NULL UNIQUE,
andar INT UNIQUE NOT NULL,
id_medico INT,
CHECK (numero_sala > 1 AND numero_sala < 50),
CHECK (andar < 12),
FOREIGN KEY (id_medico) REFERENCES medicos (id_medico)
);

CREATE TABLE pacientes (
id_paciente INT PRIMARY KEY AUTO_INCREMENT,
rg VARCHAR(40) NOT NULL UNIQUE, 
nome VARCHAR(40) NOT NULL,
data_nascimento DATE, 
cidade CHAR(30) DEFAULT 'Itabuna', 
doenca VARCHAR(40) NOT NULL,
plano_saude VARCHAR(40) NOT NULL DEFAULT 'SUS'
);

CREATE TABLE funcionarios (
id_funcionarios INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
data_nascimento DATE NOT NULL,
data_admissao DATE NOT NULL, 
cargo VARCHAR(40) NOT NULL DEFAULT 'Assistente Medico',
salario FLOAT NOT NULL DEFAULT '510.00'
);

CREATE TABLE consultas (
id_consultas INT PRIMARY KEY AUTO_INCREMENT,
data_horario DATETIME,
id_medico INT,
id_paciente INT, 
FOREIGN KEY (id_medico) REFERENCES medicos (id_medico),
FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente)
);

   