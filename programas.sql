create database programa;

use programa;
create table programa (
	idPrograma int primary key,
	nome varchar(40),
	genero varchar(30),
	emissora varchar(20)
);
insert into programa values (1,'Silvio Santos','Auditorio','sbt'),
							(2,'Domingo legal','Auditorio','sbt'),
							(3,'Bom dia SP','jornal','sbt'),
                            (4,'Jornal da Record','jornal','record'),
                            (5,'Jornal da Nascional','Jornal','globo'),
                            (6,'Os mutantes','novela','record'),
                            (7,'Totalmente demais','novela','globo');
                            
select * from programa;

select nome, emissora from programa;

select * from programa where emissora = 'record';

select * from programa where genero = 'jornal'; 

select * from programa order by genero;

Select * from programa order by nome desc;

select * from programa where nome like '%l';
select * from programa where genero like 'a%';

select * from programa where emissora like '_b%';

select * from programa where nome like '%a_';

update programa set emissora = 'sbt' where idPrograma = 2;

select * from programa where idPrograma = 2;

delete from programa where idPrograma = 2;

select * from programa;

drop table programa;

drop database programa;
