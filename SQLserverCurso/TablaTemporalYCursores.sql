
-- TABLAS TEMPORALES
-- solo vive en esa sesion

	select Mnomateria, Mnombre
	into #tempComp
	from materia
	where Mnocarrera = 32

	select * from #tempComp

	drop table #tempComp

-- CURSORES
	-- declarar variables que van a contener los valores de las columnas leidas

	declare @numero char(4), @nombre char(50)

	-- declarar cursos

	declare materiasComp CURSOR
	for select mnomateria, Mnombre
	from materia where Mnocarrera = 32
	
	-- una vez creado hay que abrir el cursos

	OPEN materiasComp

	-- la primera accion es obtener el primer registro

	fetch next from materiasComp
	into @numero, @nombre

	--luegi se necesita un Bucle para leer cada registro hasta el final
	-- si FETCH fue exitoso @@FETCH_STATUS = 0 , cualquier valor distinto de 0 es que no hay registro o hubo un problema

	WHILE @@FETCH_STATUS = 0
	BEGIN 
		--logica
		select 'La materia ' + @numero + ' se llama ' + @nombre;
		fetch next from materiasComp into @numero, @nombre
	END

	-- cerrar cursos y borrar
	close materiasComp
	-- borrarlo de la memoria
	DEALLOCATE materiasComp


	