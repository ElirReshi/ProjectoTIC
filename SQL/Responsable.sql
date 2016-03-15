set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpResponsableInsertar
@CodResponsable AS CHAR(10),
@Cedula AS NVARCHAR(32),
@Nombre AS NVARCHAR(-1),
@ApellidoPaterno AS NVARCHAR(-1),
@ApellidoMaterno AS NVARCHAR(-1),
@Celular AS INT
AS
BEGIN
INSERT INTO Responsable (Cedula,Nombre,ApellidoPaterno,ApellidoMaterno,Celular)
SET @CodResponsable = @@IDENTITY
VALUES (@Cedula,@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Celular)
END
GO

CREATE PROCEDURE SpResponsableActualizar
@CodResponsable AS CHAR(10),
@Cedula AS NVARCHAR(32),
@Nombre AS NVARCHAR(-1),
@ApellidoPaterno AS NVARCHAR(-1),
@ApellidoMaterno AS NVARCHAR(-1),
@Celular AS INT
AS
BEGIN
UPDATE Responsable
SET Cedula = @Cedula,
Nombre = @Nombre,
ApellidoPaterno = @ApellidoPaterno,
ApellidoMaterno = @ApellidoMaterno,
Celular = @Celular
WHERE CodResponsable = @CodResponsable
END
GO

CREATE PROCEDURE SpResponsableEliminar
@CodResponsable AS CHAR(10)
AS
BEGIN
DELETE FROM Responsable
WHERE CodResponsable = @CodResponsable
END
GO

CREATE PROCEDURE SpResponsableListar
AS
BEGIN
SELECT CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
END
GO

CREATE PROCEDURE SpResponsableObtener
@CodResponsable AS CHAR(10)
AS
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
WHERE CodResponsable = @CodResponsable
END
GO

CREATE PROCEDURE SpResponsablePrimero
AS
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
ORDER BY  CodResponsable ASC
END
GO

CREATE PROCEDURE SpResponsableUltimo
AS
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
ORDER BY  CodResponsable DESC
END
GO

CREATE PROCEDURE SpResponsableAnterior
@CodResponsable AS CHAR(10)
AS
IF(SELECT COUNT(CodResponsable) FROM Responsable WHERE CodResponsable < @CodResponsable) > 0
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
WHERE CodResponsable < @CodResponsable
ORDER BY  CodResponsable DESC
END
ELSE
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
ORDER BY  CodResponsable ASC
END
GO


CREATE PROCEDURE SpResponsableSiguiente
@CodResponsable AS CHAR(10)
AS
IF(SELECT COUNT(CodResponsable) FROM Responsable WHERE CodResponsable > @CodResponsable) > 0
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
WHERE CodResponsable > @CodResponsable
ORDER BY  CodResponsable ASC
END
ELSE
BEGIN
SELECT TOP 1 
CodResponsable,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Responsable
ORDER BY  CodResponsable DESC
END
GO

