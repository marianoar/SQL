
-- STORED PROCEDURES

CREATE PROCEDURE getMateriasComputacion
AS
Select * from materia where Mnocarrera = 32

-- ejecucion:
execute getMateriasComputacion;
exec getMateriasComputacion;
getMateriasComputacion;

-- delete
drop procedure getMateriasComputacion;

CREATE PROCEDURE getMateriasByCode @carrera char(2)
as
select * from materia where Mnocarrera = @carrera

exec getMateriasByCode @carrera = 32

-- pasando parametros
create procedure getEstudianteByParcialName @nombre varchar(10)
as
select * from estudian
where Enombre like '%'+@nombre+'%'

exec getEstudianteByParcialName @nombre= 'bis'

-- parametros por default
-- lo seteo en la declaracion, like c# enla firma de un metodo
CREATE PROCEDURE getMaterias @materia char(2) = 32
as
select * from materia where Mnocarrera = @materia

-- pasando mas de un parametro
CREATE PROCEDURE getMateriasCreditos @carrera char(2), @creditos int
as
select * from materia 
where Mnocarrera = @carrera and Mcred = @creditos

exec getMateriasCreditos @carrera= 32, @creditos = 8
exec getMateriasCreditos 32, 8 -- puedo pasar los valores de una
-- Parametros de salida?

CREATE PROCEDURE getCountMateria @carrera char(2),  @TotalMaterias int OUT
AS
	select @TotalMaterias = count(*) from materia
	where Mnocarrera= @carrera

-- Necesito declarar una variabla para recibir la salida, ojo con los tipos.
declare @getParametroOut char(2)
exec getCountMateria @carrera = 32, @TotalMaterias = @getParametroOut OUT
select @getParametroOut
