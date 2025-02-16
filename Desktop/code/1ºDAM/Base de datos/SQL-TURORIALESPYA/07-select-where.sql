select * from agenda;
 insert into agenda (nombre, domicilio, telefono)
 values ( 'Mariana Lopez','Urquiza 333','4545454'),
 ('Fernando Lopez','Urquiza 333','4545454');
 
 select * from agenda where nombre = 'Juan Torres';
 
 select * from agenda where domicilio = 'Colon 123';
 
 
 select * from agenda where telefono = '4545454';
 