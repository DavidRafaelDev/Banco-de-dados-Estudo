create database livro;

use livro;

create table livro (
	idLivro int primary key,
	titulo varchar(40),
    autor varchar(30),
    genero varchar(30)
);

insert into livro values (1,'astrologia para leigos','David','ciencia'),
						 (2,'Livro de ciencia','Roberto','ciencia'),
						 (3,'Ciencia das coisas','David','ciencia'),
                         (4,'Guia LGPD','Daniel Donda','tecnologia'),
                         (5,'Java para iniciantes','javes','tecnologia'),
                         (6,'Boas praticas de programação','jussimar','tecnologia'),
                         (7,'As cronicas de narnia','Clive Staples Lewis','fantasia'),
                         (8,'O guia dos mochileiros das galaxias','Douglas Adans','fantasia'),
                         (9,'Dirk Gently','Douglas Adans','fantasia');
select * from livro;

select genero, titulo from livro;

select * from livro where genero = "tecnologia";

select * from livro where autor = 'Douglas Adans';

select * from livro order by titulo;

select * from livro order by autor desc;

select * from livro where titulo like 'J%';

select * from livro where autor like '%s';

select * from livro where genero like '%c%';

select * from livro where titulo like '%a_';

update livro set genero= 'acao' where idLivro = 3;

delete from livro where idLivro = 1;

select * from livro;

drop table livro;
drop database livro;

