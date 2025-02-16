-- unsigned no permite instroducir valores negativos 
create table peliculas (
codigo integer unsigned auto_increment,
titulo varchar(40) not null,
titutlo varchar(20),
duracion integer unsigned,
primary key(codigo)

);
select * from peliculas;
describe peliculas;

INSERT INTO peliculas(titulo, duracion)
VALUES ('spider-man', -120);