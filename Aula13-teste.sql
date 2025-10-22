CREATE DATABASE teste;
USE teste;

CREATE TABLE teste(
   id      INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome    VARCHAR(100),
   dataT   DATE,
   salario FLOAT);

INSERT INTO teste (nome, dataT, salario)
  VALUES ("João Silva"  , STR_TO_DATE("17/06/1988", '%d/%m/%Y'), 1700.5),
         ("Higor Romera", STR_TO_DATE("01/01/2000", '%d/%m/%Y'), 2500.5),
         ("Daniel"      , STR_TO_DATE("30/08/1976", '%d/%m/%Y'), 1800.5),
         ("Lucas Santos", STR_TO_DATE("09/08/1998", '%d/%m/%Y'), 2500.5),
         ("Marcos Sia"  , STR_TO_DATE("07/09/2011", '%d/%m/%Y'), 6300.5),
         ("Carol Castro", STR_TO_DATE("05/05/2003", '%d/%m/%Y'), 6600.5),
         ("Abner Santos", STR_TO_DATE("06/06/2000", '%d/%m/%Y'), 9800.5),
         ("Luiz Barreto", STR_TO_DATE("07/07/2000", '%d/%m/%Y'), 1900.5),
         ("Jota Junior" , STR_TO_DATE("24/10/2000", '%d/%m/%Y'), 2100.5),
         ("Wesley Carlo", STR_TO_DATE("11/11/1971", '%d/%m/%Y'), 3500.5),
         ("Joca Janke"  , STR_TO_DATE("03/12/2000", '%d/%m/%Y'), 3800.5),
         ("Silvia Silva", STR_TO_DATE("05/06/1980", '%d/%m/%Y'), 4500.5),
         ("Samara Saint", STR_TO_DATE("29/03/2001", '%d/%m/%Y'), 8000.5),
         ("Lelis Nilson", STR_TO_DATE("28/02/1982", '%d/%m/%Y'), 2000.5),
         ("Tais Tellis" , STR_TO_DATE("07/08/1996", '%d/%m/%Y'), 3500.5),
         ("Vitor Sá"    , STR_TO_DATE("07/07/2005", '%d/%m/%Y'), 8500.5),
         ("Yuri Barros" , STR_TO_DATE("06/06/1973", '%d/%m/%Y'), 1600.5),
         ("Evelyn Neto" , STR_TO_DATE("18/06/2000", '%d/%m/%Y'), 1900.5),
         ("Kelly Franz" , STR_TO_DATE("06/09/1976", '%d/%m/%Y'), 2500.5),
         ("Daila Denys" , STR_TO_DATE("08/08/2000", '%d/%m/%Y'), 9000.5);
	
    -- selecionar todos os dados da tabela
    select *
    FROM teste;
    
    -- mostrar apenas o campo nome
    SELECT nome
    FROM teste;
    
    -- mostra o nome e a data nascimento
    SELECT nome, dataT
    FROM teste;
    
    -- mostrar o mesmo de cima, mas com a data no formato certo, dataFormatada é o apelido da coluna
    SELECT nome, DATE_FORNAT(dataT, '%d/%m/%Y') dataFormatada
    FROM teste;
    
    -- filtrar apenas salários maiores que 5000
    SELECT *
    FROM teste
    WHERE salario > 5000;
    
	-- filtrar apenas salários entre 3500 e 6500 - forma1
    SELECT *
    FROM teste
    WHERE salario >= 3500
    AND salario <= 6500;
    
    -- filtrar salarios entre 3500 e 6500 - forma2
    SELECT *
    FROM teste
    WHERE salario BETWEEN 3500 AND 6500;
    
    -- Buscar o nome
    SELECT *
    FROM teste
    WHERE nome = "Silvia Silva";
    
    -- Buscar Todas as Silvia
    SELECT *
    FROM teste
    WHERE nome LIKE "Silvia%";
    
    -- buscar todos os sobrenome silva
    SELECT *
    FROM teste
    WHERE nome LIKE "%Silva";
    
    -- ordenar pelo nome 
    SELECT *
    FROM teste
    ORDER BY salario DESC;
    
    -- ordenar pelo salario maior para o menor
    SELECT *
    FROM teste 
    ORDER BY salario DESC;
    
    -- contar quantas pessoas tem por letra 
    SELECT substr(nome, 1,1)letra, count(*)
    FROM teste
    ORDER BY substr(nome, 1,1);
    
    -- contar quantas pessoas tem por ano
    SELECT DATE_FORMAT(dataT,'%Y')ano, COUNT(*)
    FROM teste
    GROUP BY DATE_FORMAT(dataT,'%Y');
    
    -- filtrar pós agrupamento
    SELECT DATE_FORMAT(dataT, '%Y')ano, COUNT(*)
    FROM teste
    GROUP BY DATE_FORMAT(dataT, '%Y')
    HAVING ano > 1990;