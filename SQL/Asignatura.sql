set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpAsignaturaInsertar
@CodAsignatura AS CHAR(10),
@Titulo AS NVARCHAR(-1)
AS
BEGIN
INSERT INTO Asignatura (Titulo)
SET @CodAsignatura = @@IDENTITY
VALUES (@Titulo)
END
GO

CREATE PROCEDURE SpAsignaturaActualizar
@CodAsignatura AS CHAR(10),
@Titulo AS NVARCHAR(-1)
AS
BEGIN
UPDATE Asignatura
SET Titulo = @Titulo
WHERE CodAsignatura = @CodAsignatura
END
GO

CREATE PROCEDURE SpAsignaturaEliminar
@CodAsignatura AS CHAR(10)
AS
BEGIN
DELETE FROM Asignatura
WHERE CodAsignatura = @CodAsignatura
END
GO

CREATE PROCEDURE SpAsignaturaListar
AS
BEGIN
SELECT CodAsignatura,
Titulo
FROM Asignatura
END
GO

CREATE PROCEDURE SpAsignaturaObtener
@CodAsignatura AS CHAR(10)
AS
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
WHERE CodAsignatura = @CodAsignatura
END
GO

CREATE PROCEDURE SpAsignaturaPrimero
AS
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
ORDER BY  CodAsignatura ASC
END
GO

CREATE PROCEDURE SpAsignaturaUltimo
AS
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
ORDER BY  CodAsignatura DESC
END
GO

CREATE PROCEDURE SpAsignaturaAnterior
@CodAsignatura AS CHAR(10)
AS
IF(SELECT COUNT(CodAsignatura) FROM Asignatura WHERE CodAsignatura < @CodAsignatura) > 0
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
WHERE CodAsignatura < @CodAsignatura
ORDER BY  CodAsignatura DESC
END
ELSE
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
ORDER BY  CodAsignatura ASC
END
GO


CREATE PROCEDURE SpAsignaturaSiguiente
@CodAsignatura AS CHAR(10)
AS
IF(SELECT COUNT(CodAsignatura) FROM Asignatura WHERE CodAsignatura > @CodAsignatura) > 0
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
WHERE CodAsignatura > @CodAsignatura
ORDER BY  CodAsignatura ASC
END
ELSE
BEGIN
SELECT TOP 1 
CodAsignatura,
Titulo
FROM Asignatura
ORDER BY  CodAsignatura DESC
END
GO

