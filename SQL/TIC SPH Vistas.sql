
use TIC;

create view list_turno as
  begin
    select CodTurno as 'Código', Titulo as 'Turno', HoraEntrada as 'Hora Entrada', HoraSalida as 'Hora Salida'
    from Turno
  end;

create view list_grupo as
  begin
  select CodGrupo as 'Código', Nombre as 'Grupo'
  from Grupo
  end;

create view list_asignatura as
  begin
  select CodAsignatura as 'Código', Nombre as 'Asignatura'
  from Asignatura
  end;

create view list_docente as
  begin
  select CodDocente as 'Código', Cedula as 'Cédula', Nombre as 'Nombre' , Apellido as 'Apellido' , Celular as 'Celular'
  from Doente
  end;

create view list_maquina as
  begin
  select NumMaquina as 'Nº Máquina', Fabricante as 'Fábrica', Modelo as 'Módelo', CPU as 'CPU', RAM as 'RAM', GPU as 'GPU', HDD as 'HDD'
  from Maquina
  end;

create view list_responsable as
  begin
  select CodResponsable as 'Código', CodTurno as 'Turno', Cédula as 'Cédula', Nombre as 'Nombre' Apellido as 'Apellido' , Celular as 'Celular'
  from Responsable
  end;

create view list_blacklist as
  begin
  select NumBlacklist as 'ID', CodResponsable as 'Responsable', Causa as 'Causa', Sanción as 'Sanción', Bloque as 'Bloque', FechaReg as 'Fecha Registro'
  from Blacklist
  end;

create view list_detalleblacklist as
  begin
  select IdDetalleBlacklist as 'ID', NumBlacklist as 'BlackList', CodGrupo as 'Grupo', CodTurno as 'Turno', Nombre as 'Nombre', Apellido as 'Apellido'
  from DetalleBlacklist
  end;

create view list_examen as
  begin
  select NumExamen as 'ID', CodResponsable as 'Responsable', TipoMantenimiento as 'Tipo', Justificacion as 'Justificación', FechaReg as 'Fecha Registro'
  from Examen
  end;

create view list_detalleexamen as
  begin
  select IdDetalleBlacklist as 'ID', NumExamen as 'Examen', NumMaquina as 'Nº Máquina', Estado as 'Estado', Desperfecto as 'Desperfecto'
  from DetalleExamen
  end;

create view list_calendario as
  begin
  select NumCalendario as 'ID', CodTurno as 'Turno', Fecha
  from Calendario
  end;

create view list_apartado as
  begin
  select NumApartado as 'ID', NumCalendario as 'Calendario', CodDocente as 'Docente', CodGrupo as 'Grupo', Bloque, TipoBloque as 'Tipo', FechaReg as 'Fecha Registro'
  from Apartado
  end;

create view list_leccion as
  begin
  select NumLeccion as 'ID', NumApartado as 'Apartado', CodAsignatura as 'Asignatura', CantHombre as 'Varones', CantMujer as 'Mujeres', FechaReg as 'Fecha Registro'
  from Leccion
  end;

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
