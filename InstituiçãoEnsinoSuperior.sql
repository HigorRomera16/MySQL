CREATE DATABASE instituicão;
	USE faculdade;

DROP DATABASE instituicão;

CREATE TABLE instituicão(
	código INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Aluno  varchar(100),
    Turma  varchar(100),
    classe char(7),
    Faculdade varchar(100));
    
CREATE TABLE Aluno(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome  varchar(100));
    
CREATE TABLE Turma(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Curso  varchar(100),
    Semestre char(7));

CREATE TABLE Classe(
	ID_Aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ID_Turma INT PRIMARY KEY NOT NULL AUTO_INCREMENT);
    
CREATE TABLE Faculdade(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome varchar(100));

  
    

    



    

	
 