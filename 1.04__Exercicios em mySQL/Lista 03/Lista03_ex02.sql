-- create schema

CREATE DATABASE ELEICAO;

USE ELEICAO;

CREATE TABLE cargo(
id_cargo INT PRIMARY KEY AUTO_INCREMENT,
codigo_cargo INT NOT NULL UNIQUE,
nome_cargo VARCHAR(30) NOT NULL UNIQUE,
salario FLOAT NOT NULL DEFAULT '1700',
numero_vagas INT NOT NULL UNIQUE,
CHECK (nome_cargo != 'Prefeito' AND nome_cargo != 'Vereador')
);

CREATE TABLE partido(
id_partido INT PRIMARY KEY AUTO_INCREMENT,
codigo_partido INT NOT NULL UNIQUE,
sigla CHAR(5) NOT NULL UNIQUE,
nome VARCHAR(40) NOT NULL UNIQUE,
numero INT NOT NULL UNIQUE
);

CREATE TABLE candidato(
id_candidato INT PRIMARY KEY AUTO_INCREMENT,
codigo_candidato INT NOT NULL UNIQUE,
nome VARCHAR(40) NOT NULL UNIQUE,
codigo_cargo INT NOT NULL,
codigo_partido INT NOT NULL,
id_cargo INT NOT NULL,
id_partido INT NOT NULL,
FOREIGN KEY (id_cargo) REFERENCES cargo (id_cargo),
FOREIGN KEY (id_partido) REFERENCES partido (id_partido)
);

CREATE TABLE voto (
id_voto INT PRIMARY KEY AUTO_INCREMENT,
titulo_eleitor VARCHAR(40) NOT NULL UNIQUE,
id_candidato INT, 
FOREIGN KEY (id_candidato) REFERENCES candidato (id_candidato)
);

CREATE TABLE eleitor(
id_eleitor INT PRIMARY KEY AUTO_INCREMENT,
titulo_eleitor VARCHAR(40) NOT NULL UNIQUE,
zona_eleitoral CHAR(5) NOT NULL,
sessao_eleitoral CHAR(5) NOT NULL,
nome VARCHAR(40) NOT NULL
);






