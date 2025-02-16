create table agenda (
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);
insert into  agenda (nombre, domicilio, telefono)
 values ('Alberto Mores', 'colon 123', '4234567' ),
 ('Juan Torres', 'Avellaneda 135', '4458787');
select * from agenda;

CREATE TABLE libros (
	titulo varchar(20),
    autor varchar(30),
    editorial varchar(15)
);

show tables;

describe libros;

INSERT INTO libros (titulo, autor, editorial) 
VALUES
('El aleph', 'Borges', 'Planeta'),
('Martin Fierro', 'Jose Hernandez', 'Emece'),
('Aprende PHP' , 'Mario Molina', 'Emece')
;

select * from libros;