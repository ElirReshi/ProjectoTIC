
Use master;

if (DB_ID('TIC') is not null)
drop database TIC
create database TIC;

Use TIC;

/*----------------------------------------------*/
-- Tablas Independientes
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
create table Responsable (
  CodResponsable char(10) primary key,
  CodTurno char(1) foreign key references Turno (CodTurno) not null,
  Cedula nvarchar(16) unique,
  Nombre nvarchar(Max),
  Apellido nvarchar(max),
  Celular int
)
create table Maquina (
  NumMaquina int primary key,
  Fabricante nvarchar(Max) not null,
  Modelo nvarchar(Max) not null,
  CPU nvarchar(Max) not null,
  RAM int not null, -- GB
  GPU nvarchar(Max) not null,
  HDD int not null -- GB
)
/*----------------------------------------------*/
-- Tablas Dependientes
create table Blacklist (
  NumBlacklist int primary key,
  CodResponsable char(10) foreign key references Responsable (CodResponsable) not null,
  Causa nvarchar(max),
  Sanción date not null,
  Bloque int not null,
  Vigente bit default 1 not null,
  FechaReg date default getdate()
)
create table DetalleBlacklist (
  IdDetalleBlacklist int identity(1, 1) primary key,
  NumBlacklist int foreign key references Blacklist (NumBlacklist) not null,
  CodGrupo char(5) foreign key references Grupo (CodGrupo) not null,
  Nombre nvarchar(max),
  Apellido nvarchar(max)
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
      where CodTurno = @CodTurno
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
      where CodGrupo = @CodGrupo
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
      where CodDocente = @CodDocente
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
  @Nombre nvarchar(Max),
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
  @Nombre nvarchar(Max),
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
-- Maquina
if (OBJECT_ID('insert_maquina') is not null)
  drop procedure insert_maquina
 GO
create procedure insert_maquina
  @NumMaquina int,
  @Fabricante nvarchar(Max),
  @Modelo nvarchar(Max),
  @CPU nvarchar(Max),
  @RAM int,
  @GPU nvarchar(Max),
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
  @Fabricante nvarchar(Max),
  @Modelo nvarchar(Max),
  @CPU nvarchar(Max),
  @RAM int,
  @GPU nvarchar(Max),
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
  @Nombre nvarchar(max),
  @Apellido nvarchar(max)
  as
  begin
    insert into DetalleBlacklist (NumBlacklist, CodGrupo, Nombre, Apellido)
    values (@NumBlacklist, @CodGrupo, @Nombre, @Apellido);
  end;

if (OBJECT_ID('update_detalleblacklist') is not null)
  drop procedure update_detalleblacklist
 GO
create procedure update_detalleblacklist
  @IdDetalleBlacklist int,
  @CodGrupo char(5),
  @Nombre nvarchar(max),
  @Apellido nvarchar(max)
  as
  begin
    update DetalleBlacklist
    set
      CodGrupo = @CodGrupo,
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
