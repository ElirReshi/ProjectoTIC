
Use TIC;

/*----------------------------------------------*/
-- Tablas Independientes
create table Turno (
  CodTurno char(1) primary key,
  Titulo nvarchar(max) not null,
  HoraEntrada time,
  HoraSalida time
)
create table Grupo (
  CodGrupo char(5) primary key,
  Nombre nvarchar(max)
)
create table Asignatura (
  CodAsignatura char(10) primary key,
  Nombre nvarchar(max)
)
create table Docente (
  CodDocente char(10) primary key,
  Cedula nvarchar(16) unique,
  Nombre nvarchar(max),
  Apellido nvarchar(max),
  Celular int
)
create table Maquina (
  NumMaquina int primary key,
  Fabricante nvarchar(max) not null,
  Modelo nvarchar(max) not null,
  CPU nvarchar(max) not null,
  RAM int not null, -- GB
  GPU nvarchar(max) not null,
  HDD int not null -- GB
)
/*----------------------------------------------*/
-- Tablas Dependientes
create table Responsable (
  CodResponsable char(10) primary key,
  CodTurno char(1) foreign key references Turno (CodTurno) not null,
  Cedula nvarchar(16) unique,
  Nombre nvarchar(max),
  Apellido nvarchar(max),
  Celular int
)
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
  CodTurno char(1) foreign key references Turno (CodTurno) not null,
  Nombre nvarchar(max),
  Apellido nvarchar(max)
)
create table Examen (
  NumExamen int primary key,
  CodResponsable char(10) foreign key references Responsable (CodResponsable),
  TipoMantenimiento nvarchar(max) not null,
  Justificacion nvarchar(max) not null,
  FechaReg date default getdate() not null
)
create table DetalleExamen (
  IdDetalleExamen int identity(1, 1) primary key,
  NumExamen int foreign key references Examen (NumExamen) not null,
  NumMaquina int foreign key references Maquina (NumMaquina) not null,
  Estado nvarchar(max),
  Desperfecto nvarchar(max)
)
create table Calendario (
  NumCalendario int primary key,
  CodTurno char(1) foreign key references Turno (CodTurno) not null,
  Fecha date
)
create table Apartado (
  NumApartado int primary key,
  NumCalendario int foreign key references Calendario (NumCalendario) not null,
  CodDocente char(10) foreign key references Docente (CodDocente) not null,
  CodGrupo char(5) foreign key references Grupo (CodGrupo) not null,
  Bloque int not null,
  TipoBloque nvarchar(max), -- doble, individual
  FechaReg date default getdate()
)
create table Leccion (
  NumLeccion int identity(1, 1) primary key,
  NumApartado int foreign key references Apartado (NumApartado) not null,
  CodAsignatura char(10) foreign key references Asignatura (CodAsignatura) not null,
  CantHombre int,
  CantMujer int,
  FechaReg date default getdate()
)
