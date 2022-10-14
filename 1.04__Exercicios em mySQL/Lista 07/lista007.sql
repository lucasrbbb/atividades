create database controledelivrosFinal;
use controledelivrosFinal;

create table autor(
id_autor int primary key,
nome varchar(50) not null,
idade int,
valor_hr decimal(10,2) not null
);

create table editora(
id_editora int primary key,
nome varchar(50) not null,
telefone varchar(12)
);

create table estilo(
id_estilo int primary key,
nome varchar(50) not null
);

create table livro(
id_livro int primary key,
titulo varchar(50) not null,
id_editora int not null,
valor decimal(10,2),
constraint fk_livro_editora foreign key (id_editora) references editora(id_editora)
);

create table livro_autor(
	id_autor int not null,
    id_livro int not null,
    primary key(id_autor,id_livro),
    foreign key (id_autor) references autor(id_autor),
    foreign key (id_livro) references livro(id_livro)
);

create table livro_estilo(
	id_estilo int not null,
    id_livro int not null,
    primary key(id_estilo,id_livro),
    foreign key (id_livro) references livro(id_livro),
    foreign key (id_estilo) references estilo(id_estilo)
);

insert into editora values
(1,'Abril','12334567'),
(2,'Globo','123345'),
(3,'Saraiva','1233451212'),
(4,'BBBBB','123345'),
(5,'CCCC','12334521312'),
(6,'EEEE','12334521312'),
(7,'FFF','12334521312'),
(8,'GGGG','12334521312');

insert into autor values
(1,'Paulo Coelho',70,120.3),
(2,'Agatha Christie',50,120.3),
(3,'J K Rowling',70,120.3),
(4,'Dan Brown',35,120.3),
(5,'J R R Tolkien',70,120.3),
(6,'João Abreu',25,5.3),
(7,'Pedro Maria',35,20.3);

insert into estilo values
(1,'Comédia'),
(2,'Drama'),
(3,'Ficção'),
(4,'Suspense'),
(5,'Romance'),
(6,'Ação'),
(7,'Terror');

insert into livro values
(1,'Livro - 123',1,1.5),
(2,'Livro - 234',2,2.5),
(3,'Livro - 333',3,5.5),
(4,'Livro - 444',4,12.5),
(5,'Livro - 555',5,15.5),
(6,'Livro - 566',5,20.5),
(7,'Livro - 544',5,10.5),
(8,'Livro - 666',5,15.5),
(9,'Livro - 777',5,20.5);

insert into livro_autor values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(2,6),
(5,7),
(5,8),
(5,9);

insert into livro_estilo values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(5,6),
(2,7),
(2,8),
(2,9);

-- 1) Consultar titulo livro, nome editora, nome estilo e nome autor;
select l.titulo, ed.nome, e.nome, a.nome from livro as l
join livro_estilo as le on l.id_livro = le.id_livro
join estilo as e on e.id_estilo = le.id_estilo
join editora as ed on ed.id_editora = l.id_editora
join livro_autor as la on la.id_livro = l.id_livro
join autor as a on a.id_autor = la.id_autor;

-- 2) Consultar titulo livro, nome editora. Onde o telefone da editora seja igual a 12345;
select l.titulo, ed.nome from livro as l
join editora as ed on ed.id_editora = l.id_editora 
where ed.telefone = '12345'; 

-- 3) Consultar titulo livro, nome autor. Onde autor tenha idade igual a 35;
select l.titulo, a.nome from livro as l 
join livro_autor as la on la.id_livro = l.id_livro
join autor as a on a.id_autor = la.id_autor
where a.idade = '35';

-- 4) Consultar titulo livro, nome autor e editora. Onde autor tenha o nome de Dan Brown
select l.titulo, a.nome, ed.nome from livro as l 
join livro_autor as la on la.id_livro = l.id_livro
join editora as ed on ed.id_editora = l.id_editora 
join autor as a on a.id_autor = la.id_autor
where a.nome = 'Dan Brown';

-- 5) Consultar titulo livro, nome autor e editora. Onde autor tenha o nome de Dan Brown e idade igual a 35
select l.titulo, a.nome, ed.nome from livro as l 
join livro_autor as la on la.id_livro = l.id_livro
join editora as ed on ed.id_editora = l.id_editora 
join autor as a on a.id_autor = la.id_autor
where a.nome = 'Dan Brown' and a.idade = '35';

