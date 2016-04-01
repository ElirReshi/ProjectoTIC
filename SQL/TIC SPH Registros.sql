
Use TIC;

/*----------------------------------------------*/
-- Turno
execute insert_turno 'M', 'Matutino', '7:00', '12:00';
execute insert_turno 'V', 'Vespertino', '1:00', '5:00';
select * from turno;
/*----------------------------------------------*/
-- Grupo
execute insert_grupo '7A', 'Séptimo A';
execute insert_grupo '7B', 'Séptimo B';
execute insert_grupo '7C', 'Séptimo C';
execute insert_grupo '8A', 'Octavo A';
execute insert_grupo '8B', 'Octavo B';
execute insert_grupo '9A', 'Noveno A';
execute insert_grupo '9B', 'Noveno B';
execute insert_grupo '10A', 'Decimo A';
execute insert_grupo '10B', 'Decimo B';
execute insert_grupo '11A', 'Undécimo A';
select * from Grupo;
/*----------------------------------------------*/
-- Asignatura
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
execute insert_docente 'Sander', '001-070419-8109K', 'Sander Alberto', 'Pacheco Hernández', 766557878;
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
/*----------------------------------------------*/
-- Maquina
execute insert_maquina 1, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 2, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 3, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 4, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 5, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 6, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 7, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 8, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 9, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 10, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 11, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 12, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 13, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 14, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 15, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 16, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 17, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 18, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 19, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
execute insert_maquina 20, 'ASRock', 'H61M-DGS', 'I5-3470', 4, 'GeForce 8400GS', 1024;
select * from Maquina;
/*----------------------------------------------*/
-- Responsable
execute insert_responsable 'Sander', 'M', '001-070419-8109K', 'Sander Alberto', 'Pacheco', 766557878;
execute insert_responsable 'Mario', 'V', '003-090119-6701L', 'Mario Alberto', 'Pacheco', 899683683;
select * from Responsable;
/*----------------------------------------------*/
-- Blacklist
execute insert_blacklist 1, 'Sander', 'Tiro agua sobre un teclado', '2016-04-1', 5;
select * from Blacklist;
/*----------------------------------------------*/
-- DetalleBlacklist
execute insert_detalleblacklist 1, '11A', 'V', 'Braulio', 'Pacheco';
select * from DetalleBlacklist;
/*----------------------------------------------*/
-- Examen
execute insert_examen 1, 'Sander', 'Preventivo', 'Planeado';
select * from Examen;
/*----------------------------------------------*/
-- DetalleExamen
execute insert_detalleexamen 1, 7, 'Mal', 'Pines de la CPU dañados';
select * from DetalleExamen;
/*----------------------------------------------*/
-- Calendario
-- Semana 1
execute insert_calendario 1, 'M', '2016-04-18';
execute insert_calendario 2, 'M', '2016-04-19';
execute insert_calendario 3, 'M', '2016-04-20';
execute insert_calendario 4, 'M', '2016-04-21';
execute insert_calendario 5, 'M', '2016-04-22';
-- Semana 2
execute insert_calendario 6, 'M', '2016-04-25';
execute insert_calendario 7, 'M', '2016-04-26';
execute insert_calendario 8, 'M', '2016-04-27';
execute insert_calendario 9, 'M', '2016-04-28';
execute insert_calendario 10, 'M', '2016-04-29';
-- Semana 3
execute insert_calendario 11, 'M', '2016-05-2';
execute insert_calendario 12, 'M', '2016-05-3';
execute insert_calendario 13, 'M', '2016-05-4';
execute insert_calendario 14, 'M', '2016-05-5';
execute insert_calendario 15, 'M', '2016-05-6';
select * from Calendario
/*----------------------------------------------*/
-- Apartado
-- Semana 1
execute insert_apartado 1, 1, 'M', 'Julieta', '7C', 1, 'doble';
execute insert_apartado 2, 1, 'M', 'Diego', '11A', 3, 'doble';
execute insert_apartado 3, 1, 'M', 'Sander', '7B', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 4, 2, 'M', 'Diego', '7B', 1, 'doble';
execute insert_apartado 5, 2, 'M', 'Benigno', '10B', 3, 'doble';
execute insert_apartado 6, 2, 'M', 'Elena', '9A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 7, 3, 'M', 'Julieta', '7C', 1, 'doble';
execute insert_apartado 8, 3, 'M', 'William', '11A', 3, 'doble';
execute insert_apartado 9, 3, 'M', 'Julieta', '7A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 10, 4, 'M', 'Benigno', '10B', 1, 'doble';
execute insert_apartado 11, 4, 'M', 'Elena', '8A', 3, 'doble';
execute insert_apartado 12, 4, 'M', 'William', '10A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 13, 5, 'M', 'Julieta', '7A', 1, 'doble';
execute insert_apartado 14, 5, 'M', 'Marvin', '7B', 3, 'doble';
execute insert_apartado 15, 5, 'M', 'Carranza', '10B', 6, 'doble';
/*----------------------------------------------*/
-- Semana 2
execute insert_apartado 16, 6, 'M', 'Julieta', '7C', 1, 'doble';
execute insert_apartado 17, 6, 'M', 'Diego', '11A', 3, 'doble';
execute insert_apartado 18, 6, 'M', 'Sander', '7B', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 19, 7, 'M', 'Diego', '7B', 1, 'doble';
execute insert_apartado 20, 7, 'M', 'Diego', '11A', 3, 'doble';
execute insert_apartado 21, 7, 'M', 'Elena', '9A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 22, 8, 'M', 'Elena', '9A', 1, 'doble';
execute insert_apartado 23, 8, 'M', 'Elena', '10A', 3, 'doble';
execute insert_apartado 24, 8, 'M', 'Elena', '8A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 25, 9, 'M', 'Julieta', '7B', 1, 'doble';
execute insert_apartado 26, 9, 'M', 'Marvin', '11A', 3, 'doble';
execute insert_apartado 27, 9, 'M', 'Julieta', '8A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 28, 10, 'M', 'Bonilla', '10B', 1, 'doble';
execute insert_apartado 29, 10, 'M', 'Bonilla', '10A', 3, 'doble';
execute insert_apartado 30, 10, 'M', 'Bonilla', '11A', 6, 'doble';
/*----------------------------------------------*/
-- Semana 3
execute insert_apartado 31, 11, 'M', 'Julieta', '7C', 1, 'doble';
execute insert_apartado 32, 11, 'M', 'William', '10B', 3, 'doble';
execute insert_apartado 33, 11, 'M', 'Sander', '7B', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 34, 12, 'M', 'Bonilla', '9A', 1, 'doble';
execute insert_apartado 35, 12, 'M', 'Benigno', '10B', 3, 'doble';
execute insert_apartado 36, 12, 'M', 'Carranza', '11A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 37, 13, 'M', 'Elena', '9A', 1, 'doble';
execute insert_apartado 38, 13, 'M', 'William', '11A', 3, 'doble';
execute insert_apartado 39, 13, 'M', 'Bertha', '7B', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 40, 14, 'M', 'Diego', '9B', 1, 'doble';
execute insert_apartado 41, 14, 'M', 'Elena', '8A', 3, 'doble';
execute insert_apartado 42, 14, 'M', 'Julieta', '8A', 6, 'doble';
/*----------------------------------------------*/
execute insert_apartado 43, 15, 'M', 'Carranza', '9A', 1, 'doble';
execute insert_apartado 44, 15, 'M', 'Carranza', '9B', 3, 'doble';
execute insert_apartado 45, 15, 'M', 'Carranza', '10B', 6, 'doble';
/*----------------------------------------------*/
select * from Apartado
/*----------------------------------------------*/
-- Leccion
-- Semana 1
execute insert_leccion 1, 'LYL', 25, 19;
execute insert_leccion 2, 'LE', 8, 11;
execute insert_leccion 3, 'M', 7, 12;
/*----------------------------------------------*/
execute insert_leccion 4, 'LE', 11, 23;
execute insert_leccion 5, 'F', 11, 18;
execute insert_leccion 6, 'CCSS', 8, 8;
/*----------------------------------------------*/
execute insert_leccion 7, 'LYL', 24, 15;
execute insert_leccion 8, 'CCNN', 9, 21;
execute insert_leccion 9, 'LYL', 16, 22;
/*----------------------------------------------*/
execute insert_leccion 10, 'F', 25, 13;
execute insert_leccion 11, 'CCSS', 13, 18;
execute insert_leccion 12, 'CCNN', 6, 10;
/*----------------------------------------------*/
execute insert_leccion 13, 'CCSS', 19, 21;
execute insert_leccion 14, 'ECA', 18, 6;
execute insert_leccion 15, 'M', 24, 14;
/*----------------------------------------------*/
-- Semana 2
execute insert_leccion 16, 'LYL', 23, 22;
execute insert_leccion 17, 'LE', 5, 6;
execute insert_leccion 18, 'M', 25, 23;
/*----------------------------------------------*/
execute insert_leccion 19, 'LE', 25, 24;
execute insert_leccion 20, 'LE', 8, 15;
execute insert_leccion 21, 'CCSS', 21, 11;
/*----------------------------------------------*/
execute insert_leccion 22, 'CCSS', 5, 25;
execute insert_leccion 23, 'CCSS', 6, 17;
execute insert_leccion 24, 'CCSS', 14, 24;
/*----------------------------------------------*/
execute insert_leccion 25, 'CCSS', 10, 21;
execute insert_leccion 26, 'OTV', 21, 24;
execute insert_leccion 27, 'LYL', 16, 17;
/*----------------------------------------------*/
execute insert_leccion 28, 'CYC', 11, 14;
execute insert_leccion 29, 'CYC', 22, 15;
execute insert_leccion 30, 'CYC', 10, 12;
/*----------------------------------------------*/
-- Semana 3
execute insert_leccion 31, 'LYL', 13, 20;
execute insert_leccion 32, 'CCNN', 23, 17;
execute insert_leccion 33, 'M', 9, 22;
/*----------------------------------------------*/
execute insert_leccion 34, 'CYC', 8, 5;
execute insert_leccion 35, 'F', 20, 7;
execute insert_leccion 36, 'M', 6, 15;
/*----------------------------------------------*/
execute insert_leccion 37, 'CCSS', 9, 6;
execute insert_leccion 38, 'CCNN', 8, 8;
execute insert_leccion 39, 'CCNN', 14, 24;
/*----------------------------------------------*/
execute insert_leccion 40, 'LE', 16, 6;
execute insert_leccion 41, 'CCSS', 20, 23;
execute insert_leccion 42, 'LYL', 10, 6;
/*----------------------------------------------*/
execute insert_leccion 43, 'M', 20, 8;
execute insert_leccion 44, 'M', 9, 9;
execute insert_leccion 45, 'M', 18, 22;
/*----------------------------------------------*/
select * from Leccion
