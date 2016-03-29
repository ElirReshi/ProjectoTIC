
create database TIC;

use TIC;

create table Maquina (
  NumMaquina int primary key,
  Fabricante nvarchar(Max) not null,
  Modelo nvarchar(Max) not null,
  CPU nvarchar(Max) not null,
  RAM int not null, -- MB
  GPU nvarchar(Max) not null,
  HDD int not null -- GB
)
create table Responsable (
  CodResponsable char(10) primary key,
  Cedula nvarchar(16) unique,
  Nombre nvarchar(Max),
  ApellidoPaterno nvarchar(max),
  ApellidoMaterno nvarchar(max),
  Celular int,
  Contraseña nvarchar (max) not null
)
create table Control (
  NumControl int primary key,
  CodResponsable char(10) foreign key references Responsable (CodResponsable),
  TipoMantenimiento nvarchar(max) not null,
  Justificacion nvarchar(max) not null,
  FechaReg date default getdate() not null
)
create table Detalle_control(
  IdDetalleControl int primary key,
  NumControl int foreign key references Control (NumControl) not null,
  NumMaquina int foreign key references Maquina (NumMaquina) not null,
  Estado nvarchar (max),
  Desperfecto nvarchar(max)
)
create table Docente (
  CodDocente char(10) primary key,
  Cedula nvarchar(16) unique,
  Nombre nvarchar(Max),
  ApellidoPaterno nvarchar(max),
  ApellidoMaterno nvarchar(max),
  Celular int
)
create table Asignatura (
  CodAsignatura char(10) primary key,
  Titulo nvarchar (max)
)
create table Grupo (
  CodGrupo char(10) primary key,
  Titulo nvarchar (max)
)
create table Turno (
  CodTurno char(10) primary key,
  Titulo nvarchar (max) not null,
  HoraEntrada time,
  HoraSalida time
)
create table Horario (
  NumHorario int primary key,
  CodResponsable char(10) foreign key references Responsable (CodResponsable) not null,
  CodDocente char(10) foreign key references Docente (CodDocente) not null,
  CodGrupo char(10) foreign key references Grupo (CodGrupo) not null,
  CodTurno char(10) foreign key references Turno (CodTurno) not null,
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
create table Blacklist (
  NumBlacklist int primary key,
  CodResponsable char (10) foreign key references Responsable (CodResponsable) not null,
  CodGrupo char(10) foreign key references Grupo (CodGrupo) null,
  Nombres nvarchar (max),
  Causa nvarchar (max),
  Sanción date not null,
  Bloque int not null,
  Vigente bit default 1 not null,
  FechaReg date default getdate()
)
// Cambio Secundario
// Linea 1 Secundario
// Linea 2 Secundario
// Linea 3 Secundario
