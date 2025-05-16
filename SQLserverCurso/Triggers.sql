-- TRIGGERS
-- Insert, delete, update
-- truncate no dispara triggers
-- After Triggers, se ejecutan despues delos cambios
-- INSTEAD OF triggers, el codigo esejecutado en lugar de la sentencia de modificacione de datos

Alter TRIGGER Tr_CalculateTaxes
		ON  cmateria
		AFTER  INSERT, UPDATE
AS 
BEGIN
	Update cmateria
	set cmateria.Mfees = i.mcostolab * .10 +20
	from cmateria
	inner join Inserted i
	on cmateria.Mnomateria = i.Mnomateria
	print ('Ejecucion trigger, actualizacion ok')

END
GO

--delete from cmateria


