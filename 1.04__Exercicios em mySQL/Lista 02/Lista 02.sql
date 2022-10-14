
-- create schema

CREATE DATABASE lista002;

USE lista002;

CREATE TABLE alunos (
	codigo int,
    nome varchar(50),
    telefone varchar(50),
    cidade varchar(50)
	);

DESC alunos;

CREATE TABLE alunos2 (
	codigo int,
    nome varchar(200),
    telefone varchar(50),
    cidade varchar(100)
	);
    
CREATE TABLE funcionarios (
	nome varchar(50),
	endereco varchar(50),
	telefone varchar(50),
	cidade varchar(50),
	estado varchar (50),
	cep varchar(8),
	rg varchar(11),
	cpf varchar(11),
	salario float
	);

CREATE TABLE fornecedores (
	nome varchar(50),
	endereco varchar(50),
	telefone varchar(50),
	cidade varchar(50),
	estado varchar (50),
	cep varchar(8),
    cnpj varchar(14),
    email varchar(50)
    );
    
CREATE TABLE livros (
	codigo smallint unsigned not null auto_increment,
    nome varchar(50),
    categoria varchar(50),
    resumo varchar(50), 
    precocusto float,
    precovenda float,
    primary key (codigo)
    );
    
DESC alunos;
DESC alunos2;
DESC funcionarios;
DESC fornecedores;
DESC livros;

CREATE TABLE estoque (
	codigo smallint unsigned not null auto_increment,
    nomedoproduto varchar(50),
    categoria varchar(50),
    quantidade int, 
    fornecedor varchar(50),
    primary key (codigo)
    );

CREATE TABLE notas (
	codigo smallint unsigned not null auto_increment,
    nomedoaluno varchar(50),
    bimestre int,
    primary key (codigo)
    );
    
CREATE TABLE caixa (
	codigo smallint unsigned not null auto_increment,
    datas varchar(50),
    descricao varchar(100),
    debito float,
    credito float,
    primary key (codigo)
    );    
    
CREATE TABLE contasAPagar (
	codigo smallint unsigned not null auto_increment,
    data_conta varchar(50), 
    descricao varchar(100), 
    valor float, 
    data_pagamento varchar(50),
    primary key (codigo)
    ); 
    
CREATE TABLE contasAReceber (
	codigo smallint unsigned not null auto_increment,
    data_conta varchar(50), 
    descricao varchar(100), 
    valor float, 
    data_recimento varchar(50),
    primary key (codigo)
    );     
    
CREATE TABLE filmes (
	codigo smallint unsigned not null auto_increment,
    nome varchar(50), 
    sinopse varchar(500), 
    categoria varchar(50), 
    diretor varchar(50),
    primary key (codigo)
    );
    
CREATE TABLE CDs (
	codigo smallint unsigned not null auto_increment,
    nome varchar(50), 
    cantor varchar(50), 
    ano varchar(50),
    quantidademusicas int,
    primary key (codigo)
    );

DROP TABLE alunos2;

DESC alunos2;

DROP TABLE livros;

DROP TABLE contasAPagar;
    
DROP TABLE contasAReceber; 

DROP TABLE filmes;

ALTER TABLE alunos RENAME TO super_alunos;  

DESC super_alunos; 

ALTER TABLE estoque RENAME TO produtos;

ALTER TABLE notas RENAME TO aprovados;

ALTER TABLE tabela RENAME TO notas;

DROP TABLE dinheiro;

DROP TABLE notas;

ALTER TABLE super_alunos RENAME TO alunos;

ALTER TABLE alunos RENAME TO estudantes;

ALTER TABLE estudantes RENAME TO super_estudantes;

DESC super_estudantes;

DROP TABLE super_estudantes;

DESC super_estudantes;

DESC alunos;

ALTER TABLE alunos ADD estado VARCHAR(50); 

CREATE TABLE caixa (
	codigo smallint unsigned not null auto_increment,
    datas varchar(50),
    descricao varchar(100),
    debito float,
    credito float,
    primary key (codigo)
    ); 
    
ALTER TABLE alunos ADD CPF VARCHAR(11); 

DESC caixa; 

ALTER TABLE caixa ADD saldo float; 





    
	
    
    



    

    
    
    
	