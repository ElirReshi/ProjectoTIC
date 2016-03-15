set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpTurnoInsertar
@CodTurno AS CHAR(10),
@Titulo AS NVARCHAR(-1),
@HoraEntrada AS TIME,
@HoraSalida AS TIME
AS
BEGIN
INSERT INTO Turno (Titulo,HoraEntrada,HoraSalida)
SET @CodTurno = @@IDENTITY
VALUES (@Titulo,@HoraEntrada,@HoraSalida)
END
GO

CREATE PROCEDURE SpTurnoActualizar
@CodTurno AS CHAR(10),
@Titulo AS NVARCHAR(-1),
@HoraEntrada AS TIME,
@HoraSalida AS TIME
AS
BEGIN
UPDATE Turno
SET Titulo = @Titulo,
HoraEntrada = @HoraEntrada,
HoraSalida = @HoraSalida
WHERE CodTurno = @CodTurno
END
GO

CREATE PROCEDURE SpTurnoEliminar
@CodTurno AS CHAR(10)
AS
BEGIN
DELETE FROM Turno
WHERE CodTurno = @CodTurno
END
GO

CREATE PROCEDURE SpTurnoListar
AS
BEGIN
SELECT CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
END
GO

CREATE PROCEDURE SpTurnoObtener
@CodTurno AS CHAR(10)
AS
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
WHERE CodTurno = @CodTurno
END
GO

CREATE PROCEDURE SpTurnoPrimero
AS
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
ORDER BY  CodTurno ASC
END
GO

CREATE PROCEDURE SpTurnoUltimo
AS
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
ORDER BY  CodTurno DESC
END
GO

CREATE PROCEDURE SpTurnoAnterior
@CodTurno AS CHAR(10)
AS
IF(SELECT COUNT(CodTurno) FROM Turno WHERE CodTurno < @CodTurno) > 0
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
WHERE CodTurno < @CodTurno
ORDER BY  CodTurno DESC
END
ELSE
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
ORDER BY  CodTurno ASC
END
GO


CREATE PROCEDURE SpTurnoSiguiente
@CodTurno AS CHAR(10)
AS
IF(SELECT COUNT(CodTurno) FROM Turno WHERE CodTurno > @CodTurno) > 0
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
WHERE CodTurno > @CodTurno
ORDER BY  CodTurno ASC
END
ELSE
BEGIN
SELECT TOP 1 
CodTurno,
Titulo,
HoraEntrada,
HoraSalida
FROM Turno
ORDER BY  CodTurno DESC
END
GO

