select * from agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );
 
 INSERT INTO agenda (apellido, nombre, domicilio, telefono) 
VALUES 
    ('Mores', 'Alberto', 'Colon123', 4234567),
    ('Torres', 'Juan', 'Avellaneda135', 4458787),
    ('Lopez', 'Mariana', 'Urquiza333', 4545454),
    ('Lopez', 'Jose', 'Urquiza333', 4545454),
    ('Peralta', 'Susana', 'Gral. Paz1234', 4123456);
    -- Aqui quitamos el safe mode para poder eliminar registros sin id.
    SET SQL_SAFE_UPDATES = 0;
    delete FROM AGENDA where nombre = 'Juan';
    delete from agenda where telefono = '4545454';
    -- Volvemos a poner el safe mode
     SET SQL_SAFE_UPDATES = 1;
     
   delete from agenda where nombre = 'Alberto'; 