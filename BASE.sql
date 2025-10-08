-- Comandos DDL
CREATE DATABASE congresso;
USE congresso;

-- apaga o DB
DROP DATABASE congresso;

-- congresso (código, data, *local*, prazo submissão, prazo inscrição).alter
create table congresso(
 codigo			int primary key not null auto_increment,
 dataC			date,
 localC   		varchar(100),
 prazoSubmissao date,
 prazoInscrisão date);
 
-- GP (código, cargo, nome).
create table gp(
	codigo 	int primary key not null auto_increment,
    cargo 	varchar(50),
    nome  	varchar(50));
    
create table pessoa(
	codigo		int not null primary key auto_increment,
    nome     	varchar(50),
    endereco 	varchar(50),
    email	 	varchar(50),
    estado	 	char(2),
    instituicao varchar(100),
    telefone 	varchar(15),
    fax 		varchar(15));
    
-- adiciona campo
alter table pessoa
	add teste int;
-- altera campo
alter table pessoa
	change teste testePessoa varchar(50);
-- apaga campo
alter table pessoa
	drop testePessoa;
    
-- apaga tabela
drop table pessoa;

-- DML
insert into pessoa(nome, endereco, email, estado, instituicao, telefone, fax)
			values ("Luiz", "Rua 1,1", "barreto@gmail.com", "UF", "SENAI", "99999-9999", "99999-9999");
            
insert into pessoa(nome, endereco, email, estado, instituicao, telefone, fax)
			values ("Bagriel", "Rua 2,7", "bagri@gmail.com", "SP", "Juvelina", "99999-9999", "99999-9999"),
				   ("Batetalo", "Rua 2,8", "batata@gmail.com", "SP", "SENAI", "99999-9999", "99999,99999");

select * from pessoa;

	update pessoa
	set nome = "Batatello"
	where nome = "Bagatello";
    
delete from pessoa
 where nome = "Bagatello";

