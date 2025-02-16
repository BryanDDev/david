CREATE TABLE Agenda (
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);
describe agenda;

CREATE table Agenda (
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);
show tables;
drop table if exists Agenda; 
CREATE TABLE Libros(
	titulo varchar(20),
    autor varchar (15),
    editorial varchar(25)
);
show tables;
drop table Libros;
DROP TABLE Agenda;
DROP TABLE libros, agenda;