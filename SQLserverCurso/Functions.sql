-- FUNCIONES
/* Uso: cuando se realicen calculos y no haya cambios en la BDD. 

Funcion regresa un valor(simple o tabla)
Solo parametros de entrada
No puede ejecutar un SP
Se puede usar en sentencias SELET WHERE HAVING
NO se puede usar bloque TRY-CATCH

Funciones ESCALARES regrasan un valor*/

CREATE FUNCTION fn_calculoCuota 
(
	-- Add the parameters for the function here
	@noMateria char(4)
)
RETURNS decimal(5,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Cuota decimal(5,2)

	-- Add the T-SQL statements to compute the return value here
	SELECT @Cuota = mcostolab * 0.15 
	from materia 
	where Mnomateria = @noMateria

	-- Return the result of the function
	RETURN @cuota

END
GO

-- poner el DBO.
select  * from materia
select dbo.fn_calculoCuota('0024')

select dbo.fn_calculoCuota(0024)
-- OJO PASAR NUMERO INT COMO PARAMETRO NO funciona pero NO TIRA ERROR

--create function fn_tablaMaterias()
--returns table
--as
--return (select * from materia)

select * from dbo.fn_tablaMaterias()
