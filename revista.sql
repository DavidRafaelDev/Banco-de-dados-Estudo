create database revista;

use revista;

create table revista(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);

insert into revista (idRevista, nome) values 	(null, 'veja'),
												(null,'epoca'),
												(null,'isso é'),
                                                (null,'quatro roda');
                                                
select * from revista;

update revista set categoria = 'fofoca' where idRevista <=3;
select * from revista;

insert into revista values 	(null,'Ciência & Saúde Coletiva','ciencia'),
							(null,'Academia Brasileira de Ciências.','ciencia'),
                            (null,'Cosmos','astronomia'),
                            (null,'Galileu','astronomia');
select * from revista;

describe revista;       

alter table revista modify categoria varchar(40);
describe revista;

alter table revista add column periodicidade varchar(15);
select * from revista;
alter table revista drop column periodicidade; 

create table editora (
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFound date
) auto_increment = 1000;

insert into editora values 	(null,'editora abril','2000-07-22'), 
							(null,'Globo','2003-10-25'),
                            (null,'Editora Três','1997-10-20');


select * from editora;
alter table revista add fkEditora int, add foreign key(fkEditora) references editora(idEditora);
desc revista;
update revista set fkEditora = 1001 where idRevista in (1,2,3);
update revista set fkEditora = 1002 where idRevista in (2,3,4);
update revista set fkEditora = 1000 where idRevista in (5,6,7,8);
select * from revista;
select * from revista, editora where fkEditora = idEditora;
select * from revista, editora where fkEditora = idEditora and fkEditora = 1000;