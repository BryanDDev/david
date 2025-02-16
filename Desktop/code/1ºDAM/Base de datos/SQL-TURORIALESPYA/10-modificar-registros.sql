select * from agenda;

 INSERT INTO agenda (apellido, nombre, domicilio, telefono) VALUES
('Mores', 'Alberto', 'Colon 123', '4234567'),
('Torres', 'Juan', 'Avellaneda 135', '4458787'),
('Lopez', 'Mariana', 'Urquiza 333', '4545454'),
('Lopez', 'Jose', 'Urquiza 333', '4545454'),
('Peralta', 'Susana', 'Gral. Paz 1234', '4123456');

SET SQL_SAFE_UPDATES = 0;
 
 update agenda set nombre ='Juan Jose' 
 where nombre = 'Juan';
 
 UPDATE agenda set telefono = 4445566 
 where telefono = 4545454;
 SET SQL_SAFE_UPDATES = 1;