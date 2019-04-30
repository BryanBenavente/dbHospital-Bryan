-- DATOS TABLA HISTORIA
INSERT INTO Historia.Historia
	(FECHIST, OBSHIST)
VALUES
	('2000-03-01 00:00:00.000', 'El paciente se atendi� sin problemas'),
	('2002-04-05 00:00:00.000', 'El paciente tiene que llevar controles semanales'),
	('2007-10-04 00:00:00.000', 'El paciente debe tomar los medicamentos indicados en la consulta'),
	('2010-12-10 00:00:00.000', 'El paciente debe ser transferido a Lima');
GO

-- DATOS TABLA HISTORIA_TURNO
INSERT INTO Historia.Turno
	(FECTUR, ESTTUR, OBSTUR)
VALUES
	('1979-11-07 10:30:20.000', 1, 'Primer turno del d�a'),
	('1979-11-07 11:00:20.000', 1, 'Segundo turno del d�a'),
	('1979-11-07 10:30:20.000', 1, 'Tercer turno del d�a'),
	('1979-11-07 00:00:20.000', 1, 'Cuarto turno del d�a'),
	('1979-11-07 13:00:20.000', 1, 'Quinto turno del d�a'),
	('1979-11-07 13:30:20.000', 1, 'Sexto turno del d�a');
GO

-- DATOS TABLA MEDICO
INSERT INTO Medico.Medico
	(NOMMED, APEPATMED, APEMATMED, FECNACMED, SEXMED, DNIMED, TELEFMED, EMAILMED, DOMMED, UBIGEOMED, FECREGMED, OBSERMED)
VALUES
	('Esperanza', 'Ram�rez', 'Tadeo', '1979-07-11', 'F', '43650976', '', 'esperanza@yahoo.com', 'Av. Los Laureles', '150512', '2019-04-30 07:09:07.713', 'M�dico de la ciudad de Lima'),
	('Alberto', 'Ram�rez', 'Pasache', '1976-06-06', 'M', '56782955', '998765123', 'alberto@gmail.com', 'Av. Los Trigales', '150508', '2019-04-30 07:09:16.117', 'M�dico muy trabajador'),
	('Rosa', 'Mart�nez', 'Osorio', '1980-10-05', 'F', '58122656', '998877654', 'rosa@outlook.com', 'Av. Los Laureles', '150510', '2019-04-30 07:09:16.117', 'M�dico muy responsable'),
	('Gloria', 'Zevallos', 'Pachas', '1974-12-25', 'F', '67450988', '998877432', 'gloria@hotmail.com', 'Av. Los Laureles', '150514', '2019-04-30 07:09:16.117', 'M�dico local muy proactivo');
GO

INSERT INTO Medico.Especialidad
	(NOMESP, OBSESP)
VALUES
	('Medicina General', 'Es para atenci�n de enfermedades en general'),
	('Odontolog�a', 'Atenci�n dental'),
	('Pediatr�a', 'Atenci�n para ni�os'),
	('Oftamolog�a', 'Atenci�n de la vista'),
	('Nutrici�n', 'Relacionado con temas de alimentaci�n');
GO

INSERT INTO Medico.Medico_Especialidad
	(CODMED, CODESP, DESESP)
VALUES
	(1, 2, 'Atiende todo el d�a, los d�as L-M-V'),
	(1, 4, 'Atiende todo el d�a, los d�as M-J'),
	(2, 3, 'Atiende todo el d�a, solo los jueves'),
	(2, 4, 'Atenci�n los d�as s�bados de 8am a 1pm'),
	(3, 3, 'Atenci�n Martes y Jueves s�lo por la ma�ana');
GO

INSERT INTO Paciente.Historia_Paciente
	(CODHIST, CODPAC, CODMED)
VALUES
	(1, 1, 3),
	(2, 7, 4),
	(3, 2, 1),
	(4, 3, 2);
GO

INSERT INTO Paciente.Turno_Paciente
	(CODTUR, CODPAC, CODMED)
VALUES
	(2, 1, 4),
	(4, 4, 3);
GO

INSERT INTO Paciente.Turno_Paciente
	(CODTUR, CODPAC, CODMED)
VALUES
	(1, 1, 4),
	(6, 2, 1),
	(5, 3, 3);
GO