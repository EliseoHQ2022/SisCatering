
CREATE DATABASE DBCatering;

USE DBCatering;

<<<<<<< HEAD
=======
Create table Usuario(
IdUser int primary key auto_increment,
Nombre varchar(100) not null,
NomUser varchar(50) not null,
PasUser varchar(50) not NULL);

insert into Usuario (Nombre,NomUser,PasUser) values ('ELISEO HUAMAN QUISPE','ehuaman','123');

>>>>>>> ff43b59 (Ultima actualizacion)
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

<<<<<<< HEAD
=======
Create table Venta(
IdVen int primary key auto_increment,
IdCom int not null,
IdUser int not null,
Fecha date not null,
FechaR datetime not null,
Importe decimal(16,2) not null,
Estado varchar(1) not null,
FOREIGN KEY (IdCom) REFERENCES Comensal(IdCom),
FOREIGN KEY (IdUser) REFERENCES Usuario(IdUser));

Create table Detalleventa(
IdVen int not null,
IdPro int not null,
Precio decimal(16,2) not null,
Cantidad int not null,
FOREIGN KEY (IdVen) REFERENCES Venta(IdVen),
FOREIGN KEY (IdPro) REFERENCES Producto(IdPro));

>>>>>>> ff43b59 (Ultima actualizacion)