-- 6) Consultar titulo livro, nome autor e editora. Onde autor tenha o nome de Dan Brown e editora com o telefone igual a 123345;
select l.titulo, a.nome, ed.nome from livro as l 
join livro_autor as la on la.id_livro = l.id_livro
join editora as ed on ed.id_editora = l.id_editora 
join autor as a on a.id_autor = la.id_autor
where a.nome = 'Dan Brown' and ed.telefone = '123345';

-- 7) Consulta titulo livro, nome estilo dos livros do estilo Romance;
select l.titulo, e.nome from livro as l
join livro_estilo as le on l.id_livro = le.id_livro
join estilo as e on e.id_estilo = le.id_estilo
where e.nome = 'Romance';

-- 8) Consulta titulo livro, nome estilo dos livros da editora Globo;
select l.titulo, e.nome from livro as l
join livro_estilo as le on l.id_livro = le.id_livro
join estilo as e on e.id_estilo = le.id_estilo
join editora as ed on ed.id_editora = l.id_editora 
where ed.nome = 'Globo';

-- 9) Consultar o livro de maior valor;
select max(valor), l.titulo from livro as l;

-- 10)Consultar o livro de menor valor;
select min(valor), l.titulo from livro as l;

-- 11)Consultar a média de custo do livros;
select avg(valor) from livro as l;

-- 12)Consultar a média de custo dos autores;
select avg(valor_hr) from autor as a;

-- 13)Contar o número de livros;
select COUNT(id_livro) from livro as l;

-- 14)Consultar a quantidade de livros que editora de id_editora = 2;
select COUNT(id_livro) from livro as l
join editora as ed on ed.id_editora = l.id_editora
where l.id_editora = 2;

-- 15)Consultar quantos livros o id_estilo = 5 possui
select COUNT(l.id_livro) from livro as l
join livro_estilo as le on l.id_livro = le.id_livro
join estilo as e on e.id_estilo = le.id_estilo
where le.id_estilo = 5;

-- 16)Selecione os títulos dos livros e os respectivos nomes das editoras.
select l.titulo, ed.nome from livro as l
join editora as ed on ed.id_editora = l.id_editora;

-- 17)Selecione os títulos do livro, os respectivos nomes das editoras que começam com a letra A.
select l.titulo, ed.nome from livro as l
join editora as ed on ed.id_editora = l.id_editora
where ed.nome like 'a%';

-- 18)Consultar apenas os autores que não possuem nenhum livro;
select a.nome from livro as l
join livro_autor as la on la.id_livro = l.id_livro
join autor as a on a.id_autor = la.id_autor
where la.id_livro is null; 

-- 19)Consultar apenas as editoras que não possuem nenhum livro;
select ed.nome from livro as l
join editora as ed on ed.id_editora = l.id_editora
where l.id_livro is null; 

-- 20)Consultar apenas os estilo que não possuem nenhum livro;
select e.nome from livro l
right join livro_estilo as le on l.id_livro = le.id_livro
right join estilo as e on e.id_estilo = le.id_estilo
where le.id_livro is null; 

-- 21)Consultar os nomes dos autores e quantos livros cada autor possui; 
select a.nome, count(l.id_livro) as 'numero de livros' from livro as l
join livro_estilo as le on l.id_livro = le.id_livro
join livro_autor as la on la.id_livro = l.id_livro
join autor as a on la.id_autor = a.id_autor
group by a.nome;

-- 22)Consultar os nomes das editoras e quantos livros cada editora possui;
select ed.nome , count(l.id_livro) as 'numero de livros' from livro as l
right join livro_estilo as le on l.id_livro = le.id_livro
right join estilo as e on e.id_estilo = le.id_estilo
right join editora as ed on ed.id_editora = l.id_editora
group by ed.nome;

-- 23)Consultar os nomes das estilo e quantos livros cada estilo possui;
select e.nome, count(l.id_livro) as 'numero de livros' from livro as l
right join livro_estilo as le on l.id_livro = le.id_livro
right join estilo as e on e.id_estilo = le.id_estilo
group by e.nome;

-- 24)Consultar quantos livros a editora CCCC possui; 
select count(l.id_livro) as 'numero de livros' from livro as l
join livro_estilo le on l.id_livro = le.id_livro
join estilo as e on e.id_estilo = le.id_estilo
join editora as ed on ed.id_editora = l.id_editora
where ed.nome like 'CCCC';

-- 25)Consultar quantos livros o autor J R R Tolkien possui;
select count(l.id_livro) as 'numero de livros' from livro as l
join livro_autor as la on la.id_livro = l.id_livro
join autor as a on la.id_autor = a.id_autor
where a.nome like 'J R R Tolkien';







 