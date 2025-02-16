create table medicamentos (
codigo integer auto_increment,
nombre varchar(20),
laboratorio varchar(20),
precio float,
cantidad integer,
primary key(codigo)
);

describe medicamentos;

INSERT INTO medicamentos (nombre, laboratorio, precio, cantidad) 
VALUES
('Sertal', 'Roche', 5.2, 100),
('Buscapina', 'Roche', 4.10, 200),
('Amoxidal 500', 'Bayer', 15.60, 100);

select * from medicamentos;