create database supermercado;
use supermercado;

create table produto(
	codigo 	int not null primary key auto_increment,
    nome  	varchar(100),
    preco 	float);
    
create table notaFiscal(
	codigo 	int not null primary key auto_increment,
    valortotal float);
    
create table produtoNotaFiscal(
	codigo 				int not null primary key auto_increment,
    quantidade 			float,
    codigoProduto 		int,
    codigoNotaFiscal 	int,
foreign key (codigoProduto) references produto(codigo),
foreign key (codigoNotaFiscal) references notaFiscal(codigo));

DELIMITER $$
create function calculaValorTotal(vCodigo int) returns float
begin 
	declare vValorTotal float;
select sum(produto.preco * produtoNotaFiscal.quantidade) into vValorTotal
	from produtoNotaFiscal
		join produto
		 on produtoNotaFiscal.codigoProduto = produto.codigo
where codigoNotaFiscal = vCodigo;
return vValorTotal;
end
$$

select calculaValorTotal(codigo)
	from notaFiscal;
    
DELIMITER $$
create procedure atualizaValorTotal(vCodigo int)
	begin
		update notaFiscal
			set valorTotal = calculaValorTotal(vCodigo)
		where codigo = vCodigo;
end;
$$

insert into produto(nome,    	preco)
			values ("Arroz", 	20.00),
				   ("Feijão",	6.00),
                   ("Macarrão",	4.50);
                   
insert into notaFiscal(valorTotal)
				values(0.00);
                
INSERT INTO produtoNotaFiscal (quantidade, codigoProduto, codigoNotaFiscal)
                       VALUES (         4,             1,                1);

INSERT INTO produtoNotaFiscal (quantidade, codigoProduto, codigoNotaFiscal)
                       VALUES (         4,             2,                1);
                       
INSERT INTO produtoNotaFiscal (quantidade, codigoProduto, codigoNotaFiscal)
                       VALUES (         6,             2,                1);
 
				