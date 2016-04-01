
Use TIC;

/*----------------------------------------------*/
-- Turno
if (OBJECT_ID('insert_turno') is not null)
  drop procedure insert_turno
 GO
create procedure insert_turno
  @CodTurno char (1),
  @Titulo nvarchar(max),
  @HoraEntrada time,
  @HoraSalida time
  as
  begin
    insert into Turno (CodTurno, Titulo, HoraEntrada, HoraSalida)
    values (@CodTurno, @Titulo, @HoraEntrada, @HoraSalida)
  end;
if (OBJECT_ID('update_turno') is not null)
  drop procedure update_turno
 GO
create procedure update_turno
  @CodTurno char(1),
  @Titulo nvarchar(max),
  @HoraEntrada time,
  @HoraSalida time
  as
  begin
    update Turno
    set
      Titulo = @Titulo,
      HoraEntrada = @HoraEntrada,
      HoraSalida = @HoraSalida
    where CodTurno = @CodTurno
  end;
if (OBJECT_ID('delete_turno') is not null)
  drop procedure delete_turno
 GO
create procedure delete_turno
  @CodTurno char(1)
  as
  begin
    delete
      from Turno
      where CodTurno = @CodTurno
  end;
/*----------------------------------------------*/
-- Grupo
if (OBJECT_ID('insert_grupo') is not null)
  drop procedure insert_grupo
 GO
create procedure insert_grupo
  @CodGrupo char(5),
  @Nombre nvarchar(max)
  as
  begin
    insert into Grupo (CodGrupo, Nombre)
    values (@CodGrupo, @Nombre)
  end;
if (OBJECT_ID('update_grupo') is not null)
  drop procedure update_grupo
 GO
create procedure update_grupo
  @CodGrupo char(5),
  @Nombre nvarchar(max)
  as
  begin
    update Grupo
    set
      Nombre = @Nombre
    where CodGrupo = @CodGrupo
  end;
if (OBJECT_ID('delete_grupo') is not null)
  drop procedure delete_grupo
 GO
create procedure delete_grupo
  @CodGrupo char(5)
  as
  begin
    delete
      from Grupo
      where CodGrupo = @CodGrupo
  end;
/*----------------------------------------------*/
-- Asignatura
if (OBJECT_ID('insert_asignatura') is not null)
  drop procedure insert_asignatura
 GO
create procedure insert_asignatura
  @CodAsignatura char(5),
  @Nombre nvarchar(max)
  as
  begin
    insert into Asignatura (CodAsignatura, Nombre)
    values (@CodAsignatura, @Nombre)
  end;
if (OBJECT_ID('update_asignatura') is not null)
  drop procedure update_asignatura
 GO
create procedure update_asignatura
  @CodAsignatura char(5),
  @Nombre nvarchar(max)
  as
  begin
    update Asignatura
    set
      Nombre = @Nombre
    where CodAsignatura = @CodAsignatura
  end;
if (OBJECT_ID('delete_asignatura') is not null)
  drop procedure delete_asignatura
 GO
create procedure delete_asignatura
  @CodAsignatura char(5)
  as
  begin
    delete
      from Asignatura
      where CodAsignatura = @CodAsignatura
  end;
/*----------------------------------------------*/
-- Docente
if (OBJECT_ID('insert_docente') is not null)
  drop procedure insert_docente
 GO
create procedure insert_docente
  @CodDocente char(10),
  @Cedula nvarchar(16),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max),
  @Celular int
  as
  begin
    insert into Docente (CodDocente, Cedula, Nombre, Apellido, Celular)
    values (@CodDocente, @Cedula, @Nombre, @Apellido, @Celular)
  end;
if (OBJECT_ID('update_docente') is not null)
  drop procedure update_docente
 GO
create procedure update_docente
  @CodDocente char(10),
  @Cedula nvarchar(16),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max),
  @Celular int
  as
  begin
    update Docente
    set
      Cedula = @Cedula,
      Nombre = @Nombre,
      Apellido = @Apellido,
      Celular = @Celular
    where CodDocente = @CodDocente
  end;
