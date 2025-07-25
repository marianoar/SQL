
-- usando VARIABLES en clausula WHERE
declare @costo int;
set @costo = 100;

select * from materia where Mcostolab = @costo

declare @varlike char(5); -- ojo , para que funciones deben concidir la cantidad de caracters declaradas con los seteadas
set @varlike = '%dro%'; 

select * from estudian where Enombre like @varlike;

select * from materia
-- usando IF
declare @cantMaterias int;
select @cantMaterias = count(*) from materia
	-- si hay mas de una instuccion hay qe usar Begin y End, seria como los  {}
if @cantMaterias > 15
	begin
	print 'Hay mas de cinco materias'
	print 'esta es mi segunda instruccion'
	end
else
	begin
	print 'No hay mas de quince materias'
	print 'mi segunda instruccion, pero en el ELSE'
	end

-- usando WHILE
declare @vcount int;
set @vcount = 1
WHILE @vcount <=3
begin
	print @vcount;
	set @vcount = @vcount + 1;
end

-- usando BREAK and CONTINUE
declare @vcount2 int;
set @vcount2 = 1
WHILE @vcount2 <=10
begin
	if @vcount2 = 5
	begin
	set @vcount2 = @vcount2 + 2
	continue
	end
	print @vcount2;
	if @vcount2 = 9
	break;
	set @vcount2 = @vcount2 + 1;
end

-- TRY... CATCH
BEGIN TRY
	--select 1/0
	select 1 
END TRY
BEGIN CATCH
	SELECT 'Hay un error'
END CATCH
-- FUNCIONES DE ERROR
	--solamente trabajan dentro de un CATCH

	 error_number()
	 error_severity()
	 error_procedure()
	 error_line()
	 error_message()
	 
    begin try
	select 1/0 
	select 1
	end try
	begin catch 
	select  error_number() as Err_number,
	 error_severity() ErrSeverity,
	 error_procedure() ErrProcedure,
	 error_line() line,
	 error_message() message
	end catch