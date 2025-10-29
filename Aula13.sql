create database hospital;
use hospital;

create table Ambulatório(
	numeroA int primary key not null auto_increment,
    andar int(2),
    capacidade int(3));
    
create table Médico(
	CRM int primary key not null auto_increment,
    nome varchar(100),
    idade int(2),
    cidade varchar(100),
    especialidade varchar(100),
foreign key (númeroA) references Ambulatório(id));

create table Paciente(
	RG int primary key not null auto_increment,
    nome varchar(100),
    idade int(2),
    cidade varchar(100),
    doença varchar(100));

create table Consulta(
	CRMM int primary key not null auto_increment,
    RGP varchar(8),
    dataT varchar(10),
    hora varchar(5));

create table Funcionário(
	RGF int primary key not null auto_increment,
    nome varchar(100),
    idade int(2),
    cidade varchar(100),
    salário float);
    
insert into Ambulatório (andar, capacidade)
			value       ('1º',  '4'),
						('2º',  '6'),
						('3º',  '8');
                        
insert into Médico (NomeM,              Idade,Cidade,                 Especialidade)
			value  ('Dheyvison Soares','34' ,'Santa Barbara D`Oeste','Cardiologia'),
				   ('Higor Romera' ,'55' ,'Santa Barbara D`Oeste','Ortopedia'),
				   ('Gustavo Barreira','25' ,'Santa Barbara D`Oeste','Psiquiatria');
                   
insert into Paciente (NomeP              ,Idade,Cidade                 ,Doença)
			value    ('Higor Eduardo   ','63' ,'Santa Barbara D`Oeste','Pressão Alta'),
				     ('João Ricardo   ' ,'80' ,'Santa Barbara D`Oeste','Síndrome de Usher'),
				     ('Gabriel Roberto ','90' ,'Santa Barbara D`Oeste','Transtorno Obsessivo-compulsivo ');
                   
insert into Consulta (RG            ,DataT                                 ,Hora)
			value    ('23.428.834-5',STR_TO_DATE("19/01/1956", '%d/%m/%Y') ,'8:20'),
				     ('84.443.934-9',STR_TO_DATE("11/04/1945", '%d/%m/%Y') ,'12:10'),
				     ('54.567.342-1',STR_TO_DATE("27/12/1935", '%d/%m/%Y') ,'17:15');      
            
insert into Funcionário (NomeF              ,Idade,Cidade                 ,Salário)
			value       ('Roberto Carlos  ','40' ,'Santa Barbara D`Oeste','1440,5'),
						('João Santos    ' ,'20' ,'Santa Barbara D`Oeste','1700,0'),
				        ('Gabriel Pereira ','50' ,'Santa Barbara D`Oeste','2000,0');
-- A
select *
from Paciente
where Doença = 'Síndrome de Usher';

-- B
select *
from Médico
where especialidade = "Ortopedia" 
	and Idade > 40;

-- C
select *
from Consulta
where CRM_Médico NOT IN (46, 79);

-- D
select *
from Ambulatório
where andar = 4
	and capacidade = 50 or numeroA > 10;

-- E
select nome, especialidade
from Médico;

-- F
select numeroA
from Ambulatório
where andar = 3;

-- G
select RGP, dataT
from Consulta
where RGP in ("122","725");

-- H
select numeroA
from Ambulatório
where andar not in (2, 4)
	and capacidade > 50;

-- I
select nome
from médico
