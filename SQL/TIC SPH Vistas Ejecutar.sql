
use TIC;

/*----------------------------------------------*/

if (OBJECT_ID('list_turno') is not null)
  drop view list_turno;
  GO
create view list_turno as
  select CodTurno as 'Código', Titulo as 'Turno', HoraEntrada as 'Hora Entrada', HoraSalida as 'Hora Salida'
  from Turno;
  go

if (OBJECT_ID('list_grupo') is not null)
  drop view list_grupo;
  GO
create view list_grupo as
  select CodGrupo as 'Código', Nombre as 'Grupo'
  from Grupo;
  go

if (OBJECT_ID('list_asignatura') is not null)
  drop view list_asignatura;
  GO
create view list_asignatura as
  select CodAsignatura as 'Código', Nombre as 'Asignatura'
  from Asignatura;
  go

if (OBJECT_ID('list_docente') is not null)
  drop view list_docente;
  GO
create view list_docente as
  select CodDocente as 'Código', Cedula as 'Cédula', Nombre as 'Nombre' , Apellido as 'Apellido' , Celular as 'Celular'
  from Docente;
  go

if (OBJECT_ID('list_maquina') is not null)
  drop view list_maquina;
  GO
create view list_maquina as
  select NumMaquina as 'ID', Fabricante as 'Fábrica', Modelo as 'Módelo', CPU as 'CPU', RAM as 'RAM', GPU as 'GPU', HDD as 'HDD'
  from Maquina;
  go

if (OBJECT_ID('list_responsable') is not null)
  drop view list_responsable;
  GO
create view list_responsable as
  select CodResponsable as 'Código', CodTurno as 'Turno', Cedula as 'Cédula', Nombre as 'Nombre', Apellido as 'Apellido' , Celular as 'Celular'
  from Responsable;
  go

if (OBJECT_ID('list_blacklist') is not null)
  drop view list_blacklist;
  GO
create view list_blacklist as
  select NumBlacklist as 'ID', CodResponsable as 'Responsable', Causa as 'Causa', Sanción as 'Sanción', Bloque as 'Bloque', FechaReg as 'Fecha Registro'
  from Blacklist;
  go

if (OBJECT_ID('list_detalleblacklist') is not null)
  drop view list_detalleblacklist;
  GO
create view list_detalleblacklist as
  select IdDetalleBlacklist as 'ID', NumBlacklist as 'BlackList', CodGrupo as 'Grupo', CodTurno as 'Turno', Nombre as 'Nombre', Apellido as 'Apellido'
  from DetalleBlacklist;
  go

if (OBJECT_ID('list_examen') is not null)
  drop view list_examen;
  GO
create view list_examen as
  select NumExamen as 'ID', CodResponsable as 'Responsable', TipoMantenimiento as 'Tipo', Justificacion as 'Justificación', FechaReg as 'Fecha Registro'
  from Examen;
  go

if (OBJECT_ID('list_detalleexamen') is not null)
  drop view list_detalleexamen;
  GO
create view list_detalleexamen as
  select IdDetalleExamen as 'ID', NumExamen as 'Examen', NumMaquina as 'Nº Máquina', Estado as 'Estado', Desperfecto as 'Desperfecto'
  from DetalleExamen;
  go

if (OBJECT_ID('list_calendario') is not null)
  drop view list_calendario;
  GO
create view list_calendario as
  select NumCalendario as 'ID', CodTurno as 'Turno', Fecha
  from Calendario;
  go

if (OBJECT_ID('list_apartado') is not null)
  drop view list_apartado;
  GO
create view list_apartado as
  select NumApartado as 'ID', NumCalendario as 'Calendario', CodDocente as 'Docente', CodGrupo as 'Grupo', Bloque, TipoBloque as 'Tipo', FechaReg as 'Fecha Registro'
  from Apartado;
  go

if (OBJECT_ID('list_leccion') is not null)
  drop view list_leccion;
  GO
create view list_leccion as
  select NumLeccion as 'ID', NumApartado as 'Apartado', CodAsignatura as 'Asignatura', CantHombre as 'Varones', CantMujer as 'Mujeres', FechaReg as 'Fecha Registro'
  from Leccion;
  go

/*----------------------------------------------*/

select * from list_turno;
select * from list_grupo;
select * from list_asignatura;
select * from list_docente;
select * from list_maquina;
select * from list_responsable;
select * from list_blacklist;
select * from list_detalleblacklist;
select * from list_examen;
select * from list_detalleexamen;
select * from list_calendario;
select * from list_apartado;
select * from list_leccion;

/*----------------------------------------------*/
