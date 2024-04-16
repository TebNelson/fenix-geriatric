# MySQL-Front Dump 2.4
#
# Host: localhost   Database: fenix
#--------------------------------------------------------
# Server version 3.23.51-nt

USE fenix;


#
# Table structure for table 'actividades'
#

DROP TABLE IF EXISTS actividades;
CREATE TABLE `actividades` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `fecha_actividad` date NOT NULL default '0000-00-00',
  `horario` varchar(15) NOT NULL default '',
  `actividad` varchar(255) NOT NULL default '',
  `lugar` varchar(255) NOT NULL default '',
  `organizado_por` varchar(100) default NULL,
  `concurrentes` varchar(255) default NULL,
  `preparación` varchar(255) default NULL,
  `acompañantes` varchar(255) default NULL,
  `fecha_regreso` date default NULL,
  `hora_regreso` varchar(15) default NULL,
  `transporte` varchar(100) default NULL,
  `costo` varchar(255) default NULL,
  `observaciones` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fecha` (`fecha_actividad`)
) TYPE=MyISAM COMMENT='Cronogramas de actividades';



#
# Dumping data for table 'actividades'
#
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("1", "2006-02-03", "11 mañana", "Excursión por la ciudad", "Lago S. Roque", "Laborterapia", "Castro, Bush  Quiroga y Bustamante.", "Preparar refrigerio", "Recreación", "0000-00-00", "17:00", "Privado: Sr. Charamonte", "$140", "Se suspende por mal tiempo.");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("2", "2006-03-10", "15:30 hs", "Auditoría PAMI programada", "Residencia", "PAMI cba.", "Personal administrativo y directivos.", "Protocolo de auditoría", "", "0000-00-00", "", "", "", "");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("3", "2006-03-14", "9", "Cobro jubilación Banco Provincia", "Banco Provincia Suc Cosquín", "Administración", "Castro y Bush", "", "Administración", "0000-00-00", "", "Remises &quot;Cordial&quot;", "$6 c/u", "");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("4", "2006-03-04", "22:30", "Reunión con familiares paciente Ochoa", "residencia", "gerencia", "familiares, dr. Vidal", "Consultorio", "", "0000-00-00", "", "", "", "");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("6", "2006-03-09", "15:30 hs", "Reunión con familiares paciente Fernandez", "mmnb", "mmn", "", "", "", "0000-00-00", "", "", "", "");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("7", "2006-02-11", "17:30", "Reunión con familiares paciente Juarez", "fdsafdsaf", "dsafdsa", "fdsfsa", "dsfdsf", "sadfsdf", "0000-00-00", "sadfdsaf", "dsafs", "sdfdsf", "dsaf");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("8", "2006-03-01", "11", "Auditoría programada", "Carlos Paz", "Recreación", "Grupo A", "Acicalamiento", "Pesonal recreación", "0000-00-00", "14", "Particular", "$160", "");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("9", "2006-03-03", "17", "viaje a Carlos Paz", "villa carlos paz", "Laborterapia", "sector A", "llevar merienda", "laborterapistas", "0000-00-00", "19", "Privado: Sr. Charamonte", "$15 por paciente", "alguna obsser");
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("10", "2006-03-04", "15:30 hs", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("11", "2006-03-05", "11 mañana", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("12", "2006-03-05", "15:30 hs", "Auditoría PAMI programada", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("13", "2006-03-05", "11 mañana", "Cobro jubilación Banco Provincia", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("14", "2006-03-06", "15:30 hs", "Reunión con familiares paciente Juarez", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("15", "2006-03-06", "11 mañana", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("16", "2006-03-07", "11 mañana", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("17", "2006-03-07", "15:30 hs", "Auditoría PAMI programada", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("18", "2006-03-07", "17:30", "Reunión con familiares paciente Montoya", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("19", "2006-03-08", "15:30 hs", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("20", "2006-03-08", "17:30", "Cobro jubilación Banco Provincia", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("21", "2006-03-09", "15:30 hs", "Reunión con familiares paciente Perez", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("22", "2006-03-10", "17:30", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("23", "2006-03-11", "15:30 hs", "Reunión con familiares paciente Juarez", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("24", "2006-03-11", "17:30", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("25", "2006-03-12", "15:30 hs", "Auditoría PAMI programada", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("26", "2006-03-12", "17:30", "Reunión con familiares paciente Marquetti", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("27", "2006-03-12", "15:30 hs", "Auditoría PAMI programada", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("28", "2006-03-13", "17:30", "Excursión por la ciudad", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("29", "2006-03-13", "15:30 hs", "Reunión con familiares paciente Juarez", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("30", "2006-03-13", "17:30", "Auditoría PAMI programada", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("31", "2006-03-14", "15:30 hs", "Cobro jubilación Banco Provincia", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO actividades (id, fecha_actividad, horario, actividad, lugar, organizado_por, concurrentes, preparación, acompañantes, fecha_regreso, hora_regreso, transporte, costo, observaciones) VALUES("32", "2006-03-14", "17:30", "Auditoría PAMI programada", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


#
# Table structure for table 'conceptos_ctas_ctes'
#

DROP TABLE IF EXISTS conceptos_ctas_ctes;
CREATE TABLE `conceptos_ctas_ctes` (
  `debito_credito` enum('débito','crédito') NOT NULL default 'débito',
  `concepto` varchar(60) NOT NULL default '',
  PRIMARY KEY  (`debito_credito`,`concepto`)
) TYPE=MyISAM COMMENT='Conceptos de débitos y créditos.';



#
# Dumping data for table 'conceptos_ctas_ctes'
#
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Cápita");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Cigarrillos");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Descartables");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Manicura");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Medicación");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Pañales");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Peluquería");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Provisión vestimenta");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("débito", "Transporte");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Bonificación");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Cheque diferido");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Depósito bancario");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Depósito en custodia");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Egreso anticipado");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Entrega materiales");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Giro postal");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Materiales recibidos");
INSERT INTO conceptos_ctas_ctes (debito_credito, concepto) VALUES("crédito", "Pago contado");


#
# Table structure for table 'cuentas_corrientes'
#

DROP TABLE IF EXISTS cuentas_corrientes;
CREATE TABLE `cuentas_corrientes` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `comprobante` mediumint(8) unsigned NOT NULL default '0',
  `debito_credito` enum('débito','crédito') NOT NULL default 'débito',
  `concepto` varchar(60) NOT NULL default '',
  `importe` float(5,2) NOT NULL default '0.00',
  `saldo` float(5,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`),
  KEY `idx_hc` (`hc`),
  KEY `idx_fecha` (`fecha`),
  KEY `idx_concepto` (`concepto`(5))
) TYPE=MyISAM COMMENT='Importes conceptos de débitos y créditos de residentes';



