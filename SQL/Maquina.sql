set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpMaquinaInsertar
@NumMaquina AS INT,
@Fabricante AS NVARCHAR(-1),
@Modelo AS NVARCHAR(-1),
@CPU AS NVARCHAR(-1),
@RAM AS INT,
@GPU AS NVARCHAR(-1),
@HDD AS INT
AS
BEGIN
INSERT INTO Maquina (Fabricante,Modelo,CPU,RAM,GPU,HDD)
SET @NumMaquina = @@IDENTITY
VALUES (@Fabricante,@Modelo,@CPU,@RAM,@GPU,@HDD)
END
GO

CREATE PROCEDURE SpMaquinaActualizar
@NumMaquina AS INT,
@Fabricante AS NVARCHAR(-1),
@Modelo AS NVARCHAR(-1),
@CPU AS NVARCHAR(-1),
@RAM AS INT,
@GPU AS NVARCHAR(-1),
@HDD AS INT
AS
BEGIN
UPDATE Maquina
SET Fabricante = @Fabricante,
Modelo = @Modelo,
CPU = @CPU,
RAM = @RAM,
GPU = @GPU,
HDD = @HDD
WHERE NumMaquina = @NumMaquina
END
GO

CREATE PROCEDURE SpMaquinaEliminar
@NumMaquina AS INT
AS
BEGIN
DELETE FROM Maquina
WHERE NumMaquina = @NumMaquina
END
GO

CREATE PROCEDURE SpMaquinaListar
AS
BEGIN
SELECT NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
END
GO

CREATE PROCEDURE SpMaquinaObtener
@NumMaquina AS INT
AS
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
WHERE NumMaquina = @NumMaquina
END
GO

CREATE PROCEDURE SpMaquinaPrimero
AS
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
ORDER BY  NumMaquina ASC
END
GO

CREATE PROCEDURE SpMaquinaUltimo
AS
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
ORDER BY  NumMaquina DESC
END
GO

CREATE PROCEDURE SpMaquinaAnterior
@NumMaquina AS INT
AS
IF(SELECT COUNT(NumMaquina) FROM Maquina WHERE NumMaquina < @NumMaquina) > 0
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
WHERE NumMaquina < @NumMaquina
ORDER BY  NumMaquina DESC
END
ELSE
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
ORDER BY  NumMaquina ASC
END
GO


CREATE PROCEDURE SpMaquinaSiguiente
@NumMaquina AS INT
AS
IF(SELECT COUNT(NumMaquina) FROM Maquina WHERE NumMaquina > @NumMaquina) > 0
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
WHERE NumMaquina > @NumMaquina
ORDER BY  NumMaquina ASC
END
ELSE
BEGIN
SELECT TOP 1 
NumMaquina,
Fabricante,
Modelo,
CPU,
RAM,
GPU,
HDD
FROM Maquina
ORDER BY  NumMaquina DESC
END
GO

