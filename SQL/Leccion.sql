set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpLeccionInsertar
@NumLeccion AS INT,
@NumHorario AS INT,
@CodAsignatura AS CHAR(10),
@CantHombre AS INT,
@CantMujer AS INT,
@FechaReg AS DATE
AS
BEGIN
INSERT INTO Leccion (NumHorario,CodAsignatura,CantHombre,CantMujer,FechaReg)
SET @NumLeccion = @@IDENTITY
VALUES (@NumHorario,@CodAsignatura,@CantHombre,@CantMujer,@FechaReg)
END
GO

CREATE PROCEDURE SpLeccionActualizar
@NumLeccion AS INT,
@NumHorario AS INT,
@CodAsignatura AS CHAR(10),
@CantHombre AS INT,
@CantMujer AS INT,
@FechaReg AS DATE
AS
BEGIN
UPDATE Leccion
SET NumHorario = @NumHorario,
CodAsignatura = @CodAsignatura,
CantHombre = @CantHombre,
CantMujer = @CantMujer,
FechaReg = @FechaReg
WHERE NumLeccion = @NumLeccion
END
GO

CREATE PROCEDURE SpLeccionEliminar
@NumLeccion AS INT
AS
BEGIN
DELETE FROM Leccion
WHERE NumLeccion = @NumLeccion
END
GO

CREATE PROCEDURE SpLeccionListar
AS
BEGIN
SELECT NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
END
GO

CREATE PROCEDURE SpLeccionObtener
@NumLeccion AS INT
AS
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
WHERE NumLeccion = @NumLeccion
END
GO

CREATE PROCEDURE SpLeccionPrimero
AS
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
ORDER BY  NumLeccion ASC
END
GO

CREATE PROCEDURE SpLeccionUltimo
AS
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
ORDER BY  NumLeccion DESC
END
GO

CREATE PROCEDURE SpLeccionAnterior
@NumLeccion AS INT
AS
IF(SELECT COUNT(NumLeccion) FROM Leccion WHERE NumLeccion < @NumLeccion) > 0
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
WHERE NumLeccion < @NumLeccion
ORDER BY  NumLeccion DESC
END
ELSE
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
ORDER BY  NumLeccion ASC
END
GO


CREATE PROCEDURE SpLeccionSiguiente
@NumLeccion AS INT
AS
IF(SELECT COUNT(NumLeccion) FROM Leccion WHERE NumLeccion > @NumLeccion) > 0
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
WHERE NumLeccion > @NumLeccion
ORDER BY  NumLeccion ASC
END
ELSE
BEGIN
SELECT TOP 1 
NumLeccion,
NumHorario,
CodAsignatura,
CantHombre,
CantMujer,
FechaReg
FROM Leccion
ORDER BY  NumLeccion DESC
END
GO

