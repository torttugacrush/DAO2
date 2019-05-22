# Host: localhost:3308  (Version 5.5.5-10.1.36-MariaDB)
# Date: 2018-11-29 12:48:23
# Generator: MySQL-Front 6.1  (Build 1.22)


#
# Structure for table "tb_distrito"
#

DROP TABLE IF EXISTS `tb_distrito`;
CREATE TABLE `tb_distrito` (
  `cod_dis` int(11) NOT NULL AUTO_INCREMENT,
  `nom_dis` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`cod_dis`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "tb_distrito"
#

INSERT INTO `tb_distrito` VALUES (1,'Los Olivos'),(2,'Comas'),(3,'SMP'),(4,'La Victoria');

#
# Structure for table "tb_cliente"
#

DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE `tb_cliente` (
  `cod_cli` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cli` varchar(30) DEFAULT NULL,
  `ape_cli` varchar(30) DEFAULT NULL,
  `sexo_cli` varchar(15) DEFAULT NULL,
  `dni_cli` int(11) DEFAULT NULL,
  `dir_cli` varchar(50) DEFAULT NULL,
  `cod_dis` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_cli`),
  KEY `cod_dis` (`cod_dis`),
  CONSTRAINT `tb_cliente_ibfk_1` FOREIGN KEY (`cod_dis`) REFERENCES `tb_distrito` (`cod_dis`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "tb_cliente"
#

INSERT INTO `tb_cliente` VALUES (1,'David','Sullcaray','Masculino',76480452,'Santa Ana',1),(2,'Julio','Sullcaray','Masculino',9188364,'Santa Ana',1),(3,'Johan','Nuñez','Masculino',56435678,'Elvira',2),(4,'Rosa','sdf','Femenino',76480345,'ABC',3);

#
# Structure for table "tb_empleado"
#

DROP TABLE IF EXISTS `tb_empleado`;
CREATE TABLE `tb_empleado` (
  `cod_emp` int(11) NOT NULL,
  `nom_emp` varchar(30) DEFAULT NULL,
  `ape_emp` varchar(30) DEFAULT NULL,
  `log_emp` varchar(30) DEFAULT NULL,
  `pas_emp` varchar(30) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_empleado"
#

INSERT INTO `tb_empleado` VALUES (0,'david','sullcaray palomino','david','123',1),(1,'Bruce','Lopez Melgar','bruce','123',1);

#
# Structure for table "tb_boleta"
#

DROP TABLE IF EXISTS `tb_boleta`;
CREATE TABLE `tb_boleta` (
  `num_bol` int(11) NOT NULL,
  `cod_emp` int(11) DEFAULT NULL,
  `cod_cli` int(11) DEFAULT NULL,
  `fec_bol` date DEFAULT NULL,
  `monto_bol` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`num_bol`),
  KEY `cod_emp` (`cod_emp`),
  KEY `cod_cli` (`cod_cli`),
  CONSTRAINT `tb_boleta_ibfk_1` FOREIGN KEY (`cod_emp`) REFERENCES `tb_empleado` (`cod_emp`),
  CONSTRAINT `tb_boleta_ibfk_2` FOREIGN KEY (`cod_cli`) REFERENCES `tb_cliente` (`cod_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_boleta"
#

INSERT INTO `tb_boleta` VALUES (1,0,4,'2018-11-29',675),(2,1,2,'2018-11-29',500),(3,0,2,'2018-11-29',120000),(4,1,2,'2018-11-29',100000),(5,1,4,'2018-11-29',10500),(6,0,2,'2018-11-29',200450);

#
# Structure for table "tb_auditoria"
#

DROP TABLE IF EXISTS `tb_auditoria`;
CREATE TABLE `tb_auditoria` (
  `id_audi` int(11) NOT NULL AUTO_INCREMENT,
  `cod_emp` int(11) DEFAULT NULL,
  `fechalogin` datetime DEFAULT NULL,
  `fechalogout` datetime DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `tiempo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_audi`),
  KEY `cod_emp` (`cod_emp`),
  CONSTRAINT `tb_auditoria_ibfk_1` FOREIGN KEY (`cod_emp`) REFERENCES `tb_empleado` (`cod_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "tb_auditoria"
#

INSERT INTO `tb_auditoria` VALUES (1,0,'2018-11-29 12:26:47','2018-11-29 12:28:35','sullcaray palomino david','00:01:47'),(2,0,'2018-11-29 12:28:47','2018-11-29 12:30:35','sullcaray palomino david','00:01:48'),(3,0,'2018-11-29 12:44:57','2018-11-29 12:47:03','sullcaray palomino david','00:02:06');

#
# Structure for table "tb_marca"
#

DROP TABLE IF EXISTS `tb_marca`;
CREATE TABLE `tb_marca` (
  `cod_mar` int(11) NOT NULL AUTO_INCREMENT,
  `nom_mar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_mar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "tb_marca"
#

INSERT INTO `tb_marca` VALUES (1,'SAMSUMG'),(2,'HP'),(3,'SONY');

#
# Structure for table "tb_producto"
#

DROP TABLE IF EXISTS `tb_producto`;
CREATE TABLE `tb_producto` (
  `cod_pro` int(11) NOT NULL AUTO_INCREMENT,
  `des_pro` varchar(50) DEFAULT NULL,
  `pre_pro` decimal(8,2) DEFAULT NULL,
  `stock_act_pro` int(11) DEFAULT NULL,
  `cod_mar` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_pro`),
  KEY `cod_mar` (`cod_mar`),
  CONSTRAINT `tb_producto_ibfk_1` FOREIGN KEY (`cod_mar`) REFERENCES `tb_marca` (`cod_mar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "tb_producto"
#

INSERT INTO `tb_producto` VALUES (1,'xdxdxd',45.00,555,2),(2,'xdaxd',50.00,500,1),(3,'movil',10000.00,10,1);

#
# Structure for table "tb_boleta_has_producto"
#

DROP TABLE IF EXISTS `tb_boleta_has_producto`;
CREATE TABLE `tb_boleta_has_producto` (
  `num_bol` int(11) DEFAULT NULL,
  `cod_pro` int(11) DEFAULT NULL,
  `can_pro` int(11) DEFAULT NULL,
  `pre_pro` double DEFAULT NULL,
  KEY `num_bol` (`num_bol`),
  KEY `cod_pro` (`cod_pro`),
  CONSTRAINT `tb_boleta_has_producto_ibfk_1` FOREIGN KEY (`num_bol`) REFERENCES `tb_boleta` (`num_bol`),
  CONSTRAINT `tb_boleta_has_producto_ibfk_2` FOREIGN KEY (`cod_pro`) REFERENCES `tb_producto` (`cod_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_boleta_has_producto"
#

INSERT INTO `tb_boleta_has_producto` VALUES (1,1,15,45),(2,2,10,50),(3,3,12,10000),(4,3,10,10000),(5,2,10,50),(5,3,1,10000),(6,3,20,10000),(6,1,10,45);
