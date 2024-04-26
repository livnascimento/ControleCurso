CREATE DATABASE MinhaEscola;

USE MinhaEscola;

CREATE TABLE Cursos (
	CursoID INT IDENTITY(1,1) PRIMARY KEY,
	Titulo VARCHAR(100),
	Descricao VARCHAR(255)
);

CREATE TABLE Alunos (
	AlunoID INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(255),
	Cpf VARCHAR(11) UNIQUE,
);

CREATE TABLE Matriculas (
	MatriculaID INT IDENTITY(1,1) PRIMARY KEY,
	CursoID INT,
	AlunoID INT,
	CONSTRAINT FK_CursoID FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
	CONSTRAINT FK_AlunoID FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID)
);

INSERT INTO Alunos (Nome, Cpf) 
VALUES
('Maria Silva', '12345678901'),
('José Santos', '13467508912');

INSERT INTO Cursos (Titulo, Descricao)
VALUES
('Desenvolvimento Back-end com Java', 'Curso maneiríssimo de Java, onde você vai aprender vários assuntos sobre Java.'),
('Desenvolvimento Front-end com HTML e CSS', 'Curso maneiríssimo de Front, onde você vai aprender a centralizar uma div.');

INSERT INTO Matriculas (CursoID, AlunoID)
VALUES
(1, 1),
(1, 2),
(2,2);