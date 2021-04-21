CREATE TABLE `compra` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`FECHA_COMPRA` DATE NOT NULL,
	`DETALLES` varchar(255) NOT NULL,
	`MONTO` bigint(20) NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `empresa` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`FECHA_CREACION` DATE NOT NULL,
	`NOMBRE_EMPRESA` varchar(255) NOT NULL,
	`RUT` varchar(50) NOT NULL,
	`PASSWD` varchar(255) NOT NULL,
	`DIRECCION` varchar(255) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `impuesto` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`NOMBRE` varchar(20) NOT NULL,
	`DESCRIPCION` varchar(255) NOT NULL,
	`PORCENTAJE` double NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `liquidacion` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`FECHA` DATE NOT NULL,
	`IMPONIBLE` int(11) NOT NULL,
	`NO_IMPONIBLE` int(11) NOT NULL,
	`DESCUENTO` int(11) NOT NULL,
	`DESCUENTO_LEGAL` int(11) NOT NULL,
	`TOTAL_DESCUENTO` int(11) NOT NULL,
	`TOTAL_LIQUIDO` int(11) NOT NULL,
	`TOTAL_HABERES` int(11) NOT NULL,
	`FK_TRABAJADOR` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `mensaje` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`TITULO` varchar(255) NOT NULL,
	`DESCRIPCION` varchar(255) NOT NULL,
	`FECHA` DATE NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `multa` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`MONTO` int(11) NOT NULL,
	`MOTIVO` varchar(255) NOT NULL,
	`FECHA_MULTA` DATE NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `trabajador` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`RUT` varchar(50) NOT NULL,
	`NOMBRE` varchar(20) NOT NULL,
	`APELLIDO` varchar(20) NOT NULL,
	`EMAIL` varchar(50) NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `venta` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`FECHA_VENTA` DATE NOT NULL,
	`DETALLES` varchar(255) NOT NULL,
	`MONTO` int(11) NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `convenio` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`NOMBRE` varchar(20) NOT NULL,
	`MONTO` int(11) NOT NULL,
	`DESCRIPCION` varchar(255) NOT NULL,
	`FECHA_CREACION` DATE NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `bono` (
	`ID` int(11) NOT NULL AUTO_INCREMENT,
	`NOMBRE` varchar(30) NOT NULL,
	`DESCRIPCION` varchar(255) NOT NULL,
	`MONTO` int(11) NOT NULL,
	`FK_EMPRESA` int(11) NOT NULL,
	PRIMARY KEY (`ID`)
);

ALTER TABLE `compra` ADD CONSTRAINT `compra_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `impuesto` ADD CONSTRAINT `impuesto_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `liquidacion` ADD CONSTRAINT `liquidacion_fk0` FOREIGN KEY (`FK_TRABAJADOR`) REFERENCES `trabajador`(`ID`);

ALTER TABLE `mensaje` ADD CONSTRAINT `mensaje_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `multa` ADD CONSTRAINT `multa_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `trabajador` ADD CONSTRAINT `trabajador_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `venta` ADD CONSTRAINT `venta_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `convenio` ADD CONSTRAINT `convenio_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

ALTER TABLE `bono` ADD CONSTRAINT `bono_fk0` FOREIGN KEY (`FK_EMPRESA`) REFERENCES `empresa`(`ID`);

