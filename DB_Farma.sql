-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: farma
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CURP` varchar(20) NOT NULL,
  `Ocupacion` varchar(50) NOT NULL,
  `Alergias` varchar(50) NOT NULL,
  PRIMARY KEY (`CURP`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `persona` (`CURP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('FARA751105MDFNLN01','INGENIERA','Marisco, Latex'),('GOSM911215MDFMRR04','EMPLEADA','Latex'),('HERM690210MDFRRM06','MEDICA','Polen, Marisco, Polvo'),('HRHK700817MDFRRR05','ARQUITECTA','Polvo, Lácteos'),('JUGS820622MDFRRS04','ABOGADA','Polen, Pelo Animal'),('LARF900526MDFRNR08','EMPLEADA','Polen, Marisco'),('LORE881211HDFPVM07','CHEF','Latex, Lácteos, Pelo Animal'),('MAOM861018HDFRJN00','EMPLEADO','Polvo'),('MOGM910409MDFRNN01','DISEÑADOR','Lácteos, Pelo Animal'),('PEGJ021114HDFRRS08','EMPLEADO','Pelo Animal'),('RAMI900309HDFRLM09','DOCTOR','Polvo'),('ROJA000710HDFRLL03','PROFESORA',' Polen, Marisco, Pelo Animal'),('SALD790520HDFRDR03','PSICOLOGA','Polvo'),('ZECC950707HDFPSR05','ABOGADO','Marisco,Lácteos, Pelo Animal');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `CURP` varchar(20) NOT NULL,
  `horario_hrs` varchar(50) NOT NULL,
  `Dias` varchar(50) NOT NULL,
  `Puesto` varchar(20) NOT NULL,
  `Sueldo_sem` decimal(5,0) NOT NULL,
  `ID_Sucursal` varchar(20) NOT NULL,
  PRIMARY KEY (`CURP`),
  KEY `ID_Sucursal` (`ID_Sucursal`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `persona` (`CURP`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('GOSM911215MDFMRR04','8:00-16:00','LUN,MAR,MIER,JUE,VIER','GERENTE',1800,'SUC_ERTYYA2'),('GUOA040111HDFTRL04','8:00-16:00','LUN,MAR,MIER,JUE,VIER,SAB','FARMACEUTICO',1500,'SUC_AOOPWQ3'),('LARF900526MDFRNR08','8:00-16:00','LUN,MAR,MIER,JUE,VIER,SAB','FARMACEUTICO',1500,'SUC_AXTTER1'),('MAOM861018HDFRJN00','8:00-16:00','5LUN,MAR,MIER,JUE,VIER','CAJERO',1200,'SUC_ERTYYA2'),('MORE950217MDFRNS07','8:00-16:00','LUN,MAR,MIER,JUE,VIER,SAB','CAJERO',1200,'SUC_AXTTER1'),('PEAM941215HDFRRS02','8:00-16:00','LUN,MAR,MIER,JUE,VIER,SAB','GERENTE',1800,'SUC_AOOPWQ3'),('PEGJ021114HDFRRS08','8:00-16:00','LUN,MAR,MIER,JUE,VIER,SAB','GERENTE',1800,'SUC_AXTTER1'),('ROBR940715HDFRGS04','8:00-16:00','LUN,MAR,MIER,JUE,VIER','FARMACEUTICO',1500,'SUC_ERTYYA2'),('RULM030529HDFZPR02','8:00-16:00','LUN,MAR,MIER,JUE,VIER,SAB','CAJERO',1200,'SUC_AOOPWQ3');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_status_orden`
--

DROP TABLE IF EXISTS `historico_status_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_status_orden` (
  `ID_Historico` varchar(20) NOT NULL,
  `Status_Orden` varchar(20) NOT NULL,
  `ID_Compra` varchar(20) NOT NULL,
  `Fecha_Status` date NOT NULL,
  PRIMARY KEY (`ID_Historico`),
  KEY `Status_Orden` (`Status_Orden`),
  KEY `ID_Compra` (`ID_Compra`),
  CONSTRAINT `historico_status_orden_ibfk_1` FOREIGN KEY (`Status_Orden`) REFERENCES `status_orden` (`ID_status_orden`),
  CONSTRAINT `historico_status_orden_ibfk_2` FOREIGN KEY (`ID_Compra`) REFERENCES `ord_compra` (`ID_Compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_status_orden`
--

LOCK TABLES `historico_status_orden` WRITE;
/*!40000 ALTER TABLE `historico_status_orden` DISABLE KEYS */;
INSERT INTO `historico_status_orden` VALUES ('001','01AAA','PO-V456','2002-03-24'),('002','02BBB','PO-V456','2002-03-24'),('003','04DDD','PO-V456','2002-03-24'),('004','01AAA','PO-V459','2019-01-24'),('005','02BBB','PO-V459','2019-01-24'),('006','04DDD','PO-V459','2019-01-24'),('007','01AAA','PO-Y345','2019-01-24'),('008','03CCC','PO-Y345','2019-01-24'),('009','01AAA','PO-Y344','2022-12-23'),('010','02BBB','PO-Y344','2022-12-23'),('011','04DDD','PO-Y344','2022-12-23'),('012','01AAA','PO-R234','2025-12-23'),('013','02BBB','PO-R234','2025-12-23'),('014','04DDD','PO-R234','2025-12-23'),('015','01AAA','PO-R237','2030-12-23'),('016','02BBB','PO-R237','2030-12-23'),('017','04DDD','PO-R237','2030-12-23'),('018','01AAA','PO-Z678','2027-01-24'),('019','02BBB','PO-Z678','2027-01-24'),('020','04DDD','PO-Z678','2027-01-24'),('021','01AAA','PO-Z671','2028-02-24'),('022','03CCC','PO-Z671','2028-02-24'),('023','01AAA','PO-F678','2016-01-24'),('024','02BBB','PO-F678','2016-01-24'),('025','04DDD','PO-F678','2016-01-24'),('026','01AAA','PO-M789','2007-01-24'),('027','02BBB','PO-M789','2007-01-24'),('028','04DDD','PO-M789','2007-01-24'),('029','01AAA','PO-M780','2025-01-24'),('030','03CCC','PO-M780','2025-01-24'),('031','01AAA','PO-W789','2021-02-24'),('032','02BBB','PO-W789','2021-02-24'),('033','04DDD','PO-W789','2021-02-24'),('034','01AAA','PO-P678','2010-03-24'),('035','03CCC','PO-P678','2010-03-24'),('036','01AAA','PO-P673','2007-02-24'),('037','02BBB','PO-P673','2007-02-24'),('038','04DDD','PO-P673','2007-02-24'),('039','01AAA','PO-S567','2011-03-24'),('040','02BBB','PO-S567','2011-03-24'),('041','04DDD','PO-S567','2011-03-24'),('042','01AAA','PO-E345','2017-02-24'),('043','02BBB','PO-E345','2017-02-24'),('044','04DDD','PO-E345','2017-02-24'),('045','01AAA','PO-E349','2001-12-23'),('046','02BBB','PO-E349','2001-12-23'),('047','04DDD','PO-E349','2001-12-23'),('048','01AAA','PO-O345','2001-12-23'),('049','02BBB','PO-O345','2001-12-23'),('050','04DDD','PO-O345','2001-12-23'),('051','01AAA','PO-O349','2026-12-23'),('052','02BBB','PO-O349','2026-12-23'),('053','04DDD','PO-O349','2026-12-23'),('054','01AAA','PO-G901','2017-02-24'),('055','03CCC','PO-G901','2017-02-24'),('056','01AAA','PO-G908','2002-03-24'),('057','02BBB','PO-G908','2002-03-24'),('058','04DDD','PO-G908','2002-03-24'),('059','01AAA','PO-A123','2010-01-24'),('060','02BBB','PO-A123','2012-01-24'),('061','04DDD','PO-A123','2012-01-24'),('062','01AAA','PO-A125','2002-03-24'),('063','02BBB','PO-A125','2005-03-24'),('064','04DDD','PO-A125','2005-03-24'),('065','01AAA','PO-L456','2017-03-24'),('066','03CCC','PO-L456','2017-03-24'),('067','01AAA','PO-L457','2001-02-24'),('068','02BBB','PO-L457','2001-02-24'),('069','04DDD','PO-L457','2001-02-24');
/*!40000 ALTER TABLE `historico_status_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_compra`
--

DROP TABLE IF EXISTS `list_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_compra` (
  `ID_Compra` varchar(20) NOT NULL,
  `Codigo_Med` varchar(20) NOT NULL,
  `Cantidad` decimal(2,0) NOT NULL,
  PRIMARY KEY (`ID_Compra`,`Codigo_Med`),
  KEY `Codigo_Med` (`Codigo_Med`),
  CONSTRAINT `list_compra_ibfk_1` FOREIGN KEY (`ID_Compra`) REFERENCES `ord_compra` (`ID_Compra`),
  CONSTRAINT `list_compra_ibfk_2` FOREIGN KEY (`Codigo_Med`) REFERENCES `medicamento` (`Codigo_Med`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_compra`
--

LOCK TABLES `list_compra` WRITE;
/*!40000 ALTER TABLE `list_compra` DISABLE KEYS */;
INSERT INTO `list_compra` VALUES ('PO-A123','AMO912C',1),('PO-A123','IBU740B',1),('PO-A123','LOR208E',1),('PO-A123','OMP555D',1),('PO-A123','PAR325A',1),('PO-A125','IBU740B',2),('PO-A125','PAR325A',2),('PO-E345','PAR325A',7),('PO-E349','AMO912C',1),('PO-E349','LOR208E',2),('PO-E349','OMP555D',1),('PO-E349','PAR325A',3),('PO-F678','LOR208E',1),('PO-F678','OMP555D',2),('PO-F678','PAR325A',5),('PO-G901','LOR208E',2),('PO-G908','AMO912C',1),('PO-G908','OMP555D',2),('PO-L456','AMO912C',1),('PO-L456','OMP555D',1),('PO-L456','PAR325A',2),('PO-L457','IBU740B',1),('PO-L457','LOR208E',1),('PO-L457','PAR325A',1),('PO-M780','OMP555D',2),('PO-M780','PAR325A',1),('PO-M789','AMO912C',1),('PO-M789','IBU740B',1),('PO-M789','LOR208E',1),('PO-M789','OMP555D',1),('PO-M789','PAR325A',1),('PO-O345','LOR208E',3),('PO-O345','PAR325A',2),('PO-O349','AMO912C',1),('PO-O349','IBU740B',1),('PO-O349','PAR325A',1),('PO-P673','AMO912C',3),('PO-P673','PAR325A',3),('PO-P678','AMO912C',2),('PO-P678','IBU740B',2),('PO-P678','OMP555D',1),('PO-P678','PAR325A',2),('PO-R234','AMO912C',2),('PO-R234','IBU740B',2),('PO-R234','LOR208E',2),('PO-R234','OMP555D',2),('PO-R234','PAR325A',2),('PO-R237','AMO912C',3),('PO-R237','PAR325A',2),('PO-S567','OMP555D',4),('PO-V456','LOR208E',1),('PO-V456','OMP555D',1),('PO-V456','PAR325A',2),('PO-V459','AMO912C',7),('PO-V459','IBU740B',3),('PO-V459','PAR325A',1),('PO-W789','IBU740B',4),('PO-W789','LOR208E',1),('PO-W789','OMP555D',1),('PO-Y344','AMO912C',4),('PO-Y344','IBU740B',1),('PO-Y344','LOR208E',1),('PO-Y344','PAR325A',1),('PO-Y345','LOR208E',2),('PO-Y345','PAR325A',2),('PO-Z671','LOR208E',3),('PO-Z678','PAR325A',1);
/*!40000 ALTER TABLE `list_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `Codigo_Med` varchar(20) NOT NULL,
  `Nom_Med` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Contenido` varchar(100) NOT NULL,
  `Metd_Admi` varchar(15) NOT NULL,
  `Dosis` varchar(15) NOT NULL,
  `Cant_Dispo` decimal(2,0) NOT NULL,
  `Precio_Compra` float NOT NULL,
  `Precio_Venta` float NOT NULL,
  `CURP_Provee` varchar(20) NOT NULL,
  PRIMARY KEY (`Codigo_Med`),
  KEY `CURP_Provee` (`CURP_Provee`),
  CONSTRAINT `medicamento_ibfk_1` FOREIGN KEY (`CURP_Provee`) REFERENCES `proveedor` (`CURP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES ('AMO912C','Amoxicilina','Antibiótico para infecciones bacterianas como infecciones del tracto respiratorio','500mg','ORAL','cada 8hrs',27,150,180,'PELC881010MDFRRS05'),('IBU740B','Ibuprofeno','Antiinflamatorio no esteroideo (AINE) que se usa para tratar el dolor, la inflamación y la fiebre','600mg','ORAL','cada 4hrs',20,60,80,'LIGG821020MDFRRN07'),('LOR208E','Loratadina','Antihistamínico para aliviar síntomas de alergias estacionales y perennes','10mg','ORAL','Consulte Medic',19,60,80,'FLOP831122MDFRLN02'),('OMP555D','Omeprazol','Reducir la producción de ácido en el estómago y tratar úlceras pépticas','50mg','ORAL','cada 24hrs',15,200,250,'VILL871205HDFRTY01'),('PAR325A','Paracetamol','Aliviar el dolor leve a moderado y reducir la fiebre','1000mg','ORAL','cada 4hrs',30,50,70,'TAMA871220HDFJZZ05');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ord_compra`
--

DROP TABLE IF EXISTS `ord_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ord_compra` (
  `ID_Compra` varchar(20) NOT NULL,
  `Status_Orden` varchar(20) NOT NULL,
  `CURP_Cliente` varchar(20) NOT NULL,
  `ID_Sucursal` varchar(20) NOT NULL,
  `Met_Pago` varchar(15) NOT NULL,
  `Precio_Final` float DEFAULT NULL,
  PRIMARY KEY (`ID_Compra`,`Status_Orden`),
  KEY `CURP_Cliente` (`CURP_Cliente`),
  KEY `Status_Orden` (`Status_Orden`),
  KEY `ID_Sucursal` (`ID_Sucursal`),
  CONSTRAINT `ord_compra_ibfk_1` FOREIGN KEY (`CURP_Cliente`) REFERENCES `cliente` (`CURP`),
  CONSTRAINT `ord_compra_ibfk_2` FOREIGN KEY (`Status_Orden`) REFERENCES `status_orden` (`ID_status_orden`),
  CONSTRAINT `ord_compra_ibfk_3` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ord_compra`
--

LOCK TABLES `ord_compra` WRITE;
/*!40000 ALTER TABLE `ord_compra` DISABLE KEYS */;
INSERT INTO `ord_compra` VALUES ('PO-A123','01AAA','PEGJ021114HDFRRS08','SUC_ERTYYA2','TARJETA',660),('PO-A123','02BBB','PEGJ021114HDFRRS08','SUC_ERTYYA2','TARJETA',660),('PO-A123','04DDD','PEGJ021114HDFRRS08','SUC_ERTYYA2','TARJETA',660),('PO-A125','01AAA','PEGJ021114HDFRRS08','SUC_ERTYYA2','EFECTIVO',300),('PO-A125','02BBB','PEGJ021114HDFRRS08','SUC_ERTYYA2','EFECTIVO',300),('PO-A125','04DDD','PEGJ021114HDFRRS08','SUC_ERTYYA2','EFECTIVO',300),('PO-E345','01AAA','ZECC950707HDFPSR05','SUC_AOOPWQ3','EFECTIVO',490),('PO-E345','02BBB','ZECC950707HDFPSR05','SUC_AOOPWQ3','EFECTIVO',490),('PO-E345','04DDD','ZECC950707HDFPSR05','SUC_AOOPWQ3','EFECTIVO',490),('PO-E349','01AAA','ZECC950707HDFPSR05','SUC_AXTTER1','EFECTIVO',800),('PO-E349','02BBB','ZECC950707HDFPSR05','SUC_AXTTER1','EFECTIVO',800),('PO-E349','04DDD','ZECC950707HDFPSR05','SUC_AXTTER1','EFECTIVO',800),('PO-F678','01AAA','MOGM910409MDFRNN01','SUC_AXTTER1','TARJETA',930),('PO-F678','02BBB','MOGM910409MDFRNN01','SUC_AXTTER1','TARJETA',930),('PO-F678','04DDD','MOGM910409MDFRNN01','SUC_AXTTER1','TARJETA',930),('PO-G901','01AAA','MAOM861018HDFRJN00','SUC_ERTYYA2','TARJETA',160),('PO-G901','03CCC','MAOM861018HDFRJN00','SUC_ERTYYA2','TARJETA',160),('PO-G908','01AAA','MAOM861018HDFRJN00','SUC_ERTYYA2','EFECTIVO',680),('PO-G908','02BBB','MAOM861018HDFRJN00','SUC_ERTYYA2','EFECTIVO',680),('PO-G908','04DDD','MAOM861018HDFRJN00','SUC_ERTYYA2','EFECTIVO',680),('PO-L456','01AAA','GOSM911215MDFMRR04','SUC_AOOPWQ3','TARJETA',570),('PO-L456','03CCC','GOSM911215MDFMRR04','SUC_AOOPWQ3','TARJETA',570),('PO-L457','01AAA','GOSM911215MDFMRR04','SUC_AOOPWQ3','EFECTIVO',230),('PO-L457','02BBB','GOSM911215MDFMRR04','SUC_AOOPWQ3','EFECTIVO',230),('PO-L457','04DDD','GOSM911215MDFMRR04','SUC_AOOPWQ3','EFECTIVO',230),('PO-M780','01AAA','RAMI900309HDFRLM09','SUC_ERTYYA2','TARJETA',570),('PO-M780','03CCC','RAMI900309HDFRLM09','SUC_ERTYYA2','TARJETA',570),('PO-M789','01AAA','RAMI900309HDFRLM09','SUC_ERTYYA2','EFECTIVO',660),('PO-M789','02BBB','RAMI900309HDFRLM09','SUC_ERTYYA2','EFECTIVO',660),('PO-M789','04DDD','RAMI900309HDFRLM09','SUC_ERTYYA2','EFECTIVO',660),('PO-O345','01AAA','LARF900526MDFRNR08','SUC_AXTTER1','EFECTIVO',380),('PO-O345','02BBB','LARF900526MDFRNR08','SUC_AXTTER1','EFECTIVO',380),('PO-O345','04DDD','LARF900526MDFRNR08','SUC_AXTTER1','EFECTIVO',380),('PO-O349','01AAA','LARF900526MDFRNR08','SUC_AXTTER1','EFECTIVO',330),('PO-O349','02BBB','LARF900526MDFRNR08','SUC_AXTTER1','EFECTIVO',330),('PO-O349','04DDD','LARF900526MDFRNR08','SUC_AXTTER1','EFECTIVO',330),('PO-P673','01AAA','HERM690210MDFRRM06','SUC_ERTYYA2','EFECTIVO',750),('PO-P673','02BBB','HERM690210MDFRRM06','SUC_ERTYYA2','EFECTIVO',750),('PO-P673','04DDD','HERM690210MDFRRM06','SUC_ERTYYA2','EFECTIVO',750),('PO-P678','01AAA','HERM690210MDFRRM06','SUC_AOOPWQ3','TARJETA',910),('PO-P678','03CCC','HERM690210MDFRRM06','SUC_AOOPWQ3','TARJETA',910),('PO-R234','01AAA','LORE881211HDFPVM07','SUC_AXTTER1','EFECTIVO',1320),('PO-R234','02BBB','LORE881211HDFPVM07','SUC_AXTTER1','EFECTIVO',1320),('PO-R234','04DDD','LORE881211HDFPVM07','SUC_AXTTER1','EFECTIVO',1320),('PO-R237','01AAA','LORE881211HDFPVM07','SUC_AOOPWQ3','TARJETA',680),('PO-R237','02BBB','LORE881211HDFPVM07','SUC_AOOPWQ3','TARJETA',680),('PO-R237','04DDD','LORE881211HDFPVM07','SUC_AOOPWQ3','TARJETA',680),('PO-S567','01AAA','ROJA000710HDFRLL03','SUC_AOOPWQ3','TARJETA',1000),('PO-S567','02BBB','ROJA000710HDFRLL03','SUC_AOOPWQ3','TARJETA',1000),('PO-S567','04DDD','ROJA000710HDFRLL03','SUC_AOOPWQ3','TARJETA',1000),('PO-V456','01AAA','JUGS820622MDFRRS04','SUC_AXTTER1','TARJETA',470),('PO-V456','02BBB','JUGS820622MDFRRS04','SUC_AXTTER1','TARJETA',470),('PO-V456','04DDD','JUGS820622MDFRRS04','SUC_AXTTER1','TARJETA',470),('PO-V459','01AAA','JUGS820622MDFRRS04','SUC_AOOPWQ3','EFECTIVO',1570),('PO-V459','02BBB','JUGS820622MDFRRS04','SUC_AOOPWQ3','EFECTIVO',1570),('PO-V459','04DDD','JUGS820622MDFRRS04','SUC_AOOPWQ3','EFECTIVO',1570),('PO-W789','01AAA','HRHK700817MDFRRR05','SUC_AOOPWQ3','TARJETA',650),('PO-W789','02BBB','HRHK700817MDFRRR05','SUC_AOOPWQ3','TARJETA',650),('PO-W789','04DDD','HRHK700817MDFRRR05','SUC_AOOPWQ3','TARJETA',650),('PO-Y344','01AAA','SALD790520HDFRDR03','SUC_AOOPWQ3','TARJETA',950),('PO-Y344','02BBB','SALD790520HDFRDR03','SUC_AOOPWQ3','TARJETA',950),('PO-Y344','04DDD','SALD790520HDFRDR03','SUC_AOOPWQ3','TARJETA',950),('PO-Y345','01AAA','SALD790520HDFRDR03','SUC_ERTYYA2','TARJETA',300),('PO-Y345','03CCC','SALD790520HDFRDR03','SUC_ERTYYA2','TARJETA',300),('PO-Z671','01AAA','FARA751105MDFNLN01','SUC_AOOPWQ3','TARJETA',240),('PO-Z671','03CCC','FARA751105MDFNLN01','SUC_AOOPWQ3','TARJETA',240),('PO-Z678','01AAA','FARA751105MDFNLN01','SUC_ERTYYA2','EFECTIVO',70),('PO-Z678','02BBB','FARA751105MDFNLN01','SUC_ERTYYA2','EFECTIVO',70),('PO-Z678','04DDD','FARA751105MDFNLN01','SUC_ERTYYA2','EFECTIVO',70);
/*!40000 ALTER TABLE `ord_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `CURP` varchar(20) NOT NULL,
  `Nombre` varchar(10) NOT NULL,
  `ApPaterno` varchar(10) NOT NULL,
  `ApMaterno` varchar(10) NOT NULL,
  `RFC` varchar(20) NOT NULL,
  `EDAD` decimal(2,0) DEFAULT NULL,
  `EdoCivil` varchar(20) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `CodigoPostal` decimal(6,0) NOT NULL,
  `NumTelefono` decimal(12,0) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  PRIMARY KEY (`CURP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('FARA751105MDFNLN01','Ana','Farias','Ramirez','FARA751105H3E',48,'DIVORCIADA','Calle Villa del Sol Mz3 Lt5',4500,5543678023,'anafer75@gmail.com'),('FLOP831122MDFRLN02','Natalia','Flores','Pérez','FLOP831122P2N',40,'SOLTERA','Av. Zaragoza Mz 10 Lt 4',7680,5543987654,'natalia.flo@gmail.com'),('GOSM911215MDFMRR04','Maria','Gonzalez','Sanchez','GOSM911215M2T',32,'CASADA','Calle Villa de las Rosas Mz4 Lt2',9700,5512873265,'mariagosm@hotmail.com'),('GUOA040111HDFTRL04','alejandro','gutierrez','ortiz','GUOA0401117E0',20,'SOLTERO','calle villa reyes mz9 lt14',9700,5512873265,'alegg@hotmail.com'),('HERM690210MDFRRM06','Martha','Hernandez','Mendoza','HERM6902106E7',55,'DIVORCIADA','Calle Villa de las Flores Mz3 Lt10',9700,5512873265,'marthahm@hotmail.com'),('HRHK700817MDFRRR05','karla','hernandez','herrera','HRHK700817M9T',53,'CASADA','calle villa carrillo mz4 lt14',9700,5511147747,'karlhh@hotmail.com'),('JUGS820622MDFRRS04','sara','juarez','gordillo','JUGS820622F4Y',41,'CASADA','calle villa del rey mz1 lt10',4777,5565843037,'sarajg@gmail.com'),('LARF900526MDFRNR08','Rosa','Lara','Flores','LARF900526F8R',33,'CASADA','Calle Reforma Mz 11 Lt 8',7600,5576123456,'rosa.lara@hotmail.com'),('LIGG821020MDFRRN07','Rosa','Linares','Garcia','LIGG821020H1A',41,'SOLTERA','Calle Villa de las Fuentes Mz2 Lt5',4500,5562837498,'rosligg@gmail.com'),('LORE881211HDFPVM07','emiliano','lopez','rivera','LORE0112116K6',35,'CASADO','calle villa sanpedro mz1 lt10',3600,5569330702,'emasandl@gmail.com'),('MAOM861018HDFRJN00','Miguel','Marquez','Orozco','MAOM8610189C5',37,'SOLTERO','Calle Villa San Jose Mz2 Lt20',9700,5512873265,'miguelmarq@hotmail.com'),('MOGM910409MDFRNN01','Nancy','Mora','Gómez','MOGM910409G1N',32,'SOLTERA','Calle Morelos Mz 6 Lt 15',9050,5534123456,'nancy.mor@icloud.com'),('MORE950217MDFRNS07','Sandra','Moreno','Sánchez','MORE950217S7N',29,'DIVORCIADA','Av. Juárez Mz 15 Lt 6',6500,5543987654,'sand.more@gmail.com'),('PEAM941215HDFRRS02','Manuel','Perez','Amador','PEAM941215D6C',29,'SOLTERO','Calle Villa de los Pinos Mz8 Lt14',9700,5512873265,'manuelpeam@gmail.com'),('PEGJ021114HDFRRS08','jose','perez','garcia','PEGJ0211149G1',21,'CASADO','calle villa lazan mz8 lt4',4570,5574771474,'josepg@gmail.com'),('PELC881010MDFRRS05','Cristina','Pérez','López','PELC881010L5S',35,'CASADA','Calle Abasolo Mz 3 Lt 7',7650,5577123456,'cris.perez@hotmail.com'),('RAMI900309HDFRLM09','Miguel','Ramírez','Morales','RAMI900309M9R',34,'CASADO','Calle 5 de Mayo Mz 8 Lt 12',9380,5587123456,'mig.ram@hotmail.com'),('ROBR940715HDFRGS04','Gerardo','Robles','Ramírez','ROBR940715R4G',29,'CASADO','Calle Revolución Mz 7 Lt 10',3210,5576123456,'gera.rob@hotmail.com'),('ROJA000710HDFRLL03','Luis','Romero','Jaime','ROJA0007105E3',23,'CASADO','Calle Villa de los Reyes Mz6 Lt7',4500,5569783232,'luisroj@gmail.com'),('RULM030529HDFZPR02','martin','ruiz','lopez','RULM030529P2Z',20,'SOLTERO','calle villa campa mz6 lt9',8211,5554774210,'martin199@icloud.com'),('SALD790520HDFRDR03','Daniel','Sánchez','López','SALD790520L3D',44,'DIVORCIADO','Av. Hidalgo Mz 12 Lt 14',8500,5544987654,'daniel.san@icloud.com'),('TAMA871220HDFJZZ05','Jesus','Tamariz','Martinez','TAMA8712203A9',36,'SOLTERO','Calle Villa de las Torres Mz7 Lt15',4500,5577341234,'jesustmz@gmail.com'),('VILL871205HDFRTY01','Yolanda','Villanueva','Reyes','VILL871205R1Y',36,'SOLTERA','Calle Miguel Hidalgo Mz 5 Lt 9',4890,5534123456,'yoli.vill@gmail.com'),('ZECC950707HDFPSR05','carlos','zepeda','castro','ZECC950707S5R',28,'CASADO','calle villa dominico mz5 lt7',9700,5512873265,'supercarl@yahoo.com');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `CURP` varchar(20) NOT NULL,
  `Nom_Emp` varchar(50) NOT NULL,
  `RFC_Emp` varchar(50) NOT NULL,
  `SitioWeb` varchar(50) NOT NULL,
  PRIMARY KEY (`CURP`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `persona` (`CURP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('FLOP831122MDFRLN02','VitalFarma','VFA890630KQ8','www.vitalfarma.mx'),('LIGG821020MDFRRN07','PharmaVida','PVI750815HJ9','www.pharmavida.com'),('PELC881010MDFRRS05','Medicarex','MEX8201273J2','www.medicarex.com'),('TAMA871220HDFJZZ05','SaludPlus','FSP980520XJ3','wwwsaludpluscommx'),('VILL871205HDFRTY01','FarmaGenius','FGE910405MQ1','www.farmagenius.com.mx');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_orden`
--

DROP TABLE IF EXISTS `status_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_orden` (
  `ID_status_orden` varchar(20) NOT NULL,
  `Clave` varchar(10) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_status_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_orden`
--

LOCK TABLES `status_orden` WRITE;
/*!40000 ALTER TABLE `status_orden` DISABLE KEYS */;
INSERT INTO `status_orden` VALUES ('01AAA','REGISTRADA','La orden ha sido tomada, datos capturados'),('02BBB','PAGADA','El pago se ha autorizado'),('03CCC','CANCELADA','No se autorizo el pago, la compra se cancela'),('04DDD','ENTREGADA','La orden es entregada al cliente.');
/*!40000 ALTER TABLE `status_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `ID_Sucursal` varchar(20) NOT NULL,
  `NomSuc` varchar(50) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `CodigoPostal` decimal(6,0) NOT NULL,
  `NumContact` decimal(12,0) NOT NULL,
  PRIMARY KEY (`ID_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES ('SUC_AOOPWQ3','Farmacia Nuestra Señora','calle pelao mz8 lt 35',67900,5545678901),('SUC_AXTTER1','Farmacia San José','calle principal mz13 lt5',8745,5512345678),('SUC_ERTYYA2','Farmacia Santa María','villa Central mz6 lt9',54001,5500236789);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_persona`
--

DROP TABLE IF EXISTS `tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_persona` (
  `CURP` varchar(20) NOT NULL,
  `ID_Tipo` varchar(5) NOT NULL,
  `Tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`CURP`,`ID_Tipo`),
  CONSTRAINT `tipo_persona_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `persona` (`CURP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_persona`
--

LOCK TABLES `tipo_persona` WRITE;
/*!40000 ALTER TABLE `tipo_persona` DISABLE KEYS */;
INSERT INTO `tipo_persona` VALUES ('FARA751105MDFNLN01','05100','CLIENTE'),('FLOP831122MDFRLN02','05300','PROVEEDOR'),('GOSM911215MDFMRR04','05100','CLIENTE'),('GOSM911215MDFMRR04','05200','EMPLEADO'),('GUOA040111HDFTRL04','05200','EMPLEADO'),('HERM690210MDFRRM06','05100','CLIENTE'),('HRHK700817MDFRRR05','05100','CLIENTE'),('JUGS820622MDFRRS04','05100','CLIENTE'),('LARF900526MDFRNR08','05100','CLIENTE'),('LARF900526MDFRNR08','05200','EMPLEADO'),('LIGG821020MDFRRN07','05300','PROVEEDOR'),('LORE881211HDFPVM07','05100','CLIENTE'),('MAOM861018HDFRJN00','05100','CLIENTE'),('MAOM861018HDFRJN00','05200','EMPLEADO'),('MOGM910409MDFRNN01','05100','CLIENTE'),('MORE950217MDFRNS07','05200','EMPLEADO'),('PEAM941215HDFRRS02','05200','EMPLEADO'),('PEGJ021114HDFRRS08','05100','CLIENTE'),('PEGJ021114HDFRRS08','05200','EMPLEADO'),('PELC881010MDFRRS05','05300','PROVEEDOR'),('RAMI900309HDFRLM09','05100','CLIENTE'),('ROBR940715HDFRGS04','05200','EMPLEADO'),('ROJA000710HDFRLL03','05100','CLIENTE'),('RULM030529HDFZPR02','05200','EMPLEADO'),('SALD790520HDFRDR03','05100','CLIENTE'),('TAMA871220HDFJZZ05','05300','PROVEEDOR'),('VILL871205HDFRTY01','05300','PROVEEDOR'),('ZECC950707HDFPSR05','05100','CLIENTE');
/*!40000 ALTER TABLE `tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 18:10:01
