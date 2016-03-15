set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHorarioInsertar
@NumHorario AS INT,
@CodResponsable AS CHAR(10),
@CodDocente AS CHAR(10),
@CodGrupo AS CHAR(10),
@CodTurno AS CHAR(10),
@Apartado AS DATE,
@Bloque AS INT,
@TipoBloque AS NVARCHAR(-1),
@FechaReg AS DATE
AS
BEGIN
INSERT INTO Horario (CodResponsable,CodDocente,CodGrupo,CodTurno,Apartado,Bloque,TipoBloque,FechaReg)
SET @NumHorario = @@IDENTITY
VALUES (@CodResponsable,@CodDocente,@CodGrupo,@CodTurno,@Apartado,@Bloque,@TipoBloque,@FechaReg)
END
GO

CREATE PROCEDURE SpHorarioActualizar
@NumHorario AS INT,
@CodResponsable AS CHAR(10),
@CodDocente AS CHAR(10),
@CodGrupo AS CHAR(10),
@CodTurno AS CHAR(10),
@Apartado AS DATE,
@Bloque AS INT,
@TipoBloque AS NVARCHAR(-1),
@FechaReg AS DATE
AS
BEGIN
UPDATE Horario
SET CodResponsable = @CodResponsable,
CodDocente = @CodDocente,
CodGrupo = @CodGrupo,
CodTurno = @CodTurno,
Apartado = @Apartado,
Bloque = @Bloque,
TipoBloque = @TipoBloque,
FechaReg = @FechaReg
WHERE NumHorario = @NumHorario
END
GO

CREATE PROCEDURE SpHorarioEliminar
@NumHorario AS INT
AS
BEGIN
DELETE FROM Horario
WHERE NumHorario = @NumHorario
END
GO

CREATE PROCEDURE SpHorarioListar
AS
BEGIN
SELECT NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
END
GO

CREATE PROCEDURE SpHorarioObtener
@NumHorario AS INT
AS
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
WHERE NumHorario = @NumHorario
END
GO

CREATE PROCEDURE SpHorarioPrimero
AS
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
ORDER BY  NumHorario ASC
END
GO

CREATE PROCEDURE SpHorarioUltimo
AS
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
ORDER BY  NumHorario DESC
END
GO

CREATE PROCEDURE SpHorarioAnterior
@NumHorario AS INT
AS
IF(SELECT COUNT(NumHorario) FROM Horario WHERE NumHorario < @NumHorario) > 0
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
WHERE NumHorario < @NumHorario
ORDER BY  NumHorario DESC
END
ELSE
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
ORDER BY  NumHorario ASC
END
GO


CREATE PROCEDURE SpHorarioSiguiente
@NumHorario AS INT
AS
IF(SELECT COUNT(NumHorario) FROM Horario WHERE NumHorario > @NumHorario) > 0
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
WHERE NumHorario > @NumHorario
ORDER BY  NumHorario ASC
END
ELSE
BEGIN
SELECT TOP 1 
NumHorario,
CodResponsable,
CodDocente,
CodGrupo,
CodTurno,
Apartado,
Bloque,
TipoBloque,
FechaReg
FROM Horario
ORDER BY  NumHorario DESC
END
GO