if (OBJECT_ID('delete_docente') is not null)
  drop procedure delete_docente
 GO
create procedure delete_docente
  @CodDocente char(10)
  as
  begin
    delete
      from Docente
      where CodDocente = @CodDocente
  end;
/*----------------------------------------------*/
-- Maquina
if (OBJECT_ID('insert_maquina') is not null)
  drop procedure insert_maquina
 GO
create procedure insert_maquina
  @NumMaquina int,
  @Fabricante nvarchar(max),
  @Modelo nvarchar(max),
  @CPU nvarchar(max),
  @RAM int,
  @GPU nvarchar(max),
  @HDD int
  as
  begin
    insert into Maquina (NumMaquina, Fabricante, Modelo, CPU, RAM, GPU, HDD)
    values (@NumMaquina, @Fabricante, @Modelo, @CPU, @RAM, @GPU, @HDD)
  end;
if (OBJECT_ID('update_maquina') is not null)
  drop procedure update_maquina
 GO
create procedure update_maquina
  @NumMaquina int,
  @Fabricante nvarchar(max),
  @Modelo nvarchar(max),
  @CPU nvarchar(max),
  @RAM int,
  @GPU nvarchar(max),
  @HDD int
  as
  begin
    update Maquina
    set
      Fabricante = @Fabricante,
      Modelo = @Modelo,
      CPU = @CPU,
      RAM = @RAM,
      GPU = @GPU,
      HDD = @HDD
    where NumMaquina = @NumMaquina
  end;
if (OBJECT_ID('delete_maquina') is not null)
  drop procedure delete_maquina
 GO
create procedure delete_maquina
  @NumMaquina int
  as
  begin
    delete
      from Maquina
      where NumMaquina = @NumMaquina
  end;
/*----------------------------------------------*/
-- Responsable
if (OBJECT_ID('insert_responsable') is not null)
  drop procedure insert_responsable
 GO
create procedure insert_responsable
  @CodResponsable char(10),
  @CodTurno char(1),
  @Cedula nvarchar(16),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max),
  @Celular int
  as
  begin
    insert into Responsable (CodResponsable, CodTurno, Cedula, Nombre, Apellido, Celular)
    values (@CodResponsable, @CodTurno, @Cedula, @Nombre, @Apellido, @Celular)
  end;
if (OBJECT_ID('update_responsable') is not null)
  drop procedure update_responsable
 GO
create procedure update_responsable
  @CodResponsable char(10),
  @CodTurno char(1),
  @Cedula nvarchar(16),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max),
  @Celular int
  as
  begin
    update Responsable
    set
      CodTurno = @CodTurno,
      Cedula = @Cedula,
      Nombre = @Nombre,
      Apellido = @Apellido,
      Celular = @Celular
    where CodResponsable = @CodResponsable
  end;
if (OBJECT_ID('delete_responsable') is not null)
  drop procedure delete_responsable
 GO
create procedure delete_responsable
  @CodResponsable char(10)
  as
  begin
    delete
      from Responsable
      where CodResponsable = @CodResponsable
  end;
/*----------------------------------------------*/
-- Blacklist
if (OBJECT_ID('insert_blacklist') is not null)
  drop procedure insert_blacklist
 GO
create procedure insert_blacklist
  @NumBlacklist int,
  @CodResponsable char(10),
  @Causa nvarchar(max),
  @Sanción date,
  @Bloque int
  as
  begin
    insert into Blacklist (NumBlacklist, CodResponsable, Causa, Sanción, Bloque)
    values (@NumBlacklist, @CodResponsable, @Causa, @Sanción, @Bloque);
  end;
if (OBJECT_ID('update_blacklist') is not null)
  drop procedure update_blacklist
 GO
create procedure update_blacklist
  @NumBlacklist int,
  @CodResponsable char(10),
  @Causa nvarchar(max),
  @Sanción date,
  @Bloque int
  as
  begin
    update Blacklist
    set
      CodResponsable = @CodResponsable,
      Causa = @Causa,
      Sanción = @Sanción,
      Bloque = @Bloque
    where NumBlacklist = @NumBlacklist
  end;
