create table autos (
patente char(6),
marcha varchar(20),
modelo char(4),
precio float unsigned, 
primary key(patente)
);
insert into autos (patente,marcha,modelo,precio)
  values('ACD123','Fiat 128','1970',15000);
 insert into autos (patente,marcha,modelo,precio)
  values('ACG234','Renault 11','1990',40000);
 insert into autos (patente,marcha,modelo,precio)
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos (patente,marcha,modelo,precio)
  values('GCD123','Renault Clio','1990',70000);
 insert into autos (patente,marcha,modelo,precio)
  values('BCC333','Renault Megane','1998',95000);
 insert into autos (patente,marcha,modelo,precio)
  values('BVF543','Fiat 128','1975',20000);
  
  select * from autos where modelo = '1990';
  
  select * from autos where precio > 50000;