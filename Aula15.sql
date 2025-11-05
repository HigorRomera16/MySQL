create database Empresa;
use Empresa;

create table Funcionarios (
	Código int not null primary key auto_increment,
    PrimeiroNome varchar(50),
    SegundoNome  varchar(50),
    UltimoNome   varchar(50),
    DataNasci    date,
    CPF			 varchar(20),
    RG			 varchar(20),
    Endereço	 varchar(50),
    CEP			 varchar(50),
    Cidade		 varchar(50),
    Telefone	 int(20),
    CodigDepartamento int,
    Função		 varchar(50),
    Salário		 float,
foreign key (CodigDepartamento) references Departamento(id));

create table Departamento(
	Código  int not null primary key auto_increment,
    Nome    varchar(50),
    Localização varchar(50),
    CodigFuncGerente int);
foreign key (CodigFuncGerente) references Funcionarios(id));
   
	