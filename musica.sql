create database musica;

use musica;

create table musica(
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica values(1,"Aint no rest for the Wicked","Cage The Elephant","rock"),
						 (2,"Give it away","Red Hot Chili Peppers","rock"),
                         (3,"under the bridge","Red hot Chili Peppers","rock"),
                         (4,"bad boy","bbno$","rap"),
                         (5,"Black & White", "Juice WRLD","rap"),
                         (6,"Sunfower","Post Malone","rap"),
                         (7,"Dance Monkey","Tones and I","pop");
                         
select * from musica;
select titulo,artista from musica;
select * from musica where genero = "rock";
select * from musica where artista = "Red Hot Chili Peppers";
select * from musica order by titulo;
select * from musica order by artista desc;
select * from musica where titulo like "b%";
select * from musica where artista like "%$";
select * from musica where genero like "_o%";
select * from musica where titulo like "%e_";
drop table musica;
