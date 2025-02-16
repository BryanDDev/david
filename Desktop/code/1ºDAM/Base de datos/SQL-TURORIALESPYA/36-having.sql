select * from clientes;
-- Obtenga el total de los registros agrupados por ciudad y provincia sin considerar los que tienen 
menos de 2 clientes:
select ciudad, provincia,  count(*)  
from clientes group by
 provincia, ciudad
 having count(*) > 1; 

-- Obtenga el total de los registros sin teléfono nulo, agrupados por ciudad y provincia sin 
considerar los que tienen menos de 2 clientes:
select ciudad, provincia, count(*)
from clientes
where telefono is not null
group by ciudad, provincia
having count(*)>1;

