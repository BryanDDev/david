create table medicamentos (
codigo integer auto_increment not null,
nombre varchar(20),
laboratorio varchar(20),
precio float,
cantidad integer,
primary key(codigo)
);