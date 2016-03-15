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
('MAT', 'Matemática'),
('LE', 'Lengua Extranjera'),
('LYL', 'Lengua y Literatura'),
('CYC', 'Convivencia y Civismo'),
('CCSS', 'Ciencias Sociales'),
('CCNN', 'Ciencias Naturales'),
('FIS', 'Fisica'),
('OTV', 'Orientación Técnica y Vocacional'),
('ECA', 'Educación Cultural y Artística'),
('EF', 'Educación Fisica');

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
