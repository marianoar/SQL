
-- Tabla especiales INSERTED y DELETED
-- OUTPUT

-- en el UPDATE sql inserta lo nuevo en la table inserted y los viejos en la deleted

select * from carrera

insert into carrera
OUTPUT INSERTED.Cnocarrera, INSERTED.Cnombre
values (33, 'Sarasa', 'E123', '321321')

delete from carrera
OUTPUT DELETED.*
where Cnocarrera = 33

update carrera
set Ccoord = '123123'
OUTPUT DELETED.*, INSERTED.*
where Cnocarrera = 33



