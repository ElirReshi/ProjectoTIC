set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpDocenteInsertar
@CodDocente AS CHAR(10),
@Cedula AS NVARCHAR(32),
@Nombre AS NVARCHAR(-1),
@ApellidoPaterno AS NVARCHAR(-1),
@ApellidoMaterno AS NVARCHAR(-1),
@Celular AS INT
AS
BEGIN
INSERT INTO Docente (Cedula,Nombre,ApellidoPaterno,ApellidoMaterno,Celular)
SET @CodDocente = @@IDENTITY
VALUES (@Cedula,@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Celular)
END
GO

CREATE PROCEDURE SpDocenteActualizar
@CodDocente AS CHAR(10),
@Cedula AS NVARCHAR(32),
@Nombre AS NVARCHAR(-1),
@ApellidoPaterno AS NVARCHAR(-1),
@ApellidoMaterno AS NVARCHAR(-1),
@Celular AS INT
AS
BEGIN
UPDATE Docente
SET Cedula = @Cedula,
Nombre = @Nombre,
ApellidoPaterno = @ApellidoPaterno,
ApellidoMaterno = @ApellidoMaterno,
Celular = @Celular
WHERE CodDocente = @CodDocente
END
GO

CREATE PROCEDURE SpDocenteEliminar
@CodDocente AS CHAR(10)
AS
BEGIN
DELETE FROM Docente
WHERE CodDocente = @CodDocente
END
GO

CREATE PROCEDURE SpDocenteListar
AS
BEGIN
SELECT CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
END
GO

CREATE PROCEDURE SpDocenteObtener
@CodDocente AS CHAR(10)
AS
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
WHERE CodDocente = @CodDocente
END
GO

CREATE PROCEDURE SpDocentePrimero
AS
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
ORDER BY  CodDocente ASC
END
GO

CREATE PROCEDURE SpDocenteUltimo
AS
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
ORDER BY  CodDocente DESC
END
GO

CREATE PROCEDURE SpDocenteAnterior
@CodDocente AS CHAR(10)
AS
IF(SELECT COUNT(CodDocente) FROM Docente WHERE CodDocente < @CodDocente) > 0
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
WHERE CodDocente < @CodDocente
ORDER BY  CodDocente DESC
END
ELSE
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
ORDER BY  CodDocente ASC
END
GO


CREATE PROCEDURE SpDocenteSiguiente
@CodDocente AS CHAR(10)
AS
IF(SELECT COUNT(CodDocente) FROM Docente WHERE CodDocente > @CodDocente) > 0
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
WHERE CodDocente > @CodDocente
ORDER BY  CodDocente ASC
END
ELSE
BEGIN
SELECT TOP 1 
CodDocente,
Cedula,
Nombre,
ApellidoPaterno,
ApellidoMaterno,
Celular
FROM Docente
ORDER BY  CodDocente DESC
END
GO

