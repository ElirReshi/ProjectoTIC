
Use TIC;

/*----------------------------------------------*/
-- Turno
if exists (select count(*) from Turno)
begin
  delete from turno;
end;
execute insert_turno 'M', 'Matutino', '7:00', '12:00';
execute insert_turno 'V', 'Vespertino', '1:00', '5:00';
select * from turno;
/*----------------------------------------------*/
-- Grupo
if exists (select count(*) from Grupo)
begin
  delete from Grupo;
end;
execute insert_grupo '7A', 'Séptimo A';
execute insert_grupo '7B', 'Séptimo B';
execute insert_grupo '7C', 'Séptimo C';
execute insert_grupo '8A', 'Octavo A';
execute insert_grupo '8B', 'Octavo B';
execute insert_grupo '8C', 'Octavo C';
execute insert_grupo '9A', 'Noveno A';
execute insert_grupo '9B', 'Noveno B';
execute insert_grupo '10A', 'Decimo A';
execute insert_grupo '10B', 'Decimo B';
execute insert_grupo '11A', 'Undécimo A';
select * from Grupo;

/*----------------------------------------------*/
-- Asignatura
if exists (select count(*) from Asignatura)
begin
  delete from Asignatura;
end;
execute insert_asignatura 'M', 'Matemática';
execute insert_asignatura 'LYL', 'Lengua y Literatura';
execute insert_asignatura 'CCSS', 'Ciencias Sociales';
execute insert_asignatura 'CCNN', 'Ciencias Naturales';
execute insert_asignatura 'F', 'Fisica';
execute insert_asignatura 'OTV', 'Orientación Técnica y Vocacional';
execute insert_asignatura 'LE', 'Lengua Extranjera';
execute insert_asignatura 'EF', 'Educación Fisica';
execute insert_asignatura 'CYC', 'Convivencia y Civismo';
execute insert_asignatura 'ECA', 'Educación Cultural y Artística';
select * from Asignatura;
/*----------------------------------------------*/
-- Docente
if exists (select count(*) from Docente)
begin
  delete from Docente;
end;
execute insert_docente 'Benigno', '001-070419-8109K', 'Benigno', 'Darío', 766557878;
execute insert_docente 'Bertha', '003-090119-6701L', 'Bertha', 'Sotelo', 899683683;
execute insert_docente 'Bonilla', '008-101219-520OA', 'Bonilla', 'Valenzuela', 854300081;
execute insert_docente 'Carranza', '002-310519-600PW', 'Carranza', 'Lepelm', 799067550;
execute insert_docente 'Diego', '005-050618-980DE', 'Diego', 'Lorca', 899592007;
execute insert_docente 'Elena', '001-060619-730ER', 'Elena', 'Lergn', 899909878;
execute insert_docente 'Julieta', '002-060319-270RT', 'Julieta', 'Marquez', 799773296;
execute insert_docente 'Marvin', '002-090719-910SY', 'Marvin', 'Kreigh', 899907674;
execute insert_docente 'Roa', '001-090919-850SF', 'Roa', 'Marquez', 761121085;
execute insert_docente 'Verónica', '001-010119-920MQ', 'Verónica', 'Lepelm', 877908230;
execute insert_docente 'Willian', '001-046729-120MQ', 'Willian', 'Sotelo', 842647717;
select * from Docente;
