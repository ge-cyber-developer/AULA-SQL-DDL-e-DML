/*
   DDL - Data Definition Language

*/

-- Criar o banco 

CREATE DATABASE boletim;

-- Com o USE usamos efetivamente o banco 
USE boletim;

-- É assim que se apaga um dado (DROP...)
--DROP DATABASE boletim;
 
 -- Sempre comece CRIANDO as tabelas que NÃO TEM (FK)

/* Criamos a tabela Aluno
    INDENTITY - Gera os ids automaticamente, incrementando-os 

*/
CREATE TABLE Aluno (
   IdAluno INT PRIMARY KEY IDENTITY NOT NULL,
   Nome VARCHAR (100) NOT NULL,
   Ra VARCHAR (20),
   Idade INT
);

-- Apagamos uma tabela caso necessario
-- DROP TABLE Aluno;

/* Criamos a tabela Marteria */
   CREATE TABLE Materia (
   IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
   Titulo VARCHAR (50)
   
   );

   CREATE TABLE Trabalho (
   IdTrabalho INT IDENTITY PRIMARY KEY  NOT NULL,
   Nota DECIMAL,

   -- Colocamos as chaves estrangeira (FK)
   -- NÃO se pode APAGAR uma tabela se ela esta em outra como Chave estrangeira (FK)****
      IdMateria INT FOREIGN KEY REFERENCES  Materia (IdMateria),
	  IdAluno   INT FOREIGN KEY REFERENCES Aluno (IdAluno)
    );

	--Alterar a estrutura da tabela Trabalho, incluindo uma coluna nova 
	ALTER TABLE Trabalho ADD DatadeEntrega DATETIME;

	-- É assim que Alternamos e excluimos uma coluna, esse é o exemplo com uma coluna chamada TESTE :
 --   ALTER TABLE Trabalho ADD Teste INT;
 --	ALTER TABLE Trabalho DROP COLUMN Teste;