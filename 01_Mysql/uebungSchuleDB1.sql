CREATE DATABASE `uebungschule1` ;

-- DROP DATABASE uebungschule1;

USE uebungschule1;
--
-- Dumping data for table `orte`
--

CREATE TABLE `orte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postleitzahl` varchar(45) ,
  `name` varchar(45) ,
  `vorwahl` varchar(45) ,
  `einwohnerzahl` int ,
  PRIMARY KEY (`id`)
)  AUTO_INCREMENT=7 ;
INSERT INTO `orte` VALUES (1,'79312','Emmendingen','07641','29612'),(2,'79311','Reute','07641','8501'),(3,'79312','Wasser','07641','2977'),(4,'79098','Freiburg','0761','262811'),(5,'79206','Breisach','07667','22719'),(6,'79313','Waldkirch','07681','25020');

--
-- Table structure for table `smartphones`
--


CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marke` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=6 ;


--
-- Dumping data for table `smartphones`
--


INSERT INTO `smartphones` VALUES (1,'Samsung'),(2,'Apple'),(3,'HTC'),(4,'Google'),(5,'Sony');
--
-- Table structure for table `faecher`
--


CREATE TABLE `faecher` (
  `id` int  AUTO_INCREMENT,
  `fachbezeichnung` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=12 ;


--
-- Dumping data for table `faecher`
--


INSERT INTO `faecher` VALUES (1,'Deutsch'),(2,'Mathe'),(3,'Englisch'),(4,'Musik'),(5,'Russisch'),(6,'Informatik'),(7,'Religion'),(8,'Ethik'),(9,'Biologie'),(10,'Chemie'),(11,'Physik');

--
-- Table structure for table `lehrer`
--


CREATE TABLE `lehrer` (
  `id` int AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` varchar(45),
  `idOrte` int NOT NULL,
  `gehalt` int ,
  PRIMARY KEY (`id`),
  FOREIGN KEY (idOrte) REFERENCES orte(id)
) AUTO_INCREMENT=29;


--
-- Dumping data for table `lehrer`
--


INSERT INTO `lehrer` VALUES (1,'Schmitt','Beamter',1,3123),(2,'Müller','Beamter',2,6581),(3,'Maier','Angestellter',3,5224),(4,'Bohnert','Beamter',1,3012),(5,'Hunger','Beamter',6,4005),(6,'Tschuck','Beamter',6,3612),(7,'Betzold','Beamter',3,3902),(8,'Metz','Angestellter',4,3385),(9,'Hartz','Beamter',4,2451),(10,'Schneider','Angestellter',2,1943),(11,'Huber','Beamter',5,4054),(12,'Lürcher','Angestellter',6,4504),(13,'Bühler','Angestellter',2,3120),(14,'Bohner','Angestellter',4,3904),(15,'Ruck','Angestellter',5,3652),(16,'Bock','Angestellter',1,1740),(17,'Maler','Beamter',1,2403),(18,'Mahler','Angestellter',1,2800),(19,'Pfeffersack','Angestellter',5,2134),(20,'Petersen','Beamter',3,3831),(21,'Oettle','Beamter',1,3267),(22,'Bercher','Angestellter',6,3091),(23,'Bauer','Beamter',5,4188),(24,'Pfeiffer','Angestellter',3,3241),(25,'Bruns','Angestellter',2,3388),(26,'Sauter','Beamter',2,2490),(27,'Rauert','Beamter',3,2221),(28,'Zelawat','Beamter',4,2991);

--
-- Table structure for table `lehrer_hat_faecher`
--


CREATE TABLE `lehrer_hat_faecher` (
  `idLehrer` int NOT NULL,
  `idFaecher` int NOT NULL,
  PRIMARY KEY (`idLehrer`,`idFaecher`),
FOREIGN KEY (idLehrer) REFERENCES lehrer(id),
FOREIGN KEY (idFaecher) REFERENCES faecher(id)
) ;


--
-- Dumping data for table `lehrer_hat_faecher`
--


