set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpGrupoInsertar
@CodGrupo AS CHAR(10),
@Titulo AS NVARCHAR(-1)
AS
BEGIN
INSERT INTO Grupo (Titulo)
SET @CodGrupo = @@IDENTITY
VALUES (@Titulo)
END
GO

CREATE PROCEDURE SpGrupoActualizar
@CodGrupo AS CHAR(10),
@Titulo AS NVARCHAR(-1)
AS
BEGIN
UPDATE Grupo
SET Titulo = @Titulo
WHERE CodGrupo = @CodGrupo
END
GO

CREATE PROCEDURE SpGrupoEliminar
@CodGrupo AS CHAR(10)
AS
BEGIN
DELETE FROM Grupo
WHERE CodGrupo = @CodGrupo
END
GO

CREATE PROCEDURE SpGrupoListar
AS
BEGIN
SELECT CodGrupo,
Titulo
FROM Grupo
END
GO

CREATE PROCEDURE SpGrupoObtener
@CodGrupo AS CHAR(10)
AS
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
WHERE CodGrupo = @CodGrupo
END
GO

CREATE PROCEDURE SpGrupoPrimero
AS
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
ORDER BY  CodGrupo ASC
END
GO

CREATE PROCEDURE SpGrupoUltimo
AS
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
ORDER BY  CodGrupo DESC
END
GO

CREATE PROCEDURE SpGrupoAnterior
@CodGrupo AS CHAR(10)
AS
IF(SELECT COUNT(CodGrupo) FROM Grupo WHERE CodGrupo < @CodGrupo) > 0
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
WHERE CodGrupo < @CodGrupo
ORDER BY  CodGrupo DESC
END
ELSE
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
ORDER BY  CodGrupo ASC
END
GO


CREATE PROCEDURE SpGrupoSiguiente
@CodGrupo AS CHAR(10)
AS
IF(SELECT COUNT(CodGrupo) FROM Grupo WHERE CodGrupo > @CodGrupo) > 0
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
WHERE CodGrupo > @CodGrupo
ORDER BY  CodGrupo ASC
END
ELSE
BEGIN
SELECT TOP 1 
CodGrupo,
Titulo
FROM Grupo
ORDER BY  CodGrupo DESC
END
GO

