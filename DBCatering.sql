
CREATE DATABASE DBCatering;

USE DBCatering;

CREATE TABLE Cargo (
IdCar INT PRIMARY KEY auto_increment,
NomCar VARCHAR(50) NOT NULL);

CREATE TABLE AREA (
IdArea INT PRIMARY KEY auto_increment,
NomArea VARCHAR(50) NOT NULL);

CREATE TABLE Comensal (
IdCom int AUTO_INCREMENT,
IdCar INT NOT null,
IdArea INT NOT NULL,
DNI VARCHAR(8) NOT NULL,
NumFot VARCHAR(20) NOT NULL,
Nombre VARCHAR(100) NOT NULL,
FechaN DATE,
Sexo CHAR(1),
PRIMARY KEY (IdCom),
FOREIGN KEY (IdCar) REFERENCES Cargo(IdCar),
FOREIGN KEY (IdArea) REFERENCES AREA(IdArea));

CREATE TABLE Familia (
IdFam INT PRIMARY KEY auto_increment,
NomFam VARCHAR(50) NOT NULL);

CREATE TABLE producto(
IdPro int primary key AUTO_INCREMENT,
IdFam INT NOT null,
NomPro VARCHAR(100) NOT NULL,
Costo DECIMAL(16,2) NOT NULL,
Precio DECIMAL(16,2) NOT NULL,
Foto VARCHAR(100),
FOREIGN KEY (IdFam) REFERENCES Familia(IdFam));

INSERT INTO area (NomArea) VALUES ('VENTAS');
INSERT INTO area (NomArea) VALUES ('PRODUCCION');

INSERT INTO cargo (NomCar) VALUES('VENDEDOR');
INSERT INTO cargo (NomCar) VALUES('MAQUINISTA');

INSERT INTO comensal (idcar,idarea,dni,numfot,nombre,FechaN,Sexo) VALUES (1,1,'46206480','4620','ELISEO HUAMAN QUISPE','1987-06-13','M');
INSERT INTO comensal (idcar,idarea,dni,numfot,nombre,FechaN,Sexo) VALUES (2,2,'04852478','0485','GERARDO SOTO BALDIVIA','1900-11-25','M');