INSERT INTO `lehrer_hat_faecher` VALUES (1,1),(1,3),(2,7),(2,9),(3,1),(3,10),(3,11),(4,2),(4,6),(5,8),(6,5),(6,7),(6,9),(7,3),(7,10),(8,2),(8,11),(9,3),(9,4),(9,5),(9,6),(10,7),(11,8),(11,9),(12,9),(12,10),(12,11),(13,1),(13,3),(14,1),(14,2),(15,2),(15,4),(15,8),(16,4),(16,6),(17,4),(17,7),(17,9),(18,1),(18,10),(19,3),(20,2),(20,6),(21,7),(21,9),(22,8),(22,11),(23,3),(23,5),(23,10),(23,11),(24,5),(24,6),(25,4),(25,9),(26,1),(26,2),(26,7),(26,8),(27,3),(28,4),(28,10);

-- Table structure for table `schueler`
--


CREATE TABLE `schueler` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `noteMathe` int ,
  `noteDeutsch` int DEFAULT NULL,
  `klassenzimmer` int DEFAULT NULL,
  `nationalitaet` varchar(3) DEFAULT NULL,
  `idOrte` int NOT NULL,
  `idSmartphones` int DEFAULT NULL,
  PRIMARY KEY (`id`),
FOREIGN KEY (idOrte) REFERENCES orte(id),
  FOREIGN KEY (idSmartphones) REFERENCES smartphones(id)
) ;


--
-- Dumping data for table `schueler`
--