if (OBJECT_ID('delete_blacklist') is not null)
  drop procedure delete_blacklist
 GO
create procedure delete_blacklist
  @NumBlacklist int
  as
  begin
    update Blacklist
    set
      Vigente = 0
    where NumBlacklist = @NumBlacklist
  end;
/*----------------------------------------------*/
-- DetalleBlacklist
if (OBJECT_ID('insert_detalleblacklist') is not null)
  drop procedure insert_detalleblacklist
 GO
create procedure insert_detalleblacklist
  @NumBlacklist int,
  @CodGrupo char(5),
  @CodTurno char(1),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max)
  as
  begin
    insert into DetalleBlacklist (NumBlacklist, CodGrupo, CodTurno, Nombre, Apellido)
    values (@NumBlacklist, @CodGrupo, @CodTurno, @Nombre, @Apellido);
  end;
if (OBJECT_ID('update_detalleblacklist') is not null)
  drop procedure update_detalleblacklist
 GO
create procedure update_detalleblacklist
  @IdDetalleBlacklist int,
  @CodGrupo char(5),
  @CodTurno char(1),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max)
  as
  begin
    update DetalleBlacklist
    set
      CodGrupo = @CodGrupo,
      CodTurno = @CodTurno,
      Nombre = @Nombre,
      Apellido = @Apellido
    where IdDetalleBlacklist = @IdDetalleBlacklist
  end;
if (OBJECT_ID('delete_detalleblacklist') is not null)
  drop procedure delete_detalleblacklist
 GO
create procedure delete_detalleblacklist
  @IdDetalleBlacklist int
  as
  begin
    delete
      from DetalleBlacklist
      where IdDetalleBlacklist = @IdDetalleBlacklist
  end;
/*----------------------------------------------*/
-- Examen
if (OBJECT_ID('insert_examen') is not null)
  drop procedure insert_examen
 GO
create procedure insert_examen
  @NumExamen int,
  @CodResponsable char(10),
  @TipoMantenimiento nvarchar(max),
  @Justificacion nvarchar(max)
  as
  begin
    insert into Examen (NumExamen, CodResponsable, TipoMantenimiento, Justificacion)
    values (@NumExamen, @CodResponsable, @TipoMantenimiento, @Justificacion);
  end;
if (OBJECT_ID('update_examen') is not null)
  drop procedure update_examen
 GO
create procedure update_examen
  @NumExamen int,
  @CodResponsable char(10),
  @TipoMantenimiento nvarchar(max),
  @Justificacion nvarchar(max)
  as
  begin
    update Examen
    set
      CodResponsable = @CodResponsable,
      TipoMantenimiento = @TipoMantenimiento,
      Justificacion = @Justificacion
    where NumExamen = @NumExamen
  end;
if (OBJECT_ID('delete_examen') is not null)
  drop procedure delete_examen
 GO
create procedure delete_examen
  @NumExamen int
  as
  begin
    delete
      from Examen
      where NumExamen = @NumExamen
  end;
/*----------------------------------------------*/
-- DetalleExamen
if (OBJECT_ID('insert_detalleexamen') is not null)
  drop procedure insert_detalleexamen
 GO
create procedure insert_detalleexamen
  @NumExamen int,
  @NumMaquina int,
  @Estado nvarchar(max),
  @Desperfecto nvarchar(max)
  as
  begin
    insert into DetalleExamen (NumExamen, NumMaquina, Estado, Desperfecto)
    values (@NumExamen, @NumMaquina, @Estado, @Desperfecto);
  end;
if (OBJECT_ID('update_detalleexamen') is not null)
  drop procedure update_detalleexamen
 GO
create procedure update_detalleexamen
  @IdDetalleExamen int,
  @NumExamen int,
  @NumMaquina int,
  @Estado nvarchar(max),
  @Desperfecto nvarchar(max)
  as
  begin
    update DetalleExamen
    set
      NumExamen = @NumExamen,
      NumMaquina = @NumMaquina,
      Estado = @Estado,
      Desperfecto = @Desperfecto
    where IdDetalleExamen = @IdDetalleExamen
  end;
