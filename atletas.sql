create database atleta;

use atleta;

create table atletas(
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalhas int
);

insert into atletas Values (1,"David","Corrida","20"),
		(2,"Gaby","Corrida","19"),
                            (3,"Ruan", "Basquete","0"),
                            (4,"Guilherme","Basquete","7"),
                            (5,"Cleber", "Futebol","18"),
                            (6,"Gabriel","Futebol","2"),
                            (7,"Boris", "Volei","7"),
                            (8,"Nicolas","Volei","3");
select * from atletas;

select nome, qtdMedalhas from atletas;

select nome from atletas where modalidade = "futebol";

select * from atletas order by modalidade;

select * from atletas order by qtdMedalhas desc;

select * from atletas where nome like "%s%";	

select * from atletas where nome like "d%";

select * from atletas where nome like "%o";

select * from atletas where nome like "%r_";

drop table atletas;