#
# Dumping data for table 'cuentas_corrientes'
#
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("5", "2", "2005-12-18", "141", "débito", "Cápita", "1200.00", "700.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("4", "2", "2006-01-18", "2252", "crédito", "Depósito en custodia", "500.00", "-500.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("6", "2", "2006-01-01", "564", "débito", "Peluquería", "7.00", "707.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("7", "2", "2006-02-01", "1254", "débito", "Cápita", "15.00", "722.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("8", "2", "2006-02-01", "4547", "crédito", "Pago contado", "500.50", "221.50");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("9", "2", "2006-02-01", "415", "crédito", "Pago contado", "150.75", "70.75");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("10", "2", "2006-02-01", "58585", "crédito", "Depósito en custodia", "50.00", "20.75");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("11", "2", "2006-02-01", "4525", "crédito", "Depósito en custodia", "100.00", "-79.25");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("12", "8", "2006-02-02", "45454", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("13", "4", "2006-02-02", "25454", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("14", "4", "2006-02-02", "5654", "crédito", "Pago contado", "500.00", "700.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("15", "3", "2006-02-03", "5642", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("16", "3", "2006-02-03", "56587", "crédito", "Pago contado", "1200.00", "0.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("17", "3", "2006-02-03", "65235", "crédito", "Depósito en custodia", "600.00", "-600.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("18", "2", "2006-02-08", "5454", "débito", "Medicación", "150.00", "70.75");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("19", "6", "2006-02-08", "545", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("20", "8", "2006-02-09", "7457", "crédito", "Cheque diferido", "500.00", "700.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("21", "8", "2006-02-09", "254", "crédito", "Depósito en custodia", "2000.00", "-1300.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("22", "10", "2006-02-09", "54587", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("23", "5", "2006-02-09", "452", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("24", "12", "2006-02-09", "456", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("25", "13", "2006-02-09", "45", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("26", "9", "2006-02-09", "1245", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("27", "11", "2006-02-10", "5878", "débito", "Cápita", "1200.00", "1200.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("28", "5", "2006-02-11", "45412", "débito", "Medicación", "50.00", "1250.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("29", "5", "2006-02-11", "5421", "crédito", "Pago contado", "1000.00", "250.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("30", "5", "2006-02-11", "42424", "débito", "Provisión vestimenta", "120.00", "370.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("31", "14", "2006-02-13", "5854", "débito", "Medicación", "30.00", "30.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("32", "14", "2006-02-13", "5687", "débito", "Cápita", "1200.00", "1230.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("33", "14", "2006-02-13", "565", "crédito", "Depósito bancario", "500.00", "730.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("34", "14", "2006-03-01", "5421", "débito", "Medicación", "30.00", "760.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("35", "14", "2006-03-01", "54587", "crédito", "Pago contado", "500.00", "260.00");
INSERT INTO cuentas_corrientes (id, hc, fecha, comprobante, debito_credito, concepto, importe, saldo) VALUES("36", "14", "2006-03-01", "5654", "crédito", "Depósito en custodia", "300.00", "-40.00");


#
# Table structure for table 'epicrisis'
#

DROP TABLE IF EXISTS epicrisis;
CREATE TABLE `epicrisis` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `egreso_fecha` date NOT NULL default '0000-00-00',
  `síntesis_internación` text,
  `motivo` enum('Fallecimiento','Traslado','Derivación Segundo nivel','Retirado por familiar') NOT NULL default 'Fallecimiento',
  `observaciones` varchar(255) default NULL,
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `hc` (`hc`),
  KEY `fecha` (`egreso_fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'epicrisis'
#
INSERT INTO epicrisis (id, hc, egreso_fecha, síntesis_internación, motivo, observaciones, profesional_actuante) VALUES("1", "7", "2006-02-05", "Esta es la síntesis de internación del paciente.", "Traslado", "Observaciones sobre la internación y epicrisis del paciente.", "Dr. Porcel Miguel");
INSERT INTO epicrisis (id, hc, egreso_fecha, síntesis_internación, motivo, observaciones, profesional_actuante) VALUES("2", "3", "2006-01-30", "Esta es la síntesis de internación del paciente.", "Fallecimiento", "Observaciones sobre la internación y epicrisis del paciente.", "Dr. Porcel Miguel");
INSERT INTO epicrisis (id, hc, egreso_fecha, síntesis_internación, motivo, observaciones, profesional_actuante) VALUES("3", "2", "2006-02-10", "safdsafsa dj", "Derivación Segundo nivel", "observaciones", "Dr. Porcel Miguel");


#
# Table structure for table 'evoluciones'
#

DROP TABLE IF EXISTS evoluciones;
CREATE TABLE `evoluciones` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `área` enum('Clínica Médica','Psiquiatría','Trabajo Social','Nutrición','Kinesiologia','Supervisión Enfermería','Enfermería') NOT NULL default 'Clínica Médica',
  `evolución` text NOT NULL,
  `observaciones` text,
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'evoluciones'
#
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("1", "3", "2006-01-31", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("2", "3", "2006-02-02", "Trabajo Social", "Evolución correspondiente al mes de febrero de 2006 del paciente Rojas. \r\nSe presenta al exámen relatando dolores estomacales, dificultad de evacuación y falta de apetito. Se encuentra medicado con pastillas antiacidas, al 50%.", "Se recomienda una nueva observación en quince días. Posible úlcera gástrica. Observar dieta.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("3", "9", "2005-02-04", "Clínica Médica", "Evolución del Paciente Robledo correspondiente al mes de febrero de 2006. Paciente clínicamente estable, sin modificación en l as prescripciones medicamentosas.", "Sin observaciones actuales.", "Dr. Mercado Santiago");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("4", "4", "2006-02-05", "Clínica Médica", "Evolución Clínica del paciente Porcetto: cuadro clínico sin novedad a la evolución del mes anterior.", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("5", "4", "2006-02-05", "Psiquiatría", "Evolución psiquiátrica paciente Porcetto estable, sin modificaciones medicamentosas.", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Quiroga Walter");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("6", "8", "2006-02-05", "Nutrición", "Evolución paciente Castro área Nutrición. Sin cambios en la alimentación y dieta general.", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Lic. Ortega Silvia");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("7", "7", "2006-02-06", "Supervisión Enfermería", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Castañeda Angela");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("8", "7", "2006-02-07", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("9", "7", "2006-02-07", "Kinesiologia", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("10", "7", "2006-02-07", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("11", "6", "2006-02-08", "Psiquiatría", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Quiroga Walter");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("12", "8", "2006-02-08", "Psiquiatría", "Paciente cognitivamente estacionario, continuando con sus funciones conservadas. Tímica y conductualmente estabilizado, tranquilo, sin ansiedad patológica. Sueño conservado.", "Sin modificaciones en las órdenes médicas", "Dr. Quiroga Walter");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("13", "6", "2006-02-08", "Psiquiatría", "Paciente que se mantiene cognitivamente bien, sin déficit. Tímica y conductualmente estable, tranquilo, de buen humor, adaptado al medio y a su condición médica.", "Sin cambios en las órdenes médicas.", "Dr. Quiroga Walter");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("14", "15", "2006-02-08", "Clínica Médica", "Pte.con buena evolucion y respuesta, en general, asintomatico respiratorio, mantiene buena ventilacion pulmonar, compensado cv., con signso vitales estables y controlados, afebril, sin lesiones sobreagregadas de evolucion complicada por decubito obligado prolongado, diuresis sp., se practico EE y cambio de sonda vesicual. Alta medica mejorado de su cuadro respiratorio alto, sin aparente complicaciones de", "Se mantiene esquema habitual de prescripciones y cuidados integrales", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("15", "12", "2006-02-08", "Clínica Médica", "Paciente cognitivamente lúcido, orientado y coherente. Con capital ideatorio rico. Tímicamente continúa estabilizado, sin alteraciones. Descanso nocturno sin particularidades.", "Sin modificaciones terapéuticas.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("16", "12", "2006-02-08", "Clínica Médica", "Pte.con excelente respuesta al planteo terapeutico, buena tolerancia digestiva, mantiene leve y escasa tos y coriza, afebril, roncus difusos y rales posturales, leves y habituales, con buena mecanica ventilatoria, compensado hemodinamicamente, con signos vitales estables y controlados, sin cambios ni variantes en el resto del examen general.Idx. sindrome gripal, bronquitis aguda en epoc, de riesgo y con compromiso inmune secundario, en periodo de estado, con buena evolucion y respuesta terapeutica.", "Se mantiene hasta cumplimentar esquema de atb., control de foco y complicaciones aleatorias, sin cambios en el resto de indicaciones y cuidados.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("17", "14", "2006-02-08", "Clínica Médica", "Pte.con buena evolucion y respuesta, escasa tos y coriza resituadl, afebril, roncus difusos y rales posturales, leves pero con buena mecanica ventilatoria habitual, resto del examen sin cambios ni variantes. Idx. resfriado comun laringobronquitis ag. en periodo de estado, con buena evolucion y respuesta", "Se matiene amoxicilina por ciclo de 10 dias, para control de foco en paciente de riesgo bronquiectasicos y de multiples focos, vere evolucion y respuesta", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("18", "13", "2006-02-08", "Clínica Médica", "Pte. estacionario, asintomatico al examen general, compensado cv., con signos vitales estables y controlados, buena tolerancia al cambio de decubito, lesiones en hombro y region sacra lateral sin variantes de progresion isquemica necrotica, diuresis y catarsis conservadas", "Sin cambios en su asistencia integral, cura plana y cambio de sonda por talla vesical, segun protocolo", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("19", "9", "2006-02-08", "Trabajo Social", "Pte asintomatica en su evolucion y al examen general, oma., y digestivo, buena evolucion de su aparente tendinitis calcanea, sin disbasia de objetivacion, al resto del examen no hay signos de flogosis, ni linfedema, aunque leves y habituales como secundarismos a flebectasia cronica, no ha habido cambios con el uso de calzados alternativos, tampoco ha hecho caso a las indicaciones del uso de plantillas ergonomicas acordes de siliconas, no lo hizo., en el resto del examen general, signos vitales estables y controlados, mantiene buena ingesta, sin manifestaciones de dificultades o disfagia al respecto, y catarsis adecuada", "Mantuvo IC con traumatologia Informe del Dr Pablo de Alzaa, informe de fecha 13/01/06, nº 5099: pte que consulta por antecedente de inflamacion external de pies y dolor, de aprox 20 dias se momento movilidad completa,sin dolor ni edemas rx sp. sic...Conclusion, tendinitis calcanea evolucionada mejorada sin secuela, vs. ectica....Sin cambios en las indicaciones y cuidados al respecto", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("20", "9", "2006-02-08", "Psiquiatría", "Pte que mantiene leve disbasia, y persistencia de algia plantar, de predominio derecho, dibasia antialgica compesadora, al examen no hay signos de flogosis, si leve linfedema, no ha habido cambios con el uso de calzados alternativos, tampoco ha hecho caso a las indicaciones del uso de plantillas ergonomicas acordes de siliconas, no lo hizo. Idx. Tendinitis calcanea de apoyo. Sin cambios en el resto del examen general, signos vitales estables y controlados.", "Se recibe rx. de ambos pies, sin apoyo, de fecha del 28/12/05, signos indirectos de osteoartrosis osteopenia, no se advierte lesion calcanea, del tipo espolon, solicito ic con oyt. para control.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("21", "5", "2006-02-08", "Clínica Médica", "Pte.estacionaria y de momento asintomatica digestiva, disfagia que de momento no aduce ni manifiesta al examen ni interrogatorio, su registro ponderal de enero 55.9kg y el ultimo de noviembre pasado de 78kg, en franco recupero de su peso habitual, a la observacion, se mantiene selectividad para su alimentacion, compensada cv- con signos vitales estables y controlados, catarsis y diuresis conservada, sin cambios en el examen neurologico a destacar. Mantengo impresion diagnostica, Idx. Disfagia como manifestacion psicosomatica vs. disfagia no funcional, sin compromiso ponderal demostrable, con aumento de peso en este año, recuperando su peso habitual.", "Se aguarda los ex. complementarios solicitados, sin cambios en el planteo de observacion y prescripciones de momento.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("22", "5", "2006-02-08", "Psiquiatría", "Paciente con la que mantengo entrevistas tres veces por semana durante el último mes abordando sus trastornos de sueño, los que son alternantes y remiten con cambio de medicación por probable EP. La paciente se encuentra lúcida, tranquila, con buen ánimo, lenguaje coherente y fluído, con buena adherencia a los cambios farmacológicos. No ha presentado trastornos conductuales ni de relación. En las últimas entrevistas no ha referido trastornos disfágicos.", "Mantengo prescripciones", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("23", "2", "2006-02-08", "Clínica Médica", "Pte. estacionario, asintomatico al examen general, signos vitales estables y controlados, en decubito obligado, diuresis sin stop y con buena evolucion al cambio de sonda, con atb. de 24-48hs., de prevencion, catarsis con EE habitual, pero con mejor respuesta y lesiones en piel secundarias a decubito prolongado y por apoyo, sin impetigo ni celulitis ni isquemia necrotica asociadas de momento.", "Sin cambios en el planteo de prescripciones, y asistencia integral.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("24", "6", "2006-02-08", "Clínica Médica", "Pte. con buena evolucion en general, buena respuesta a toillete y atb por su ITU secundaria, mantiene diuresis por sonda sin stop, y sin sedimento a destacar mas que el habitual, compensado cv., signos vitales estables y controlados,lesiones por apoyo y decubito prolongado sin impetigo asociados, sin cambios en el resto del examen.", "Sin modificaciones en el esquema terapeutico y de cuidados", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("25", "13", "2006-02-08", "Clínica Médica", "Pte. con eritema en mmii, ambos mmii, sin lesion ampollar, con cianosis exacerbada de lo habitual, hubo de presentarse posterior al cambio de decubito, y exposicion UV., mejoro con clobetasol local y compresas con frias, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, en decubito obligado, diuresis sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos con EE semanal, lesiones en piel secundarias a decubito prolongado y por apoyo, sin impetigo ni celulitis ni isquemia necrotica asociadas Idx. trastornos vasculoplejicos vasomotres, secundarios vs. trastornos puros de potencial obstruccion vascular.", "Se mantiene indicaciones, cuidados locales, vere evolucion y respuesta, aguardo ic con cirugia para que defina la pertinencia de un examen dopler de vasos del mmii.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("26", "10", "2006-02-08", "Psiquiatría", "Paciente que psiquiátricamente se encuentra estabilizado, mostrándose lúcido, con riqueza del pensamiento y capacidad de juicio y raciocinio conservadas. Tímicamente de buen tono afectivo, tranquilo, sociable y adaptado al medio y a su discapacidad. Sueño conservado.", "Continúa sin medicación.", "Dr. Quiroga Walter");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("27", "12", "2006-02-08", "Psiquiatría", "Paciente cognitivamente estacionario, continuando con sus funciones conservadas. Tímica y conductualmente estabilizado, tranquilo, sin ansiedad patológica. Sueño conservado.", "Se mantienen las mismas órdenes médicas", "Dr. Quiroga Walter");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("28", "10", "2006-02-08", "Clínica Médica", "Pte.sin cambio sni variantes en el examen general, asintomatico, estacionario, compensado cv., con signos vitales estables y controlados, mantiene una buena tolerancia al cambio de decubito, lesiones en hombro y region sacra lateral sin variantes de progresion isquemica necrotica, o celulitis reaccional, diuresis y catarsis conservadas, se mantienen indicaciones de toillette para cambios de sonda por talla, en la vispera le fue practicado EE habitual, con buen resultado.", "Se mantiene esquema integral de asistencia plena, prevencion de itu, por protocolo el uso de atb, previa instrumentacion y cambio de sonda vesical, ee. habitual.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("29", "8", "2006-02-08", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("30", "6", "2006-02-08", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("31", "6", "2006-02-08", "Trabajo Social", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("32", "6", "2006-02-08", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("33", "6", "2006-02-08", "Clínica Médica", "1213", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("34", "11", "2006-02-08", "Clínica Médica", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Dr. Porcel Miguel");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("35", "14", "2006-02-08", "Trabajo Social", "Residente con mejor actitud ante diferentes propuestas. Participó junto a otros residentes de las Primeras Olimpíadas Intergeriátricas que se realizaron el pasado sábado en Villa Carlos Paz", "Residente que participó sin dificultades en las diferentes actividades.", "Lic. Duarte Pedro");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("36", "2", "2006-01-15", "Trabajo Social", "Se acuerda entrega de documentación en PAMI para el próximo lunes, solicitando la revisión y posible disminución del coseguro de internación.  ", "Residente muy ansiosa ante el trámite, se le explica una vez más que la determinación respecto de la disminución la toma equipo de PAMI, por lo que deberá esperar.  ", "Lic. Duarte Pedro");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("37", "3", "2006-02-05", "Trabajo Social", "Paciente controlado. Cognitivamente se mantiene bien, sin alteraciones deficitarias. Tímicamente con buen humor, sin ansiedad patológica, mostrándose tranquilo y adaptado al medio y a su minusvalía orgánica. Alimentación y descanso nocturno conservados.  \r\nPte. con sensible mejoria de sus lesiones eritematosas en mmii, ambos mmii, sin lesiones sobreagregadas, pp bilaterales, femoral, popliteo y pedios disminuidos y asimetricos, al resto del examen asintomatico al examen general, signos vitales estables y controlados, buena respuesta al clobetasol local, y cuidados locales, sp, cambio de sonda, y toillte habitual, con buena respuesta al esquema del protocolo de atb., ritmo de catarsis con respuesta habitual a catartricos", "Sin modificaciones en las órdenes médicas.  \r\nSe mantuvo en la vispera, 16/01/2006, ic con cirugia, informe nº 5097 del Dr Marin, paciente con hematoma y trastornos cv sej de dorso oy a co de pie est sec a traumatismo no percibido en resolucion conducta expectante....sic., el resto no se interpreta de la lectoescritura con esfuerzo, solicito ecodopler de ambos mmii, y mantengo conducta expectante.", "Lic. Duarte Pedro");
INSERT INTO evoluciones (id, hc, fecha, área, evolución, observaciones, profesional_actuante) VALUES("38", "6", "2006-02-16", "Clínica Médica", "Evolución correspondiente al paciente Marquetti Ignacio mes de febrero. Signos vitales estables. Responde adecuadamente a l aprescripcion encomendada. Sin cambios de hábitos de importanica", "Mantengo control TA y medicación ribotril.", "Dr. Porcel Miguel");


#
# Table structure for table 'familiares'
#

DROP TABLE IF EXISTS familiares;
CREATE TABLE `familiares` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `responsable` varchar(40) NOT NULL default '',
  `domicilio_responsable` varchar(150) default NULL,
  `teléfonos_responsable` varchar(40) default NULL,
  `parentesco` enum('Hijo/a','Cónyugue','Sobrino/a','Nieto/a','Primo/a','Amigo','s/d') NOT NULL default 'Hijo/a',
  `horario` varchar(50) default NULL,
  `apoderado` varchar(30) default NULL,
  `domicilio_apodearado` varchar(100) default NULL,
  `teléfono_apoderado` varchar(30) default NULL,
  `parentesco_apoderado` enum('Hijo/a','Cónyugue','Sobrino/a','Nieto/a','Primo/a','Amigo','s/d') default NULL,
  `horarios_apoderado` varchar(50) default NULL,
  `observaciones` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `hc` (`hc`)
) TYPE=MyISAM;



#
# Dumping data for table 'familiares'
#
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("5", "2", "Quique Teruel", "", "", "Amigo", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("8", "3", "Miguel Sosa", "Córdoba 750 - Cosquín", "03541 452222", "Sobrino/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("9", "5", "Peralta Juan", "Córdoba Capital", "0351 4555555", "Sobrino/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("11", "7", "Ochoa Gladys", "Domicilio", "", "Nieto/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("12", "8", "Diego Maradona", "Capital", "011545574545", "Amigo", "14 a 17", "", "", "", "", "", "-cambio de teléfono reciente.");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("13", "12", "Ochoa Gladys", "Pan de Azúcar 356 - Cosquín", "", "Hijo/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("14", "4", "Porcetto Juan", "Catamarca 235 - Unquillo", "", "Hijo/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("15", "13", "Pedemonte Pablo", "Las Heras 86 - Córdoba", "0351 455555", "Hijo/a", "17 a 22", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("16", "9", "ghjj", "", "", "Hijo/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("17", "6", "Marquetti Romero", "San Juan", "", "Hijo/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("18", "10", "Fernandez Juan", "cosquin", "", "Hijo/a", "", "", "", "", "", "", "");
INSERT INTO familiares (id, hc, responsable, domicilio_responsable, teléfonos_responsable, parentesco, horario, apoderado, domicilio_apodearado, teléfono_apoderado, parentesco_apoderado, horarios_apoderado, observaciones) VALUES("19", "15", "Quiriga Marta", "San Juan 878 - Córdoba", "0351 4575555", "Hijo/a", "19 a 22", "", "", "", "", "", "");


#
# Table structure for table 'informes_sociales'
#

DROP TABLE IF EXISTS informes_sociales;
CREATE TABLE `informes_sociales` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `informe_social` text NOT NULL,
  `evaluación` text,
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'informes_sociales'
#
INSERT INTO informes_sociales (id, hc, fecha, informe_social, evaluación, profesional_actuante) VALUES("1", "7", "2006-02-08", "Reseña Social: residente que ingresa en Marzo de 1997. Es soltera, ha cursado escolaridad secundaria incompleta, trabajó como secretaria de Gremio de Smata, jubilandose en esta actividad.Vivió en Ciudad de Córdoba con su madre, hasta el fallecimiento de ésta. Aspecto familiar: Tiene dos hermanos varones que residen uno en Córdoba y otro en Rosario, y una hermana mujer melliza, que vive en Santiago del Estero, y es quien atiende a todas sus necesidades.Aspecto Económico: María de José percibe una jubilación de la cual se le retira el coseguro de internación geriátrica. Recibe ayuda económica de sus hermanos para el mantenimiento de sus gastos. Maneja de manera personal sus gastos. Motivo de internación: La residente permaneció internada durante los dos años previos al ingreso en Sanatorio Alberdi a raíz de estado depresivo por trastorno bipolar, al lograr compensar el mismo desde esa Inst. recomiendan el ingreso a Hogar PsicoGeriátrico, ya que no logra insertarse al seno familiar de sus hermanos.", "Dentro de la Institución ha logrado un excelente nivel de adaptación al medio, mantiene liderazgo psoitivo, pudiendo variar éste de acuerdo a estado de ánimo, mantiene actitud solidaria con otros residentes, aún cuando no comparta algunas de la actividades que se desarrollan en forma grupal. No presenta conflictos de convivencia. Diagnóstico Médico: Trastorno maníaco depresivo. Diagnóstico Social: residente con trastornos en su personalidad que le impiden desarrollar normalmente vida en familia, única contención fue su madre, la cual ha fallecido hace unos años. Mantiene contacto permanente con sus hermanos y sobrinos.Tratamiento: ha logrado una adecuada adaptación al medio, colabora a diario con tareas en area de Administración, demostrando seriedad y criterio en el dessarrollo de las mismas, resultando esta una pauta terapeutica.", "Lic. Duarte Pedro");
INSERT INTO informes_sociales (id, hc, fecha, informe_social, evaluación, profesional_actuante) VALUES("2", "7", "2006-01-08", "", NULL, "");
INSERT INTO informes_sociales (id, hc, fecha, informe_social, evaluación, profesional_actuante) VALUES("7", "7", "2005-11-08", "", NULL, "");
INSERT INTO informes_sociales (id, hc, fecha, informe_social, evaluación, profesional_actuante) VALUES("8", "7", "2005-12-08", "", NULL, "");


#
# Table structure for table 'interconsultas'
#

DROP TABLE IF EXISTS interconsultas;
CREATE TABLE `interconsultas` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `día_turno` date NOT NULL default '0000-00-00',
  `hora_turno` time default NULL,
  `interconsulta` varchar(40) NOT NULL default '',
  `lugar` varchar(40) NOT NULL default '',
  `preparación` varchar(50) default NULL,
  `observaciones` varchar(150) default NULL,
  `solicitó` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'interconsultas'
#
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("1", "3", "2006-02-14", "2006-02-18", "08:30:00", "Citológico completo", "Laboratorio Central", "ayuno 8 hs", "", "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("2", "3", "2006-02-14", "2006-02-18", "10:00:00", "RX Tórax", "Laboratorio Central", "ayuno 8 hs", "", "Dr. Pedraza");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("3", "11", "2006-02-14", "2006-02-18", "08:00:00", "Orina completo", "Laboratorio Central", "Primera orina de la mañana", "", "Dr. Vidal");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("4", "12", "2006-02-14", "2006-02-18", "12:00:00", "Traumatología", "Hospital Funes", "ayuno 8 hs", "", "Dr. Vidal");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("5", "4", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Centro del diagnóstico", "Ayuno - beber i litro de agua una hora antes", "", "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("6", "8", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Laboratorio Central", "ayuno 8 hs", "", "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("7", "10", "2006-02-14", "2006-02-18", "17:00:00", "turno kinesliologia", "Clínica La S. Trinidad", "ayuno 8 hs", "", "Dr. Gallo");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("8", "2", "2006-02-14", "2006-02-18", "08:30:00", "Citológico completo", "Centro del diagnóstico", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("9", "4", "2006-02-14", "2006-02-18", "08:30:00", "Citológico completo", "Centro del diagnóstico", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("10", "5", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Laboratorio Central", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("11", "6", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Laboratorio Central", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("12", "7", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Laboratorio Central", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("13", "9", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Centro del diagnóstico", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("14", "13", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Centro del diagnóstico", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("15", "14", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Centro del diagnóstico", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("16", "15", "2006-02-14", "2006-02-18", "08:30:00", "Ecografía", "Centro del diagnóstico", "ayuno 8 hs", NULL, "Dr. Quiroga");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("17", "0", "0000-00-00", "2006-02-18", "08:30:00", "Citológico completo", "Centro del diagnóstico", "ayuno 8 hs", NULL, "");
INSERT INTO interconsultas (id, hc, fecha, día_turno, hora_turno, interconsulta, lugar, preparación, observaciones, solicitó) VALUES("18", "5", "2006-03-01", "2006-03-01", "10:00:00", "RX Tórax", "Centro del diagnóstico", "ayuno 8 hs", "acompaña hija", "Dr. Gallo");


#
# Table structure for table 'medicamentos'
#

DROP TABLE IF EXISTS medicamentos;
CREATE TABLE `medicamentos` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `medicamento` varchar(35) NOT NULL default '',
  `nombres_comerciales` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `medicamento` (`medicamento`)
) TYPE=MyISAM;



#
# Dumping data for table 'medicamentos'
#
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("1", "aas", "Bayaspirina, Aspirina Vent3");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("2", "enalapril", "Lotrial");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("3", "clonazepan", "rivotil");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("11", "ciclonamina", "impedil");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("12", "antiacido", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("13", "acetazolamida", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("14", "acido folico", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("15", "alendronato", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("16", "alprazolan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("17", "allopurinol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("18", "amiodarona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("19", "amitriptilina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("20", "amlodipina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("21", "amoxicilina", "Amoxidal");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("22", "amoxicilina + ambroxol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("23", "ampicilina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("24", "atenolol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("25", "bamitano + escina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("26", "beta genta crema", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("27", "biperideno", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("28", "bisacodilo", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("29", "blufomedil", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("30", "bromazepan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("31", "bromexina jbe", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("32", "calcio base", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("33", "carbamazepina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("34", "cascara sagrada", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("35", "cefalexina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("36", "cinarizina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("37", "ciprofloxacina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("38", "ciproh + asoc", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("39", "cisapride", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("40", "cisapride + simeticona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("41", "clorimipramina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("42", "clorpromazina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("43", "complejo B", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("44", "crema cicatrizante", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("45", "dexametazona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("46", "dfh calcio", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("47", "dfh sodio", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("48", "diazepan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("49", "dicoflenac", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("50", "digoxina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("51", "diltiazen", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("53", "espironolactona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("54", "espironolactona + amiloride", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("55", "espironolactona + dexametazona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("117", "oxibutinina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("57", "fenobarbital", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("58", "fenitoína sodica", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("59", "finasteride", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("60", "flunitrazepan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("61", "fluoxetina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("62", "furosemida", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("63", "furosemida / amiloride", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("64", "gentabetametazona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("65", "glibenclamida", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("66", "haloperidol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("67", "haloperidol decanoato", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("68", "ibuprofeno", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("69", "idebenona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("70", "imipramina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("71", "iodopovidona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("72", "ketokonazol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("73", "lanzoprazol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("74", "levomepromazina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("75", "levotiroxina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("76", "litio carbonato", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("77", "loperamida", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("78", "lorazepan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("79", "losartan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("80", "magnesio citrato", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("81", "melatonina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("82", "metilprednisona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("83", "metoclopramida", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("84", "n-butil hioscina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("85", "nifedipina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("86", "nimodipina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("87", "nitrazepan", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("88", "norfloxacina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("89", "omeprazol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("90", "paracetamol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("91", "piroxican", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("92", "placebos", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("93", "prometazina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("94", "propanolol", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("95", "ranitidina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("96", "rifamicina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("97", "risperidona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("98", "sertalina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("99", "simeticona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("100", "sinvastatín", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("101", "teofilina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("102", "terazosín", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("103", "thioridazina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("104", "trazodone", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("105", "triexifenidilo", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("106", "trifluoperazina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("107", "trimebutina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("108", "troxerutina", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("109", "vitamina A", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("110", "vitamina C", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("112", "zolpiderm", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("113", "zoplicona", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("114", "fumarato ferroso", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("115", "clorpropamida", "");
INSERT INTO medicamentos (id, medicamento, nombres_comerciales) VALUES("116", "dipirona", "Novalgina");


#
# Table structure for table 'mensajes'
#

DROP TABLE IF EXISTS mensajes;
CREATE TABLE `mensajes` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `fecha` datetime NOT NULL default '0000-00-00 00:00:00',
  `de` varchar(20) NOT NULL default '',
  `para` varchar(20) NOT NULL default '',
  `asunto` varchar(255) NOT NULL default '',
  `mensaje` text NOT NULL,
  `leído` enum('no','si') NOT NULL default 'no',
  `leido_fecha` datetime default NULL,
  `eliminado` enum('no','si') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `fecha` (`fecha`),
  KEY `de` (`de`(5),`para`(5))
) TYPE=MyISAM;



#
# Dumping data for table 'mensajes'
#
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("4", "2006-01-31 02:06:58", "admin", "admin", "Bienvenida al nuevo sistema", "asf", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("3", "2006-01-30 18:26:47", "admin", "admin", "Bienvenida al nuevo sistema", "prueba mensaje", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("5", "2006-02-02 13:37:51", "admin", "admin", "Bienvenida al nuevo sistema", "Esta es una prueba de mensajería interna.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("6", "2006-02-02 22:16:48", "admin", "calchaquin", "Bienvenida al nuevo sistema", "Dr., le comunico que el próximo viernes a la hora 14:00 tendremos nuestra habitual reunión de área.\r\nGracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("7", "2006-02-03 01:08:36", "gerente", "admin", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("8", "2006-02-03 01:08:36", "gerente", "supervisor", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("9", "2006-02-03 01:08:36", "gerente", "picaron", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("10", "2006-02-03 01:08:36", "gerente", "farmacia", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("11", "2006-02-03 01:08:36", "gerente", "gerente", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("12", "2006-02-03 01:08:36", "gerente", "silvia", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("13", "2006-02-03 01:08:36", "gerente", "supervisor", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("14", "2006-02-03 01:08:36", "gerente", "supervisor", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("15", "2006-02-03 01:08:36", "gerente", "pedro", "Bienvenida al nuevo sistema", "Este es un mensaje de bienvenida al nuevo sistema incorporado a la residencia. Espero disfruten ésta herramienta de trabajo y todos podamos sacar provecho de ella. Muchas gracias. \r\n\r\nLa Gerencia.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("16", "2006-02-03 14:06:42", "gerente", "admin", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("17", "2006-02-03 14:06:42", "gerente", "supervisor", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("18", "2006-02-03 14:06:42", "gerente", "director", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("19", "2006-02-03 14:06:42", "gerente", "farmacia", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("20", "2006-02-03 14:06:42", "gerente", "gerente", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("21", "2006-02-03 14:06:42", "gerente", "supervisor", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("22", "2006-02-03 14:06:42", "gerente", "supervisor", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("23", "2006-02-03 14:06:42", "gerente", "supervisor", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("24", "2006-02-03 14:06:42", "gerente", "pedro", "Comienzo de actividad del sistema", "Con motivo del inicio de actividad de la residencia con el nuevo sistema deseo al personal de salud y administrativos este avance signifique una mejor calidad en el desempeño profesional. Muchas gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("25", "2006-02-03 23:28:37", "admin", "admin", "Bienvenida al nuevo sistema", "preuba", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("26", "2006-02-03 23:28:51", "admin", "admin", "Bienvenida al nuevo sistema", "56", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("27", "2006-02-03 23:29:35", "admin", "admin", "prueba de envió", "prueba de envio", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("28", "2006-02-03 23:29:35", "admin", "supervisor", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("29", "2006-02-03 23:29:35", "admin", "director", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("30", "2006-02-03 23:29:35", "admin", "farmacia", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("31", "2006-02-03 23:29:35", "admin", "gerente", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("32", "2006-02-03 23:29:35", "admin", "silvia", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("33", "2006-02-03 23:29:35", "admin", "supervisor", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("34", "2006-02-03 23:29:35", "admin", "recreacion", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("35", "2006-02-03 23:29:35", "admin", "supervisor", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("36", "2006-02-03 23:29:35", "admin", "pedro", "prueba de envió", "prueba de envio", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("37", "2006-02-03 23:30:16", "admin", "admin", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("38", "2006-02-03 23:30:16", "admin", "calchaquin", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("39", "2006-02-03 23:30:16", "admin", "director", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("40", "2006-02-03 23:30:16", "admin", "farmacia", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("41", "2006-02-03 23:30:16", "admin", "gerente", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("42", "2006-02-03 23:30:16", "admin", "silvia", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("43", "2006-02-03 23:30:16", "admin", "supervisor", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("44", "2006-02-03 23:30:16", "admin", "recreacion", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("45", "2006-02-03 23:30:16", "admin", "supervisor", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("46", "2006-02-03 23:30:16", "admin", "pedro", "Recordar reunión de área", "Les recuerdo que el próximo miércoles se realizará reunión de área a la hora 15:00", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("47", "2005-02-04 18:10:51", "enfermero", "admin", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("48", "2005-02-04 18:10:51", "enfermero", "médico", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("49", "2005-02-04 18:10:51", "enfermero", "director", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("50", "2005-02-04 18:10:51", "enfermero", "enfermero", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("51", "2005-02-04 18:10:51", "enfermero", "farmacia", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("52", "2005-02-04 18:10:51", "enfermero", "gerente", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("53", "2005-02-04 18:10:51", "enfermero", "nutrición", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("54", "2005-02-04 18:10:51", "enfermero", "psiquiatra", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("55", "2005-02-04 18:10:51", "enfermero", "recreacion", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("56", "2005-02-04 18:10:51", "enfermero", "secretaria", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("57", "2005-02-04 18:10:51", "enfermero", "supervisor", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("58", "2005-02-04 18:10:51", "enfermero", "social", "Personal de enfermería", "El personal de enfermería desea a todos los colegas felicidades en el día del profesional de la salud.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("59", "2006-02-04 21:33:42", "secretaria", "admin", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("60", "2006-02-04 21:33:42", "secretaria", "médico", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("61", "2006-02-04 21:33:42", "secretaria", "director", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("62", "2006-02-04 21:33:42", "secretaria", "enfermero", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("63", "2006-02-04 21:33:42", "secretaria", "farmacia", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("64", "2006-02-04 21:33:42", "secretaria", "gerente", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("65", "2006-02-04 21:33:42", "secretaria", "nutrición", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("66", "2006-02-04 21:33:42", "secretaria", "psiquiatra", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("67", "2006-02-04 21:33:42", "secretaria", "recreacion", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("68", "2006-02-04 21:33:42", "secretaria", "secretaria", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("69", "2006-02-04 21:33:42", "secretaria", "supervisor", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("70", "2006-02-04 21:33:42", "secretaria", "social", "Felices vacaciones al personal de maestranza.", "akfjd fffdsajf dsafjdsa f", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("71", "2006-02-04 21:58:12", "farmacia", "admin", "Bienvenida al nuevo sistema", "skdjfhf", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("72", "2006-02-04 21:58:12", "farmacia", "médico", "Bienvenida al nuevo sistema", "skdjfhf", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("73", "2006-02-04 21:58:12", "farmacia", "director", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("74", "2006-02-04 21:58:12", "farmacia", "enfermero", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("75", "2006-02-04 21:58:12", "farmacia", "farmacia", "Bienvenida al nuevo sistema", "skdjfhf", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("76", "2006-02-04 21:58:12", "farmacia", "gerente", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("77", "2006-02-04 21:58:12", "farmacia", "nutrición", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("78", "2006-02-04 21:58:12", "farmacia", "psiquiatra", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("79", "2006-02-04 21:58:12", "farmacia", "recreacion", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("80", "2006-02-04 21:58:12", "farmacia", "secretaria", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("81", "2006-02-04 21:58:12", "farmacia", "supervisor", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("82", "2006-02-04 21:58:12", "farmacia", "social", "Bienvenida al nuevo sistema", "skdjfhf", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("83", "2006-02-05 00:53:58", "psiquiatra", "admin", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("84", "2006-02-05 00:53:58", "psiquiatra", "médico", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("85", "2006-02-05 00:53:58", "psiquiatra", "director", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("86", "2006-02-05 00:53:58", "psiquiatra", "enfermero", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("87", "2006-02-05 00:53:58", "psiquiatra", "farmacia", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("88", "2006-02-05 00:53:58", "psiquiatra", "gerente", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("89", "2006-02-05 00:53:58", "psiquiatra", "nutrición", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("90", "2006-02-05 00:53:58", "psiquiatra", "psiquiatra", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("91", "2006-02-05 00:53:58", "psiquiatra", "recreacion", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("92", "2006-02-05 00:53:58", "psiquiatra", "secretaria", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("93", "2006-02-05 00:53:58", "psiquiatra", "supervisor", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("94", "2006-02-05 00:53:58", "psiquiatra", "social", "Area psiquiatría", "Los invitamos a participar de las jornadas de Atención geriátrica y sexualidad el próximo viernes a la hora 15", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("95", "2006-02-05 01:26:18", "psiquiatra", "admin", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("96", "2006-02-05 01:26:18", "psiquiatra", "médico", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("97", "2006-02-05 01:26:18", "psiquiatra", "director", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("98", "2006-02-05 01:26:18", "psiquiatra", "enfermero", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("99", "2006-02-05 01:26:18", "psiquiatra", "farmacia", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("100", "2006-02-05 01:26:18", "psiquiatra", "gerente", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("101", "2006-02-05 01:26:18", "psiquiatra", "nutrición", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("102", "2006-02-05 01:26:18", "psiquiatra", "psiquiatra", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("103", "2006-02-05 01:26:18", "psiquiatra", "recreacion", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("104", "2006-02-05 01:26:18", "psiquiatra", "secretaria", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("105", "2006-02-05 01:26:18", "psiquiatra", "supervisor", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("106", "2006-02-05 01:26:18", "psiquiatra", "social", "Prueba de envio de mensaje", "Prueba de envio de mensaje", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("107", "2006-02-05 18:06:25", "social", "admin", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("108", "2006-02-05 18:06:25", "social", "médico", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("109", "2006-02-05 18:06:25", "social", "director", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("110", "2006-02-05 18:06:25", "social", "enfermero", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("111", "2006-02-05 18:06:25", "social", "farmacia", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("112", "2006-02-05 18:06:25", "social", "gerente", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("113", "2006-02-05 18:06:25", "social", "nutrición", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("114", "2006-02-05 18:06:25", "social", "psiquiatra", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("115", "2006-02-05 18:06:25", "social", "recreacion", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("116", "2006-02-05 18:06:25", "social", "secretaria", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("117", "2006-02-05 18:06:25", "social", "supervisor", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("118", "2006-02-05 18:06:25", "social", "social", "Actividades de Area Social", "Les recuerdo a los colegas que el próximo viernes comienzan las actividades externas de área de TS. Gracias.", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("119", "2006-02-05 18:19:21", "nutrición", "admin", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("120", "2006-02-05 18:19:21", "nutrición", "médico", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("121", "2006-02-05 18:19:21", "nutrición", "director", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("122", "2006-02-05 18:19:21", "nutrición", "enfermero", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("123", "2006-02-05 18:19:21", "nutrición", "farmacia", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("124", "2006-02-05 18:19:21", "nutrición", "gerente", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("125", "2006-02-05 18:19:21", "nutrición", "nutrición", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("126", "2006-02-05 18:19:21", "nutrición", "psiquiatra", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("127", "2006-02-05 18:19:21", "nutrición", "recreacion", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("128", "2006-02-05 18:19:21", "nutrición", "secretaria", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("129", "2006-02-05 18:19:21", "nutrición", "supervisor", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("130", "2006-02-05 18:19:21", "nutrición", "social", "nutrición prueba", "prueba de mensajes desde el área de nutrición.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("131", "2006-02-06 20:20:31", "kinesio", "social", "Bienvenida al nuevo sistema", "hjhggf", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("132", "2006-02-06 20:49:27", "supervisor", "admin", "Bienvenida al nuevo sistema", "lojhg", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("133", "2006-02-06 20:49:27", "supervisor", "médico", "Bienvenida al nuevo sistema", "lojhg", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("134", "2006-02-06 20:49:27", "supervisor", "director", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("135", "2006-02-06 20:49:27", "supervisor", "enfermero", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("136", "2006-02-06 20:49:27", "supervisor", "farmacia", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("137", "2006-02-06 20:49:27", "supervisor", "gerente", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("138", "2006-02-06 20:49:27", "supervisor", "kinesio", "Bienvenida al nuevo sistema", "lojhg", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("139", "2006-02-06 20:49:27", "supervisor", "nutrición", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("140", "2006-02-06 20:49:27", "supervisor", "psiquiatra", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("141", "2006-02-06 20:49:27", "supervisor", "recreacion", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("142", "2006-02-06 20:49:27", "supervisor", "secretaria", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("143", "2006-02-06 20:49:27", "supervisor", "supervisor", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("144", "2006-02-06 20:49:27", "supervisor", "social", "Bienvenida al nuevo sistema", "lojhg", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("145", "2006-02-06 20:56:09", "recreacion", "admin", "Bienvenida al nuevo sistema", "poiiu", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("146", "2006-02-06 20:56:09", "médico", "médico", "Bienvenida al nuevo sistema", "poiiu", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("147", "2006-02-06 20:56:09", "recreacion", "director", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("148", "2006-02-06 20:56:09", "recreacion", "enfermero", "Reunión de áreas", "poiiu", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("149", "2006-02-06 20:56:09", "médico", "farmacia", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("150", "2006-02-06 20:56:09", "recreacion", "gerente", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("151", "2006-02-06 20:56:09", "recreacion", "kinesio", "Reunión de áreas", "poiiu", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("152", "2006-02-06 20:56:09", "médico", "nutrición", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("153", "2006-02-06 20:56:09", "recreacion", "psiquiatra", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("154", "2006-02-06 20:56:09", "recreacion", "recreacion", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("155", "2006-02-06 20:56:09", "médico", "secretaria", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("156", "2006-02-06 20:56:09", "recreacion", "supervisor", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("157", "2006-02-06 20:56:09", "médico", "social", "Reunión de áreas", "poiiu", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("158", "2006-02-11 16:07:46", "admin", "admin", "Reunión de áreas", "este es un mensaje de prueba", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("159", "2006-02-11 16:08:17", "kinesio", "kinesio", "Reunión de áreas", "fsfdsfsdfds", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("160", "2006-02-11 16:08:17", "admin", "admin", "Reunión de áreas", "fsfdsfsdfds", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("161", "2006-02-11 16:08:17", "kinesio", "enfermero", "Reunión de áreas", "fsfdsfsdfds", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("162", "2006-02-11 16:08:17", "admin", "gerente", "Reunión de áreas", "fsfdsfsdfds", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("163", "2006-02-11 16:08:17", "kinesio", "psiquiatra", "Reunión de áreas", "fsfdsfsdfds", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("164", "2006-02-11 16:08:17", "recreacion", "recreacion", "Reunión de áreas", "fsfdsfsdfds", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("165", "2006-02-11 19:54:02", "kinesio", "admin", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("166", "2006-02-11 19:54:02", "admin", "médico", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("167", "2006-02-11 19:54:02", "kinesio", "director", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("168", "2006-02-11 19:54:02", "recreacion", "enfermero", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("169", "2006-02-11 19:54:02", "kinesio", "farmacia", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("170", "2006-02-11 19:54:02", "admin", "gerente", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("171", "2006-02-11 19:54:02", "admin", "kinesio", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("172", "2006-02-11 19:54:02", "recreacion", "nutrición", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("173", "2006-02-11 19:54:02", "admin", "psiquiatra", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("174", "2006-02-11 19:54:02", "kinesio", "recreacion", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("175", "2006-02-11 19:54:02", "admin", "secretaria", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("176", "2006-02-11 19:54:02", "admin", "supervisor", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("177", "2006-02-11 19:54:02", "admin", "social", "Reunión de áreas", "Recordamos que en la próxmia reunión de áreas espermaos contar con el 100% de aprobación a la nueva propuesta de kiensio sobre compra de nuevo equipamiento.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("178", "2006-02-16 13:53:39", "médico", "admin", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("179", "2006-02-16 13:53:39", "médico", "médico", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("180", "2006-02-16 13:53:39", "médico", "director", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("181", "2006-02-16 13:53:39", "médico", "enfermero", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("182", "2006-02-16 13:53:39", "médico", "farmacia", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("183", "2006-02-16 13:53:39", "médico", "gerente", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("184", "2006-02-16 13:53:39", "médico", "kinesio", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("185", "2006-02-16 13:53:39", "médico", "nutrición", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("186", "2006-02-16 13:53:39", "médico", "psiquiatra", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("187", "2006-02-16 13:53:39", "médico", "pepe", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("188", "2006-02-16 13:53:39", "médico", "recreacion", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("189", "2006-02-16 13:53:39", "médico", "secretaria", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("190", "2006-02-16 13:53:39", "médico", "supervisor", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("191", "2006-02-16 13:53:39", "médico", "social", "Comienzo de actividad del sistema", "El próximo dia 1 de marzo comenzamos el uso del nuevo sistema.", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("192", "2006-03-01 20:39:14", "admin", "admin", "nuevo", "nuevo", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("193", "2006-03-01 20:39:38", "admin", "admin", "otro", "otro", "si", NULL, "si");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("194", "2006-06-20 19:42:12", "admin", "psiquiatra", "Prueba de envio de mensaje", "Mensaje ", "no", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("195", "2006-06-20 20:16:13", "admin", "admin", "prueba", "prueba", "si", NULL, "no");
INSERT INTO mensajes (id, fecha, de, para, asunto, mensaje, leído, leido_fecha, eliminado) VALUES("196", "2006-06-20 20:29:46", "admin", "admin", "Asunto del mensaje enviado a Administración desde prueba", "prueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\n\r\n\r\n\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\n\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\nprueba prueba prueba prueba prueba prueba prueba prueba prueba prueba\r\n", "si", NULL, "no");


#
# Table structure for table 'pae'
#

DROP TABLE IF EXISTS pae;
CREATE TABLE `pae` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `diagnóstico_enfermería` varchar(255) NOT NULL default '',
  `acción_enfermería` varchar(255) NOT NULL default '',
  `evaluación_resultado` varchar(255) NOT NULL default '',
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'pae'
#


#
# Table structure for table 'prescripciones'
#

DROP TABLE IF EXISTS prescripciones;
CREATE TABLE `prescripciones` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `id_presentación_medicamento` int(10) unsigned NOT NULL default '0',
  `regular` enum('regular','s.o.s') NOT NULL default 'regular',
  `desde` date NOT NULL default '0000-00-00',
  `hasta` date NOT NULL default '0000-00-00',
  `días` set('todos','lunes','martes','miércoles','jueves','viernes','sábado','domingo') NOT NULL default 'todos',
  `horarios` set('01:00','02:00','03:00','04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00') NOT NULL default '',
  `vía` set('cutánea','epidérmica','intramuscular','intravenosa','nasal','nebulización','oftalmológica','oral','peridural','por oído','rectal','subcutánea','sublingual','vaginal') NOT NULL default '',
  `observaciones` text NOT NULL,
  `prescripto_por` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `id_presentación_medicamento` (`id_presentación_medicamento`),
  KEY `hasta` (`hasta`),
  KEY `prescripto_por` (`prescripto_por`(5))
) TYPE=MyISAM;



#
# Dumping data for table 'prescripciones'
#
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("1", "8", "2", "regular", "2006-02-18", "2006-05-30", "todos", "08:00", "oral", "Control de acidez estomacal.", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("2", "6", "2", "regular", "2006-02-18", "2006-05-30", "todos", "09:00", "oral", "", "Dr. Mercado Santiago");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("3", "4", "5", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "Control de somnolencia.", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("4", "4", "2", "regular", "2006-02-18", "2006-05-30", "todos", "08:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("5", "7", "2", "regular", "2006-02-18", "2006-05-30", "todos", "08:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("6", "12", "2", "regular", "2006-02-18", "2006-05-30", "todos", "08:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("7", "7", "6", "regular", "2006-02-18", "2006-05-30", "todos", "20:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("8", "10", "5", "regular", "2006-02-18", "2006-05-30", "todos", "21:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("9", "10", "3", "regular", "2006-02-18", "2006-05-30", "todos", "20:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("10", "8", "6", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "Suministrar luego de la cena.", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("11", "14", "2", "regular", "2006-02-18", "2006-05-30", "todos", "08:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("12", "14", "4", "regular", "2006-02-18", "2006-05-30", "todos", "08:00", "oral", "Controlar estado general del paciente.", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("14", "10", "4", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("15", "2", "2", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("16", "3", "2", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("17", "4", "6", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("18", "5", "2", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("19", "9", "2", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("20", "11", "2", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("21", "13", "5", "regular", "2006-02-18", "2006-05-30", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");
INSERT INTO prescripciones (id, hc, id_presentación_medicamento, regular, desde, hasta, días, horarios, vía, observaciones, prescripto_por) VALUES("22", "15", "2", "regular", "2006-02-18", "2006-03-05", "todos", "22:00", "oral", "", "Dr. Porcel Miguel");


#
# Table structure for table 'prescripciones_canceladas'
#

DROP TABLE IF EXISTS prescripciones_canceladas;
CREATE TABLE `prescripciones_canceladas` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `id_prescripción` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `motivo` varchar(100) NOT NULL default '',
  `observaciones` text,
  `médico_actuante` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_id_prescripción` (`id_prescripción`),
  KEY `idx_fecha` (`fecha`)
) TYPE=MyISAM COMMENT='Registro de cancelación de prescripciones';



#
# Dumping data for table 'prescripciones_canceladas'
#
INSERT INTO prescripciones_canceladas (id, id_prescripción, fecha, motivo, observaciones, médico_actuante) VALUES("1", "2", "2006-02-03", "Prueba de sistema", "ninguna", "Dr. Mercado Santiago");
INSERT INTO prescripciones_canceladas (id, id_prescripción, fecha, motivo, observaciones, médico_actuante) VALUES("2", "1", "2006-02-11", "da acidez", "cambiaré por actron", "Dr. Porcel Miguel");
INSERT INTO prescripciones_canceladas (id, id_prescripción, fecha, motivo, observaciones, médico_actuante) VALUES("3", "9", "2006-02-14", "cambio de dosis", "Se recomienda aumentar la dosis", "Dr. Porcel Miguel");
INSERT INTO prescripciones_canceladas (id, id_prescripción, fecha, motivo, observaciones, médico_actuante) VALUES("4", "13", "2006-02-14", "cambio de dosis", "reduzco la dosis a 0,5", "Dr. Porcel Miguel");


#
# Table structure for table 'presentaciones_medicamentos'
#

DROP TABLE IF EXISTS presentaciones_medicamentos;
CREATE TABLE `presentaciones_medicamentos` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `id_medicamento` smallint(5) unsigned NOT NULL default '0',
  `presentación` enum('aerosol','ampollas','caramelos','comprimidos','crema','cápsulas','gel','gotas','grageas','gránulos','jarabe','loción','ovulos','polvo','solución','supositorios','suspensión') NOT NULL default 'comprimidos',
  `dosis` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id_medicamento` (`id_medicamento`)
) TYPE=MyISAM;



#
# Dumping data for table 'presentaciones_medicamentos'
#
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("1", "1", "comprimidos", "250 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("2", "1", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("3", "1", "comprimidos", "750 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("4", "16", "comprimidos", "0,5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("5", "15", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("6", "16", "comprimidos", "1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("7", "3", "comprimidos", "2 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("8", "114", "comprimidos", "300 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("9", "13", "comprimidos", "250 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("10", "14", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("11", "17", "comprimidos", "150 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("12", "18", "comprimidos", "200 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("13", "19", "comprimidos", "37,5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("14", "19", "comprimidos", "75 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("15", "20", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("16", "20", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("17", "21", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("18", "22", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("19", "23", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("20", "24", "comprimidos", "50 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("21", "24", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("22", "25", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("23", "26", "crema", "200 gs.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("24", "27", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("25", "28", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("26", "29", "comprimidos", "300 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("27", "30", "comprimidos", "6 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("28", "30", "comprimidos", "3 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("29", "31", "jarabe", "120 cc.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("30", "32", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("31", "33", "comprimidos", "200 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("32", "34", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("33", "35", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("34", "36", "comprimidos", "75 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("35", "37", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("36", "38", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("37", "39", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("38", "40", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("39", "3", "comprimidos", "1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("40", "3", "comprimidos", "0.5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("41", "41", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("42", "42", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("43", "42", "comprimidos", "100 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("44", "115", "comprimidos", "250 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("45", "43", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("46", "44", "crema", "100 gs.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("47", "45", "comprimidos", "0,5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("48", "46", "comprimidos", "0,1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("49", "47", "comprimidos", "0,1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("50", "48", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("51", "49", "comprimidos", "75 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("52", "49", "comprimidos", "50 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("53", "50", "comprimidos", "0,25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("54", "51", "comprimidos", "120 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("55", "51", "comprimidos", "60 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("56", "51", "comprimidos", "90 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("57", "116", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("58", "2", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("59", "2", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("60", "53", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("61", "54", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("62", "55", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("63", "58", "comprimidos", "0,1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("64", "57", "comprimidos", "0,1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("65", "59", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("66", "60", "comprimidos", "0,5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("67", "60", "comprimidos", "1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("68", "61", "comprimidos", "20 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("69", "62", "comprimidos", "40 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("70", "63", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("71", "64", "crema", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("72", "65", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("73", "66", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("74", "66", "comprimidos", "1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("75", "67", "gotas", "3 ml.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("76", "66", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("77", "66", "gotas", "60 ml.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("78", "68", "comprimidos", "400 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("79", "69", "comprimidos", "30 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("80", "70", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("81", "71", "solución", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("82", "73", "comprimidos", "30 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("83", "74", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("84", "74", "comprimidos", "12 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("85", "75", "comprimidos", "0,1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("86", "76", "comprimidos", "300 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("87", "77", "comprimidos", "2 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("88", "78", "comprimidos", "2,5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("89", "79", "comprimidos", "50 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("90", "80", "solución", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("91", "81", "comprimidos", "3 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("92", "82", "comprimidos", "8 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("93", "83", "gotas", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("94", "84", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("95", "85", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("96", "86", "comprimidos", "60 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("97", "87", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("98", "88", "comprimidos", "400 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("99", "89", "comprimidos", "20 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("100", "117", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("101", "90", "comprimidos", "150 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("102", "90", "comprimidos", "500 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("103", "91", "comprimidos", "20 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("104", "92", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("105", "93", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("106", "94", "comprimidos", "40 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("107", "95", "comprimidos", "150 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("108", "95", "comprimidos", "300 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("109", "96", "solución", "0, 5 %");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("110", "97", "comprimidos", "1 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("111", "97", "comprimidos", "3 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("112", "98", "comprimidos", "100 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("113", "99", "comprimidos", "200 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("114", "100", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("115", "101", "comprimidos", "200 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("116", "102", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("117", "103", "comprimidos", "25 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("118", "104", "comprimidos", "50 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("119", "105", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("120", "106", "comprimidos", "5 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("121", "107", "comprimidos", "200 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("122", "108", "comprimidos", "300 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("123", "109", "crema", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("124", "110", "comprimidos", "");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("126", "112", "comprimidos", "10 mg.");
INSERT INTO presentaciones_medicamentos (id, id_medicamento, presentación, dosis) VALUES("127", "113", "comprimidos", "7,5 mg.");


#
# Table structure for table 'reportes_enfermería'
#

DROP TABLE IF EXISTS reportes_enfermería;
CREATE TABLE `reportes_enfermería` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `fecha` date NOT NULL default '0000-00-00',
  `turno` enum('mañana','tarde','noche') NOT NULL default 'mañana',
  `reporte` text NOT NULL,
  `enfermeros_turno` varchar(150) NOT NULL default '',
  `enfermero_actuante` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `turno` (`turno`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'reportes_enfermería'
#
INSERT INTO reportes_enfermería (id, fecha, turno, reporte, enfermeros_turno, enfermero_actuante) VALUES("1", "2006-02-04", "tarde", "Reporte correspondiente al día 4 de febrero. Se recibe la guardia sin novedad. Se realiza la preparación de prescripciones. Se bañan a los pacientes Castro y Machado", "Salzano, Quiroga y López", "Salzano Horacio");
INSERT INTO reportes_enfermería (id, fecha, turno, reporte, enfermeros_turno, enfermero_actuante) VALUES("2", "2006-02-04", "tarde", "Reporte correspondiente al turno noche del 4 de febrero. Se recibe la guardia sin novedad. Se prepara y suministra medicación del turno. Se higienizan pacientes.", "Robledo, Salzano, Gutiérrez", "Salzano Horacio");
INSERT INTO reportes_enfermería (id, fecha, turno, reporte, enfermeros_turno, enfermero_actuante) VALUES("3", "2006-02-06", "mañana", "jhggftf", "oiuu", "Castañeda Angela");
INSERT INTO reportes_enfermería (id, fecha, turno, reporte, enfermeros_turno, enfermero_actuante) VALUES("4", "2006-02-11", "mañana", "1) NOVEDADES DE RECEPCION: sadsdsfdsaff\r\n\r\n 2) HIGIENE DE RESIDENTES: safdsafdsaf\r\n\r\n 3) TRATAMIENTOS EFECTUADOS: dsafdsf\r\n\r\n 4) DIURESIS Y CATARSIS: asdfdsaf\r\n\r\n 5) EVENTOS ADVERSOS: safsdaf\r\n\r\n 6) VISITA DE FAMILIARES: asfddsaf\r\n\r\n 7) SALIDA DE PERMISOS: sddsf\r\n\r\n 8) DERIVACIONES: dsafdsaf\r\n\r\n 9) INTERVENCION DE EMERGENCIA: sddsf\r\n\r\n10) ESTUDIOS REALIZADOS FUERA INSTITUCION: asdfsdaf\r\n\r\n11) CAMBIOS PRESCRIPCIONES: asdfdsa\r\n\r\n12) RESIDENTES A OBSERVAR: sdfdsf\r\n\r\n13) ALIMENTACIÓN: sadfdsaf\r\n\r\n14) OTRAS OBSERVACIONES: sadfsa", "a b yc", "Salzano Horacio");


#
# Table structure for table 'residentes'
#

DROP TABLE IF EXISTS residentes;
CREATE TABLE `residentes` (
  `hc` smallint(5) unsigned NOT NULL auto_increment,
  `apellido` varchar(25) NOT NULL default '',
  `nombre` varchar(25) NOT NULL default '',
  `fecha_ingreso` date NOT NULL default '0000-00-00',
  `documento_tipo` enum('DNI','LE','LC','CI','Pasaporte') NOT NULL default 'DNI',
  `documento_número` mediumint(8) unsigned NOT NULL default '0',
  `nacionalidad` varchar(20) default NULL,
  `lugar_nacimiento` varchar(30) default NULL,
  `fecha_nacimiento` date NOT NULL default '0000-00-00',
  `sexo` enum('Masculino','Femenino') NOT NULL default 'Masculino',
  `estado_civil` enum('Casado/a','Soltero/a','Viudo/a','Divorciado/a','Concubino/a') NOT NULL default 'Casado/a',
  `cónyuge_nombre` varchar(30) default NULL,
  `número_hijos` tinyint(4) default NULL,
  `última_ocupación` varchar(30) default NULL,
  `última_residencia` varchar(30) default NULL,
  `procedencia` varchar(30) default NULL,
  `obra_social` enum('particular','pami','iose','ipam') NOT NULL default 'particular',
  `afiliado_número` varchar(50) default NULL,
  `sobrenombre` varchar(20) default NULL,
  `habitación` tinyint(4) NOT NULL default '0',
  `ingreso_camilla` enum('Si','No') NOT NULL default 'Si',
  `empresa_traslado` varchar(20) default NULL,
  `responsable_traslado` varchar(95) default NULL,
  `acompañantes` varchar(50) default NULL,
  `observaciones` varchar(255) default NULL,
  `egreso_fecha` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`hc`),
  UNIQUE KEY `documento_número` (`documento_número`),
  KEY `idx_egreso_fecha` (`egreso_fecha`),
  KEY `idx_apellido` (`apellido`(5)),
  KEY `idx_habitacion` (`habitación`),
  KEY `idx_os` (`obra_social`)
) TYPE=MyISAM;



#
# Dumping data for table 'residentes'
#
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("2", "Rojas", "Jorge", "2005-01-25", "DNI", "8659949", "argentino", "Salta", "1971-04-25", "Masculino", "Viudo/a", "", "0", "cantante", "córdoba", "", "particular", "", "", "6", "No", "", "", "", "", "2006-02-10");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("3", "Quiroga", "Mirta Beatríz", "2004-04-25", "DNI", "3651323", "argentino", "Córdoba", "1935-07-14", "Femenino", "Soltero/a", "", "0", "", "", "", "pami", "45555555555", "", "1", "No", "", "", "", "", "2006-01-30");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("4", "Porcetto", "Catalina", "2004-06-04", "DNI", "2276767", "argentino", "Córdoba", "1942-12-24", "Masculino", "Viudo/a", "", "0", "", "", "", "pami", "1455555555", "", "2", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("5", "Machado", "Fernanda", "2004-06-14", "DNI", "429867", "argentino", "Córdoba", "1951-06-20", "Femenino", "Divorciado/a", "", "0", "", "", "", "particular", "", "", "3", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("6", "Marquetti", "Ignacio Miguel", "2005-06-01", "DNI", "5319034", "argentino", "Córdoba", "1931-07-14", "Masculino", "Divorciado/a", "", "0", "", "", "", "pami", "111111111111", "", "4", "No", "", "", "", "Derivación segundo nivel.", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("7", "Rodríguez", "Jorge", "2005-09-14", "DNI", "5305568", "argentino", "Córdoba", "1938-05-27", "Masculino", "Casado/a", "", "0", "", "", "", "particular", "", "", "4", "No", "", "", "", "", "2006-02-02");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("8", "Montoya", "Fidel", "2005-09-04", "DNI", "570740", "argentino", "Córdoba", "1929-05-14", "Masculino", "Soltero/a", "", "0", "", "", "", "particular", "", "", "5", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("9", "Robledo", "Damián", "2005-02-14", "DNI", "6936996", "argentino", "Capital", "1928-05-24", "Masculino", "Viudo/a", "", "0", "", "", "", "pami", "11111111111111", "", "9", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("10", "Fernández", "Cristina Ines", "2003-05-11", "DNI", "2972762", "argentino", "Capital", "1956-03-01", "Femenino", "Casado/a", "", "0", "", "", "", "pami", "1455555555", "", "7", "Si", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("11", "Villalba", "MIrian Roxana", "2002-03-14", "DNI", "4052821", "argentino", "Capital", "1947-05-06", "Femenino", "Viudo/a", "", "0", "", "", "San Juan", "pami", "111111111111", "", "8", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("12", "Ochoa", "Juan", "2005-02-02", "DNI", "1345821", "argentino", "Capital", "1939-03-20", "Masculino", "Viudo/a", "", "0", "", "", "", "pami", "", "", "7", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("13", "Pedemonte", "Beatriz", "2003-05-02", "DNI", "4570642", "argentino", "Capital", "1927-02-15", "Femenino", "Viudo/a", "", "0", "", "", "", "pami", "1455555555", "", "10", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("14", "Colombrez", "Nélida Miriam", "2006-02-10", "DNI", "8815748", "argentina", "Capital", "1934-02-14", "Femenino", "Soltero/a", "", "0", "Epleada de comercio", "", "", "pami", "", "", "13", "No", "", "", "", "", "0000-00-00");
INSERT INTO residentes (hc, apellido, nombre, fecha_ingreso, documento_tipo, documento_número, nacionalidad, lugar_nacimiento, fecha_nacimiento, sexo, estado_civil, cónyuge_nombre, número_hijos, última_ocupación, última_residencia, procedencia, obra_social, afiliado_número, sobrenombre, habitación, ingreso_camilla, empresa_traslado, responsable_traslado, acompañantes, observaciones, egreso_fecha) VALUES("15", "Quiroga", "Juan Roberto", "2003-06-12", "DNI", "366814", "argentino", "Capital", "1929-06-24", "Masculino", "Casado/a", "Elisa Rivero", "3", "Comerciante", "Córodba", "su domicilio", "particular", "", "", "10", "No", "", "", "Hijos", "", "0000-00-00");


#
# Table structure for table 'semestrales_clínica_médica'
#

DROP TABLE IF EXISTS semestrales_clínica_médica;
CREATE TABLE `semestrales_clínica_médica` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `APP` text,
  `diagnóstico_ingreso` text,
  `codigos_CIE` varchar(150) default NULL,
  `examen_físico` text,
  `examenes_complementarios` text,
  `nuevos_diagnósticos` text,
  `plan_terapéutico` text,
  `plan_diagnóstico` text,
  `pronóstico` text,
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_clínica_médica'
#
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("3", "7", "2006-02-08", "Fecha de ingreso: 15 de marzo de 1997.-1-obesidad,2-hipotiroidismo,3-sindrome maniaco depresivo. ANTECEDENTES DE INTOLERANCIA O ALERGIA? A LA PENICILINA,", "1-flebectasia,2obsesidad, 3-disfuncion tiroidea a investigar, 4-epoc.Bronquitis cronica, tipo B,5-rinosinusitis aguda,6-dispepsia biliofermentativa, 7-sindrome comisial, convulsivo 2º al litio?,hipertension arterial, dislipemia.", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Ex. complementarios previos: Informe n048984 de la ic. con gastroenterologia, Dr Herrera Marin, describe masa palpable abdominal en hipocondrio derecho, y solicita ecografia abdominal y colon por eneme en informe respectivo 048985,informe de fecha 29/06/04, nº de consulta 35304, HC 36559, RX COLON POR ENEMA EVACUADO, informe del Dr R Oldani, pasaje normal, del contraste por todo el marco colonico hasta el fondo cecal, con valvula iliocecal incontinente opacificandose la ultima asa ileal que es de caracteristicas normales,buena distension de las paredes de todos los segmentos colonicos, sin lesiones estenosantes ni alteraciones visibles de la mucosa, espacio presacro esta conservado, moderado dolicocolon. ...sic. INFORME DE ECOGRAFIA COMPLETA DE ABDOMEN, de fecha de 29/06/2004, nº consulta 35291,HC 36559, informe del Dr Luna: higado homogeneo, de forma y tamaño normal, sin signos de lesiones organicas focales ni dilatacion de la via biliar intra o extrahepatica, vesicula distendida, aumentada de tamaño, de paredes finas con calculo en su interior, el pancreas es de forma y tamaño normal, sus reparos vasculares conservados, ambos riñones son de forma, tamaño y ubicacion normal, sin signos de lesiones parenquimatosas ni dilatacion de las vias excretoras, bazo de caracteristicas ecograficas normales, aorta elongada con calcificaciones parietales ateromatosas...sic. de ic. con cardiologia, Dr Wisner, informe nº 59671, ecg fc 48 x min conduccion av normal, isquemia anteroseptal, Indicacion de Marcapasos ....sic. Se enviara a cirujano, para su conocimiento, de todos los examenes complementarios, y valoracion final para la disposicion de la fecha de cirugia. De momentos no se le informara a la paciente, por sus caracteristicas psicopatologicas, que determinaria una potencial descompensacion o situacion negativa al respecto.rx. de torax, de fecha 19/07/2004, de control y como parte del prequirurgico, siluet con leve agrandoamiento, boton ao, denostado, sin imagenes compaibles con calcificaciones, ang ,. cardiofrenico libres, broncograma aereo presente, conservado, patron pulmonar hiperclaro, compatible con enfisema y cierto grado de hipert. pulmonar, sin cambios ni variantes con rx. anteriores.informe de IC con cardiologia, de fecha del 26/07/2004, D Licari,Informe: pte. de 59 a sin antecedentes de patologia cardiovascular, no DBT ni AT.ant no alergia a drogas. TA 130/80 fc 50xmin, reg. no r4ni r3 no soplo, ap resp. sp. ECG Brad Sinusal Riesgo ASA I .....sic. Se repetira ic. con cirujano, para nueva valoracion y definicion de fecha quirurgica de Ecografia Tiroidea por el Dr Luna, nº de consulta 38443 HC 36559, ambos lobulosinhomogeneos,el derecho omidio, 17x19x36 mm con imagen nodular solida de 10mm en tercio medio y el izquierdo de 16x17x31 mm tambien con pequeña imagen nodular de 5.5 mm en tercio inferior. No se observan imagenes quisticas,Itsmo heterogeneo, engrosado de 6.2 mm de epesor, con imagene nodular de 9.7 mm lateralizado izquierdo. El resto del examen no detecta patologia ecografica. ...sic.Plan aguardare dosaje serico de t3t4 h tsh, y solicitare puncion aspirativa con biopsia RX TORAX de fecha 11/04/2005, patron enfisematoso, con signos indirectos e incipientes de hipert pumonarl, silueta cv., elongada, desplazada a la izq con boton ao. sin calcificaciones aparentes. Reumen de informes de examenes complementario de diagnostico: Informe de fecha 29/06/04, nº de consulta 35304, HC 36559, RX COLON POR ENEMA EVACUADO, informe del Dr R Oldani, pasaje normal, del contraste por todo el marco colonico hasta el fondo cecal, con valvula iliocecal incontinente opacificandose la ultima asa ileal que es de caracteristicas normales,buena distension de las paredes de todos los segmentos colonicos, sin lesiones estenosantes ni alteraciones visibles de la mucosa, espacio presacro esta conservado, moderado dolicocolon. ...sic. INFORME DE COGRAFIA COMPLETA DE ABDOMEN, de fecha de 29/06/2004, nº consulta 35291,HC 36559, informe del Dr Luna: higado homogeneo, de forma y tamaño normal, sin signos de lesiones organicas focales ni dilatacion de la via biliar intra o extrahepatica, vesicula distendida, aumentada de tamaño, de paredes finas con calculo en su interior, el pancreas es de forma y tamaño normal, sus reparos vasculares conservados, ambos riñones son de forma, tamaño y ubicacion normal, sin signos de lesiones parenquimatosas ni dilatacion de las vias excretoras, bazo de caracteristicas ecograficas normales, aorta elongada con calcificaciones parietales ateromatosas.laboratorio, de fecha 03/07/2004., protocolo nº 36559, gr 4 400 000 hb 13.35hto 40 vg 1.00, leucocitos 5650 neu 3390 linfo 1978 to protromina 90n por ciento vsg 21 mm, kptt 33 segs., Conclusion, dentro de limites normales. Idx. solicitare ic. con endocrino, para descartar disfuncion de hipo a hiper.de Ecografia Tiroidea por el Dr Luna, nº de consulta 38443 HC 36559, ambos lobulosinhomogeneos,el derecho omidio, 17x19x36 mm con imagen nodular solida de 10mm en tercio medio y el izquierdo de 16x17x31 mm tambien con pequeña imagen nodular de 5.5 mm en tercio inferior. No se observan imagenes quisticas,Itsmo heterogeneo, engrosado de 6.2 mm de epesor, con imagene nodular de 9.7 mm lateralizado izquierdo. El resto del examen no detecta patologia ecografica. ...sic.Plan aguardare dosaje serico de t3t4 h tsh, y solicitare puncion aspirativa con biopsia", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", "RESERVADO, a pesar de la buena evolucion ponderal en este ultimo semestre, y el control de su evolucion y sindrome cv., y disendocrinia, persiste en la progresion de los factores de riesgo de comorbilidades asociadas a la HTA., poliglobulia borderline, colangitis secundaria a litiasis, ahora en tiempo quirurgico y dismetabolismos, que por este ultimo semestre se mantudoasintomatica, se vera progresion y control, de su disfuncion tiroidea, aguardo laboratorio de dosaje serico y paaf., salvo por su constancia en demanda de atencion y cuidados de comorbilidad psiquica predominante no exenta a compromisos somaticos.", "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("2", "11", "2006-02-08", "Fecha de ingreso: 15 de marzo de 1997.-1-obesidad,2-hipotiroidismo,3-sindrome maniaco depresivo. ANTECEDENTES DE INTOLERANCIA O ALERGIA? A LA PENICILINA,", "1-flebectasia,2obsesidad, 3-disfuncion tiroidea a investigar, 4-epoc.Bronquitis cronica, tipo B,5-rinosinusitis aguda,6-dispepsia biliofermentativa, 7-sindrome comisial, convulsivo 2º al litio?,hipertension arterial, dislipemia.", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Ex. complementarios previos: Informe n048984 de la ic. con gastroenterologia, Dr Herrera Marin, describe masa palpable abdominal en hipocondrio derecho, y solicita ecografia abdominal y colon por eneme en informe respectivo 048985,informe de fecha 29/06/04, nº de consulta 35304, HC 36559, RX COLON POR ENEMA EVACUADO, informe del Dr R Oldani, pasaje normal, del contraste por todo el marco colonico hasta el fondo cecal, con valvula iliocecal incontinente opacificandose la ultima asa ileal que es de caracteristicas normales,buena distension de las paredes de todos los segmentos colonicos, sin lesiones estenosantes ni alteraciones visibles de la mucosa, espacio presacro esta conservado, moderado dolicocolon. ...sic. INFORME DE ECOGRAFIA COMPLETA DE ABDOMEN, de fecha de 29/06/2004, nº consulta 35291,HC 36559, informe del Dr Luna: higado homogeneo, de forma y tamaño normal, sin signos de lesiones organicas focales ni dilatacion de la via biliar intra o extrahepatica, vesicula distendida, aumentada de tamaño, de paredes finas con calculo en su interior, el pancreas es de forma y tamaño normal, sus reparos vasculares conservados, ambos riñones son de forma, tamaño y ubicacion normal, sin signos de lesiones parenquimatosas ni dilatacion de las vias excretoras, bazo de caracteristicas ecograficas normales, aorta elongada con calcificaciones parietales ateromatosas...sic. de ic. con cardiologia, Dr Wisner, informe nº 59671, ecg fc 48 x min conduccion av normal, isquemia anteroseptal, Indicacion de Marcapasos ....sic. Se enviara a cirujano, para su conocimiento, de todos los examenes complementarios, y valoracion final para la disposicion de la fecha de cirugia. De momentos no se le informara a la paciente, por sus caracteristicas psicopatologicas, que determinaria una potencial descompensacion o situacion negativa al respecto.rx. de torax, de fecha 19/07/2004, de control y como parte del prequirurgico, siluet con leve agrandoamiento, boton ao, denostado, sin imagenes compaibles con calcificaciones, ang ,. cardiofrenico libres, broncograma aereo presente, conservado, patron pulmonar hiperclaro, compatible con enfisema y cierto grado de hipert. pulmonar, sin cambios ni variantes con rx. anteriores.informe de IC con cardiologia, de fecha del 26/07/2004, D Licari,Informe: pte. de 59 a sin antecedentes de patologia cardiovascular, no DBT ni AT.ant no alergia a drogas. TA 130/80 fc 50xmin, reg. no r4ni r3 no soplo, ap resp. sp. ECG Brad Sinusal Riesgo ASA I .....sic. Se repetira ic. con cirujano, para nueva valoracion y definicion de fecha quirurgica de Ecografia Tiroidea por el Dr Luna, nº de consulta 38443 HC 36559, ambos lobulosinhomogeneos,el derecho omidio, 17x19x36 mm con imagen nodular solida de 10mm en tercio medio y el izquierdo de 16x17x31 mm tambien con pequeña imagen nodular de 5.5 mm en tercio inferior. No se observan imagenes quisticas,Itsmo heterogeneo, engrosado de 6.2 mm de epesor, con imagene nodular de 9.7 mm lateralizado izquierdo. El resto del examen no detecta patologia ecografica. ...sic.Plan aguardare dosaje serico de t3t4 h tsh, y solicitare puncion aspirativa con biopsia RX TORAX de fecha 11/04/2005, patron enfisematoso, con signos indirectos e incipientes de hipert pumonarl, silueta cv., elongada, desplazada a la izq con boton ao. sin calcificaciones aparentes. Reumen de informes de examenes complementario de diagnostico: Informe de fecha 29/06/04, nº de consulta 35304, HC 36559, RX COLON POR ENEMA EVACUADO, informe del Dr R Oldani, pasaje normal, del contraste por todo el marco colonico hasta el fondo cecal, con valvula iliocecal incontinente opacificandose la ultima asa ileal que es de caracteristicas normales,buena distension de las paredes de todos los segmentos colonicos, sin lesiones estenosantes ni alteraciones visibles de la mucosa, espacio presacro esta conservado, moderado dolicocolon. ...sic. INFORME DE COGRAFIA COMPLETA DE ABDOMEN, de fecha de 29/06/2004, nº consulta 35291,HC 36559, informe del Dr Luna: higado homogeneo, de forma y tamaño normal, sin signos de lesiones organicas focales ni dilatacion de la via biliar intra o extrahepatica, vesicula distendida, aumentada de tamaño, de paredes finas con calculo en su interior, el pancreas es de forma y tamaño normal, sus reparos vasculares conservados, ambos riñones son de forma, tamaño y ubicacion normal, sin signos de lesiones parenquimatosas ni dilatacion de las vias excretoras, bazo de caracteristicas ecograficas normales, aorta elongada con calcificaciones parietales ateromatosas.laboratorio, de fecha 03/07/2004., protocolo nº 36559, gr 4 400 000 hb 13.35hto 40 vg 1.00, leucocitos 5650 neu 3390 linfo 1978 to protromina 90n por ciento vsg 21 mm, kptt 33 segs., Conclusion, dentro de limites normales. Idx. solicitare ic. con endocrino, para descartar disfuncion de hipo a hiper.de Ecografia Tiroidea por el Dr Luna, nº de consulta 38443 HC 36559, ambos lobulosinhomogeneos,el derecho omidio, 17x19x36 mm con imagen nodular solida de 10mm en tercio medio y el izquierdo de 16x17x31 mm tambien con pequeña imagen nodular de 5.5 mm en tercio inferior. No se observan imagenes quisticas,Itsmo heterogeneo, engrosado de 6.2 mm de epesor, con imagene nodular de 9.7 mm lateralizado izquierdo. El resto del examen no detecta patologia ecografica. ...sic.Plan aguardare dosaje serico de t3t4 h tsh, y solicitare puncion aspirativa con biopsia", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", "RESERVADO, a pesar de la buena evolucion ponderal en este ultimo semestre, y el control de su evolucion y sindrome cv., y disendocrinia, persiste en la progresion de los factores de riesgo de comorbilidades asociadas a la HTA., poliglobulia borderline, colangitis secundaria a litiasis, ahora en tiempo quirurgico y dismetabolismos, que por este ultimo semestre se mantudoasintomatica, se vera progresion y control, de su disfuncion tiroidea, aguardo laboratorio de dosaje serico y paaf., salvo por su constancia en demanda de atencion y cuidados de comorbilidad psiquica predominante no exenta a compromisos somaticos.", "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("4", "7", "2006-02-08", "fsaf", "sadf", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "(MEMO)Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", "RESERVADO, a pesar de la buena evolucion ponderal en este ultimo semestre, y el control de su evolucion y sindrome cv., y disendocrinia, persiste en la progresion de los factores de riesgo de comorbilidades asociadas a la HTA., poliglobulia borderline, colangitis secundaria a litiasis, ahora en tiempo quirurgico y dismetabolismos, que por este ultimo semestre se mantudoasintomatica, se vera progresion y control, de su disfuncion tiroidea, aguardo laboratorio de dosaje serico y paaf., salvo por su constancia en demanda de atencion y cuidados de comorbilidad psiquica predominante no exenta a compromisos somaticos.", "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("5", "11", "2006-02-08", "3", "3", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", "RESERVADO, a pesar de la buena evolucion ponderal en este ultimo semestre, y el control de su evolucion y sindrome cv., y disendocrinia, persiste en la progresion de los factores de riesgo de comorbilidades asociadas a la HTA., poliglobulia borderline, colangitis secundaria a litiasis, ahora en tiempo quirurgico y dismetabolismos, que por este ultimo semestre se mantudoasintomatica, se vera progresion y control, de su disfuncion tiroidea, aguardo laboratorio de dosaje serico y paaf., salvo por su constancia en demanda de atencion y cuidados de comorbilidad psiquica predominante no exenta a compromisos somaticos.", "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("6", "8", "2006-02-08", "asdf", "safdsaf", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "asdf", "safdPeso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", "safd", "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("7", "8", "2006-02-08", "asdf", "sadf", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "sdf", "sdf", "sdf", "RESERVADO, a pesar de la buena evolucion ponderal en este ultimo semestre, y el control de su evolucion y sindrome cv., y disendocrinia, persiste en la progresion de los factores de riesgo de comorbilidades asociadas a la HTA., poliglobulia borderline, colangitis secundaria a litiasis, ahora en tiempo quirurgico y dismetabolismos, que por este ultimo semestre se mantudoasintomatica, se vera progresion y control, de su disfuncion tiroidea, aguardo laboratorio de dosaje serico y paaf., salvo por su constancia en demanda de atencion y cuidados de comorbilidad psiquica predominante no exenta a compromisos somaticos.", "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("8", "2", "2006-02-08", NULL, NULL, "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", NULL, "Dr. Porcel Miguel");
INSERT INTO semestrales_clínica_médica (id, hc, fecha, APP, diagnóstico_ingreso, codigos_CIE, examen_físico, examenes_complementarios, nuevos_diagnósticos, plan_terapéutico, plan_diagnóstico, pronóstico, profesional_actuante) VALUES("9", "14", "2006-03-01", "Fecha de ingreso: 15 de marzo de 1997.-1-obesidad,2-hipotiroidismo,3-sindrome maniaco depresivo. ANTECEDENTES DE INTOLERANCIA O ALERGIA? A LA PENICILINA,", "1-flebectasia,2obsesidad, 3-disfuncion tiroidea a investigar, 4-epoc.Bronquitis cronica, tipo B,5-rinosinusitis aguda,6-dispepsia biliofermentativa, 7-sindrome comisial, convulsivo 2º al litio?,hipertension arterial, dislipemia.", "F OO.2/ F.20.9// I.10/I 83.9/ J44.8", "Peso actual:79kg., registro en el anterior ex. semestral, 69.5KG., otros registros de peso en anteriores ex semestrales: 51.6kg,, 63kg, 83kg., 96.1kg. Cabeza: normocefala, ag. visual, olfativa y auditiva conservada, sentido del gusto, conservado, denticion propia, en mal estado general, con periodontitis tabaquica 2º y evolucionada, con piezas faltantes, deglucion y masticacion conservadas, sin dificultades, Cuello, tiroides, no palpables, adenopatias, no palpables, ss carotideos,negativos, motilidad y flexo rotacion conservadas, toarx, tipo enfisematoso, con hiperplasia e hipertrofia mamaria, gigantismo, sin nodulos ni adenopatias aparentes, respiratorio, roncus difusos bilaterales, pero ventilacion conservada, cv., r1r2, no ss, no edemas, fc 76 x min, reg., ta 120/70mmHg, pulsos perifericos simetricos y presentes, abdomen, globuloso, higado descendido, vb., palpable, no dolorosa, rh++, cuerda colica ++, pp renal bilateral negativa, pru, superior y medio der. e izq. negativos, traube conservado, oma, tono y postura, trofismo muscular, conservados, neurologico, rot vivos y simetricos, conservados no signos cerebelosos, no signos deficitarios, praxia y agnosias conservadas, Grados de independencia, deambulacion, higiene, vestido y alimentacion 3, maneja dinero, y puede salir de la residencia.-", "Ex. complementarios previos: Informe n048984 de la ic. con gastroenterologia, Dr Herrera Marino, describe masa palpable abdominal en hipocondrio derecho, y solicita ecografia abdominal y colon por eneme en informe respectivo 048985,informe de fecha 29/06/04, nº de consulta 35304, HC 36559, RX COLON POR ENEMA EVACUADO, informe del Dr R Oldani, pasaje normal, del contraste por todo el marco colonico hasta el fondo cecal, con valvula iliocecal incontinente opacificandose la ultima asa ileal que es de caracteristicas normales,buena distension de las paredes de todos los segmentos colonicos, sin lesiones estenosantes ni alteraciones visibles de la mucosa, espacio presacro esta conservado, moderado dolicocolon. ...sic. INFORME DE ECOGRAFIA COMPLETA DE ABDOMEN, de fecha de 29/06/2004, nº consulta 35291,HC 36559, informe del Dr Luna: higado homogeneo, de forma y tamaño normal, sin signos de lesiones organicas focales ni dilatacion de la via biliar intra o extrahepatica, vesicula distendida, aumentada de tamaño, de paredes finas con calculo en su interior, el pancreas es de forma y tamaño normal, sus reparos vasculares conservados, ambos riñones son de forma, tamaño y ubicacion normal, sin signos de lesiones parenquimatosas ni dilatacion de las vias excretoras, bazo de caracteristicas ecograficas normales, aorta elongada con calcificaciones parietales ateromatosas...sic. de ic. con cardiologia, Dr Wisner, informe nº 59671, ecg fc 48 x min conduccion av normal, isquemia anteroseptal, Indicacion de Marcapasos ....sic. Se enviara a cirujano, para su conocimiento, de todos los examenes complementarios, y valoracion final para la disposicion de la fecha de cirugia. De momentos no se le informara a la paciente, por sus caracteristicas psicopatologicas, que determinaria una potencial descompensacion o situacion negativa al respecto.rx. de torax, de fecha 19/07/2004, de control y como parte del prequirurgico, siluet con leve agrandoamiento, boton ao, denostado, sin imagenes compaibles con calcificaciones, ang ,. cardiofrenico libres, broncograma aereo presente, conservado, patron pulmonar hiperclaro, compatible con enfisema y cierto grado de hipert. pulmonar, sin cambios ni variantes con rx. anteriores.informe de IC con cardiologia, de fecha del 26/07/2004, D Licari,Informe: pte. de 59 a sin antecedentes de patologia cardiovascular, no DBT ni AT.ant no alergia a drogas. TA 130/80 fc 50xmin, reg. no r4ni r3 no soplo, ap resp. sp. ECG Brad Sinusal Riesgo ASA I .....sic. Se repetira ic. con cirujano, para nueva valoracion y definicion de fecha quirurgica de Ecografia Tiroidea por el Dr Luna, nº de consulta 38443 HC 36559, ambos lobulosinhomogeneos,el derecho omidio, 17x19x36 mm con imagen nodular solida de 10mm en tercio medio y el izquierdo de 16x17x31 mm tambien con pequeña imagen nodular de 5.5 mm en tercio inferior. No se observan imagenes quisticas,Itsmo heterogeneo, engrosado de 6.2 mm de epesor, con imagene nodular de 9.7 mm lateralizado izquierdo. El resto del examen no detecta patologia ecografica. ...sic.Plan aguardare dosaje serico de t3t4 h tsh, y solicitare puncion aspirativa con biopsia RX TORAX de fecha 11/04/2005, patron enfisematoso, con signos indirectos e incipientes de hipert pumonarl, silueta cv., elongada, desplazada a la izq con boton ao. sin calcificaciones aparentes. Reumen de informes de examenes complementario de diagnostico: Informe de fecha 29/06/04, nº de consulta 35304, HC 36559, RX COLON POR ENEMA EVACUADO, informe del Dr R Oldani, pasaje normal, del contraste por todo el marco colonico hasta el fondo cecal, con valvula iliocecal incontinente opacificandose la ultima asa ileal que es de caracteristicas normales,buena distension de las paredes de todos los segmentos colonicos, sin lesiones estenosantes ni alteraciones visibles de la mucosa, espacio presacro esta conservado, moderado dolicocolon. ...sic. INFORME DE COGRAFIA COMPLETA DE ABDOMEN, de fecha de 29/06/2004, nº consulta 35291,HC 36559, informe del Dr Luna: higado homogeneo, de forma y tamaño normal, sin signos de lesiones organicas focales ni dilatacion de la via biliar intra o extrahepatica, vesicula distendida, aumentada de tamaño, de paredes finas con calculo en su interior, el pancreas es de forma y tamaño normal, sus reparos vasculares conservados, ambos riñones son de forma, tamaño y ubicacion normal, sin signos de lesiones parenquimatosas ni dilatacion de las vias excretoras, bazo de caracteristicas ecograficas normales, aorta elongada con calcificaciones parietales ateromatosas.laboratorio, de fecha 03/07/2004., protocolo nº 36559, gr 4 400 000 hb 13.35hto 40 vg 1.00, leucocitos 5650 neu 3390 linfo 1978 to protromina 90n por ciento vsg 21 mm, kptt 33 segs., Conclusion, dentro de limites normales. Idx. solicitare ic. con endocrino, para descartar disfuncion de hipo a hiper.de Ecografia Tiroidea por el Dr Luna, nº de consulta 38443 HC 36559, ambos lobulosinhomogeneos,el derecho omidio, 17x19x36 mm con imagen nodular solida de 10mm en tercio medio y el izquierdo de 16x17x31 mm tambien con pequeña imagen nodular de 5.5 mm en tercio inferior. No se observan imagenes quisticas,Itsmo heterogeneo, engrosado de 6.2 mm de epesor, con imagene nodular de 9.7 mm lateralizado izquierdo. El resto del examen no detecta patologia ecografica. ...sic.Plan aguardare dosaje serico de t3t4 h tsh, y solicitare puncion aspirativa con biopsia", "1-Colelitiasis,asintomatica, y sin dispepsia biliofermentativa, con buena evolucion a la dieta, 2-rinosinusitis cronica recidivante,sin episodios agudos, 3-cifoescoliosis 2º con osteoartrosis y osteopenia 2º, evolucionada y agravada, a la hiperplasia e hipertrofia mamaria, pero con buena respuesta al plan de ejercicios y kinesioterapia", "Control de factores de riesgo, prevencion de y con vacunas de pool bacteriano, antithistaminicos locales, atb.en ciclos para pousee agudos. Buena evolucion y rspuesta a este planteo, lo que ha reducido progresivamente los episodios agudos, a uno en el ultimo semestre, salvo una laringitis, y otitis externa,y rinosinusitis, su dispepsia biliar secundaria a colelitiasis, asintomatica en este semestre ultimo, al igual que su rinofaringitis, atopica y estacional.", "Control de quimica funcional hepatica y renal, control de perfil lipidico y nueva IC con endocrino para nuevo uardo resultados de control serico de hormonas de perfil funcional tiroideo.", "RESERVADO, a pesar de la buena evolucion ponderal en este ultimo semestre, y el control de su evolucion y sindrome cv., y disendocrinia, persiste en la progresion de los factores de riesgo de comorbilidades asociadas a la HTA., poliglobulia borderline, colangitis secundaria a litiasis, ahora en tiempo quirurgico y dismetabolismos, que por este ultimo semestre se mantudoasintomatica, se vera progresion y control, de su disfuncion tiroidea, aguardo laboratorio de dosaje serico y paaf., salvo por su constancia en demanda de atencion y cuidados de comorbilidad psiquica predominante no exenta a compromisos somaticos.", "Dr. Porcel Miguel");


#
# Table structure for table 'semestrales_enfermería'
#

DROP TABLE IF EXISTS semestrales_enfermería;
CREATE TABLE `semestrales_enfermería` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `ambulatorio` enum('Independiente','Usa bastón','Usa andador','Usa silla ruedas') NOT NULL default 'Independiente',
  `estado_conciencia` enum('Lúcido','Alterado','Confuso','Sopor','Estupor','En coma') NOT NULL default 'Lúcido',
  `estado_ánimo` enum('Ansioso','Angustiado','Triste','Lloroso','Irritable','Alegre') NOT NULL default 'Ansioso',
  `piel` enum('Integra','Con lesiones','Con escoriaciones','Con úlceras') NOT NULL default 'Integra',
  `lesiones` varchar(255) default NULL,
  `audición` enum('Conservada','Alterada','Con audífonos','Sordo') NOT NULL default 'Conservada',
  `visión` enum('Conservada','Alterada','Usa lentes','Ciego') NOT NULL default 'Conservada',
  `lenguaje` enum('Comprensible','Incomprensible','Permite el diálogo','Mudo') NOT NULL default 'Comprensible',
  `apetito` enum('Conservado','Disminuído') NOT NULL default 'Conservado',
  `intolerancias_alimenticias` varchar(150) NOT NULL default '',
  `control_diuresis` enum('sí','no') NOT NULL default 'no',
  `dificultad_al_orinar` enum('sí','no') NOT NULL default 'no',
  `control_esfínteres` varchar(150) default NULL,
  `frecuencia_rectal` varchar(30) default NULL,
  `observaciones` varchar(255) default NULL,
  `enfermero_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_enfermería'
#


#
# Table structure for table 'semestrales_kinesiología'
#

DROP TABLE IF EXISTS semestrales_kinesiología;
CREATE TABLE `semestrales_kinesiología` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` datetime NOT NULL default '0000-00-00 00:00:00',
  `examen_kinesiológico` varchar(255) NOT NULL default '',
  `examen_articular` varchar(255) default NULL,
  `examen_muscular` varchar(255) default NULL,
  `examen_marcha` varchar(255) default NULL,
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_kinesiología'
#


#
# Table structure for table 'semestrales_nutrición'
#

DROP TABLE IF EXISTS semestrales_nutrición;
CREATE TABLE `semestrales_nutrición` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` datetime NOT NULL default '0000-00-00 00:00:00',
  `cambios_peso` enum('si','no') NOT NULL default 'si',
  `cambios_apetito` enum('si','no') NOT NULL default 'si',
  `complemento_alimentario` enum('si','no') NOT NULL default 'si',
  `suplemento_dietético` enum('si','no') NOT NULL default 'si',
  `hidratación` enum('si','no') NOT NULL default 'si',
  `intolerancias` varchar(150) NOT NULL default '',
  `preferencias` varchar(150) NOT NULL default '',
  `datos_proteinograma` varchar(255) NOT NULL default '',
  `colesterol_cérico` varchar(255) NOT NULL default '',
  `triglicéridos` varchar(255) NOT NULL default '',
  `problemas_orales` varchar(255) NOT NULL default '',
  `peso` float(3,2) NOT NULL default '0.00',
  `talla` float(3,2) NOT NULL default '0.00',
  `IMC` float(3,2) NOT NULL default '0.00',
  `plan_nutricional` varchar(255) NOT NULL default '',
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_nutrición'
#


#
# Table structure for table 'semestrales_psiquiatría'
#

DROP TABLE IF EXISTS semestrales_psiquiatría;
CREATE TABLE `semestrales_psiquiatría` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `presentación` varchar(255) NOT NULL default '',
  `conciencia` varchar(255) NOT NULL default '',
  `conciencia_situación` varchar(255) NOT NULL default '',
  `conciencia_enfermedad` varchar(255) NOT NULL default '',
  `orientación` varchar(255) NOT NULL default '',
  `sensopercepción` varchar(255) NOT NULL default '',
  `pensamiento` varchar(255) NOT NULL default '',
  `memoria` varchar(255) NOT NULL default '',
  `afectividad` varchar(255) NOT NULL default '',
  `actividad` varchar(255) NOT NULL default '',
  `lenguaje_verbal` varchar(255) NOT NULL default '',
  `lenguaje_no_verval` varchar(255) NOT NULL default '',
  `sueño` varchar(255) NOT NULL default '',
  `alimentacion` varchar(255) NOT NULL default '',
  `sexualidad` varchar(255) NOT NULL default '',
  `contacto_realidad` varchar(255) NOT NULL default '',
  `juicio` varchar(255) NOT NULL default '',
  `aceptacion_internación` varchar(255) NOT NULL default '',
  `diagnóstico_derivación` varchar(255) NOT NULL default '',
  `diagnostico_CIE_10` varchar(255) NOT NULL default '',
  `médico_psiquiatra` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_psiquiatría'
#
INSERT INTO semestrales_psiquiatría (id, hc, fecha, presentación, conciencia, conciencia_situación, conciencia_enfermedad, orientación, sensopercepción, pensamiento, memoria, afectividad, actividad, lenguaje_verbal, lenguaje_no_verval, sueño, alimentacion, sexualidad, contacto_realidad, juicio, aceptacion_internación, diagnóstico_derivación, diagnostico_CIE_10, médico_psiquiatra) VALUES("1", "8", "2006-03-01", "Adecuada", "Lúcida", "Conservada", "Parcialmente", "Conservada", "Sin alteraciones", "Levemente polarizado", "Conservada", "Hipotimia", "Hipobulia", "Sin trastornos", "Sin alteraciones", "Conservado con medicación", "Conservada", "Sin particularidades", "Conservado", "Desviado", "Si", "Síndrome Maniacodepresivo", "F31.7 Trastorno bipolar, actualmente en remisión", "Dr. Quiroga Walter");


#
# Table structure for table 'semestrales_recreación'
#

DROP TABLE IF EXISTS semestrales_recreación;
CREATE TABLE `semestrales_recreación` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `actividades_que_participa` varchar(200) default NULL,
  `actitud` varchar(200) default NULL,
  `evaluación` varchar(250) default NULL,
  `observación` varchar(250) default NULL,
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_recreación'
#


#
# Table structure for table 'semestrales_trabajo_social'
#

DROP TABLE IF EXISTS semestrales_trabajo_social;
CREATE TABLE `semestrales_trabajo_social` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `relaciones_vinculares` varchar(255) NOT NULL default '',
  `vínculos_afectivos` varchar(255) NOT NULL default '',
  `participación` varchar(250) NOT NULL default '',
  `trámites_gestiones` varchar(200) NOT NULL default '',
  `adaptación_institución` varchar(255) NOT NULL default '',
  `aspecto_económico` varchar(255) NOT NULL default '',
  `observaciones` varchar(255) NOT NULL default '',
  `profesional_actuante` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hc` (`hc`),
  KEY `fecha` (`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'semestrales_trabajo_social'
#
INSERT INTO semestrales_trabajo_social (id, hc, fecha, relaciones_vinculares, vínculos_afectivos, participación, trámites_gestiones, adaptación_institución, aspecto_económico, observaciones, profesional_actuante) VALUES("1", "13", "2006-02-05", "Relaciones vinculares normales", "Vinculos afectivos normales", "adecuada", "Cobro jubiliación", "buena", "normal", "sin novedad", "Lic. Duarte Pedro");
INSERT INTO semestrales_trabajo_social (id, hc, fecha, relaciones_vinculares, vínculos_afectivos, participación, trámites_gestiones, adaptación_institución, aspecto_económico, observaciones, profesional_actuante) VALUES("2", "12", "2006-03-01", "Residente que ha logrado una adecuada inserción en grupo luego de período de internación en Hosptal Colonia por descompensación psiquiátrica.", "La familia permanece en contacto con  residente.", "La actitud ante las actividades de recreación es generalmente como observador.", "Ha solicitud de residente se prepara un nuevo pedido de revisión de coseguro, en virtud del descuento que efectuan actualmente.", "Ha logrado una adecuada inserción. Mantiene hábitos propios, y permanece en habitación individual a modo de brindar estabilidad a la residente.", "Percibe jubilación que por descuento de coseguro de internación dispuesto por PAMI, resulta insuficiente para atender a sus necesidades personales.", "Residente con evolución favorable desde reingreso a la Institución. Desde hace 2 meses ha comenzado a concurrir en forma personal al banco para cobro del haber previsional.", "Lic. Duarte Pedro");


#
# Table structure for table 'signos_vitales'
#

DROP TABLE IF EXISTS signos_vitales;
CREATE TABLE `signos_vitales` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` smallint(5) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `hora` time NOT NULL default '00:00:00',
  `diastólica` tinyint(3) unsigned NOT NULL default '0',
  `sistólica` tinyint(3) unsigned NOT NULL default '0',
  `pulso` tinyint(3) unsigned NOT NULL default '0',
  `temperatura` float(3,2) NOT NULL default '0.00',
  `peso` float(3,2) NOT NULL default '0.00',
  `talla` float(3,2) NOT NULL default '0.00',
  `deposiciones` varchar(20) NOT NULL default '',
  `diuresis` varchar(30) NOT NULL default '',
  `balance_hídrico` varchar(30) NOT NULL default '',
  `observaciones` varchar(255) default NULL,
  `enfermero_actuante` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_fecha` (`fecha`),
  KEY `idx_hc` (`hc`,`fecha`)
) TYPE=MyISAM;



#
# Dumping data for table 'signos_vitales'
#
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("1", "9", "2005-02-04", "15:00:00", "80", "130", "75", "35.50", "79.00", "1.72", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("2", "6", "2005-02-04", "21:00:00", "80", "130", "70", "36.00", "80.00", "1.79", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("3", "7", "2005-02-04", "13:30:00", "90", "140", "80", "36.50", "79.60", "1.79", "++", "--", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("4", "5", "2005-02-04", "07:00:00", "75", "130", "60", "36.30", "55.00", "1.65", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("5", "3", "2006-02-04", "08:30:00", "75", "140", "70", "36.50", "80.00", "1.70", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Dr. Porcel Miguel");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("6", "8", "2006-02-06", "06:30:00", "80", "130", "80", "36.50", "80.00", "1.68", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Castañeda Angela");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("7", "11", "2006-02-08", "07:30:00", "80", "120", "75", "36.50", "75.00", "1.70", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Dr. Porcel Miguel");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("8", "10", "2006-02-13", "09:30:00", "80", "130", "70", "36.50", "79.00", "1.78", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Dr. Porcel Miguel");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("9", "2", "2006-02-04", "08:30:00", "75", "140", "70", "36.50", "80.00", "1.65", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("10", "4", "0000-00-00", "00:00:00", "0", "130", "130", "36.50", "80.00", "1.79", "", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("11", "12", "2006-02-08", "07:30:00", "80", "130", "130", "36.50", "65.00", "1.79", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("12", "13", "2006-02-08", "07:30:00", "80", "130", "130", "36.50", "55.00", "1.59", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("13", "14", "2006-02-08", "07:30:00", "80", "130", "130", "36.50", "70.00", "1.90", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("14", "15", "2006-02-08", "07:30:00", "80", "130", "130", "36.50", "70.00", "1.79", "++", "++", "++", "Se encuentra al paciente con sv conservados.", "Salzano Horacio");
INSERT INTO signos_vitales (id, hc, fecha, hora, diastólica, sistólica, pulso, temperatura, peso, talla, deposiciones, diuresis, balance_hídrico, observaciones, enfermero_actuante) VALUES("15", "11", "2006-06-20", "10:30:00", "90", "140", "80", "36.60", "61.00", "1.65", "++", "++", "++", "", "Dr. Porcel Miguel");


#
# Table structure for table 'usuarios'
#

DROP TABLE IF EXISTS usuarios;
CREATE TABLE `usuarios` (
  `logon` varchar(20) NOT NULL default '',
  `pass` varchar(100) NOT NULL default '',
  `apellido` varchar(20) NOT NULL default '',
  `nombre` varchar(20) NOT NULL default '',
  `área` enum('','Gerencia','Dirección','Administración','Secretaría','Farmacia','Enfermería','Clínica Médica','Psiquiatría','Trabajo Social','Supervisión Enfermería','Nutrición','Kinesiología','Recreación') NOT NULL default '',
  `matricula` varchar(20) default NULL,
  `domicilio` varchar(80) default NULL,
  `teléfonos` varchar(20) default NULL,
  `horario` varchar(20) default NULL,
  `activo` enum('si','no') NOT NULL default 'si',
  `minutos_timeout` smallint(5) unsigned NOT NULL default '15',
  `acceso_remoto` enum('no','si') NOT NULL default 'no',
  PRIMARY KEY  (`logon`),
  KEY `idx_apellido` (`apellido`(5)),
  KEY `idx_area` (`área`),
  KEY `idx_activo` (`activo`)
) TYPE=MyISAM;



#
# Dumping data for table 'usuarios'
#
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("admin", "565491d704013245", "Acevedo", "Walter", "Administración", "", "", "", "", "si", "60", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("médico", "565491d704013245", "Dr. Porcel", "Miguel", "Clínica Médica", "123456", "s/d", "", "", "si", "30", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("director", "565491d704013245", "Dr. Mercado", "Santiago", "Dirección", "s/d", "s/d", "", "lun a vie 9 a 17", "si", "30", "no");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("psiquiatra", "565491d704013245", "Dr. Quiroga", "Walter", "Psiquiatría", "123456", "Puerredón 860 - Nueva Cba. - Cba. Capital", "0351 467555555", "lun mar mie 14 a 18", "si", "30", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("social", "565491d704013245", "Lic. Duarte", "Pedro", "Trabajo Social", "123456", "s/d", "", "", "si", "30", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("nutrición", "565491d704013245", "Lic. Ortega", "Silvia", "Nutrición", "123456", "s/d", "", "", "si", "30", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("gerente", "565491d704013245", "Bustamante", "Fernando Alberto", "Gerencia", "", "", "", "", "si", "60", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("supervisor", "565491d704013245", "Castañeda", "Angela", "Supervisión Enfermería", "123456", "", "", "", "si", "60", "si");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("farmacia", "565491d704013245", "Pacheco", "Ramona", "Farmacia", "", "s/d", "", "", "si", "60", "no");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("recreacion", "565491d704013245", "Pedroni", "Roxana", "Recreación", "", "s/d", "s/d", "", "si", "30", "no");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("secretaria", "565491d704013245", "Bermúdez", "María", "Secretaría", "", "s/d", "", "", "si", "30", "no");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("enfermero", "565491d704013245", "Salzano", "Horacio", "Enfermería", "", "", "", "", "si", "30", "no");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("kinesio", "565491d704013245", "Duarte", "Osvaldo", "Kinesiología", "", "", "", "", "si", "30", "no");
INSERT INTO usuarios (logon, pass, apellido, nombre, área, matricula, domicilio, teléfonos, horario, activo, minutos_timeout, acceso_remoto) VALUES("pepe", "565491d704013245", "González", "José", "Recreación", "", "", "", "", "si", "30", "no");


#
# Table structure for table 'usuarios_auditoría'
#

DROP TABLE IF EXISTS usuarios_auditoría;
CREATE TABLE `usuarios_auditoría` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `id_sesión` smallint(5) unsigned NOT NULL default '0',
  `hora` time NOT NULL default '00:00:00',
  `acción` set('modificó','insertó','borró','consultó','cambió contraseña usuario') NOT NULL default 'consultó',
  `tabla` varchar(60) NOT NULL default '',
  `id_registro` varchar(20) NOT NULL default '""',
  PRIMARY KEY  (`id`),
  KEY `id_sesión` (`id_sesión`),
  KEY `tabla` (`tabla`(4)),
  KEY `id_registro` (`id_registro`(3))
) TYPE=MyISAM;



#
# Dumping data for table 'usuarios_auditoría'
#
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("18", "42", "15:38:00", "insertó", "evoluciones", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("17", "42", "15:36:00", "insertó", "epicrisis", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("16", "34", "11:34:00", "insertó", "epicrisis", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("15", "33", "11:22:00", "modificó", "residentes", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("14", "32", "03:03:00", "insertó", "familiares", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("13", "32", "03:00:00", "insertó", "familiares", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("12", "29", "18:36:00", "insertó", "familiares", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("11", "29", "18:33:00", "insertó", "residentes", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("19", "58", "10:16:00", "", "usuarios", "0");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("20", "58", "10:21:00", "", "usuarios", "silvia");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("21", "58", "10:39:00", "modificó", "residentes", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("22", "58", "10:41:00", "modificó", "residentes", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("23", "58", "10:42:00", "modificó", "usuarios", "pedro");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("24", "62", "11:07:00", "cambió contraseña usuario", "usuarios", "$logon");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("25", "62", "11:14:00", "cambió contraseña usuario", "usuarios", "admin");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("26", "62", "11:26:00", "modificó", "usuarios", "calchaquin");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("27", "64", "12:54:00", "", "cambio imagen plano", "admin");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("28", "64", "12:57:00", "modificó", "ninguna", "agregó o editó image");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("29", "64", "12:58:00", "modificó", "ninguna", "edición plano");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("30", "64", "13:05:00", "insertó", "débitos ctas. ctes.", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("31", "64", "13:10:00", "insertó", "débitos ctas. ctes.", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("32", "64", "13:18:00", "insertó", "crédito cta. cte.", "11");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("33", "77", "19:36:00", "modificó", "ninguna", "Respaldo de datos.");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("34", "77", "19:36:00", "modificó", "ninguna", "Respaldo de datos.");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("35", "102", "01:17:00", "insertó", "evoluciones", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("36", "103", "01:30:00", "insertó", "residentes", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("37", "103", "01:31:00", "insertó", "residentes", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("38", "103", "01:31:00", "modificó", "residentes", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("39", "103", "01:33:00", "insertó", "residentes", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("40", "103", "01:35:00", "insertó", "residentes", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("41", "104", "10:20:00", "insertó", "residentes", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("42", "104", "10:21:00", "insertó", "residentes", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("43", "107", "11:09:00", "insertó", "epicrisis", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("44", "111", "13:07:00", "insertó", "débitos ctas. ctes.", "12");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("45", "112", "13:21:00", "modificó", "usuarios", "admin");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("46", "115", "14:16:00", "insertó", "prescripciones", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("47", "159", "22:18:00", "", "usuarios", "gerente");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("48", "160", "22:25:00", "", "usuarios", "supervisor");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("49", "162", "22:27:00", "insertó", "residentes", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("50", "162", "22:41:00", "insertó", "familiares", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("51", "162", "22:43:00", "insertó", "interconsultas", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("52", "162", "22:47:00", "insertó", "actividades", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("53", "162", "22:48:00", "modificó", "actividades", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("54", "162", "22:50:00", "insertó", "débitos ctas. ctes.", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("55", "162", "22:51:00", "insertó", "crédito cta. cte.", "14");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("56", "163", "00:53:00", "cambió contraseña usuario", "usuarios", "gerente");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("57", "163", "00:58:00", "", "usuarios", "farmacia");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("58", "163", "00:59:00", "modificó", "usuarios", "farmacia");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("59", "163", "01:00:00", "modificó", "usuarios", "walter");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("60", "165", "01:17:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("61", "165", "01:20:00", "modificó", "residentes", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("62", "165", "01:21:00", "insertó", "familiares", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("63", "166", "01:38:00", "modificó", "usuarios", "picaron");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("64", "170", "11:33:00", "insertó", "residentes", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("65", "170", "11:35:00", "modificó", "residentes", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("66", "171", "11:54:00", "modificó", "usuarios", "director");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("67", "171", "11:57:00", "insertó", "familiares", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("68", "171", "12:45:00", "modificó", "familiares", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("69", "171", "12:53:00", "insertó", "interconsultas", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("70", "171", "13:07:00", "insertó", "prescripciones", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("71", "171", "13:26:00", "insertó", "prescripciones_canceladas", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("72", "171", "13:49:00", "insertó", "actividades", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("73", "171", "13:51:00", "insertó", "visitas", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("74", "172", "14:03:00", "cambió contraseña usuario", "usuarios", "gerente");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("75", "172", "14:09:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("76", "176", "23:07:00", "insertó", "residentes", "11");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("77", "176", "23:07:00", "modificó", "residentes", "11");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("78", "176", "23:12:00", "insertó", "familiares", "11");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("79", "176", "23:14:00", "insertó", "interconsultas", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("80", "176", "23:17:00", "modificó", "actividades", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("81", "176", "23:18:00", "insertó", "actividades", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("82", "176", "23:20:00", "insertó", "débitos ctas. ctes.", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("83", "176", "23:20:00", "insertó", "crédito cta. cte.", "16");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("84", "176", "23:20:00", "insertó", "crédito cta. cte.", "17");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("85", "177", "23:24:00", "cambió contraseña usuario", "usuarios", "admin");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("86", "177", "23:25:00", "", "usuarios", "recreacion");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("87", "177", "23:26:00", "modificó", "usuarios", "recreacion");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("88", "180", "02:12:00", "insertó", "familiares", "12");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("89", "180", "02:15:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("90", "207", "16:25:00", "insertó", "evoluciones", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("91", "209", "16:57:00", "modificó", "actividades", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("92", "210", "16:58:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("93", "210", "17:06:00", "", "usuarios", "secretaría");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("94", "210", "17:10:00", "", "usuarios", "enfermero");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("95", "211", "17:46:00", "insertó", "signos_vitales", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("96", "211", "17:49:00", "insertó", "signos_vitales", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("97", "211", "17:51:00", "insertó", "signos_vitales", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("98", "212", "18:05:00", "insertó", "signos_vitales", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("99", "212", "18:09:00", "cambió contraseña usuario", "usuarios", "enfermero");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("100", "212", "18:12:00", "insertó", "reportes_enfermería", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("101", "227", "20:39:00", "insertó", "reportes_enfermería", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("102", "229", "21:15:00", "insertó", "residentes", "12");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("103", "229", "21:15:00", "modificó", "residentes", "12");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("104", "229", "21:18:00", "insertó", "familiares", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("105", "229", "21:20:00", "insertó", "interconsultas", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("106", "229", "21:27:00", "insertó", "actividades", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("107", "229", "21:28:00", "modificó", "actividades", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("108", "231", "21:31:00", "cambió contraseña usuario", "usuarios", "secretaria");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("109", "231", "21:36:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("110", "234", "22:07:00", "insertó", "semestrales_clínica_médica", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("111", "234", "22:13:00", "insertó", "signos_vitales", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("112", "234", "22:15:00", "insertó", "epicrisis", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("113", "235", "00:13:00", "insertó", "evoluciones", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("114", "235", "00:14:00", "insertó", "familiares", "14");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("115", "235", "00:16:00", "insertó", "interconsultas", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("116", "235", "00:17:00", "insertó", "prescripciones", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("117", "235", "00:18:00", "insertó", "prescripciones", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("118", "238", "01:06:00", "insertó", "evoluciones", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("119", "238", "01:28:00", "cambió contraseña usuario", "usuarios", "psiquiatra");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("120", "239", "17:48:00", "insertó", "residentes", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("121", "239", "17:49:00", "modificó", "residentes", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("122", "239", "17:51:00", "insertó", "semestrales_trabajo_social", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("123", "239", "17:57:00", "insertó", "familiares", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("124", "239", "17:58:00", "modificó", "familiares", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("125", "240", "18:15:00", "insertó", "evoluciones", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("126", "241", "19:56:00", "", "usuarios", "kinesio");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("127", "243", "20:17:00", "insertó", "visitas", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("128", "247", "20:32:00", "insertó", "familiares", "16");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("129", "247", "20:35:00", "modificó", "residentes", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("130", "247", "20:36:00", "modificó", "residentes", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("131", "247", "20:36:00", "modificó", "residentes", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("132", "247", "20:40:00", "insertó", "signos_vitales", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("133", "247", "20:42:00", "insertó", "evoluciones", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("134", "247", "20:43:00", "insertó", "interconsultas", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("135", "247", "20:46:00", "insertó", "actividades", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("136", "247", "20:47:00", "modificó", "actividades", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("137", "247", "20:47:00", "insertó", "visitas", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("138", "249", "20:51:00", "insertó", "reportes_enfermería", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("139", "253", "20:59:00", "insertó", "actividades", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("140", "267", "22:31:00", "insertó", "evoluciones", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("141", "267", "22:31:00", "insertó", "evoluciones", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("142", "267", "22:32:00", "insertó", "evoluciones", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("143", "274", "00:38:00", "insertó", "evoluciones", "11");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("144", "274", "00:39:00", "insertó", "evoluciones", "12");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("145", "274", "00:40:00", "insertó", "evoluciones", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("146", "275", "00:41:00", "insertó", "evoluciones", "14");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("147", "275", "00:42:00", "insertó", "evoluciones", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("148", "275", "00:42:00", "insertó", "evoluciones", "16");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("149", "275", "00:43:00", "insertó", "evoluciones", "17");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("150", "275", "00:44:00", "insertó", "evoluciones", "18");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("151", "275", "00:46:00", "insertó", "evoluciones", "19");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("152", "275", "00:47:00", "insertó", "evoluciones", "20");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("153", "275", "00:48:00", "insertó", "evoluciones", "21");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("154", "275", "00:49:00", "insertó", "evoluciones", "22");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("155", "277", "10:01:00", "insertó", "evoluciones", "23");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("156", "277", "10:02:00", "insertó", "evoluciones", "24");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("157", "277", "10:05:00", "insertó", "evoluciones", "25");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("158", "278", "10:06:00", "insertó", "evoluciones", "26");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("159", "278", "10:06:00", "insertó", "evoluciones", "27");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("160", "279", "10:10:00", "insertó", "informes_sociales", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("161", "280", "10:25:00", "insertó", "semestrales_clínica_médica", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("162", "280", "11:06:00", "insertó", "semestrales_clínica_médica", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("163", "280", "11:32:00", "insertó", "semestrales_clínica_médica", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("164", "280", "11:32:00", "insertó", "semestrales_clínica_médica", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("165", "280", "12:56:00", "insertó", "evoluciones", "28");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("166", "280", "13:16:00", "insertó", "evoluciones", "29");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("167", "281", "14:04:00", "insertó", "evoluciones", "30");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("168", "281", "14:05:00", "insertó", "evoluciones", "31");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("169", "281", "14:06:00", "insertó", "evoluciones", "32");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("170", "281", "14:07:00", "insertó", "evoluciones", "33");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("171", "281", "14:14:00", "insertó", "familiares", "17");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("172", "281", "14:21:00", "insertó", "evoluciones", "34");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("173", "281", "14:21:00", "insertó", "prescripciones", "5");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("174", "281", "14:22:00", "insertó", "signos_vitales", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("175", "282", "17:21:00", "insertó", "semestrales_clínica_médica", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("176", "282", "17:21:00", "insertó", "semestrales_clínica_médica", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("177", "282", "17:32:00", "insertó", "visitas", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("178", "287", "22:20:00", "insertó", "evoluciones", "35");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("179", "288", "22:28:00", "insertó", "prescripciones", "6");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("180", "288", "22:28:00", "insertó", "prescripciones", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("181", "288", "22:29:00", "insertó", "prescripciones", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("182", "288", "22:29:00", "insertó", "prescripciones", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("183", "289", "22:47:00", "insertó", "débitos ctas. ctes.", "18");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("184", "289", "22:48:00", "insertó", "débitos ctas. ctes.", "19");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("185", "293", "15:22:00", "insertó", "crédito cta. cte.", "20");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("186", "294", "16:01:00", "insertó", "crédito cta. cte.", "21");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("187", "294", "16:19:00", "insertó", "débitos ctas. ctes.", "22");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("188", "294", "16:19:00", "insertó", "débitos ctas. ctes.", "23");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("189", "294", "16:19:00", "insertó", "débitos ctas. ctes.", "24");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("190", "294", "16:20:00", "insertó", "débitos ctas. ctes.", "25");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("191", "294", "16:20:00", "insertó", "débitos ctas. ctes.", "26");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("192", "295", "00:51:00", "insertó", "débitos ctas. ctes.", "27");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("193", "306", "17:05:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("194", "324", "16:10:00", "modificó", "residentes", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("195", "324", "16:11:00", "insertó", "familiares", "18");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("196", "324", "16:11:00", "modificó", "familiares", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("197", "324", "16:13:00", "insertó", "interconsultas", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("198", "324", "16:14:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("199", "324", "16:15:00", "insertó", "débitos ctas. ctes.", "28");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("200", "324", "16:15:00", "insertó", "crédito cta. cte.", "29");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("201", "324", "16:16:00", "insertó", "débitos ctas. ctes.", "30");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("202", "326", "16:24:00", "insertó", "epicrisis", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("203", "326", "16:29:00", "insertó", "actividades", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("204", "326", "16:29:00", "modificó", "actividades", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("205", "327", "16:30:00", "insertó", "reportes_enfermería", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("206", "328", "16:33:00", "cambió contraseña usuario", "usuarios", "gerente");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("207", "329", "16:49:00", "insertó", "prescripciones", "10");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("208", "329", "16:49:00", "insertó", "prescripciones_canceladas", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("209", "341", "19:52:00", "modificó", "usuarios", "kinesio");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("210", "370", "00:14:00", "", "usuarios", "pepe");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("211", "371", "00:45:00", "insertó", "residentes", "14");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("212", "371", "00:52:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("213", "371", "01:01:00", "insertó", "débitos ctas. ctes.", "31");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("214", "371", "01:02:00", "insertó", "débitos ctas. ctes.", "32");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("215", "371", "01:02:00", "insertó", "crédito cta. cte.", "33");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("216", "375", "15:49:00", "modificó", "familiares", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("217", "376", "15:49:00", "modificó", "familiares", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("218", "376", "15:53:00", "modificó", "familiares", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("219", "376", "15:56:00", "modificó", "familiares", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("220", "377", "17:03:00", "insertó", "signos_vitales", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("221", "380", "20:32:00", "modificó", "epicrisis", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("222", "380", "20:33:00", "modificó", "epicrisis", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("223", "380", "20:34:00", "modificó", "epicrisis", "7");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("224", "383", "10:37:00", "insertó", "residentes", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("225", "383", "10:39:00", "insertó", "familiares", "19");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("226", "383", "10:39:00", "modificó", "residentes", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("227", "383", "10:40:00", "modificó", "familiares", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("228", "383", "10:43:00", "modificó", "residentes", "15");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("229", "383", "11:22:00", "insertó", "actividades", "8");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("230", "390", "18:55:00", "insertó", "prescripciones", "11");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("231", "390", "19:07:00", "insertó", "prescripciones", "12");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("232", "394", "20:49:00", "insertó", "prescripciones", "13");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("233", "394", "20:59:00", "insertó", "prescripciones_canceladas", "3");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("234", "394", "21:12:00", "insertó", "prescripciones_canceladas", "4");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("235", "394", "21:13:00", "insertó", "prescripciones", "14");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("236", "398", "21:50:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("237", "420", "13:55:00", "insertó", "evoluciones", "38");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("238", "422", "12:40:00", "cambió contraseña usuario", "usuarios", "farmacia");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("239", "423", "12:41:00", "cambió contraseña usuario", "usuarios", "farmacia");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("240", "424", "12:42:00", "cambió contraseña usuario", "usuarios", "farmacia");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("241", "463", "20:49:00", "insertó", "interconsultas", "18");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("242", "463", "20:52:00", "insertó", "actividades", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("243", "463", "20:54:00", "modificó", "actividades", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("244", "463", "21:01:00", "insertó", "débitos ctas. ctes.", "34");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("245", "463", "21:01:00", "insertó", "crédito cta. cte.", "35");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("246", "463", "21:02:00", "insertó", "crédito cta. cte.", "36");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("247", "463", "21:30:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("248", "463", "21:40:00", "modificó", "ninguna", "Plano habitaciones");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("249", "465", "22:05:00", "insertó", "semestrales_clínica_médica", "9");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("250", "466", "22:08:00", "insertó", "semestrales_psiquiatría", "1");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("251", "467", "22:11:00", "insertó", "semestrales_trabajo_social", "2");
INSERT INTO usuarios_auditoría (id, id_sesión, hora, acción, tabla, id_registro) VALUES("252", "477", "21:12:00", "insertó", "signos_vitales", "15");


#
# Table structure for table 'usuarios_sesiones'
#

DROP TABLE IF EXISTS usuarios_sesiones;
CREATE TABLE `usuarios_sesiones` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `logon` varchar(20) NOT NULL default '',
  `fecha` datetime NOT NULL default '0000-00-00 00:00:00',
  `ip_origen` varchar(15) NOT NULL default '0.0.0.0',
  PRIMARY KEY  (`id`),
  KEY `idx_fecha` (`fecha`),
  KEY `logon` (`logon`(3))
) TYPE=MyISAM;



#
# Dumping data for table 'usuarios_sesiones'
#
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("32", "admin", "2006-01-31 01:42:00", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("31", "admin", "2006-01-31 01:37:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("30", "admin", "2006-01-30 18:58:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("29", "admin", "2006-01-30 18:21:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("28", "admin", "2006-01-30 17:56:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("27", "admin", "2006-01-30 17:51:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("26", "admin", "2006-01-30 17:39:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("25", "admin", "2006-01-30 17:18:43", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("24", "admin", "2006-01-30 17:08:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("23", "admin", "2006-01-30 17:06:02", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("22", "admin", "2006-01-30 17:05:23", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("21", "admin", "2006-01-30 16:48:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("20", "admin", "2006-01-30 16:33:43", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("19", "admin", "2006-01-30 15:25:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("18", "admin", "2006-01-30 15:01:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("17", "admin", "2006-01-30 15:00:40", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("33", "admin", "2006-01-31 11:06:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("34", "calchaquin", "2006-01-31 11:33:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("35", "admin", "2006-01-31 11:41:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("36", "calchaquin", "2006-01-31 12:22:44", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("37", "admin", "2006-01-31 12:39:36", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("38", "admin", "2006-01-31 12:56:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("39", "admin", "2006-01-31 13:31:00", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("40", "admin", "2006-01-31 14:39:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("41", "admin", "2006-01-31 15:05:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("42", "calchaquin", "2006-01-31 15:36:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("43", "admin", "2006-01-31 20:21:00", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("44", "admin", "2006-01-31 20:59:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("45", "admin", "2006-01-31 21:18:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("46", "admin", "2006-01-31 22:49:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("47", "admin", "2006-01-31 23:06:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("48", "admin", "2006-01-31 23:14:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("49", "admin", "2006-01-31 23:14:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("50", "admin", "2006-01-31 23:25:51", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("51", "admin", "2006-01-31 23:27:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("52", "admin", "2006-01-31 23:32:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("53", "admin", "2006-01-31 23:53:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("54", "admin", "2006-01-31 23:53:51", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("55", "calchaquin", "2006-02-01 00:38:09", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("56", "admin", "2006-02-01 10:01:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("57", "admin", "2006-02-01 10:09:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("58", "admin", "2006-02-01 10:09:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("59", "admin", "2006-02-01 10:54:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("60", "admin", "2006-02-01 10:55:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("61", "admin", "2006-02-01 10:57:23", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("62", "admin", "2006-02-01 10:59:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("63", "admin", "2006-02-01 12:08:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("64", "admin", "2006-02-01 12:20:23", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("65", "admin", "2006-02-01 13:38:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("66", "admin", "2006-02-01 13:54:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("67", "admin", "2006-02-01 14:11:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("68", "admin", "2006-02-01 14:40:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("69", "admin", "2006-02-01 14:58:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("70", "admin", "2006-02-01 15:08:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("71", "admin", "2006-02-01 19:16:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("72", "admin", "2006-02-01 19:23:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("73", "admin", "2006-02-01 19:24:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("74", "admin", "2006-02-01 19:26:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("75", "admin", "2006-02-01 19:27:13", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("76", "admin", "2006-02-01 19:29:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("77", "admin", "2006-02-01 19:29:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("78", "admin", "2006-02-01 19:37:36", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("79", "admin", "2006-02-01 19:44:09", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("80", "admin", "2006-02-01 19:45:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("81", "admin", "2006-02-01 19:47:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("82", "admin", "2006-02-01 19:48:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("83", "admin", "2006-02-01 19:52:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("84", "admin", "2006-02-01 19:56:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("85", "admin", "2006-02-01 19:57:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("86", "admin", "2006-02-01 19:57:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("87", "admin", "2006-02-01 19:59:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("88", "admin", "2006-02-01 20:12:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("89", "admin", "2006-02-01 20:17:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("90", "admin", "2006-02-01 20:22:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("91", "admin", "2006-02-01 20:34:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("92", "admin", "2006-02-01 20:36:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("93", "admin", "2006-02-01 20:37:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("94", "admin", "2006-02-01 20:38:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("95", "admin", "2006-02-01 20:39:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("96", "admin", "2006-02-01 20:39:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("97", "admin", "2006-02-01 20:41:21", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("98", "admin", "2006-02-01 23:11:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("99", "admin", "2006-02-01 23:31:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("100", "admin", "2006-02-02 00:08:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("101", "admin", "2006-02-02 00:45:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("102", "calchaquin", "2006-02-02 01:15:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("103", "admin", "2006-02-02 01:29:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("104", "admin", "2006-02-02 10:16:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("105", "admin", "2006-02-02 10:43:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("106", "admin", "2006-02-02 11:03:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("107", "calchaquin", "2006-02-02 11:08:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("108", "admin", "2006-02-02 12:01:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("109", "admin", "2006-02-02 12:20:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("110", "admin", "2006-02-02 12:42:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("111", "admin", "2006-02-02 13:05:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("112", "admin", "2006-02-02 13:21:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("113", "calchaquin", "2006-02-02 13:56:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("114", "picaron", "2006-02-02 13:57:40", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("115", "calchaquin", "2006-02-02 13:59:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("116", "admin", "2006-02-02 14:49:04", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("117", "admin", "2006-02-02 16:20:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("118", "admin", "2006-02-02 16:35:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("119", "admin", "2006-02-02 16:36:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("120", "admin", "2006-02-02 16:37:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("121", "admin", "2006-02-02 17:26:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("122", "admin", "2006-02-02 17:29:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("123", "admin", "2006-02-02 17:30:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("124", "admin", "2006-02-02 17:31:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("125", "admin", "2006-02-02 17:32:02", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("126", "admin", "2006-02-02 17:36:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("127", "admin", "2006-02-02 17:38:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("128", "admin", "2006-02-02 17:40:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("129", "admin", "2006-02-02 17:41:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("130", "admin", "2006-02-02 17:45:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("131", "admin", "2006-02-02 17:46:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("132", "admin", "2006-02-02 17:47:47", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("133", "admin", "2006-02-02 17:48:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("134", "admin", "2006-02-02 17:49:04", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("135", "admin", "2006-02-02 17:49:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("136", "admin", "2006-02-02 17:50:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("137", "admin", "2006-02-02 17:50:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("138", "admin", "2006-02-02 17:51:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("139", "admin", "2006-02-02 17:51:38", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("140", "admin", "2006-02-02 17:52:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("141", "admin", "2006-02-02 17:54:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("142", "admin", "2006-02-02 17:54:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("143", "admin", "2006-02-02 17:56:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("144", "admin", "2006-02-02 17:57:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("145", "admin", "2006-02-02 17:58:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("146", "admin", "2006-02-02 18:01:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("147", "admin", "2006-02-02 18:04:47", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("148", "admin", "2006-02-02 18:06:57", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("149", "admin", "2006-02-02 19:38:27", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("150", "admin", "2006-02-02 19:43:47", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("151", "admin", "2006-02-02 19:45:19", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("152", "admin", "2006-02-02 19:49:54", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("153", "admin", "2006-02-02 19:51:27", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("154", "admin", "2006-02-02 20:03:25", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("155", "admin", "2006-02-02 20:06:59", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("156", "admin", "2006-02-02 21:02:12", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("157", "calchaquin", "2006-02-02 21:02:51", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("158", "admin", "2006-02-02 21:03:22", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("159", "admin", "2006-02-02 22:14:38", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("160", "gerente", "2006-02-02 22:18:46", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("161", "supervisor", "2006-02-02 22:25:29", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("162", "gerente", "2006-02-02 22:26:04", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("163", "gerente", "2006-02-03 00:47:46", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("164", "calchaquin", "2006-02-03 01:09:34", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("165", "gerente", "2006-02-03 01:10:00", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("166", "gerente", "2006-02-03 01:29:31", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("167", "director", "2006-02-03 01:39:24", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("168", "gerente", "2006-02-03 01:44:54", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("169", "admin", "2006-02-03 11:31:34", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("170", "director", "2006-02-03 11:31:50", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("171", "director", "2006-02-03 11:52:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("172", "gerente", "2006-02-03 14:01:43", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("173", "admin", "2006-02-03 14:24:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("174", "gerente", "2006-02-03 15:05:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("175", "admin", "2006-02-03 15:20:13", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("176", "admin", "2006-02-03 23:04:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("177", "admin", "2006-03-03 23:21:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("178", "calchaquin", "2006-02-03 23:31:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("179", "admin", "2006-02-04 02:02:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("180", "admin", "2006-02-04 02:11:46", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("181", "admin", "2006-02-04 02:38:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("182", "admin", "2006-02-04 02:40:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("183", "admin", "2006-02-04 02:58:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("184", "admin", "2006-02-04 03:23:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("185", "gerente", "2005-02-04 11:45:34", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("186", "admin", "2005-02-04 11:46:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("187", "admin", "2005-02-04 11:47:51", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("188", "gerente", "2005-02-04 11:48:18", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("189", "admin", "2005-02-04 11:59:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("190", "admin", "2005-02-04 12:01:04", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("191", "admin", "2005-02-04 12:03:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("192", "admin", "2005-02-04 12:04:56", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("193", "admin", "2005-02-04 12:05:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("194", "admin", "2005-02-04 12:06:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("195", "admin", "2005-02-04 12:16:56", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("196", "admin", "2005-02-04 13:00:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("197", "admin", "2005-02-04 13:03:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("198", "admin", "2005-02-04 13:05:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("199", "admin", "2005-02-04 13:05:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("200", "admin", "2005-02-04 13:11:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("201", "admin", "2005-02-04 13:53:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("202", "admin", "2005-02-04 13:55:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("203", "admin", "2005-02-04 13:59:46", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("204", "admin", "2005-02-04 15:32:17", " 192.168.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("205", "admin", "2005-02-04 15:33:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("206", "admin", "2005-02-04 15:45:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("207", "director", "2005-02-04 16:24:14", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("208", "director", "2005-02-04 16:36:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("209", "director", "2005-02-04 16:45:40", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("210", "admin", "2005-02-04 16:58:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("211", "enfermero", "2005-02-04 17:14:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("212", "enfermero", "2005-02-04 18:02:40", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("213", "enfermero", "2006-02-04 18:21:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("214", "gerente", "2006-02-04 18:59:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("215", "admin", "2006-02-04 19:16:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("216", "admin", "2006-02-04 19:17:46", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("217", "admin", "2006-02-04 19:18:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("218", "admin", "2006-02-04 19:24:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("219", "admin", "2006-02-04 19:27:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("220", "admin", "2006-02-04 19:28:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("221", "admin", "2006-02-04 19:35:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("222", "admin", "2006-02-04 19:46:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("223", "admin", "2006-02-04 19:48:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("224", "psiquiatra", "2006-02-04 19:50:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("225", "admin", "2006-02-04 20:05:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("226", "admin", "2006-02-04 20:20:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("227", "enfermero", "2006-02-04 20:27:02", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("228", "admin", "2006-02-04 21:07:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("229", "secretaria", "2006-02-04 21:13:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("230", "director", "2006-02-04 21:29:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("231", "secretaria", "2006-02-04 21:30:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("232", "farmacia", "2006-02-04 21:40:47", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("233", "farmacia", "2006-02-04 22:01:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("234", "médico", "2006-02-04 22:05:00", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("235", "médico", "2006-02-05 00:12:03", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("236", "farmacia", "2006-02-05 00:25:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("237", "médico", "2006-02-05 00:35:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("238", "psiquiatra", "2006-02-05 00:52:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("239", "social", "2006-02-05 17:39:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("240", "nutrición", "2006-02-05 18:12:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("241", "admin", "2006-02-06 19:55:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("242", "kinesio", "2006-02-06 19:57:02", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("243", "kinesio", "2006-02-06 19:57:24", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("244", "admin", "2006-02-06 20:22:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("245", "social", "2006-02-06 20:25:06", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("246", "kinesio", "2006-02-06 20:26:21", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("247", "supervisor", "2006-02-06 20:31:13", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("248", "kinesio", "2006-02-06 20:49:58", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("249", "supervisor", "2006-02-06 20:50:27", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("250", "admin", "2006-02-06 20:53:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("251", "recreacion", "2006-02-06 20:53:51", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("252", "kinesio", "2006-02-06 20:56:35", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("253", "recreacion", "2006-02-06 20:57:07", " 192.168.0.2");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("254", "kinesio", "2006-02-07 00:13:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("255", "supervisor", "2006-02-07 00:19:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("256", "enfermero", "2006-02-07 00:22:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("257", "admin", "2006-02-07 14:02:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("258", "admin", "2006-02-07 17:04:56", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("259", "admin", "2006-02-07 17:59:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("260", "admin", "2006-02-07 18:05:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("261", "admin", "2006-02-07 18:20:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("262", "admin", "2006-02-07 18:27:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("263", "admin", "2006-02-07 19:53:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("264", "admin", "2006-02-07 20:14:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("265", "admin", "2006-02-07 21:44:21", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("266", "médico", "2006-02-07 21:51:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("267", "médico", "2006-02-07 21:53:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("268", "admin", "2006-02-07 23:02:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("269", "admin", "2006-02-07 23:05:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("270", "admin", "2006-02-07 23:14:16", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("271", "admin", "2006-02-07 23:15:09", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("272", "admin", "2006-02-07 23:40:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("273", "enfermero", "2006-02-07 23:46:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("274", "psiquiatra", "2006-02-08 00:35:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("275", "médico", "2006-02-08 00:41:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("276", "admin", "2006-02-08 10:00:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("277", "médico", "2006-02-08 10:01:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("278", "psiquiatra", "2006-02-08 10:05:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("279", "social", "2006-02-08 10:09:09", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("280", "médico", "2006-02-08 10:11:51", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("281", "médico", "2006-02-08 14:03:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("282", "médico", "2006-02-08 15:33:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("283", "médico", "2006-02-08 17:44:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("284", "admin", "2006-02-08 21:33:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("285", "admin", "2006-02-08 22:02:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("286", "médico", "2006-02-08 22:18:23", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("287", "social", "2006-02-08 22:18:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("288", "médico", "2006-02-08 22:27:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("289", "admin", "2006-02-08 22:47:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("290", "admin", "2006-02-08 22:59:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("291", "admin", "2006-02-08 23:06:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("292", "admin", "2006-02-09 12:13:02", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("293", "admin", "2006-02-09 14:55:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("294", "admin", "2006-02-09 15:57:03", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("295", "admin", "2006-02-10 00:28:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("296", "enfermero", "2006-02-10 01:00:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("297", "admin", "2006-02-10 11:19:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("298", "admin", "2006-02-10 11:20:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("299", "admin", "2006-02-10 12:46:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("300", "admin", "2006-02-10 12:56:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("301", "admin", "2006-02-10 14:07:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("302", "admin", "2006-02-10 14:07:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("303", "farmacia", "2006-02-10 14:41:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("304", "admin", "2006-02-10 16:55:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("305", "admin", "2006-02-10 17:04:47", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("306", "admin", "2006-02-10 17:04:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("307", "admin", "2006-02-10 17:06:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("308", "admin", "2006-02-10 17:08:02", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("309", "admin", "2006-02-10 17:08:38", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("310", "admin", "2006-02-10 17:32:23", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("311", "admin", "2006-02-10 17:45:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("312", "admin", "2006-02-10 21:57:56", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("313", "admin", "2006-02-11 12:36:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("314", "admin", "2006-02-11 13:36:09", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("315", "admin", "2006-02-11 13:39:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("316", "admin", "2006-02-11 13:40:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("317", "admin", "2006-02-11 13:47:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("318", "admin", "2006-02-11 14:18:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("319", "admin", "2006-02-11 14:19:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("320", "admin", "2006-02-11 14:23:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("321", "admin", "2006-02-11 14:23:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("322", "admin", "2006-02-11 14:25:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("323", "admin", "2006-02-11 14:25:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("324", "admin", "2006-02-11 16:04:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("325", "farmacia", "2006-02-11 16:18:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("326", "médico", "2006-02-11 16:23:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("327", "enfermero", "2006-02-11 16:30:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("328", "gerente", "2006-02-11 16:31:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("329", "médico", "2006-02-11 16:43:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("330", "admin", "2006-02-11 17:57:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("331", "médico", "2006-02-11 18:05:40", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("332", "admin", "2006-02-11 18:44:41", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("333", "admin", "2006-02-11 18:46:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("334", "admin", "2006-02-11 18:49:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("335", "admin", "2006-02-11 18:50:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("336", "admin", "2006-02-11 18:51:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("337", "admin", "2006-02-11 18:51:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("338", "admin", "2006-02-11 18:52:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("339", "admin", "2006-02-11 19:50:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("340", "médico", "2006-02-11 19:51:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("341", "admin", "2006-02-11 19:52:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("342", "admin", "2006-02-11 21:27:16", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("343", "admin", "2006-02-11 21:27:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("344", "admin", "2006-02-11 21:49:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("345", "admin", "2006-02-11 21:50:16", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("346", "admin", "2006-02-11 21:55:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("347", "admin", "2006-02-11 21:57:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("348", "admin", "2006-02-11 22:02:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("349", "admin", "2006-02-11 22:02:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("350", "admin", "2006-02-11 22:03:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("351", "admin", "2006-02-11 22:04:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("352", "admin", "2006-02-11 22:07:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("353", "admin", "2006-02-11 22:08:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("354", "admin", "2006-02-11 22:10:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("355", "admin", "2006-02-11 22:10:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("356", "admin", "2006-02-11 22:11:38", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("357", "admin", "2006-02-11 22:11:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("358", "admin", "2006-02-11 22:13:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("359", "admin", "2006-02-11 22:13:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("360", "admin", "2006-02-11 22:13:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("361", "admin", "2006-02-11 22:14:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("362", "admin", "2006-02-11 22:14:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("363", "admin", "2006-02-11 22:15:40", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("364", "admin", "2006-02-11 22:16:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("365", "admin", "2006-02-11 22:16:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("366", "admin", "2006-02-11 22:19:47", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("367", "admin", "2006-02-11 22:24:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("368", "admin", "2006-02-11 23:16:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("369", "admin", "2006-02-11 23:46:04", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("370", "admin", "2006-02-11 23:53:21", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("371", "admin", "2006-02-13 00:43:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("372", "médico", "2006-02-13 13:30:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("373", "médico", "2006-02-13 13:58:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("374", "médico", "2006-02-13 14:56:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("375", "médico", "2006-02-13 15:46:38", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("376", "médico", "2006-02-13 15:49:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("377", "médico", "2006-02-13 16:58:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("378", "médico", "2006-02-13 20:23:21", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("379", "médico", "2006-02-13 20:24:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("380", "médico", "2006-02-13 20:25:56", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("381", "médico", "2006-02-13 20:55:03", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("382", "director", "2006-02-14 00:57:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("383", "admin", "2006-02-14 10:35:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("384", "admin", "2006-02-14 12:41:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("385", "admin", "2006-02-14 14:52:05", " 192.168.0.100");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("386", "director", "2006-02-14 15:13:32", " 192.168.0.100");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("387", "social", "2006-02-14 18:39:32", " 192.168.0.100");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("388", "director", "2006-02-14 18:49:38", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("389", "farmacia", "2006-02-14 18:52:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("390", "médico", "2006-02-14 18:54:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("391", "director", "2006-02-14 20:18:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("392", "admin", "2006-02-14 20:25:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("393", "admin", "2006-02-14 20:29:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("394", "médico", "2006-02-14 20:29:57", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("395", "médico", "2006-02-14 21:30:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("396", "médico", "2006-02-14 21:31:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("397", "farmacia", "2006-02-14 21:41:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("398", "admin", "2006-02-14 21:49:03", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("399", "farmacia", "2006-02-14 21:51:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("400", "farmacia", "2006-02-14 22:15:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("401", "farmacia", "2006-02-14 22:17:44", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("402", "farmacia", "2006-02-14 22:18:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("403", "admin", "2006-02-15 00:11:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("404", "admin", "2006-02-15 00:15:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("405", "admin", "2006-02-15 16:38:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("406", "admin", "2006-02-15 19:00:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("407", "admin", "2006-02-15 20:51:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("408", "admin", "2006-02-15 20:53:25", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("409", "admin", "2006-02-15 22:59:44", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("410", "admin", "2006-02-15 23:02:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("411", "admin", "2006-02-16 00:05:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("412", "admin", "2006-02-16 00:54:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("413", "admin", "2006-02-16 12:01:57", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("414", "admin", "2006-02-16 12:09:48", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("415", "admin", "2006-02-16 13:16:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("416", "admin", "2006-02-16 13:16:52", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("417", "admin", "2006-02-16 13:26:58", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("418", "admin", "2006-02-16 13:34:32", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("419", "admin", "2006-02-16 13:50:51", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("420", "médico", "2006-02-16 13:52:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("421", "farmacia", "2006-02-17 18:45:28", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("422", "farmacia", "2006-02-18 10:43:02", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("423", "farmacia", "2006-02-18 12:41:27", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("424", "farmacia", "2006-02-18 12:42:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("425", "admin", "2006-02-18 13:05:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("426", "médico", "2006-02-18 13:39:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("427", "admin", "2006-02-19 16:48:11", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("428", "admin", "2006-02-21 01:14:20", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("429", "admin", "2006-02-21 10:42:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("430", "admin", "2006-02-21 11:00:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("431", "admin", "2006-02-21 11:14:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("432", "admin", "2006-02-21 11:21:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("433", "admin", "2006-02-21 11:22:43", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("434", "admin", "2006-02-21 13:55:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("435", "admin", "2006-02-21 13:57:16", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("436", "admin", "2006-02-21 14:05:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("437", "admin", "2006-02-21 14:17:36", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("438", "secretaria", "2006-02-21 14:48:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("439", "admin", "2006-02-21 14:48:42", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("440", "admin", "2006-02-21 14:49:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("441", "admin", "2006-02-21 14:57:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("442", "admin", "2006-02-21 14:59:35", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("443", "admin", "2006-02-21 14:59:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("444", "admin", "2006-02-21 15:00:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("445", "admin", "2006-02-21 15:06:01", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("446", "admin", "2006-02-21 15:07:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("447", "admin", "2006-02-21 18:16:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("448", "admin", "2006-02-21 18:20:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("449", "admin", "2006-02-21 22:11:43", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("450", "admin", "2006-02-21 23:17:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("451", "admin", "2006-02-21 23:18:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("452", "admin", "2006-02-21 23:29:37", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("453", "admin", "2006-02-21 23:36:19", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("454", "admin", "2006-02-21 23:44:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("455", "admin", "2006-02-21 23:49:04", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("456", "admin", "2006-02-21 23:56:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("457", "admin", "2006-02-21 23:57:03", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("458", "admin", "2006-02-24 11:47:51", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("459", "admin", "2006-02-24 12:00:44", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("460", "admin", "2006-02-24 12:00:54", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("461", "admin", "2006-02-27 17:20:17", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("462", "admin", "2006-03-01 16:33:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("463", "admin", "2006-03-01 20:38:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("464", "enfermero", "2006-03-01 21:58:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("465", "médico", "2006-03-01 22:03:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("466", "psiquiatra", "2006-03-01 22:06:55", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("467", "social", "2006-03-01 22:09:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("468", "admin", "2006-03-13 17:49:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("469", "admin", "2006-04-05 15:32:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("470", "admin", "2006-05-15 11:16:56", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("471", "admin", "2006-05-15 11:19:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("472", "admin", "2006-06-19 11:56:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("473", "admin", "2006-06-19 12:05:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("474", "admin", "2006-06-20 10:38:26", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("475", "admin", "2006-06-20 19:40:45", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("476", "admin", "2006-06-20 20:22:10", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("477", "médico", "2006-06-20 20:45:04", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("478", "admin", "2006-06-25 13:48:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("479", "admin", "2006-06-25 14:19:05", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("480", "médico", "2006-06-25 14:19:24", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("481", "médico", "2006-06-25 14:25:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("482", "médico", "2006-06-25 14:26:08", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("483", "admin", "2006-06-25 14:26:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("484", "admin", "2006-06-25 14:40:31", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("485", "admin", "2006-06-25 20:08:00", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("486", "médico", "2006-06-25 20:08:34", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("487", "admin", "2006-06-25 20:20:33", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("488", "médico", "2006-06-25 20:20:50", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("489", "admin", "2006-06-25 20:30:14", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("490", "médico", "2006-06-25 20:30:39", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("491", "admin", "2006-06-25 20:38:29", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("492", "médico", "2006-06-25 20:39:22", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("493", "médico", "2006-06-25 20:39:57", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("494", "médico", "2006-06-25 20:41:07", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("495", "médico", "2006-06-25 20:42:53", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("496", "admin", "2006-06-25 20:45:13", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("497", "admin", "2006-06-25 20:46:12", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("498", "médico", "2006-06-25 20:46:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("499", "admin", "2006-06-25 20:48:15", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("500", "admin", "2006-06-25 20:48:57", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("501", "médico", "2006-06-25 20:51:38", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("502", "admin", "2006-06-25 20:51:59", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("503", "médico", "2006-06-25 20:52:18", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("504", "médico", "2006-06-25 20:53:21", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("505", "admin", "2006-06-25 20:56:44", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("506", "admin", "2006-06-25 21:07:30", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("507", "médico", "2006-06-25 21:07:49", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("508", "admin", "2006-06-25 21:12:06", " 127.0.0.1");
INSERT INTO usuarios_sesiones (id, logon, fecha, ip_origen) VALUES("509", "admin", "2006-06-27 18:03:00", " 127.0.0.1");


#
# Table structure for table 'visitas'
#

DROP TABLE IF EXISTS visitas;
CREATE TABLE `visitas` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `hc` tinyint(3) unsigned NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `hora_llegada` varchar(15) NOT NULL default '0',
  `hora_partida` varchar(15) NOT NULL default '0',
  `visitas` varchar(150) NOT NULL default '0',
  `actitud_residente` enum('Alegre','Indiferente','Eufórico','Ansioso','Angustiado','Triste','Lloroso','Irritable') default NULL,
  `observaciones` text,
  `registrado_por` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_hc` (`hc`),
  KEY `idx_fecha` (`fecha`)
) TYPE=MyISAM COMMENT='visitas de famimiliares';



#
# Dumping data for table 'visitas'
#
INSERT INTO visitas (id, hc, fecha, hora_llegada, hora_partida, visitas, actitud_residente, observaciones, registrado_por) VALUES("1", "10", "2006-02-03", "14", "19", "Hijos", "Alegre", "Salieron de paseo.", "Dr. Mercado Santiago");
INSERT INTO visitas (id, hc, fecha, hora_llegada, hora_partida, visitas, actitud_residente, observaciones, registrado_por) VALUES("2", "7", "2006-02-06", "14", "19", "Hijos", "Alegre", "hjk", "Duarte Osvaldo");
INSERT INTO visitas (id, hc, fecha, hora_llegada, hora_partida, visitas, actitud_residente, observaciones, registrado_por) VALUES("3", "4", "2006-02-06", "14", "19", "Hijos", "Alegre", "", "Castañeda Angela");
INSERT INTO visitas (id, hc, fecha, hora_llegada, hora_partida, visitas, actitud_residente, observaciones, registrado_por) VALUES("4", "8", "2006-02-08", "17", "19", "Hijos", "Alegre", "los familiares entregaron ropa en secretaria", "Dr. Porcel Miguel");
