/*----------------------------------------------------------------------------*/
-- Registros
insert into Maquina
values
(1, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(2, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(3, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(4, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(5, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(6, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(7, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(8, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(9, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(10, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(11, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(12, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(13, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(14, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(15, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(16, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(17, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(18, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(19, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024),
(20, 'ASRock', 'H61M-DGS', 'I5-3470', 4096, 'GeForce 8400GS', 1024);

insert into Responsable
values
('SPH', '001-200994-0027N', 'Sander Alberto', 'Pacheco', 'Hernández', 78026181),
('MPH', '001-000000-0000D', 'Mario Alberto', 'Pacheco', 'Hernández', 12345678);

insert into Control
(NumControl, CodResponsable, TipoMantenimiento, Justificacion)
values
(100, 'SPH', 'Preventivo', 'Planeado');

insert into Detalle_control
values
(1, 100, 1, 'Optimo', 'Ninguno'),
(2, 100, 2, 'Optimo', 'Ninguno'),
(3, 100, 3, 'Optimo', 'Ninguno'),
(4, 100, 4, 'Optimo', 'Ninguno'),
(5, 100, 5, 'Optimo', 'Ninguno'),
(6, 100, 6, 'Optimo', 'Ninguno'),
(7, 100, 7, 'Mal', 'Pines de la CPU dañados'),
(8, 100, 8, 'Optimo', 'Ninguno'),
(9, 100, 9, 'Optimo', 'Ninguno'),
(10, 100, 10, 'Optimo', 'Ninguno'),
(11, 100, 11, 'Optimo', 'Ninguno'),
(12, 100, 12, 'Optimo', 'Ninguno'),
(13, 100, 13, 'Optimo', 'Ninguno'),
(14, 100, 14, 'Optimo', 'Ninguno'),
(15, 100, 15, 'Optimo', 'Ninguno'),
(16, 100, 16, 'Optimo', 'Ninguno'),
(17, 100, 17, 'Optimo', 'Ninguno'),
(18, 100, 18, 'Optimo', 'Ninguno'),
(19, 100, 19, 'Optimo', 'Ninguno'),
(20, 100, 20, 'Optimo', 'Ninguno');

insert into Docente
values
('JC', '001-070419-8109K', 'Jorge', 'Carranza', 'Darío', 76655787),
('JP', '003-090119-6701L', 'Jose', 'Pavon', 'Sotelo', 89968368),
('RM', '008-101219-520OA', 'Rosa', 'Martinez', 'Valenzuela', 85430008),
('BT', '002-310519-600PW', 'Benito', 'Taibo', 'Lepelm', 79906755),
('LG', '005-050618-980DE', 'Federico', 'García', 'Lorca', 89959200),
('PR', '001-060619-730ER', 'Patrick', 'Rothfuss', 'Lergn', 89990987),
('GM', '002-060319-270RT', 'Gabriel', 'García', 'Marquez', 79977329),
('RI', '002-090719-910SY', 'Ricardo', 'Iglesias', 'Kreigh', 89990767),
('RV', '001-090919-850SF', 'Ron', 'Van', 'Dam', 76112108),
('WW', '001-010119-920MQ', 'Wade', 'Wilson', 'Deadpool', 87790823);

insert into Asignatura
values
('M', 'Matemática'),
('LYL', 'Lengua y Literatura'),
('CCSS', 'Ciencias Sociales'),
('CCNN', 'Ciencias Naturales'),
('F', 'Fisica'),
('OTV', 'Orientación Técnica y Vocacional'),
('LE', 'Lengua Extranjera'),
('EF', 'Educación Fisica'),
('CYC', 'Convivencia y Civismo'),
('ECA', 'Educación Cultural y Artística');

insert into Grupo
values
('7A', 'Séptimo A'),
('7B', 'Séptimo B'),
('7C', 'Séptimo C'),
('8A', 'Octavo A'),
('8B', 'Octavo B'),
('8C', 'Octavo C'),
('9A', 'Noveno A'),
('9B', 'Noveno B'),
('10A', 'Decimo A'),
('10B', 'Decimo B'),
('11A', 'Undécimo A');

insert into Turno
values
('M', 'Matutino', '7:00', '12:00'),
('V', 'Vespertino', '1:00', '5:00');

insert into Horario
(NumHorario, CodResponsable, CodDocente, CodGrupo, CodTurno, Apartado, Bloque, TipoBloque)
values
(1, 'SPH', 'JC', '7A', 'M', '14/3/2016', 1, 'doble'),
(2, 'SPH', 'JP', '7B', 'M', '14/3/2016', 3, 'doble'),
(3, 'SPH', 'RM', '7C', 'M', '14/3/2016', 6, 'doble'),
(4, 'SPH', 'JC', '8A', 'M', '15/3/2016', 1, 'doble'),
(5, 'SPH', 'JP', '8B', 'M', '15/3/2016', 3, 'doble'),
(6, 'SPH', 'BT', '8C', 'M', '15/3/2016', 6, 'doble'),
(7, 'SPH', 'JC', '9A', 'M', '16/3/2016', 1, 'doble'),
(8, 'SPH', 'WW', '9B', 'M', '16/3/2016', 3, 'doble'),
(9, 'SPH', 'BT', '10A', 'M', '16/3/2016', 6, 'doble'),
(10, 'SPH', 'WW', '10B', 'M', '17/3/2016', 1, 'doble'),
(11, 'SPH', 'RM', '11A', 'M', '17/3/2016', 3, 'doble'),
(12, 'SPH', 'RV', '7A', 'M', '17/3/2016', 6, 'doble'),
(13, 'SPH', 'PR', '7B', 'M', '18/3/2016', 1, 'doble'),
(14, 'SPH', 'RV', '7C', 'M', '18/3/2016', 3, 'doble'),
(15, 'SPH', 'RV', '8A', 'M', '18/3/2016', 6, 'doble');
-- MAT LE LYL CYC CCSS CCNN FIS OTV ECA EF
insert into Leccion
(NumLeccion, NumHorario, CodAsignatura, CantHombre, CantMujer)
values
(1, 1, 'MAT', 24, 14),
(2, 2, 'FIS', 24, 30),
(3, 3, 'LYL', 29, 26),
(4, 4, 'MAT', 23, 23),
(5, 5, 'FIS', 10, 22),
(6, 6, 'LE', 24, 20),
(7, 7, 'MAT', 11, 26),
(8, 8, 'CCNN', 28, 22),
(9, 9, 'LE', 10, 15),
(10, 10, 'CCNN', 15, 28),
(11, 11, 'LYL', 18, 6),
(12, 12, 'OTV', 25, 12),
(13, 13, 'ECA', 28, 15),
(14, 14, 'OTV', 11, 16),
(15, 15, 'OTV', 15, 19);


/*----------------------------------------------------------------------------*/
-- Vistas
begin tran Vistas;
/* CONSULTA GENERAL DE LOS HORARIOS INGRESADOS POR COMPLETO */
create view Horario_Completo as SELECT
H.NumHorario as 'Nº',
(D.Nombre + ' ' + D.ApellidoPaterno) as 'Docente',
(R.Nombre + ' ' + R.ApellidoPaterno) AS 'Responsable',
T.Titulo as 'Turno',
G.Titulo AS 'Grupo',
H.Apartado as 'Fecha',
datediff(day, H.FechaReg, H.Apartado) as 'Dias de antelación',
H.Bloque,
H.TipoBloque as 'Tipo'
FROM
Horario as H INNER JOIN
Docente as D ON H.CodDocente = D.CodDocente INNER JOIN
Responsable as R ON H.CodResponsable = R.CodResponsable INNER JOIN
Turno as T ON H.CodTurno = T.CodTurno INNER JOIN
Grupo as G ON H.CodGrupo = G.CodGrupo;

/* CANTIDES DE ALUMNOS QUE ASISTIERON AL LABORATORIO EN EL MES ACTUAL */
create view Alumnos_Completo as SELECT Grupo.Titulo,
Sum(Leccion.CantHombre) as 'Hombres',
Sum(Leccion.CantMujer) as 'Mujeres',
Sum(Leccion.CantHombre + Leccion.CantMujer) as 'Cantidad de Alumnos'
FROM Horario INNER JOIN Leccion
ON Horario.NumHorario = Leccion.NumHorario INNER JOIN Grupo
ON Horario.CodGrupo = Grupo.CodGrupo
WHERE MONTH(Leccion.FechaReg) = Month(getdate()) and year(Leccion.FechaReg) = YEAR(GETDATE())
group by Grupo.Titulo;

/* CONTEO DE CUANTAS VECES A APARTADO EL DOCENTE EN EL MES ACTUAL */
create view Docentes_Apartados_Mes as
select HC.Docente, count(*) as 'Cantidad de Apartados' from Horario_Completo as HC
where MONTH(HC.Fecha) = Month(getdate()) and year(HC.Fecha) = YEAR(GETDATE())
group by HC.Docente;

/* VISTA SOBRE LOS TURNOS */
create view Turnos as
SELECT Titulo as 'Turnos', HoraEntrada as 'Hora de Entrada', HoraSalida as 'Hora de Salida'  FROM turno;

/* Vista para ver los registros de las maquinas en mal estado */
create view Maquinas_en_mal_estado as
SELECT Control.NumControl, (Responsable.Nombre + Responsable.ApellidoPaterno) as 'Responsable', Control.FechaReg,  Detalle_control.NumMaquina as 'Maquina', Detalle_control.Estado, Detalle_control.Desperfecto
FROM Control INNER JOIN Detalle_control ON Control.NumControl = Detalle_control.NumControl INNER JOIN Responsable ON Control.CodResponsable = Responsable.CodResponsable
where Desperfecto != 'Ninguno' and Estado != 'Optimo';

/*----------------------------------------------------------------------------*/
-- Consultas Ordinales

/* CONTEO DE CUANTAS VECES SEA APARTADO EL LABORATORIO PARA CARA GRUPO EN EL
MES ACTUAL Y EN EL TURNO MATUTINO */
SELECT HC.Grupo, count(*) as 'Cantidad de Apartados' FROM Horario_Completo as HC
where MONTH(HC.Fecha) = Month(getdate()) and year(HC.Fecha) = YEAR(GETDATE())
and Turno = 'Matutino'
group by GRUPO;

/* CONTEO DE CUANTAS VECES SEA APARTADO EL LABORATORIO PARA CARA GRUPO EN EL
MES ACTUAL Y EN EL TURNO Vespertino */
SELECT HC.Grupo, count(*) as 'Cantidad de Apartados' FROM Horario_Completo as HC
where MONTH(HC.Fecha) = Month(getdate()) and year(HC.Fecha) = YEAR(GETDATE())
and Turno = 'Vespertino'
group by Grupo;

/* DATOS SOBRE LOS HORARIOS PARA ESTE MES */
select HC.* from Horario_Completo as HC
where MONTH(HC.Fecha) = Month(getdate()) and year(HC.Fecha) = YEAR(GETDATE());

/* HORARIO PARA EL RESPONSABLE DEL LABORATORIO EN EL TURNO MATUTINO */
select HC.Docente, HC.Grupo, HC.Bloque, HC.Tipo  from Horario_Completo as HC
where MONTH(HC.Fecha) = Month(getdate()) and year(HC.Fecha) = YEAR(GETDATE())
and Turno = 'Matutino';

rollback tran Vistas;
/*----------------------------------------------------------------------------*/
-- Procesos Almacenados
begin tran Procesos;
/* Elimina los registros sobre los detalles de los controles para la maquinas
que no tienen ningun desperfecto y esta en su maximo funcionamiento */
create procedure Control_Limpieza
as
BEGIN
	IF EXISTS (SELECT count(*) FROM Control INNER JOIN Detalle_control ON Control.NumControl = Detalle_control.NumControl INNER JOIN Responsable ON Control.CodResponsable = Responsable.CodResponsable where Desperfecto = 'Ninguno' and Estado = 'Optimo')
	BEGIN
		delete from Detalle_control where Desperfecto = 'Ninguno' and Estado = 'Optimo';
	END
	select * from Maquinas_en_mal_estado;
END;

exec Control_Limpieza;
select * from Control;
select * from Detalle_control;

create procedure Control_Insertar
(
  @NumControl int,
  @CodResponsable char (10),
  @TipoMantenimiento nvarchar (max),
  @Justificacion nvarchar (max)
)
as
begin
  if exists (select * from Responsable where CodResponsable = @CodResponsable)
  begin
    insert into Control
    (NumControl, CodResponsable, TipoMantenimiento, Justificacion)
    values
    (@NumControl, @CodResponsable, @TipoMantenimiento, @Justificacion)
  end
  else
  begin
    print 'El codigo del responsable no existe'
  end
end;

create procedure Detalle_control_Insertar
(
  @NumControl int,
  @IdDetalleControl int,
  @NumMaquina int,
  @Estado nvarchar (max),
  @Desperfecto nvarchar (max)
)
as
begin
  if exists (select * from Control where NumControl = @NumControl)
  begin
    insert into Detalle_control
    values
    (@IdDetalleControl, @NumControl, @NumMaquina, @Estado, @Desperfecto)
  end
  else
  begin
    print 'El numero de control no existe'
  end
end;

create procedure Horario_Insertar
(
  @NumHorario int,
  @CodResponsable char (10),
  @CodDocente char (10),
  @CodGrupo char (10),
  @CodTurno char (10),
  @Apartado date,
  @Bloque int,
  @TipoBloque nvarchar (max)
)
as
begin
  if exists (select * from Responsable where CodResponsable = @CodResponsable)
  begin
    if exists (select * from Docente where CodDocente = @CodDocente)
    begin
      if exists (select * from Grupo where CodGrupo = @CodGrupo)
      begin
        if exists (select * from Turno where CodTurno = @CodTurno)
        begin
          insert into Horario
          (NumHorario, CodResponsable, CodDocente, CodGrupo, CodTurno, Apartado, Bloque, TipoBloque)
          values
          (@NumHorario, @CodResponsable, @CodDocente, @CodGrupo, @CodTurno, @Apartado, @Bloque, @TipoBloque)
        end
        else
        begin
          print 'El codigo del turno no existe'
        end
      end
      else
      begin
        print 'El codigo del grupo no existe'
      end
    end
    else
    begin
      print 'El codigo del docente no existe'
    end
  end
  else
  begin
    print 'El codigo del responsable no existe'
  end
end;

create procedure Leccion_Insertar
(
  @NumLeccion int,
  @NumHorario int,
  @CodAsignatura char (10),
  @CantHombre int,
  @CantMujer int
)
as
begin
  if exists (select * from Horario where NumHorario = @NumHorario)
  begin
    if exists (select * from Asignatura where CodAsignatura = @CodAsignatura)
    begin
      insert into Leccion
      (NumLeccion, NumHorario, CodAsignatura, CantHombre, CantMujer)
      values
      (@NumLeccion, @NumHorario, @CodAsignatura, @CantHombre, @CantMujer)
    end
    else
    begin
      print 'El codigo de la asignatura no existe'
    end
  end
  else
  begin
    print 'El numero del horario no existe'
  end
end;

CREATE PROCEDURE Maquina_Insertar
(
  @NumMaquina INT,
  @Fabricante NVARCHAR(Max),
  @Modelo NVARCHAR(Max),
  @CPU NVARCHAR(Max),
  @RAM INT,
  @GPU NVARCHAR(Max),
  @HDD INT
)
AS
BEGIN
INSERT INTO Maquina (NumMaquina, Fabricante,Modelo,CPU,RAM,GPU,HDD)
VALUES (@NumMaquina, @Fabricante,@Modelo,@CPU,@RAM,@GPU,@HDD)
END;

CREATE PROCEDURE Maquina_Actualizar
(
  @NumMaquina INT,
  @Fabricante NVARCHAR(Max),
  @Modelo NVARCHAR(Max),
  @CPU NVARCHAR(Max),
  @RAM INT,
  @GPU NVARCHAR(Max),
  @HDD INT
)
AS
BEGIN
UPDATE Maquina
SET Fabricante = @Fabricante, Modelo = @Modelo,
CPU = @CPU, RAM = @RAM, GPU = @GPU, HDD = @HDD
WHERE NumMaquina = @NumMaquina
END;

CREATE PROCEDURE Leccion_Actualizar
(
  @NumLeccion INT,
  @NumHorario INT,
  @CodAsignatura CHAR(10),
  @CantHombre INT,
  @CantMujer INT
)
AS
begin
  if exists (select * from Horario where NumHorario = @NumHorario)
  begin
    if exists (select * from Asignatura where CodAsignatura = @CodAsignatura)
    begin
      UPDATE Leccion
      SET NumHorario = @NumHorario,
      CodAsignatura = @CodAsignatura,
      CantHombre = @CantHombre,
      CantMujer = @CantMujer
      WHERE NumLeccion = @NumLeccion
    end
    else
    begin
      print 'El codigo de la asignatura no existe'
    end
  end
  else
  begin
    print 'El numero del horario no existe'
  end
end;

CREATE PROCEDURE Responsable_Insertar
  @CodResponsable CHAR(10),
  @Cedula NVARCHAR(16),
  @Nombre NVARCHAR(Max),
  @ApellidoPaterno NVARCHAR(Max),
  @ApellidoMaterno NVARCHAR(Max),
  @Celular INT
AS
BEGIN
  INSERT INTO Responsable (CodResponsable,Cedula,Nombre,ApellidoPaterno,ApellidoMaterno,Celular)
  VALUES (@CodResponsable,@Cedula,@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Celular)
END;

CREATE PROCEDURE Turno_Insertar
(
  @CodTurno CHAR(10),
  @Titulo NVARCHAR(max),
  @HoraEntrada TIME,
  @HoraSalida TIME
)
AS
BEGIN
  INSERT INTO Turno (CodTurno, Titulo,HoraEntrada,HoraSalida)
  VALUES (@CodTurno, @Titulo,@HoraEntrada,@HoraSalida)
END;

CREATE PROCEDURE Turno_Actualizar
(
  @CodTurno CHAR(10),
  @Titulo NVARCHAR(max),
  @HoraEntrada TIME,
  @HoraSalida TIME
)
AS
BEGIN
  UPDATE Turno
  SET Titulo = @Titulo,
  HoraEntrada = @HoraEntrada,
  HoraSalida = @HoraSalida
  WHERE CodTurno = @CodTurno
END;

CREATE PROCEDURE Grupo_Insertar
(
  @CodGrupo CHAR(10),
  @Titulo NVARCHAR(Max)
)
AS
BEGIN
  INSERT INTO Grupo (CodGrupo, Titulo)
  VALUES (@CodGrupo, @Titulo)
END;

CREATE PROCEDURE Grupo_Actualizar
(
  @CodGrupo CHAR(10),
  @Titulo NVARCHAR(Max)
)
AS
BEGIN
  UPDATE Grupo
  SET Titulo = @Titulo
  WHERE CodGrupo = @CodGrupo
END;

CREATE PROCEDURE SpDocenteInsertar
(
  @CodDocente CHAR(10),
  @Cedula NVARCHAR(16),
  @Nombre NVARCHAR(Max),
  @ApellidoPaterno NVARCHAR(Max),
  @ApellidoMaterno NVARCHAR(Max),
  @Celular INT
)
AS
BEGIN
  INSERT INTO Docente (CodDocente,Cedula,Nombre,ApellidoPaterno,ApellidoMaterno,Celular)
  VALUES (@CodDocente,@Cedula,@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Celular)
END;

CREATE PROCEDURE SpDocenteActualizar
  @CodDocente CHAR(10),
  @Cedula NVARCHAR(16),
  @Nombre NVARCHAR(Max),
  @ApellidoPaterno NVARCHAR(Max),
  @ApellidoMaterno NVARCHAR(Max),
  @Celular INT
AS
BEGIN
  UPDATE Docente
  SET Cedula = @Cedula,
  Nombre = @Nombre,
  ApellidoPaterno = @ApellidoPaterno,
  ApellidoMaterno = @ApellidoMaterno,
  Celular = @Celular
  WHERE CodDocente = @CodDocente
END;

rollback tran Procesos;













create table Examen (
  NumExamen int primary key,
  CodResponsable char(10) foreign key references Responsable (CodResponsable),
  TipoMantenimiento nvarchar(max) not null,
  Justificacion nvarchar(max) not null,
  FechaReg date default getdate() not null
)
create table DetalleExamen (
  IdDetalleExamen int primary key,
  NumExamen int foreign key references Examen (NumExamen) not null,
  NumMaquina int foreign key references Maquina (NumMaquina) not null,
  Estado nvarchar (max),
  Desperfecto nvarchar(max)
)
create table Horario (
  NumHorario int primary key,
  CodResponsable char(10) foreign key references Responsable (CodResponsable) not null,
  CodDocente char(10) foreign key references Docente (CodDocente) not null,
  CodGrupo char(5) foreign key references Grupo (CodGrupo) not null,
  CodTurno char(1) foreign key references Turno (CodTurno) not null,
  Apartado date not null,
  Bloque int not null,
  TipoBloque nvarchar(max), -- doble, individual
  FechaReg date default getdate()
)
create table Leccion (
  NumLeccion int primary key,
  NumHorario int foreign key references Horario (NumHorario) not null,
  CodAsignatura char(10) foreign key references Asignatura (CodAsignatura) not null,
  CantHombre int,
  CantMujer int,
  FechaReg date default getdate()
)
