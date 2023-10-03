DROP DATABASE IF EXISTS Monopoly;
CREATE DATABASE Monopoly;

use Monopoly;

CREATE TABLE Jugadores(
ID int NOT NULL,
LastPoints float,
MaxPoints float,
GameNumber int,
PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE DatosPersonales(
ID int NOT NULL,
Name varchar(20),
Gmail varchar(50),
Password varchar(20),
FOREIGN KEY (ID)
REFERENCES Jugadores(ID)
)ENGINE=InnoDB;

CREATE TABLE Partida(
ID int,
ID1 int,
ID2 int,
ID3 int,
ID4 int,
LastPosition1 int,
LastPosition2 int,
LastPosition3 int,
LastPosition4 int,
Money1 float,
Money2 float,
Money3 float,
Money4 float,
PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE Relacion(
IDGame int NOT NULL,
IDPlayer int NOT NULL,
FOREIGN KEY (IDGame)
REFERENCES Partida(ID),
FOREIGN KEY (IDPlayer)
REFERENCES Jugadores(ID)
)ENGINE=InnoDB;


CREATE TABLE Propiedades(
ID int,
P1 int,
P2 int,
P3 int,
P4 int,
P5 int,
P6 int,
P7 int,
P8 int,
P9 int,
P10 int,
P11 int,
P12 int,
P13 int,
P14 int,
P15 int,
P16 int,
P17 int,
P18 int,
P19 int,
P20 int,
P21 int,
P22 int,
P23 int,
P24 int,
P25 int,
P26 int,
P27 int,
P28 int,
FOREIGN KEY (ID)
REFERENCES Partida(ID)
)ENGINE=InnoDB;



INSERT INTO Jugadores(ID,LastPoints,MaxPoints,GameNumber) VALUES (1,20,30,2);
INSERT INTO Jugadores(ID,LastPoints,MaxPoints,GameNumber) VALUES (2,40,80,3);
INSERT INTO Jugadores(ID,LastPoints,MaxPoints,GameNumber) VALUES (3,30,100,4);
INSERT INTO Jugadores(ID,LastPoints,MaxPoints,GameNumber) VALUES (4,10,30,1);

INSERT INTO DatosPersonales(ID,Name,Gmail,Password) VALUES (1,'CLAUDIA','clasinpon@gmail.com','1111');
INSERT INTO DatosPersonales(ID,Name,Gmail,Password) VALUES (2,'CLARA','clararflorit@gmail.com','2222');
INSERT INTO DatosPersonales(ID,Name,Gmail,Password) VALUES (3,'JULIA','julia.pons.b@gmail.com','3333');
INSERT INTO DatosPersonales(ID,Name,Gmail,Password) VALUES (4,'LIDIA','lidiavalls122@gmail.com','4444');

INSERT INTO Partida(ID,ID1,ID2,ID3,ID4,LastPosition1,LastPosition2,LastPosition3,LastPosition4,Money1,Money2,Money3,Money4) VALUES(1,1,2,3,4,3,21,14,7,2000,1500,5,1750);

INSERT INTO Relacion(IDGame,IDPlayer) VALUES(1,1);
INSERT INTO Relacion(IDGame,IDPlayer) VALUES(1,2);
INSERT INTO Relacion(IDGame,IDPlayer) VALUES(1,3);
INSERT INTO Relacion(IDGame,IDPlayer) VALUES(1,4);


INSERT INTO Propiedades(ID,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28) VALUES (1,1,1,1,2,4,3,2,3,4,0,0,0,0,2,3,2,2,2,3,4,4,4,3,4,3,2,1,4);



