create database TabelaMúsica;
use TabelaMúsica;

create table CDs(
	CodigCD int not null primary key auto_increment,
    Nome 		varchar(50),
    DataCompra  date,
    Valor 		float,
    LocalCompra varchar(50)
	Tipo 		varchar(50));

create table Musicas(
	CodigCD	int not null primary key auto_increment,
    Numero  int,
    Nome    varchar(50),
    Artista varchar(50),
    Tempo	time);
    
 -- A
select *
from Musicas;

 -- B 
 select Nome, DataCompra
 from CDs 
 order by Nome;

 -- C
select Nome, DataCompra
from CDs
order by DataCompra desc;

 -- D
select SUM(valor)
as TotalGasto
from CDs;

 -- E
select *
from Musicas
where CodigCD = 1;

 -- F 
select CDs.Nome
as NomeDoCD, Musicas.Nome
as NomeDaMusica
from CDs
join Musicas on CDs.CodigCD = Musicas.CodigCD;

 -- G
 select Nome, Artista
 from musicas;
 
 -- H
select sec_to_time(sum(time_to_sec(Tempo)))
as TempoTotal
from Musicas;

 -- I
select Numero, Nome, Tempo
from musicas
where CodigCD = 5
order by Numero;

 -- J
select CodigCD, sec_to_time(sum(time_to_sec(Tempo)))
as TempoTotalPorCD
from musicas 
group by CodigCD;

-- K
select count(*) 
as QuantidadesDeMusicas
from Musicas;

 -- L
 select sec_to_time(AVG(time_to_sec(Tempo)))
 as MediaDeDuracao
 from Musicas;
 
 -- M
select count(*)
as QuantidadeDeCDs
from CDs;

 -- N
select Nome
from Musica
where Artista = 'José Pedro';

 -- O
select CodigCD, count(*) 
as QuantidadesDeMusicas
from Musicas
group by CodigCD;

 -- P
select Nome
from CDs 
where LocalCompra = 'Submarino';

 -- Q
select CDs.Nome
as NomeDoCD, Musicas.Nome
as PrimeiraMusica
from CDs
join Musicas on CDs.CodigCD = Musicas.CodigCD
where Musicas.Numero = 1;

 -- R
select Nome, Artista
from Musicas 
order by Nome asc;

 -- S 
 select * 
 FROM CDs 
 where Tipo = 'Album';
 
 -- T
 select Nome, Valor 
 from CDs 
 order by Valor desc limit 1;
    

		

