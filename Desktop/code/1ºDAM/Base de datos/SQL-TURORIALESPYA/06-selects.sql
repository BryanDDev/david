 select actor, nombre from peliculas;


create table articulo( 
	codigo_articulo int,
    nombre_articulo varchar(20),
    descripcion varchar(30),
    precio float
);

select * from articulo;

insert into articulo 
	(codigo_articulo, nombre_articulo, descripcion, precio) 
values
	(1,'impresora', 'Epso Stylus c45', 400.80),
    (2,'impresora', 'Epso Stylus c85', 500),
    (1,'monitor', 'Samsung 14', 800);
    
    select * from articulo;
    
    select nombre_articulo, descripcion, precio from articulo;
