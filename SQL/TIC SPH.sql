
Use master;

if (DB_ID('TIC') is not null)
drop database TIC
create database TIC;

Use TIC;

create table Turno (
  CodTurno char(1) primary key,
  Titulo nvarchar (max) not null,
  HoraEntrada time,
  HoraSalida time
)
create table Grupo (
  CodGrupo char(5) primary key,
  Nombre nvarchar (max)
)
create table Asignatura (
  CodAsignatura char(10) primary key,
  Nombre nvarchar (max)
)
create table Docente (
  CodDocente char(10) primary key,
  Cedula nvarchar(16) unique,
  Nombre nvarchar(Max),
  Apellido nvarchar(max),
  Celular int
)

/*----------------------------------------------*/
-- Turno
if (OBJECT_ID('insert_turno') is not null)
  drop procedure insert_turno
 GO
create procedure insert_turno
  @CodTurno char (1),
  @Titulo nvarchar (max),
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
  @Titulo nvarchar (max),
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
      WHERE CodTurno = @CodTurno
  end;

/*----------------------------------------------*/
-- Grupo
if (OBJECT_ID('insert_grupo') is not null)
  drop procedure insert_grupo
 GO
create procedure insert_grupo
  @CodGrupo char(5),
  @Nombre nvarchar (max)
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
  @Nombre nvarchar (max)
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
      WHERE CodGrupo = @CodGrupo
  end;

/*----------------------------------------------*/
-- Asignatura
if (OBJECT_ID('insert_asignatura') is not null)
  drop procedure insert_asignatura
 GO
create procedure insert_asignatura
  @CodAsignatura char(5),
  @Nombre nvarchar (max)
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
  @Nombre nvarchar (max)
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
      WHERE CodAsignatura = @CodAsignatura
  end;

/*----------------------------------------------*/
-- Docente
if (OBJECT_ID('insert_docente') is not null)
  drop procedure insert_docente
 GO
create procedure insert_docente
  @CodDocente char(10),
  @Cedula nvarchar(16),
  @Nombre nvarchar(Max),
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
  @Nombre nvarchar(Max),
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
      WHERE CodDocente = @CodDocente
  end;

/*----------------------------------------------*/