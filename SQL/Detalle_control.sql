set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpDetalle_controlInsertar
@IdDetalleControl AS INT,
@NumControl AS INT,
@NumMaquina AS INT,
@Estado AS NVARCHAR(-1),
@Desperfecto AS NVARCHAR(-1)
AS
BEGIN
INSERT INTO Detalle_control (NumControl,NumMaquina,Estado,Desperfecto)
SET @IdDetalleControl = @@IDENTITY
VALUES (@NumControl,@NumMaquina,@Estado,@Desperfecto)
END
GO

CREATE PROCEDURE SpDetalle_controlActualizar
@IdDetalleControl AS INT,
@NumControl AS INT,
@NumMaquina AS INT,
@Estado AS NVARCHAR(-1),
@Desperfecto AS NVARCHAR(-1)
AS
BEGIN
UPDATE Detalle_control
SET NumControl = @NumControl,
NumMaquina = @NumMaquina,
Estado = @Estado,
Desperfecto = @Desperfecto
WHERE IdDetalleControl = @IdDetalleControl
END
GO

CREATE PROCEDURE SpDetalle_controlEliminar
@IdDetalleControl AS INT
AS
BEGIN
DELETE FROM Detalle_control
WHERE IdDetalleControl = @IdDetalleControl
END
GO

CREATE PROCEDURE SpDetalle_controlListar
AS
BEGIN
SELECT IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
END
GO

CREATE PROCEDURE SpDetalle_controlObtener
@IdDetalleControl AS INT
AS
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
WHERE IdDetalleControl = @IdDetalleControl
END
GO

CREATE PROCEDURE SpDetalle_controlPrimero
AS
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
ORDER BY  IdDetalleControl ASC
END
GO

CREATE PROCEDURE SpDetalle_controlUltimo
AS
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
ORDER BY  IdDetalleControl DESC
END
GO

CREATE PROCEDURE SpDetalle_controlAnterior
@IdDetalleControl AS INT
AS
IF(SELECT COUNT(IdDetalleControl) FROM Detalle_control WHERE IdDetalleControl < @IdDetalleControl) > 0
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
WHERE IdDetalleControl < @IdDetalleControl
ORDER BY  IdDetalleControl DESC
END
ELSE
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
ORDER BY  IdDetalleControl ASC
END
GO


CREATE PROCEDURE SpDetalle_controlSiguiente
@IdDetalleControl AS INT
AS
IF(SELECT COUNT(IdDetalleControl) FROM Detalle_control WHERE IdDetalleControl > @IdDetalleControl) > 0
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
WHERE IdDetalleControl > @IdDetalleControl
ORDER BY  IdDetalleControl ASC
END
ELSE
BEGIN
SELECT TOP 1 
IdDetalleControl,
NumControl,
NumMaquina,
Estado,
Desperfecto
FROM Detalle_control
ORDER BY  IdDetalleControl DESC
END
GO

