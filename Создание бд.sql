CREATE DATABASE DB_217_19_Lab4;
GO
USE DB_217_19_Lab4;
GO
CREATE TABLE Specialtost
(
	id_specialtost INT PRIMARY KEY IDENTITY,
	nazv_specialtost NVARCHAR(50)
);

CREATE TABLE Vrachi
(
	id_varcha INT PRIMARY KEY IDENTITY,
	Familiya NVARCHAR(50),
	Imya NVARCHAR(50),
	Otchestvo NVARCHAR(50),
	id_specialtost INT FOREIGN KEY REFERENCES Specialtost(id_specialtost),
	Procent_otchisl_zp DECIMAL(5, 2)
);
CREATE TABLE Stoimosti_Priyoma
(
	id_Stoimosti INT PRIMARY KEY IDENTITY,
	id_vracha INT FOREIGN KEY REFERENCES Vrachi(id_varcha),
	Stoimost_priyoma DECIMAL(5, 2)
);

CREATE TABLE Pacient
(
	id_Pacient INT PRIMARY KEY IDENTITY,
	Familiya NVARCHAR(50),
	Imya NVARCHAR(50),
	Otchestvo NVARCHAR(50),
	Data_rozjd DATE,
	Adress_Pacient NVARCHAR(255)
);
CREATE TABLE Priyom_Pacientov
(
	id_Priyoma INT PRIMARY KEY IDENTITY,
	id_vracha INT FOREIGN KEY REFERENCES Vrachi(id_varcha),
	id_Pacient INT FOREIGN KEY REFERENCES Pacient(id_Pacient),
	Data_Priyoma DATE,
);
CREATE TABLE Cheki
(
	id_cheka INT PRIMARY KEY IDENTITY,
	id_Pacient INT FOREIGN KEY REFERENCES Pacient(id_Pacient),
	id_vracha INT FOREIGN KEY REFERENCES Vrachi(id_varcha),
	id_stoimosti INT FOREIGN KEY REFERENCES Stoimosti_Priyoma(id_Stoimosti),
	Data_Priyoma DATE
);