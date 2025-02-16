select * from libros;

create table libros(
  codigo integer,
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
  );
  describe libros;
 
 INSERT INTO libros (codigo, titulo, autor, editorial) VALUES
(1, 'El aleph', 'Borges', 'Planeta'),
(2, 'Martin Fierro', 'Jose Hernandez', 'Emece'),
(3, 'Aprenda PHP', 'Mario Molina', 'Emece'),
(4, 'Cervantes y el quijote', 'Borges', 'Paidos'),
(5, 'Matematica estas ahi', 'Paenza', 'Paidos');

insert into libros(codigo, titulo, autor, editorial)
values (6, 'Cervantes y el quijote', 'Borges', 'Paidos'),
(7, 'Matematica estas ahi', 'Paenza', 'Paidos');

-- no se puede duplicar la primary key
insert into libros(codigo, titulo, autor, editorial) 
values (7, 'aaa estas ahi', 'aaa', 'aaaaa')