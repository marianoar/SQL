

declare @costo int;
set @costo = 100;

select * from materia where Mcostolab = @costo

declare @varlike char(5); -- ojo , para que funciones deben concidir la cantidad de caracters declaradas con los seteadas
set @varlike = '%dro%'; 

select * from estudian where Enombre like @varlike;

