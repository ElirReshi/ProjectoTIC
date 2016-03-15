set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpControlInsertar
@NumControl AS INT,
@CodResponsable AS CHAR(10),
@TipoMantenimiento AS NVARCHAR(-1),
@Justificacion AS NVARCHAR(-1),
@FechaReg AS DATE
AS
BEGIN
INSERT INTO Control (CodResponsable,TipoMantenimiento,Justificacion,FechaReg)
SET @NumControl = @@IDENTITY
VALUES (@CodResponsable,@TipoMantenimiento,@Justificacion,@FechaReg)
END
GO

CREATE PROCEDURE SpControlActualizar
@NumControl AS INT,
@CodResponsable AS CHAR(10),
@TipoMantenimiento AS NVARCHAR(-1),
@Justificacion AS NVARCHAR(-1),
@FechaReg AS DATE
AS
BEGIN
UPDATE Control
SET CodResponsable = @CodResponsable,
TipoMantenimiento = @TipoMantenimiento,
Justificacion = @Justificacion,
FechaReg = @FechaReg
WHERE NumControl = @NumControl
END
GO

CREATE PROCEDURE SpControlEliminar
@NumControl AS INT
AS
BEGIN
DELETE FROM Control
WHERE NumControl = @NumControl
END
GO

CREATE PROCEDURE SpControlListar
AS
BEGIN
SELECT NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
END
GO

CREATE PROCEDURE SpControlObtener
@NumControl AS INT
AS
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
WHERE NumControl = @NumControl
END
GO

CREATE PROCEDURE SpControlPrimero
AS
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
ORDER BY  NumControl ASC
END
GO

CREATE PROCEDURE SpControlUltimo
AS
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
ORDER BY  NumControl DESC
END
GO

CREATE PROCEDURE SpControlAnterior
@NumControl AS INT
AS
IF(SELECT COUNT(NumControl) FROM Control WHERE NumControl < @NumControl) > 0
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
WHERE NumControl < @NumControl
ORDER BY  NumControl DESC
END
ELSE
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
ORDER BY  NumControl ASC
END
GO


CREATE PROCEDURE SpControlSiguiente
@NumControl AS INT
AS
IF(SELECT COUNT(NumControl) FROM Control WHERE NumControl > @NumControl) > 0
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
WHERE NumControl > @NumControl
ORDER BY  NumControl ASC
END
ELSE
BEGIN
SELECT TOP 1 
NumControl,
CodResponsable,
TipoMantenimiento,
Justificacion,
FechaReg
FROM Control
ORDER BY  NumControl DESC
END
GO