INSERT INTO `schueler` VALUES (1,'Anderson',5,3,116,'USA',3,2),(2,'Archer',1,6,118,'USA',6,4),(3,'Armstrong',4,3,118,'GB',5,NULL),(4,'Baker',6,1,116,'GB',4,5),(5,'Barber',2,3,120,'USA',5,3),(6,'Bennett',4,2,250,'GB',5,1),(7,'Bishop',5,2,250,'USA',4,2),(8,'Black',1,5,250,'USA',2,1),(9,'Blair',1,2,250,'GB',4,1),(10,'Brown',4,5,118,'GB',4,4),(11,'Carter',3,5,252,'USA',3,1),(12,'Chaplin',5,4,117,'GB',3,5),(13,'Connor',3,5,117,'USA',5,1),(14,'Edison',4,4,250,'USA',5,2),(15,'Edwards',2,5,120,'GB',4,4),(16,'Eliot',2,2,116,'GB',6,2),(17,'Franklin',5,4,118,'USA',4,NULL),(18,'Garcia',2,3,118,'GB',3,3),(19,'Hanson',5,5,252,'USA',3,5),(20,'Harper',4,4,118,'USA',5,1),(21,'Hernandez',5,5,117,'GB',1,4),(22,'Hilton',4,2,120,'GB',2,4),(23,'Hobbs',3,4,117,'USA',4,2),(24,'Jackson',4,6,116,'GB',2,3),(25,'Jameson',2,2,117,'USA',3,2),(26,'Johnson',1,4,250,'USA',4,3),(27,'Jones',2,3,116,'GB',6,5),(28,'King',3,6,120,'GB',3,3),(29,'Lopez',6,1,251,'USA',6,5),(30,'Martinez',5,3,118,'GB',3,2),(31,'Mason',5,2,116,'USA',5,2),(32,'Mathewson',2,3,251,'USA',3,5),(33,'Michaels',5,3,250,'GB',4,5),(34,'Miller',5,5,117,'GB',2,1),(35,'Moore',4,6,117,'USA',2,4),(36,'Muller',4,5,250,'GB',1,1),(37,'Nolan',4,4,252,'USA',1,4),(38,'Parker',5,2,116,'USA',2,2),(39,'Ramirez',3,5,120,'GB',2,3),(40,'Rodriguez',3,5,116,'GB',4,3),(41,'Sawyer',1,4,117,'USA',5,2),(42,'Shoemaker',3,5,116,'GB',6,1),(43,'Smith',2,2,117,'USA',2,3),(44,'Stark',1,4,252,'USA',4,4),(45,'Stone',4,6,116,'GB',3,3),(46,'Thomas',3,5,117,'GB',4,NULL),(47,'Thompson',1,2,116,'USA',5,2),(48,'Warren',2,4,252,'GB',1,2),(49,'Ward',5,6,250,'USA',5,1),(50,'Wayne',3,4,116,'USA',2,5),(51,'West',3,5,252,'GB',6,4),(52,'White',3,3,120,'GB',3,3),(53,'Young',3,6,118,'USA',5,4),(54,'Popow',5,4,116,'RU',3,2),(55,'Sokolow',3,2,116,'RU',5,3),(56,'Lebedew',6,4,251,'RU',4,5),(57,'Koslow',5,6,117,'RU',5,2),(58,'Nowikow',3,4,252,'RU',4,4),(59,'Morosow',4,5,251,'RU',3,5),(60,'Petrow',2,6,117,'RU',5,4),(61,'Wolkow',6,1,251,'RU',5,1),(62,'Solowjow',4,3,250,'RU',2,NULL),(63,'Wassiljew',2,2,120,'RU',3,5),(64,'Saizew',1,5,120,'RU',5,2),(65,'Pawlow',2,4,117,'RU',2,3),(66,'Semjonow',3,5,120,'RU',6,2),(67,'Golubew',4,5,250,'RU',1,2),(68,'Winogradow',5,5,252,'RU',3,2),(69,'Bogdanow',5,4,252,'RU',3,2),(70,'Worobjow',1,2,118,'RU',4,4),(71,'Fjodorow',4,2,118,'RU',5,2),(72,'Michailow',5,4,250,'RU',5,3),(73,'Beljajew',4,6,116,'RU',5,2),(74,'Tarassow',3,1,120,'RU',4,4),(75,'Below',6,3,252,'RU',6,2),(76,'Komarow',5,3,117,'RU',5,1),(77,'Orlow',2,3,120,'RU',3,1),(78,'Kisseljow',5,6,116,'RU',5,2),(79,'Makarow',6,2,117,'RU',4,2),(80,'Andrejew',6,2,252,'RU',3,3),(81,'Kowaljow',6,1,251,'RU',5,3),(82,'Iljin',4,2,250,'RU',3,2),(83,'Gussew',2,6,117,'RU',2,3),(84,'Titow',3,4,252,'RU',3,5),(85,'Kusmin',2,3,117,'RU',6,4),(86,'Kudrjawzew',3,1,250,'RU',2,3),(87,'Baranow',2,2,118,'RU',4,2),(88,'Kulikow',6,2,252,'RU',3,1),(89,'Alexejew',1,3,116,'RU',2,3),(90,'Stepanow',2,2,250,'RU',6,3),(91,'Jakowlew',4,5,252,'RU',5,1),(92,'Sorokin',4,2,116,'RU',2,3),(93,'Sergejew',6,4,120,'RU',6,3),(94,'Romanow',2,5,117,'RU',4,1),(95,'Sacharow',4,3,117,'RU',4,5),(96,'Borissow',2,3,251,'RU',5,NULL),(97,'Koroljow',4,4,252,'RU',6,2),(98,'Gerassimow',5,5,250,'RU',4,4),(99,'Ponomarjow',3,5,252,'RU',5,3),(100,'Grigorjew',6,3,116,'RU',5,4),(101,'Smirnow',2,5,116,'RU',5,1),(102,'Iwanow',3,1,250,'RU',2,2),(103,'Kusnezow',5,3,251,'RU',5,2);
;

--
-- Table structure for table `lehrer_hat_schueler`
--


CREATE TABLE `lehrer_hat_schueler` (
  `idLehrer` int NOT NULL,
  `idSchueler` int NOT NULL,
  PRIMARY KEY (`idSchueler`,`idLehrer`),
  FOREIGN KEY (idLehrer) REFERENCES lehrer(id),
  FOREIGN KEY (idSchueler) REFERENCES schueler(id)
) ;


--
-- Dumping data for table `lehrer_hat_schueler`
--


INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer) VALUES (2,1),(6,1),(7,1),(9,1),(10,1),(11,1),(14,1),(16,1),(23,1),(32,1),(34,1),(35,1);
INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer) VALUES(43,1),(48,1),(64,1),(67,1),(73,1),(77,1),(81,1),(87,1),(98,1),(1,2),(3,2),(6,2),(10,2),(15,2),(18,2),(19,2),(21,2),(25,2),(31,2),(36,2),(37,2),(40,2),(48,2),(49,2),(50,2),(66,2),(67,2),(70,2),(82,2),(85,2),(93,2),(1,3),(4,3),(6,3),(9,3),(10,3),(12,3),(13,3),(17,3),(18,3),(19,3),(21,3),(22,3),(23,3),(24,3),(25,3),(27,3),(28,3),(30,3),(32,3),(33,3),(36,3),(56,3),(61,3),(85,3),(93,3),(94,3),(100,3),(3,4),(6,4),(8,4),(19,4),(21,4),(22,4),(23,4),(25,4),(26,4),(27,4),(35,4),(40,4),(43,4),(46,4),(56,4),(67,4),(71,4),(75,4),(77,4),(78,4),(80,4),(90,4),(97,4),(1,5),(6,5),(7,5),(9,5),(10,5),(12,5),(13,5),(15,5),(19,5),(20,5),(21,5),(25,5),(27,5),(28,5),(33,5),(39,5),(44,5),(45,5),(63,5),(65,5),(72,5),(74,5),(83,5),(91,5),(100,5),(2,6),(3,6),(8,6),(10,6),(11,6),(14,6),(17,6),(19,6),(21,6),(23,6),(25,6),(27,6),(37,6),(42,6),(43,6),(45,6),(48,6),(53,6),(57,6),(58,6),(63,6),(64,6);
INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer) VALUES(73,6),(80,6),(88,6),(89,6),(1,7),(6,7),(11,7),(12,7),(16,7),(18,7),(19,7);
INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer) VALUES(21,7),(23,7),(25,7),(27,7),(31,7),(39,7),(56,7),(62,7),(66,7),(69,7),(71,7),(79,7),(84,7),(98,7),(100,7),(7,8),(14,8),(17,8),(18,8),(19,8),(24,8),(25,8),(26,8),(27,8),(33,8),(36,8),(44,8),(59,8),(60,8),(61,8);
INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer) VALUES(62,8),(70,8),(78,8),(85,8),(94,8),(102,8),(4,9),(8,9),(9,9),(11,9),(16,9);
INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer)VALUES(20,9),(22,9),(23,9),(39,9),(41,9),(43,9),(51,9),(59,9),(79,9),(80,9),(86,9),(87,9),(95,9),(97,9),(1,10),(4,10),(5,10),(6,10),(7,10),(8,10),(11,10),(13,10),(14,10),(15,10),(17,10),(18,10),(20,10),(21,10),(26,10),(30,10),(53,10),(54,10),(60,10),(63,10),(69,10),(77,10),(80,10),(82,10),(91,10),(92,10),(102,10),(3,11),(4,11),(5,11),(6,11),(7,11),(10,11),(16,11),(17,11),(18,11),(23,11),(28,11),(29,11),(33,11),(37,11),(51,11),(53,11),(59,11),(60,11),(61,11),(68,11),(86,11),(88,11),(90,11),(92,11),(102,11),(6,12),(8,12),(9,12),(16,12),(17,12),(18,12),(20,12),(21,12),(24,12),(26,12),(27,12),(28,12),(29,12),(31,12),(34,12),(42,12),(47,12),(48,12),(55,12),(73,12),(74,12),(75,12),(76,12),(1,13),(3,13),(5,13),(7,13),(8,13),(10,13),(12,13),(13,13),(16,13),(20,13),(32,13),(35,13),(40,13),(42,13),(47,13),(49,13),(54,13),(67,13),(83,13),(86,13),(88,13),(89,13),(91,13),(100,13),(1,14),(3,14),(5,14),(6,14),(7,14),(12,14),(14,14),(15,14),(16,14),(17,14),(26,14),(27,14),(28,14),(33,14),(34,14),(56,14),(62,14),(66,14),(75,14),(84,14),(95,14),(4,15),(7,15),(10,15),(11,15),(13,15),(14,15),(24,15),(38,15),(40,15),(42,15),(46,15),(52,15),(58,15),(60,15),(64,15),(66,15),(70,15),(71,15),(83,15),(97,15),(99,15),(101,15),(2,16),(3,16),(4,16),(6,16),(7,16),(9,16),(12,16),(14,16),(17,16),(23,16),(25,16),(27,16),(29,16),(35,16),(38,16),(44,16),(63,16),(65,16),(69,16),(75,16),(92,16),(94,16),(99,16),(103,16),(1,17),(2,17),(3,17),(6,17),(7,17),(12,17),(16,17),(18,17),(22,17),(25,17),(26,17),(28,17),(35,17),(45,17),(48,17),(58,17),(65,17),(67,17),(81,17),(82,17),(93,17),(103,17),(2,18),(5,18),(6,18),(12,18),(17,18),(21,18),(22,18),(23,18),(24,18),(25,18),(27,18),(40,18),(45,18),(50,18),(54,18),(61,18),(66,18),(75,18),(83,18),(89,18),(99,18),(101,18),(103,18),(8,19),(10,19),(11,19),(13,19),(16,19),(17,19),(18,19),(19,19),(20,19),(21,19),(24,19),(25,19),(41,19),(43,19),(44,19),(55,19),(65,19),(69,19),(78,19),(81,19),(83,19),(87,19),(92,19),(93,19),(96,19),(1,20),(10,20),(11,20),(13,20),(15,20),(17,20),(19,20),(21,20),(22,20),(24,20),(25,20),(28,20),(38,20),(41,20),(44,20),(45,20),(49,20),(54,20),(62,20),(68,20),(69,20),(77,20),(79,20),(86,20),(90,20),(4,21),(6,21),(10,21),(13,21),(14,21),(22,21),(25,21),(26,21),(28,21),(31,21),(47,21),(50,21),(51,21),(55,21),(70,21),(72,21),(74,21),(77,21),(78,21),(87,21),(89,21),(96,21),(2,22),(5,22),(10,22),(11,22),(19,22),(22,22),(23,22),(26,22),(27,22),(28,22),(30,22),(31,22),(49,22),(51,22),(52,22),(53,22),(57,22),(60,22),(68,22),(76,22),(94,22),(97,22),(98,22),(2,23),(5,23),(13,23),(16,23),(17,23),(19,23),(22,23),(26,23),(28,23),(38,23),(39,23),(41,23),(46,23),(50,23),(70,23),(76,23),(79,23),(80,23),(84,23),(85,23),(88,23),(90,23),(5,24),(8,24),(9,24),(10,24),(12,24),(14,24),(15,24),(22,24),(24,24),(25,24),(29,24),(49,24),(50,24),(55,24),(57,24),(73,24),(76,24),(82,24),(92,24),(98,24),(99,24),(4,25),(8,25),(12,25),(14,25),(15,25),(18,25),(20,25),(24,25),(26,25),(29,25),(37,25),(47,25),(52,25),(53,25),(55,25),(57,25),(68,25),(71,25),(72,25),(79,25),(85,25),(96,25),(101,25),(1,26),(2,26),(7,26),(11,26),(13,26),(15,26),(16,26),(22,26),(23,26),(26,26),(30,26),(36,26),(37,26),(42,26),(46,26),(54,26),(56,26),(57,26),(72,26),(81,26),(91,26),(96,26),(2,27),(5,27),(7,27),(9,27),(10,27),(12,27),(13,27),(15,27),(22,27),(23,27),(28,27),(34,27),(41,27),(51,27),(52,27),(61,27),(64,27),(65,27),(72,27),(73,27),(84,27),(87,27),(88,27),(90,27),(95,27),(102,27),(2,28),(3,28),(4,28),(5,28),(7,28),(10,28),(14,28),(15,28),(16,28),(18,28),(20,28),(21,28),(23,28),(24,28),(27,28),(32,28);
INSERT INTO `lehrer_hat_schueler`(idSchueler,idLehrer) VALUES(34,28),(59,28),(64,28),(68,28),(71,28),(89,28),(101,28);

--
-- Table structure for table `orte`
--

SELECT * FROM lehrer;
SELECT * FROM schueler;
SELECT * FROM Faecher;













