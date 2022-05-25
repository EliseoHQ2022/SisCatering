
CREATE DATABASE DBCatering;

USE DBCatering;

Create table Usuario(
IdUser int primary key auto_increment,
Nombre varchar(100) not null,
NomUser varchar(50) not null,
PasUser varchar(50) not NULL,
TipoUser varchar(1) not null);

insert into Usuario (Nombre,NomUser,PasUser) values ('ELISEO HUAMAN QUISPE','ehuaman','123');


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

INSERT INTO Familia (NomFam) values ('MENU');

INSERT INTO producto (IdFam,NomPro,Costo,Precio,Foto)  VALUES (1,'ALMUERZO',4,10,'');

INSERT INTO area (NomArea) VALUES ('VENTAS');
INSERT INTO area (NomArea) VALUES ('PRODUCCION');

INSERT INTO cargo (NomCar) VALUES('VENDEDOR');
INSERT INTO cargo (NomCar) VALUES('MAQUINISTA');

INSERT INTO comensal (idcar,idarea,dni,numfot,nombre,FechaN,Sexo) VALUES (1,1,'46206480','4620','ELISEO HUAMAN QUISPE','1987-06-13','M');
INSERT INTO comensal (idcar,idarea,dni,numfot,nombre,FechaN,Sexo) VALUES (2,2,'04852478','0485','GERARDO SOTO BALDIVIA','1900-11-25','M');

Create table Venta(
IdVen int primary key auto_increment,
Numero varchar(7) unique not null,
IdCom int not null,
IdUser int not null,
Fecha date not null,
FechaR datetime not null,
Importe decimal(16,2) not null,
Estado varchar(1) not null,
FOREIGN KEY (IdCom) REFERENCES Comensal(IdCom),
FOREIGN KEY (IdUser) REFERENCES Usuario(IdUser));v_ventas

Create table Detalleventa(
IdVen int not null,
IdPro int not null,
Precio decimal(16,2) not null,
Cantidad int not null,
FOREIGN KEY (IdVen) REFERENCES Venta(IdVen),
FOREIGN KEY (IdPro) REFERENCES Producto(IdPro));

Create  VIEW v_ventas
AS
SELECT v.numero, v.fecha,c.dni,c.NumFot,c.nombre,p.IdPro,p.nompro,d.precio,d.cantidad,c.IdArea,c.IdCar,v.Importe,ar.NomArea, ca.NomCar FROM venta v INNER JOIN comensal c ON v.idcom=c.idcom INNER JOIN detalleventa d ON v.idven=d.idven INNER JOIN producto p ON d.idpro=p.IdPro INNER JOIN area ar ON ar.IdArea=c.idarea INNER JOIN cargo ca ON ca.IdCar=c.idcar

