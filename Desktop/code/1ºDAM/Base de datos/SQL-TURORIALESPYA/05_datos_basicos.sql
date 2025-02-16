create table peliculas(
	nombre varchar(20),
    actor varchar(20),
    duracion int,
    cantidad int
);

select * from peliculas;

insert into peliculas (nombre, actor, duracion, cantidad)
values
 ('Mision Imposible', 'Tom Cruise', 120, 3),
 ('Mision Imposible 2', 'Tom Cruise', 180, 2),
 ('Mujer Bonita', ' Julia R.', 90, 3),
 ('Elsa y Fred', 'China Zorrilla', 90, 2);
 
 select * from peliculas;
 
 create table empleados(
	nombre varchar(20),
    documento varchar(8),
    sexo varchar(1),
    domicilio varchar(30),
    sueldobasico float 
    );

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values
 ('Juan Perez', '22345678', 'm', 'Sarmineto 123', 300),
 ('Ana Costa', '24345678', 'f', 'colon 134', 500),
 ('Marcos Torres', '27345678', 'm', 'Urquiza 479', 800)
 ;
 
 
 select * from empleados;
 