if (OBJECT_ID('delete_detalleexamen') is not null)
  drop procedure delete_detalleexamen
 GO
create procedure delete_detalleexamen
  @IdDetalleExamen int
  as
  begin
    delete
      from DetalleExamen
      where IdDetalleExamen = @IdDetalleExamen
  end;
/*----------------------------------------------*/
-- Calendario
if (OBJECT_ID('insert_calendario') is not null)
  drop procedure insert_calendario
 GO
create procedure insert_calendario
  @NumCalendario int,
  @CodTurno char(1),
  @Fecha date
  as
  begin
    insert into Calendario (NumCalendario, CodTurno, Fecha)
    values (@NumCalendario, @CodTurno, @Fecha);
  end;
if (OBJECT_ID('update_calendario') is not null)
  drop procedure update_calendario
 GO
create procedure update_calendario
  @NumCalendario int,
  @CodTurno char(1),
  @Fecha date
  as
  begin
    update Calendario
    set
      CodTurno = @CodTurno,
      Fecha = @Fecha
    where NumCalendario = @NumCalendario
  end;
if (OBJECT_ID('delete_calendario') is not null)
  drop procedure delete_calendario
 GO
create procedure delete_calendario
  @NumCalendario int
  as
  begin
    delete
      from Calendario
      where NumCalendario = @NumCalendario
  end;
/*----------------------------------------------*/
-- Apartado
if (OBJECT_ID('insert_apartado') is not null)
  drop procedure insert_apartado
 GO
create procedure insert_apartado
  @NumApartado int,
  @NumCalendario int,
  @CodDocente char(10),
  @CodGrupo char(5),
  @Bloque int,
  @TipoBloque nvarchar(max)
  as
  begin
    insert into Apartado (NumApartado, NumCalendario, CodDocente, CodGrupo, Bloque, TipoBloque)
    values (@NumApartado, @NumCalendario, @CodDocente, @CodGrupo, @Bloque, @TipoBloque);
  end;
if (OBJECT_ID('update_apartado') is not null)
  drop procedure update_apartado
 GO
create procedure update_apartado
  @NumApartado int,
  @NumCalendario int,
  @CodDocente char(10),
  @CodGrupo char(5),
  @Bloque int,
  @TipoBloque nvarchar(max)
  as
  begin
    update Apartado
    set
      NumApartado = @NumApartado,
      NumCalendario = @NumCalendario,
      CodDocente = @CodDocente,
      CodGrupo = @CodGrupo,
      Bloque = @Bloque,
      TipoBloque = @TipoBloque
    where NumApartado = @NumApartado
  end;
if (OBJECT_ID('delete_apartado') is not null)
  drop procedure delete_apartado
 GO
create procedure delete_apartado
  @NumApartado int
  as
  begin
    delete
      from Apartado
      where NumApartado = @NumApartado
  end;
/*----------------------------------------------*/
-- Leccion
if (OBJECT_ID('insert_leccion') is not null)
  drop procedure insert_leccion
 GO
create procedure insert_leccion
  @NumApartado int,
  @CodAsignatura char(10),
  @CantHombre int,
  @CantMujer int
  as
  begin
    insert into Leccion (NumApartado, CodAsignatura, CantHombre, CantMujer)
    values (@NumApartado, @CodAsignatura, @CantHombre, @CantMujer);
  end;
if (OBJECT_ID('update_leccion') is not null)
  drop procedure update_leccion
 GO
create procedure update_leccion
  @NumLeccion int,
  @NumApartado int,
  @CodAsignatura char(10),
  @CantHombre int,
  @CantMujer int
  as
  begin
    update Leccion
    set
      NumApartado = @NumApartado,
      CodAsignatura = @CodAsignatura,
      CantHombre = @CantHombre,
      CantMujer = @CantMujer
    where NumLeccion = @NumLeccion
  end;
if (OBJECT_ID('delete_leccion') is not null)
  drop procedure delete_leccion
 GO
create procedure delete_leccion
  @NumLeccion int
  as
  begin
    delete
      from Leccion
      where NumLeccion = @NumLeccion
  end;
