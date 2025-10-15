create database mecanica;
	use mecanica;

create table peca(
	id 		int primary key not null auto_increment,
    nome 	varchar(100),
    peca_pai varchar(100),
    preco 	float);
    
create table carro(
	id		int primary key not null auto_increment,
    nome 	varchar(100),
    marca	varchar(100));
    
create table componente(
	id 		int primary key not null auto_increment,
    foreign key (id_peca) references peca(id),
    foreign key (id_carro) references carro(id));
    
insert into peca(nome        ,peca_pai   , preco)
		    value('cilindros','motor','850' ),
				 ('Radiador ','motor','450' ),
                 ('pistões  ','motor','3000' ),
                 ('cabeçote ','motor','2000' ),
                 ('válvulas' ,'motor','250');
                 
insert into carro(nome       ,marca)
			value('Corolla ','TOYOTA'),
				 ('Chiron  ','BUGATTI'),
                 ('BMW X '  ,'BMW'),
                 ('Maserati 3200 GT','MASCERATI'),
                 ('Mobi' ,'FIAT');
    
