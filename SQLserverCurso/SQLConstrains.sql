use Universidad

-- CONSTRAINTS:

-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- FOREIGN KEY
-- CHECK
-- DEFAULT define que hacer al insertar un registro pero no se incluye valor (en INSERT)

-- CHECK
ALTER TABLE cmateria
ADD CONSTRAINT check_COSTO
CHECK -- puede ser cualquier cosa practicamente
(mcostolab < 600)

-- DEFAULT

CREATE TABLE EjemploDefault
(
ID int not null Primary Key,
fecha smalldatetime not null DEFAULT GETDATE()
);

insert into EjemploDefault (id) values (1)
select * from EjemploDefault

--agrego columna por default a tabla existente
ALTER TABLE inscrip
ADD CONSTRAINT CN_FechaAlta Default GetDate() for ifecalta

USE [Universidad]
GO

INSERT INTO [dbo].[inscrip]
           ([Inogrupo]
           ,[Inocuenta]
           ,[Ihoraalta]
           ,[Inocarrera])
     VALUES
           (
		   '1','1','1','1')
GO

select * from inscrip






