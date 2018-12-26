-- MySQL dump 10.13  Distrib 8.0.12, for Linux (x86_64)
--
-- Host: localhost    Database: marvel
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Afiliacion`
--

DROP TABLE IF EXISTS `Afiliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Afiliacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Afiliacion`
--

LOCK TABLES `Afiliacion` WRITE;
/*!40000 ALTER TABLE `Afiliacion` DISABLE KEYS */;
INSERT INTO `Afiliacion` VALUES 
(1,'X-Men','The X-Men are a privately owned security force created to harbor peace between the emerging homo superior, nicknamed \"Mutants\" and baseline humans. '),(2,'Avengers','The Avengers are a team of extraordinary individuals with special abilities and the will to do good in the world.'),(3,'Defenders (Manhattan)','When the trio of heroes Daredevil, Iron Fist and Luke Cage interfered with the operations of rising crime lord Diamondback, they were dealt heavy blows in retaliation.As they were looking for leads on Diamondback together with Luke\'s wife Jessica Jones, Daredevil noticed it could help people know that they actively worked together. They continued operating as a team to investigate Diamondback, and eventually became known as the Defenders.'),(4,'Defenders','Continuously thrown together by various circumstances, the team came to call themselves The Defenders and protect Earth from usually otherworldly attacks. Many members of the team aren\'t particularly fond of their teammates, with fights frequently breaking out and many labeling the group as a \'non-team\' for the way they act'),(5,'Midnight Sons','Nine beings with ties to the occult were drawn together by Doctor Strange to battle Lilith and her demonic children, the Lilin'),(6,'Heroes for Hire (Power Man & Iron Fist)','Heroes For Hire, Inc. is a small business licensed by the state of New York which offered a full line of professional investigation and protection services.'),(7,'Rand Corporation','Entrepreneur Wendell Rand and co-founder Harold Meachum established Rand-Meachum Incorporated as foundation for their research and investment enterprise.'),(8,'Immortal Weapons','The champions of the Seven Capital Cities of Heaven, each are skilled in martial arts and able to manipulate Chi energy in various ways.'),(9,'Heroes for Hire (Knight & Wing)','During the Civil War; Misty Knight and Colleen Wing were contacted by Iron Man, Reed Richards, and Spider-Man to reform Heroes for Hire in order to track down superhumans refusing to comply with the Superhuman Registration Act. '),(10,'New Avengers','The New Avengers first assembled by chance during a breakout occurred at the Raft, an island prison designed to hold super-criminals. Luke Cage (acting as a hired bodyguard) was escorting attorneys Foggy Nelson and Matt Murdock (Daredevil) to meet with the Sentry as it was occurring. Spider-Man, Captain America, and Iron Man all arrived to help keep order.'),(11,'Thunderbolts','Conceived as a new incarnation of the Masters of Evil, the Thunderbolts were initially formed by Baron Zemo.'),(12,'Heroes for Hire (Oracle Inc.)','Following up on the status of the Oracle corporation that Namor, Jim Hammond (the Golden Age Human Torch) and Danny Rand decided to set up a new Heroes For Hire organization.'),(13,'Secret Avengers (Civil War)','The Secret Avengers were founded by Captain America in response to the Superhuman Registration Act, set up precisely for those who wanted to fight against Iron Man\'s initiative for superhuman registration.'),(14,'Secret Defenders','With the Defenders disbanded, Dr. Strange organized his own \"Secret Defenders\" project, recruiting whichever heroes he required for a given mission, with no ongoing members.'),(15,'Defenders for a Day','When the Defenders\' associate Dollar Bill created a documentary about the group and aired it on television without their permission, it attracted a group of super-heroes who were interested in joining the group. '),(16,'Future Iron Man\'s Team','This team was formed by Iron Man from the future of various heroes from the past '),(17,'Mighty','In order to retaliate against the Worthy, Captain America brought Ms. Marvel, Iron Fist, Doctor Strange, Iron Man, Black Widow, Hawkeye, Red She-Hulk, Spider-Man, and Wolverine to Asgard to bless certain items in order to match the strength of the Worthy.'),(18,'Fantastic Four','The Fantastic Four are a group of scientific explorers lead by Dr. Reed Richards. After the team gained powers during a impromptu trip to space; Sue Storm, Johnny Storm and pilot Ben Grimm decided to remain together to explore the boundaries of science'),(19,'Future Foundation',' a new group of free-thinking individuals to plan for a better future for all of humanity and Earth. '),(20,'Illuminati','The Illuminati were a covert think-tank originally consisting of Mister Fantastic, Iron Man, Professor X, Doctor Strange, Black Bolt, and Namor. '),(21,'Interdimensional Council of Reeds (Multiverse)','The Council was founded officially by three versions of Reed Richards who had each acquired their universes\' Infinity Gauntlet.'),(22,'Knights of the Atomic Round Table','When the Fantastic Four and the Avengers sacrificed their lives to destroy Onslaught, Franklin Richards, the son of the FF\'s Mr. Fantastic and Invisible Woman subconsciously created a pocket universe to save their lives. '),(23,'Headbangers','The Headbangers were a collection of members of Alpha Flight and the Fantastic Four who were controlled by Headlok.'),(24,'Amazing Arachnids ',NULL),(25,'Warriors of the Great Web','The Warriors of the Great Web is a team formed by Spider-UK and Spider-Girl to help any reality that is in need of help.'),(26,'Spider-Army','Spider-powered beings from across the Multiverse joining forces to defeat the Inheritors'),(27,'Superior Spider-Army','Spider-powered beings from across the Multiverse to defeat the Totem hunter Karn'),(28,'Chronos Corps','The Chronos Corps are a group of time-displaced individuals Kang the Conqueror rescued from certain death at the hands of their own dying universes.'),(29,'Anachronauts','Personal guard of Kang the Conqueror'),(30,'Council of Kangs ','A group composed by Prime Kang and two of Kang\'s divergences that were tricked by their future counterpart Immortus to eliminate all divergent Kangs in the Multiverse so that Kang\'s destiny ended with him becoming Immortus. Immortus seemingly succeeded in this task for a time.'),(31,'Council of Cross-Time Kangs','The Council of Cross-Time Kangs was a group of several Humans, aliens and other creatures who took the guise of Kang the Conqueror after defeating the various robots used by the Prime Kang to rule multiple realities at the same time.'),(32,'Legion Accursed','Mephisto sent his agent Bitterhorn out to Earth to recruit an army of super-villains to battle the Beyonder. Bitterhorn begins by making deals with the Juggernaut, Electro, Baron Mordo, Absorbing Man and Titania. '),(33,'Hel-Rangers','The Hel-Rangers consisted of exiled inhabitants from other domains due to crimes they had committed and were sent to The Shield forever to guard the rest of Battleworld from the Zombies of the Deadlands, the Ultron Sentinels of Perfection, and the Annihilation Wave of New Xandar.'),(34,'Sons of Yinsen','A number of young men who had been enslaved by Wong-Chu learned of Ho Yinsen and Iron Man.'),(35,'Lethal Legion','The Lethal Legion were a super-villain team gathered by Grim Reaper to defeat the Avengers.'),(36,'Masters of Evil','The Masters of Evil were a team of supervillains.'),(37,'Gods of Asgard','The Asgardians are a humanoid race of extradimensional beings that hail from Asgard, a small pocket-dimension adjacent to Earth. '),(38,'Hell Lords','The Hell-Lords are powerful demons each in control of their respective \"Hell\" dimensions and are known to use the title of \"Satan\" to manipulate mortals. ');
/*!40000 ALTER TABLE `Afiliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Afiliacion_Personaje`
--

DROP TABLE IF EXISTS `Afiliacion_Personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Afiliacion_Personaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor` int(10) unsigned DEFAULT NULL,
  `id_personaje` int(10) unsigned DEFAULT NULL,
  `id_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personaje` (`id_personaje`),
  KEY `id_competidor` (`id_competidor`),
  KEY `id_afiliacion` (`id_afiliacion`),
  CONSTRAINT `Afiliacion_Personaje_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Afiliacion_Personaje_ibfk_2` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Afiliacion_Personaje_ibfk_3` FOREIGN KEY (`id_afiliacion`) REFERENCES `Afiliacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Afiliacion_Personaje`
--

LOCK TABLES `Afiliacion_Personaje` WRITE;
/*!40000 ALTER TABLE `Afiliacion_Personaje` DISABLE KEYS */;

INSERT INTO `Afiliacion_Personaje` (id_competidor,id_afiliacion) VALUES 
(1,3),
(1,6),
(1,7),
(1,8),
(1,5),
(1,4),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,17),
(2,24),
(2,25),
(2,26),
(2,27),
(3,18),
(3,19),
(3,20),
(3,2),
(3,4),
(3,21),
(3,22),
(3,21),
(3,23),
(4,34),
(4,35),
(4,36),
(4,32),
(5,28),
(5,28),
(5,28),
(5,29),
(5,30),
(5,31),
(5,32),
(5,33),
(6,37),
(6,38);







;
/*!40000 ALTER TABLE `Afiliacion_Personaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alias`
--

DROP TABLE IF EXISTS `Alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Alias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor` int(10) unsigned NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_competidor` (`id_competidor`),
  CONSTRAINT `Alias_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alias`
--

LOCK TABLES `Alias` WRITE;
/*!40000 ALTER TABLE `Alias` DISABLE KEYS */;
INSERT INTO `Alias` VALUES (1,1,'Daniel Thomas Rand',NULL),(2,1,'Danny Rand',NULL),(3,1,'Young Dragon',NULL),(4,1,'Cooper Payton',NULL),(5,1,'Kung Fu Killer',NULL),(6,1,'Hong Kong Phooey',NULL),(7,1,'impersonated Daredevi',NULL),(8,1,'Kung Fu Killer',NULL),(9,1,'impersonated Spider-Man',NULL);
/*!40000 ALTER TABLE `Alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alifiacion`
--

DROP TABLE IF EXISTS `Alifiacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Alifiacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text NOT NULL,
  `indificador_aumento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alifiacion`
--

LOCK TABLES `Alifiacion` WRITE;
/*!40000 ALTER TABLE `Alifiacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alifiacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Base_Afiliacion`
--

DROP TABLE IF EXISTS `Base_Afiliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Base_Afiliacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_base` int(10) unsigned NOT NULL,
  `id_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`id_base`,`id_afiliacion`),
  KEY `id_afiliacion` (`id_afiliacion`),
  KEY `Base_Afiliacion_ibfk_1` (`id_base`),
  CONSTRAINT `Base_Afiliacion_ibfk_1` FOREIGN KEY (`id_base`) REFERENCES `Base_Operacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Afiliacion_ibfk_2` FOREIGN KEY (`id_afiliacion`) REFERENCES `Alifiacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Base_Afiliacion`
--

LOCK TABLES `Base_Afiliacion` WRITE;
/*!40000 ALTER TABLE `Base_Afiliacion` DISABLE KEYS */;
INSERT INTO `Base_Afiliacion` VALUES (1,1,1,0),(2,2,1,1),(3,3,1,0),(4,4,1,0),(5,5,1,NULL),(6,6,1,NULL),(7,7,1,NULL),(8,8,3,NULL),(9,9,4,1),(10,12,4,0),(11,13,4,0),(12,14,4,0),(13,9,5,0),(14,10,6,NULL),(15,11,7,0),(16,15,9,0),(17,16,10,0),(18,17,10,0),(19,18,10,0),(20,19,11,0),(21,20,11,0),(22,21,11,0),(23,22,11,0),(24,23,11,0),(25,24,11,0),(26,25,12,0),(27,26,13,0),(28,27,14,0),(29,28,15,0),(30,29,16,0),(31,30,17,0),(32,31,18,0),(33,32,18,0),(34,33,18,0),(35,34,18,0),(36,35,18,0),(37,23,18,0),(38,36,19,0),(39,34,19,0),(40,37,19,0),(41,38,19,0),(42,39,19,0),(43,30,20,0),(44,41,20,0),(45,16,20,0),(46,34,20,0),(47,42,2,0),(48,43,2,0),(49,44,2,0),(50,34,2,0),(51,45,2,0),(52,46,2,0),(53,47,2,0),(54,48,2,0),(55,18,2,0),(56,16,2,0),(57,49,21,0),(58,50,22,0),(59,51,23,0),(60,52,24,0),(61,53,25,0),(62,54,25,0),(63,55,25,0),(64,53,26,0),(65,56,26,0),(66,57,26,0),(67,58,27,0),(68,59,27,0),(69,60,28,0),(70,61,29,1),(71,62,30,0),(72,63,31,0),(73,64,32,0),(74,65,33,0),(75,66,34,0),(76,67,35,0),(77,68,36,0),(78,69,36,0),(79,70,36,0),(80,71,36,0),(81,72,37,0),(82,73,37,0),(83,74,38,0);
/*!40000 ALTER TABLE `Base_Afiliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Base_Operacion`
--

DROP TABLE IF EXISTS `Base_Operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Base_Operacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lugar` int(10) unsigned DEFAULT NULL,
  `id_universo` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_lugar` (`id_lugar`),
  KEY `id_universo` (`id_universo`),
  CONSTRAINT `Base_Operacion_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Operacion_ibfk_2` FOREIGN KEY (`id_universo`) REFERENCES `Universo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Base_Operacion`
--

LOCK TABLES `Base_Operacion` WRITE;
/*!40000 ALTER TABLE `Base_Operacion` DISABLE KEYS */;
INSERT INTO `Base_Operacion` (id,id_universo,id_lugar,nombre,descripcion) VALUES (1,1,68,'Xavier Institute for Higher Learning','is a special institute founded and led by Professor Charles Xavier to train young mutants in controlling their powers and help foster a friendly human-mutant relationship.'),(2,1,68,'Jean Grey School for Higher Learning','After Wolverine left Utopia, with many of the X-Men, he returned to the ruins of the Xavier Institute to found a new school, Jean Grey School for Higher Learning, in honor of the first student of Professor Xavier.'),(3,1,70,'X-Haven','X-Haven was a sanctuary founded by Storm to protect mutantkind from both the danger of the Terrigen Mist and the ever-growing oppression her people faced.'),(4,1,71,'Utopia','Utopia was the main headquarters of the majority of the mutant population and the X-Men. '),(5,1,73,'Graymalkin Industries','After much debate and a rescue mission of a few AWOL X-Men, Scott Summers, with the financial help of Warren Worthington III, decided to relocate in San Francisco where the people, and mayor, were more accepting.'),(6,1,74,'Cooterman\'s Creek','Cooterman\'s Creek is a high-tech facility disguised as an abandoned town in the Australian Outback. '),(7,1,76,'Magneto\'s Island','used as a R&R location for Magneto and the X-Men / New Mutants due to its eldritch nature and eletronic systems, which masked it from the outside world.'),(8,1,65,'Manhattan (Defenders\' Base)',NULL),(9,1,77,'Sanctum Sanctorum','Also known as the Sanctum Sanctorum, the townhouse has served as the personal residence of Doctor Strange and formerly as the headquarters of the Defenders and the New Avengers.'),(10,1,78,'Headquarters of the Heroes for Hire',NULL),(11,1,78,'The Rand Building','The Rand Building is home to the Rand Corporation.'),(12,1,14,'Heart of Heaven','Once every 88 years, during a heavenly convergence, each of the Seven Capital Cities of Heaven occupy the same space and time to create a place called the Heart of Heaven.'),(13,1,66,'Richmond Riding Academy','served as an unofficial headquarters for the non-team the Defenders.'),(14,1,79,'Angel\'s Aerie','it served as \"New\" Defenders headquarters, when Beast tried to reorganize the Defenders team.'),(15,1,65,'Knightwing Restorations Inc. Office',NULL),(16,1,65,'Avengers Mansion','Located at 721 (or 890) Fifth Avenue in New York, this three-story townhouse was originally built in 1932 by industrialist Howard Stark as his Manhattan residence.'),(17,1,80,'Captain America\'s townhouse',NULL),(18,1,65,'Stark Tower','was designed by Tony Stark with the intention to serve as a gleaming beacon of modern architecture.'),(19,1,82,'Thunderbolts Clubhouse',NULL),(20,1,83,'The Raft','The Raft was a super maximum security prison for super-powered criminals'),(21,1,79,'Thunderbolt Mountain',NULL),(22,1,80,'Thunderbolts Headquarters',NULL),(23,1,85,'Four Freedoms Plaza','Four Freedoms Plaza was the replacement headquarters for the Fantastic Four when their original dwelling, the Baxter Building, was destroyed by Kristoff Vernard the adoptive son of Doctor Doom. '),(24,1,86,'Mount Charteris Mountain Base',NULL),(25,1,87,'Gem Theater','Luke Cage rented a 3rd story office/apartment at the Gem Theater for a number of years.'),(26,NULL,NULL,'Secret safehouse',NULL),(27,1,89,'Doctor Druid\'s Sanctum',NULL),(28,1,1,'Defenders Headquarters',NULL),(29,1,1,'Unlocated underwater base','Donald Birch\'s base'),(30,1,NULL,'Movil','la base de operaciones no tiene lugar fijo puede moverse a varios lados'),(31,1,90,'Ben Grimm\'s apartment building',NULL),(32,1,65,'Moon Girl\'s Secret Laboratory','Moon Girl\'s Secret Laboratory is located within the substructure of Public School 20 Anna Silver on the Lower East Side of Manhattan in New York City.'),(33,1,65,'Public School 20 Anna Silver','Public School 20 Anna Silver is a New York public school located on Essex Street in the Lower East Side neighborhood of Manhattan.'),(34,1,65,'Baxter Building','The Baxter Building is a 35-story building located at 42nd Street and Madison Avenue, Manhattan, New York City in the United States of America just a few blocks from the United Nations Headquarters.'),(35,1,65,'Antarctic Laboratory (Pier Four)','was the Fantastic Four\'s third temporarily base/home warehouse near the Hudson River following their return from Franklin\'s alternate universe and the destruction of Four Freedoms Plaza by the Thunderbolts.'),(36,15,NULL,'Movil a traves del Multiverso',NULL),(37,1,92,'Camp Hammond','The camp is primarily used to train drafted super powered young people in the United States who have to be registered with the federal government.'),(38,1,93,'Foundation (Space Station)','The Foundation is a orbital space station and education facility of the Future Foundation, built by Reed Richards in geosynchronous orbit above the Baxter Building.'),(39,1,94,'Vostok Station',NULL),(40,1,22,'Funtime, Inc. Facility','Funtime, Inc. was one of the many subsidiaries of the larger Stark Industries. Currently abandoned, it served as the main point of encounter of Iron Man and the Illuminati.'),(41,1,95,'Necropolis (Base)','The Necropolis is the Wakandan City of the Dead, where previous Black Panthers are buried.'),(42,1,14,'Avengers Mountain (Base)','According to Loki, the Progenitor was an Alpha Celestial who came to Earth four billion years ago after being infected by the Horde to die a sad and painful death. '),(43,1,82,'Polo Norte (Avengers\' Base)',NULL),(44,1,96,'Avengers Auxiliary Headquarters','The Avengers Auxiliary Headquarters was an underground warehouse set up by Tony Stark in case of emergencies.'),(45,1,97,'Avengers Hangar','After suffering from defunding, the Avengers moved their base of operations to an abandoned Stark Industries facility in New Jersey.'),(46,1,75,'Avengers Island (Hydrobase)','Originally built as a floating oceanography research station disguised to appear as a natural island in the Atlantic Ocean. '),(47,1,25,'Wakanda (Avengers\' Base)',NULL),(48,1,99,'K\'un-Lun (Avengers\' Base)',NULL),(49,15,NULL,'Interdimensional Council of Reeds (Base)',NULL),(50,1,100,'State University','State University is one of the best private university\'s in the United States of America. It is located in Hegeman, New York State.'),(51,1,101,'Tuktoyatuk','small town in the Yukon of Canada'),(52,15,NULL,'Amazing Arachnids (Base)',NULL),(53,10,14,'Loomworld','Loomworld was an Earth conquered by the Inheritors and is being used as their main domain to travel the Multiverse with the unwilling help of the Master Weaver\'s dimensional portals to hunt the Spider-Totems.'),(54,11,103,'Oscorp Tower','Oscorp was the main headquarter of the Oscorp until Liz Allan took over the building as the hub of Alchemax'),(55,11,104,'ChinaTown (Base)',NULL),(56,12,87,'Sims Tower','After one of his encounters with Morlun, Ezekiel Sims created Sims Tower to protect future generations of Spider-Totems. '),(57,13,68,'Central Park (Base)',NULL),(58,1,72,'Horizon University','It is staffed by the organization formerly known as the Parker Institute for Technology.'),(59,14,105,'Empire State University','Empire State University (ESU) officially Empire State University in the City of New York is a private, Ivy League, research university in Upper Manhattan, New York City.'),(60,15,NULL,'Chronos Corps (Base)',NULL),(61,1,NULL,'Chronopolis','Immortus/Kang\'s main city base in the future. From here, he rules all of his realms.'),(62,NULL,70,'Castle Limbo',NULL),(63,NULL,70,'Kang-Krossroads',NULL),(64,1,NULL,'Mephisto\'s Realm','The realm of Mephisto is but one of many \"death dimensions\". Time moves much more slowly here, a few days on Earth feel like many years here.'),(65,11,102,'Shield','The Shield is a giant wall that is one of Battleworld\'s most important structures. It isolates the three deadliest domains of Battleworld, Deadlands, Perfection and New Xandar from the rest of the planet.'),(66,1,NULL,'Sons of Yinsen (Base)',NULL),(67,1,NULL,'Lethal Legion (Base)',NULL),(68,1,107,'Under the Shadow Council',NULL),(69,1,108,'Under Crimson Cowl',NULL),(70,1,110,'Under Baron Heinrich Zemo',NULL),(71,1,14,'Masters of Evil\'s South America Base',NULL),(72,1,111,'Asgardia (Base)',NULL),(73,1,112,'Oklahoma (Base)',NULL),(74,15,NULL,'Hell Lords\' Various Bases',NULL);
/*!40000 ALTER TABLE `Base_Operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Color`
--

DROP TABLE IF EXISTS `Color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Color` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Color`
--

LOCK TABLES `Color` WRITE;
/*!40000 ALTER TABLE `Color` DISABLE KEYS */;
INSERT INTO `Color` VALUES (3,'Amarillo'),(10,'Anaranjado'),(1,'Azul'),(6,'Gris'),(7,'Marron'),(2,'Morado'),(8,'Negro'),(5,'Rojo'),(9,'Rosado'),(4,'Verde');
/*!40000 ALTER TABLE `Color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enfrentamiento`
--

DROP TABLE IF EXISTS `Enfrentamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Enfrentamiento` (
  `id_competidor1` int(10) unsigned NOT NULL,
  `id_competidor2` int(10) unsigned NOT NULL,
  `fecha_hora_inicio` datetime NOT NULL,
  `tipo_etapa` tinyint(3) unsigned NOT NULL,
  `ganador` tinyint(3) unsigned DEFAULT NULL,
  `duracion` time NOT NULL,
  PRIMARY KEY (`id_competidor1`,`id_competidor2`),
  KEY `id_competidor2` (`id_competidor2`),
  CONSTRAINT `Enfrentamiento_ibfk_1` FOREIGN KEY (`id_competidor1`) REFERENCES `Inscrito` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Enfrentamiento_ibfk_2` FOREIGN KEY (`id_competidor2`) REFERENCES `Inscrito` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enfrentamiento`
--

LOCK TABLES `Enfrentamiento` WRITE;
/*!40000 ALTER TABLE `Enfrentamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Enfrentamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evento`
--

DROP TABLE IF EXISTS `Evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Evento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_hora_inicio` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evento`
--

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habilidad`
--

DROP TABLE IF EXISTS `Habilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Habilidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habilidad`
--

LOCK TABLES `Habilidad` WRITE;
/*!40000 ALTER TABLE `Habilidad` DISABLE KEYS */;
INSERT INTO `Habilidad` VALUES (1,'Intelligence',NULL),(2,'Strength',NULL),(3,'Speed',NULL),(4,'Durability',NULL),(5,'Energy Projection',NULL),(6,'Fighting Skills',NULL);
/*!40000 ALTER TABLE `Habilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habilidad_Competidor`
--

DROP TABLE IF EXISTS `Habilidad_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Habilidad_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_habilidad` int(10) unsigned NOT NULL,
  `valor` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_habilidad`),
  KEY `id_habilidad` (`id_habilidad`),
  CONSTRAINT `Habilidad_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Habilidad_Competidor_ibfk_2` FOREIGN KEY (`id_habilidad`) REFERENCES `Habilidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habilidad_Competidor`
--

LOCK TABLES `Habilidad_Competidor` WRITE;
/*!40000 ALTER TABLE `Habilidad_Competidor` DISABLE KEYS */;
INSERT INTO `Habilidad_Competidor` VALUES (1,1,3),(1,2,2),(1,3,2),(1,4,3),(1,5,3),(1,6,6),(2,1,5),(2,2,4),(2,3,3),(2,4,3),(2,5,3),(2,6,4),(3,1,6),(3,2,2),(3,3,2),(3,4,5),(3,5,1),(3,6,3),(4,1,4),(4,2,6),(4,3,3),(4,4,7),(4,5,6),(4,6,4),(5,1,4),(5,2,4),(5,3,7),(5,4,5),(5,5,5),(5,6,4),(6,1,3),(6,2,7),(6,3,7),(6,4,7),(6,5,6),(6,6,3);
/*!40000 ALTER TABLE `Habilidad_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inscrito`
--

DROP TABLE IF EXISTS `Inscrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Inscrito` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_evento` int(10) unsigned NULL,
  `puntos_etapa1` tinyint(3) unsigned DEFAULT NULL,
  `grupo_id` char(15) NOT NULL,
  `id_afiliacion_personaje` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_evento` (`id_evento`),
  KEY `id_afiliacion_personaje` (`id_afiliacion_personaje`),
  CONSTRAINT `Inscrito_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `Evento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Inscrito_ibfk_2` FOREIGN KEY (`id_afiliacion_personaje`) REFERENCES `Afiliacion_Personaje` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inscrito`
--

LOCK TABLES `Inscrito` WRITE;
/*!40000 ALTER TABLE `Inscrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inscrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lugar`
--

DROP TABLE IF EXISTS `Lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Lugar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_padre` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(256) NOT NULL,
  `tipo` enum('universo','galaxia','planeta','mundo_mitologico','dimension_magica') DEFAULT NULL,
  `tipo_geografico` enum('pais','estado','ciudad','locale') DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_padre` (`id_padre`),
  CONSTRAINT `Lugar_ibfk_1` FOREIGN KEY (`id_padre`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lugar`
--

LOCK TABLES `Lugar` WRITE;
/*!40000 ALTER TABLE `Lugar` DISABLE KEYS */;
INSERT INTO `Lugar` VALUES (10,NULL,'Andromeda Galaxy','galaxia',NULL,'The Andromeda Galaxy is home to a great number of alien species, foremost among them the Skrulls who were the dominant force of their galaxy.'),(11,NULL,'Milky Way','galaxia',NULL,'the Milky Way galaxy is home to numerous locations including the Sol system (Earth\'s solar system), and the star system Krona.'),(12,NULL,'Black Galaxy','galaxia',NULL,'The Black Galaxy is a living \"bio-verse\" and Ego the living planet was born there. '),(13,NULL,'Large Magellanic Cloud','galaxia',NULL,'The Large Magellanic Cloud is a dwarf galaxy that orbits the Milky Way. Also known as the Greater Magellanic Cloud, it is the home galaxy of the Kree Empire, as well as the Vorms.'),(14,11,'Tierra','planeta',NULL,NULL),(15,11,'Venus','planeta',NULL,NULL),(16,11,'Marte','planeta',NULL,NULL),(17,11,'Jupiter','planeta',NULL,NULL),(18,11,'Mercurio','planeta',NULL,NULL),(19,11,'Saturno','planeta',NULL,NULL),(20,11,'Urano','planeta',NULL,NULL),(21,11,'Neptuno','planeta',NULL,NULL),(22,14,'Estados Unidos',NULL,'pais',NULL),(23,14,'Canada',NULL,'pais',NULL),(24,14,'Gran Bretana',NULL,'pais',NULL),(25,14,'Wakanda',NULL,'pais',NULL),(26,14,'Alemania',NULL,'pais',NULL),(27,14,'Francia',NULL,'pais',NULL),(28,14,'Belgica',NULL,'pais',NULL),(29,14,'Bulgaria',NULL,'pais',NULL),(30,14,'Finlandia',NULL,'pais',NULL),(31,14,'Italia',NULL,'pais',NULL),(32,14,'Grecia',NULL,'pais',NULL),(33,14,'Rusia',NULL,'pais',NULL),(34,14,'Espana',NULL,'pais',NULL),(35,14,'Iran',NULL,'pais',NULL),(36,14,'Iraq',NULL,'pais',NULL),(37,14,'Egipto',NULL,'pais',NULL),(38,14,'India',NULL,'pais',NULL),(39,14,'China',NULL,'pais',NULL),(40,14,'Japon',NULL,'pais',NULL),(41,14,'Argentina',NULL,'pais',NULL),(42,14,'Colombia',NULL,'pais',NULL),(43,14,'Venezuela',NULL,'pais',NULL),(44,14,'Mexico',NULL,'pais',NULL),(45,14,'Tailandia',NULL,'pais',NULL),(46,14,'Sur Corea',NULL,'pais',NULL),(47,14,'Nor Corea',NULL,'pais',NULL),(48,14,'Brasil',NULL,'pais',NULL),(49,14,'Umbazi',NULL,'pais',NULL),(50,14,'Niganda',NULL,'pais',NULL),(51,14,'Djanda',NULL,'pais',NULL),(52,14,'Australia',NULL,'pais',NULL),(53,22,'Nueva York',NULL,'estado',NULL),(54,22,'Virginia',NULL,'estado',NULL),(55,22,'California',NULL,'estado',NULL),(56,22,'Bruselas',NULL,'estado',NULL),(57,22,'Madrid',NULL,'estado',NULL),(58,22,'Londres',NULL,'estado',NULL),(59,22,'Berlin',NULL,'estado',NULL),(60,22,'Beijing',NULL,'estado',NULL),(61,22,'Shangai',NULL,'estado',NULL),(62,53,'Nueva York City',NULL,'ciudad',NULL),(63,57,'Madrid',NULL,'ciudad',NULL),(64,58,'Ciudad de Londres',NULL,'ciudad',NULL),(65,62,'Manhattan',NULL,'locale',NULL),(66,62,'Long Island',NULL,'locale',NULL),(67,62,'ChinaTown',NULL,'locale',NULL),(68,65,'Central Park',NULL,'locale',NULL),(69,NULL,'Asgard','mundo_mitologico',NULL,NULL),(70,NULL,'Limbo','dimension_magica',NULL,NULL),(71,55,'San Francisco Bay',NULL,'locale',NULL),(72,55,'San Francisco',NULL,'ciudad',NULL),(73,71,'Marin Highlands',NULL,'locale',NULL),(74,52,'Northern Territory',NULL,'locale',NULL),(75,14,'Oceano Atlantico',NULL,'locale',NULL),(76,74,'Triangulo de las Bermudas',NULL,'locale',NULL),(77,65,'Greenwich Village',NULL,'locale',NULL),(78,65,'Harlem',NULL,'locale',NULL),(79,22,'Colorado',NULL,'estado',NULL),(80,62,'Brooklyn',NULL,'locale',NULL),(81,14,'Circulo Artico',NULL,'locale',NULL),(82,81,'Polo Norte',NULL,'locale',NULL),(83,53,'Bronx',NULL,'locale',NULL),(84,11,'Blue Area of the Moon','planeta',NULL,NULL),(85,84,'Negative Zone',NULL,'locale',NULL),(86,79,'Mount Charteris',NULL,'locale',NULL),(87,65,'Times Square',NULL,'locale',NULL),(88,22,'Massachusetts',NULL,'estado',NULL),(89,88,'Boston',NULL,'ciudad',NULL),(90,65,'Yancy Street',NULL,'locale',NULL),(91,22,'Connecticut',NULL,'estado',NULL),(92,91,'Stamford',NULL,'ciudad',NULL),(93,14,'La órbita de la Tierra',NULL,'locale','An area of space around the Earth. Anything within it that cannot resist the gravitational pull of the Earth will rotate around the Earth inside it. '),(94,14,'Antarctica',NULL,'locale',NULL),(95,25,'Necropolis',NULL,'ciudad',NULL),(96,62,'Queens',NULL,'locale',NULL),(97,22,'New Jersey',NULL,'estado',NULL),(98,22,'Tibet',NULL,'estado',NULL),(99,98,'K\'un-Lun',NULL,'ciudad','K\'un-Lun (焜伦) is a mystical lost city located in a pocket dimension, and one of the Seven Capital Cities of Heaven.'),(100,53,'Hegeman',NULL,'ciudad',NULL),(101,23,'Yukon',NULL,'locale',NULL),(102,NULL,'Battleworld','planeta',NULL,NULL),(103,102,'Arachnia',NULL,'locale',NULL),(104,103,'Chinatown',NULL,'locale',NULL),(105,62,'Downtown',NULL,'locale',NULL),(106,14,'Bagalia',NULL,'pais',NULL),(107,106,'Bagalia City',NULL,'ciudad',NULL),(108,14,'Symkaria',NULL,'pais',NULL),(109,22,'Idaho',NULL,'estado',NULL),(110,109,'Burton Canyon',NULL,'locale',NULL),(111,11,'Asgardia','mundo_mitologico',NULL,NULL),(112,22,'Oklahoma',NULL,'estado',NULL),
(113,55,'Central City',NULL,'ciudad',NULL),
(114,NULL,'Jotunheim','mundo_mitologico',NULL,"Jotunheim is one of the Nine Worlds and exists on the middle of the World Tree along with Midgard. It is home to the Giants of Jotunheim (among them Frost Giants, Storm Giants, Mountain Giants and Brine Giants)")
;
/*!40000 ALTER TABLE `Lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parafernalia`
--

DROP TABLE IF EXISTS `Parafernalia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Parafernalia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `tipo` enum('arma','armadura','otro') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parafernalia`
--

LOCK TABLES `Parafernalia` WRITE;
/*!40000 ALTER TABLE `Parafernalia` DISABLE KEYS */;
INSERT INTO `Parafernalia` VALUES (1,'Traje Noir','Peter diseño su propio traje con el uniforme que usaba su tío Ben en la Primera Guerra Mundial.','armadura'),(2,'Revolver','Peter bajo su identidad de Spider-Man utiliza armas de fuego para su lucha contra el crimen, teniendo poco reparo en usarlas cuando es necesario.','arma');
/*!40000 ALTER TABLE `Parafernalia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parafernalia_Competidor`
--

DROP TABLE IF EXISTS `Parafernalia_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Parafernalia_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_parafernalia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_parafernalia`),
  KEY `id_parafernalia` (`id_parafernalia`),
  CONSTRAINT `Parafernalia_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Parafernalia_Competidor_ibfk_2` FOREIGN KEY (`id_parafernalia`) REFERENCES `Parafernalia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parafernalia_Competidor`
--

LOCK TABLES `Parafernalia_Competidor` WRITE;
/*!40000 ALTER TABLE `Parafernalia_Competidor` DISABLE KEYS */;
INSERT INTO `Parafernalia_Competidor` VALUES (2,1),(2,2);
/*!40000 ALTER TABLE `Parafernalia_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personaje_Competidor`
--

DROP TABLE IF EXISTS `Personaje_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Personaje_Competidor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `nombre_real` varchar(256) NOT NULL,
  `apellido_real` varchar(256) DEFAULT NULL,
  `biografia` text,
  `identidad` enum('publica','anonima') DEFAULT NULL,
  `moralidad` enum('heroe','villano','antiheroe') DEFAULT NULL,
  `altura` float(10,2) DEFAULT NULL,
  `altura_opcional` float(10,2) DEFAULT NULL,
  `peso` int(10) DEFAULT NULL,
  `peso_opcional` int(10) DEFAULT NULL,
  `estado_civil` enum('soltero','casado') DEFAULT NULL,
  `genero` enum('M','F','Otro') DEFAULT NULL,
  `color_ojos_id` int(10) unsigned DEFAULT NULL,
  `color_pelo_id` int(10) unsigned DEFAULT NULL,
  `id_universo` int(10) unsigned DEFAULT NULL,
  `id_lugar_nacimiento` int(10) unsigned DEFAULT NULL,
  `foto_path` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_universo` (`id_universo`),
  KEY `color_ojos_id` (`color_ojos_id`),
  KEY `color_pelo_id` (`color_pelo_id`),
  KEY `id_lugar_nacimiento` (`id_lugar_nacimiento`),
  CONSTRAINT `Personaje_Competidor_ibfk_1` FOREIGN KEY (`id_universo`) REFERENCES `Universo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Personaje_Competidor_ibfk_2` FOREIGN KEY (`color_ojos_id`) REFERENCES `Color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Personaje_Competidor_ibfk_3` FOREIGN KEY (`color_pelo_id`) REFERENCES `Color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Personaje_Competidor_ibfk_4` FOREIGN KEY (`id_lugar_nacimiento`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personaje_Competidor`
--

LOCK TABLES `Personaje_Competidor` WRITE;
/*!40000 ALTER TABLE `Personaje_Competidor` DISABLE KEYS */;
INSERT INTO `Personaje_Competidor` VALUES 
(1,'Iron Fist','Daniel','Rand',"Daniel Rand was the son of businessman Wendell Rand, who had once lived in the fabled city of K'un-Lun, which exists in another dimensional realm. Wendell Rand-K'ai, as he was known there was the adopted son and heir of Lord Tuan, who ruled K'un-Lun in the guise of Yu-Ti, the August Personage in Jade. However, Wendell was driven from K'un-Lun by his brother, Nu-An, who not only wanted to rule K'un-Lun himself, but who was Wendell's rival for the love of a woman named Shakirah. It was Wendell that Shakirah chose, and she bore him a daughter, Miranda. Wendell found refuge on Earth and became a successful businessman in the United States. In his absence, Tuan died and Wendell's brother succeeded him as Yu-Ti, the August Personage in Jade. Wendell married a woman named Heather, who bore him a son, Daniel.
Wendell sought to return to K'un-Lun, which ordinarily was only accessible from Earth through an interdimensional nexus that opened once every ten years. When Daniel was nine, his father traveled to Tibet along with Heather and his business partner Harold Meachum in search of the nexus to K'un-Lun. Toppling off a treacherous mountain passage, Daniel dragged his mother and father over the ice shelf with him. While he and his mother landed on a ledge below, his father dangled over the sheer drop of the mountainside and called to his partner for help. Hoping to take over Rand's share of the business, Meachum instead caused him to lose his grip and plunge to his death. Though Meachum offered to help Heather Rand and her son, they spurned him. Attempting to make it back to camp on their own, Heather and her son spied a long suspension bridge as a pack of wolves attacked. Heather tried to hold them off long enough for her son to get to safety and was killed in the effort.
Soon thereafter, denizens of K'un-Lun found the boy and took him to their city. There Daniel was brought before Yu-Ti, who had secretly plotted the murder of both Wendell and Heather. Yu-Ti apprenticed Daniel to the martial arts master Lei Kung the Thunderer.
Rand's training under Lei Kung was rigorous. At the age of sixteen, Rand earned the Crown of Fu-Hsi, king of the vipers, vanquished four foes in the ritualistic Challenge of the Many, and defeated Shu-Hu, a mechanical being whose name means Lightning. Rand diligently conditioned his hands by thrusting them into tubs of hot sand, then gravel, and finally rock.
Iron Fist
At age nineteen Rand was given the opportunity to gain the power of the Iron Fist. He was sent to battle the enormous fire-breathing serpent called Shou-Lao the Undying which lived in a cave outside the city and which ferociously guarded a brazier containing its heart, which had mystically been removed from its body. In their battle, Rand grabbed the serpent's body, which bore a scar which imprinted itself upon Rand's chest. Killing the serpent, Rand plunged his hands into the now unguarded brazier containing Shou-Lao's molten heart when his hands shone with a quasi-mystical force and he earned the title Iron Fist, for he could now summon superhuman energy to reinforce the power of blows struck by his hands.
Daniel Rand (Earth-616) from Iron Fist Vol 3 1 0001
Danny Rand, Iron Fist
Declining to stay in K'un-Lun eternally, Rand returned to America when the nexus reopened in order to take vengeance on Meachum for his father's death. While recovering from severe frostbite in the Himalayas, Meachum learned of Rand's training at K'un-Lun and returned to America as an invalid to await Rand. Clad in the ceremonial garb of Iron Fist, Rand finally confronted Meachum, but took pity on the invalid and spared him. Minutes later, however, a mysterious ninja murdered Meachum. Blamed for the murder by Meachum's daughter Joy, Iron Fist undertook the mission of finding the ninja and clearing his own name. Eventually, Iron Fist succeeded in both tasks. During the same time, he accompanied a woman named Jade to Feng-Tu, K'un-Lun's afterlife, where he met his mother, who had taken on the name Silver Dragon and been enslaved by the sorcerer Dhasha Khan. While in Feng-Tu, he was killed by the Bowman so he could fight Khan as a spirit. After defeating him, Rand was restored to life by Jade.[",'anonima','heroe',1.80,NULL,79,NULL,'soltero','M',1,1,1,NULL,'iron_fist.jpg'),
(2,'The Spider-Man','Peter','Parker',"
Peter Parker was raised by his paternal aunt and uncle, May and Ben Parker, during the Great Depression. Peter was raised with the belief of good triumphing over evil and was supportive of his aunt and uncle's activism.
Peter tragically discovered the mutilated body of his uncle Ben, killed in retaliation by one of New York City's businessmen for organizing a strike on sweatshops. The murder of his uncle by the Goblin drove Peter's resolve to continue to seek justice. While helping May at a rally in a Hooverville, they encountered a violent response from the Enforcers. Fortunately, the two were saved by Ben Urich. Subsequently, Peter became Urich's protege for the Daily Bugle and explored the dire situation of New York City's denizens, especially those under the threat of the Goblin. After Peter mistakenly received a tip-off meant for Urich, he ventured to a warehouse where the Goblin’s men were unloading a shipment of stolen antiques.
A particular antique – a spider statue – breaks open and releases a horde of spiders. One of the spiders bit Peter, causing him to pass out and dream of a spider god. After waking up, Peter discovered he possessed arachnid superpowers. Donning a mask, Peter confronted Norman Osborn in his home in order to get him to give up his hold over the city. However, Peter was shocked to discover Urich, who was revealed to have been blackmailing Osborn with his information on the mob boss in exchange for fueling his drug habit. Angered, Peter left Urich. Upon returning home, Peter created a costume based on his uncle's World War I-era airman uniform and became the vigilante, Spider-Man.
Peter later returned to Urich's apartment to force him to help him to bring down the Goblin, only to find the reporter dead. Strengthened with resolve from his aunt and Urich's lover Felicia Hardy, Peter thwarted the Goblin's criminal operations.
As the Bugle labeled him negatively in the papers, Spider-Man arrived at the Bugle building to meet Jonah Jameson over this matter, only to find Jameson shot to death. Later on, Peter learned that Jameson was replaced by the Chameleon and the real Jameson was imprisoned by Osborn. This lead Peter to Jameson's location, where he killed the Vulture, who was responsible for killing Ben Parker, to stop him from murdering May Parker.
Despite saving his aunt, May criticized him for killing the Vulture, as he could have stopped him with his powers. She told Peter that killing people would make him less of what makes him human. Spider-Man later tracked down the Goblin's torture house and found the mob boss and his Enforcers holding Felicia and Jameson captive. He discovered that the Goblin had planned on murdering Urich, finding the reporter's information on the Goblin, which was kept by Felicia, and then eliminating every witness. He also discovered that Felicia was responsible for killing the Chameleon after she saw him, disguised as Jameson, murdering Urich. Spider-Man intervened, subdued the Enforcers and rescued Jameson. Spider-Man chased the Goblin, who held Felicia hostage, and cornered him. Peter had the chance to kill Osborn, but decided not to. The mob boss was then killed by spider-infested Sergei Kravinoff.
Months after the Goblin's demise, Spider-Man investigated a new, dangerous mob boss known as the Crime Master. During his investigation, Peter became infatuated with Felicia Hardy, though his lover didn't share her whole love for him as they lived different lives. Peter later interviewed Dr. Otto Octavius with his fellow news writer and friend Robbie Robertson, who had strongly suspected and tried to convinced Peter that there was something very sinister about the doctor.
Though Peter didn't take Robbie's suspicions too serious, he came to learn that many African-American minorities were being abducted by the Crime Master and was shocked to learn that Robbie was also abducted. After coming into his first conflict with the Crime Master, Spider-Man was brutally assaulted by the Crime Master's adjutant the Sandman until he was saved by Federal Agent Jean De Wolfe. Spider-Man teamed up with De Wolfe in stopping the Crime Master, and deduced Dr. Octavius was involved in the kidnappings. Spider-Man traveled to Octavius' laboratory on Ellis Island and was shocked to discovered that the doctor was aligned with the American Nazi-sympathetic organization the Friends of New Germany, and had been experimenting African-American minorities to transform them into mindless slaves.
Spider-Man freed the prisoners, but was too late and found Robbie already lobotomized. He came into a second confrontation with the Crime Master when he held Robbie hostage before De Wolfe's agents arrived on the island. After taking Robbie to safety and learning that the Crime Master had claimed murdering Felicia Hardy, as she was her lover, Spider-Man witnessed the mob boss get mercilessly killed by Octavius. Following this Spider-Man attempted to strangle Octavius for his crimes and what he'd done to his friend until being stopped by De Wolfe. After returning to Manhattan, Spider-Man went back to Felicia's apartment, having learned from De Wolfe that she was alive, and finding her bodyguard, who informed him that Felicia was recovering from her injuries and that she doesn't want to see Spider-Man ever again, blaming him for her injuries from the Crime Master after the mobster discovered her secret infatuation with the vigilante.
",'anonima','heroe',1.80,NULL,79,NULL,'soltero','M',7,7,6,96,'spiderman_noir.jpg'),



(3,'Mister Fantastic','Reed','Richards',"Reed Richards was born in Central City, California the only son of wealthy physicist Nathaniel Richards and his wife Evelyn, was a child prodigy with special aptitude in mathematics, physics, and mechanics. Evelyn died when Reed was seven.
Nathaniel encouraged and guided young Reed in his scientific studies, and Reed was taking college-level courses. Reed entered college at fourteen at CalTech (California Institute of Technology). He also attended Harvard University and M.I.T..[citation needed] He studied abroad at the University of Vienna in Austria. It is their he met fellow super-genius; Alyssa Moy. By the time he was eighteen, he had obtained four degrees in fields such as engineering, math, and physics.
It was when he was working on his fifth at at State University in Hegeman, New York, that Reed Richards first met two of the most important individuals in his life. He was assigned to room with a foreign student, a scientific genius named Victor von Doom. The imperious Von Doom, taking an immediate dislike to Richards, decided to take other quarters. Instead, Richards gained as his roommate former high school football star Benjamin J. Grimm, who became Richards’ closest friend. Richards was already intending to build a starship for interstellar travel. When he told his ambitions to Grimm, Grimm jokingly said that he would pilot the starship for Richards someday.
While attending State University, Richards rented living quarters at the Manhattan boarding house owned by the aunt of a young woman named Susan Storm. Reed instantly fell in love with Sue, although he soon deemed it prudent to move out, because he was too distracted from his work due to his romance with Sue.
Doom became obsessed with developing a machine that could project the astral form of a being into other dimensions. Reed pointed out a flaw in Doom's calculations, but Doom arrogantly ignored his warning, feeling that Reed was trying to upstage him. The machine exploded, scarring Doom's face. He was soon expelled for conducting unethical experiments. As Doctor Doom, von Doom would later become Richards’ greatest rival and enemy. Doom blamed Reed for his deformities and he continually tried to prove himself superior to Reed, especially intellectually. They battled many times, but Reed almost always emerged triumphantly.
Reed and Ben later served in the military together. Their time in war increased their trust in each other.
Three years before Reed Richards tested his starship, his father mysteriously disappeared. In fact, Nathaniel Richards had devised a time machine which he had used to attempt to journey into the future of his own world. However, the machine actually transported him to an alternate Earth with a history considerably different from our own. Reed Richards would be reunited with him while visiting this alternate Earth years later. Before Nathaniel Richards left his own time, he made arrangements that left two billion dollars to his son. Reed Richards spent most of the money on his project to build and launch his starship. This project, based in Central City, California, received further funding from the federal government",'publica','heroe',1.90,NULL,82,NULL,'soltero','M',7,1,1,113,'mr_fantastic.jpg'),
(4,'Ultron','Ultron',NULL,"Ultron-1 was constructed by Dr. Hank Pym of the Avengers as the famed scientist/adventurer was experimenting in high-intelligence robotics. Ultron became sentient and rebelled, hypnotizing Pym and brainwashing him into forgetting that Ultron had ever existed. He immediately began improving upon his rudimentary design, quickly upgrading himself several times from Ultron-2, Ultron-3 and Ultron-4, until finally becoming Ultron-5.
Ultron (Earth-616) from Avengers Vol 1 54 0002
Ultron-5 as the Crimson Cowl
Ultron-5
He then went on to organize the second incarnation of the Masters of Evil under the guise of the Crimson Cowl, and battled Pym and his teammates in the Avengers. To make things more complicated for the Avengers, he put their butler Edwin Jarvis under mind control and fooled the Avengers and his teammates into believing that Jarvis was the Crimson Cowl, and to keep this trick from being exposed, he let the brainwashed Jarvis, dressed as the Cowl unmask him, so that it would appear that Jarvis was using a robot stand-in to appear alongside the Cowl. When the Masters of Evil defeated the Avengers and strapped them to missiles, the Crimson Cowl decided that Jarvis had done his part, and un-hypnotized him. Jarvis, remembering what had happened during his time as a mind-controlled puppet, begged the Crimson Cowl to not kill the Avengers. In response, Ultron un-masked himself as the Crimson Cowl, revealing to everyone in the room that he was sentient and was indeed the mastermind behind the Avengers' defeat. Getting rid of his Crimson Cowl guise, Ultron ordered his teammates to kill Jarvis, and moved to a nearby building to watch his enemies be destroyed. Thankfully, Jarvis was rescued by Black Knight, who managed to free the Avengers and defeat the Masters of Evil. His plan ruined, Ultron swore revenge on the Avengers.Ultron (Earth-616) from Avengers Vol 1 55 0001
After six months of failure Ultron kidnapped the original Human Torch's original inventor, Professor Phineas T. Horton. He decided to create his own android using the original android Human Torch of the 1940's (actually a divergent Human Torch created by Immortus for his own machinations) to serve as a vehicle of vengeance against the Avengers. Ultron has Professor Horton change the android's face and color it red. He also has Professor Horton alter the Horton Cells giving his creation density shifting powers. When his Vision is birthed Ultron discovered Professor Horton didn't destroy his memory as the Torch. Ultron killed Professor Horton for betraying him and the Torch sought vengeance. Ultron defeated him and endowed Vision's neural processors with the brain patterns of the ionically charged costumed champion called Wonder Man implanting a control crystal to keep him in check. The Vision was then sent by Ultron to battle to Avengers. The Vision like his creator before him turned against Ultron and joined the Avengers.
Ultron (Earth-616) from Avengers Vol 1 66 0001
Ultron-6
Ultron later returned and took over the Vision's mind, forcing him to rebuild his body at the Avengers Mansion using stolen Adamantium or a slightly weaker adamantium alloy called secondary adamantium. Ultron-6 managed to defeat the Earth's mightiest heroes and escaped, to plot the destruction of the city with a Nuclear Bomb. However Vision stopped his creator from detonating the bomb, but Vision was taken down by S.H.I.E.L.D. agents allowing Ultron to escape.
Ultron (Earth-616) and Myron MacLain (Earth-616) from Avengers Vol 1 68 0001
They use the Vision's memories to learn a way to destroy Ultron with a molecular re-arranger device on his indestructible body. Ultron kidnapped Dr. MacLain in order to force him to build an army of robots to help in his conquest of Earth. He modified his body into the Ultimate Ultron, and attacked Dr. MacLain as he addressed the United Nations. This lead to yet another counter attack by the Avengers, when Ultron attempted to absorb the knowledge of MacLain, the procedure went wrong and Ultron began to go insane, and set himself to self destruct. The Avengers trap him in a dome of Vibranium to contain the explosion. Later, Dr. MacLain is revealed to be Henry Pym in disguise, he used self-hypnosis to convince everyone he was MacLain and when Ultron attempted to steal MacLain's knowledge, all he absorbed was the phrase Thou Shalt Not Kill.",'publica','villano',1.90,NULL,243,NULL,'soltero','M',5,NULL,1,97,'ultrom.jpg'),
(5,'Kang the Conqueror','Nathaniel','Richards',"Nathaniel Richards was born in the 30th century of Earth-6311, a reality where humanity never went into the dark ages. After centuries of advancement and warfare, peace was brought to the land by a time-traveller from Earth-616 named Nathaniel Richards. Because Richards brought peace to this war-torn future, he was known as the legendary benefactor. The Nathaniel Richards born to this reality is said to be a descendant of the Benefactor through Reed Richards, although other records also indicate that he may also be a descendant of the Latverian monarch known as Dr. Doom. At the age of 16, intervention from his future self, as Kang the Conqueror, resulted in young Nathaniel to try and prevent his eventual transformation in Kang, briefly becoming the young hero known as Iron Lad. The youth also briefly had a stint as a super-villain known as Kid Immortus. However Nathaniel Richards eventually returned to his native time to finally follow his proper destined path, possibly with his memories as Iron Lad erased, however at this time there is no conclusive explanation and the events leading to this are as yet unrecorded. As an adult, Nathaniel discovered a time machine and having grown bored of his peaceful time, traveled back in time to ancient Egypt on Earth-616. There he set himself up as a Pharaoh Rama-Tut until he was ousted from this position by the Fantastic Four. Rama-Tut tried to flee back to his own era, but he was caught in a time storm and was forced to appear in the modern era of Earth-616. A chance encounter with his possible ancestor Dr. Doom, inspired Nathaniel to abandon his Rama-Tut guise and assume one similar to Doom. In his first attempt, Nathaniel created the identity of the Scarlet Centurion, but abandoned this identity after being defeated by the Avengers
Resuming his Rama-Tut guise, Richards attempted once again to return to his native 30th Century. The time-storm caused him to overshoot his own era and he ended up in the war torn 40th Century. There Rama-Tut found a war torn future where barbarians battled with technology from past eras of which they had no knowledge of how they worked. Seeing his own personal knowledge on how these weapons operated, Rama-Tut found it simple to reinvent himself and conquer this era. Creating the identity of Kang the Conqueror, Richards began to do just that. First Kang conquered the Earth, then began conquering the galaxy, taking over entire empires, including that of the Badoon. But even this was not enough and Nathaniel's mind continued to turn back to the modern age of heroes and sought to conquer it as well. One of his earliest observations of the past was when Kang briefly appeared over Times Square in New York City, circa 1939. This caused brief hysteria and some media coverage, but otherwise his appearance was dismissed as a hoax by the authorities of that time. It has been stated that part of Kang's motivations for wanting to conquer the modern age was due to incomplete historical records that spoke of a Celestial Madonna who would sire the most powerful man in history. Kang was determined to learn the identity of the Madonna and ensure that he was the father of that child.",'anonima','villano',1.90,NULL,104,NULL,'soltero','M',7,7,16,NULL,'kang_conqueror.jpg'),
(6,'Hela','Hela',NULL,"Hela was allegedly daughter of the Asgardian god of mischief, Loki and of the sorceress giantess Angerboda. Queen of Hell The three Asgardian goddesses of fate, the Norns, are said to have warned the Asgardian gods that Hela would prove to be a great danger to them. Odin, ruler of Asgard, decreed that Hela would become goddess and ruler of the spirits of the dead on the day of her maturity. These spirits were in the other-dimensional realms of Hel and Niffleheim, two more of the Nine Worlds, both of which Hela ruled. However, Odin himself directly ruled the souls of Asgardians and their human worshippers who died in battle as heroes, and had the palace of Valhalla built in a distant section of Asgard to house them.
WWII During World War II, Hela's mind was controlled by the Nazis and she was forced to fight the Invaders.
Thor For ages, Hela sought to bring more Asgardian souls under her control, and especially longed to possess the souls of Odin and his son, Thor; however, during their first meeting, when Thor offered his own life in exchange for that of Lady Sif, who was a prisoner of Hela, the goddess was impressed by the young thunder god's nobility and let both of them go.
When Harokin died, the Asgardians prepared his body to be collected by the Stallion of Doom. They all gathered to await the arrival of Hela to escort him off to Valhalla.
When Thor appeared to have been killed by Wrecker his body was then visited by Hela, who had come to claim his soul. However, before she could give Thor her killing touch, his still living body projected an astral image that stayed her hand. He then reclaimed his body to defeat the Wrecker.
When Lady Sif was injured in battle, she and Thor were visited by Hela who has come to take Sif to Valhalla. Thor refused to allow Hela to take his lover, and when Hela attempted to entice Thor into joining the warriors of the dead in Valhalla, he refused even when he was beckoned by his old foe Harokin to join them. Upon refusal, Hela departed, leaving Thor to contemplate the situation.",'publica','villano',2.10,NULL,227,NULL,'casado','F',4,1,1,NULL,'hela.jpg');

/*!40000 ALTER TABLE `Personaje_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personaje_NoCompetidor`
--

DROP TABLE IF EXISTS `Personaje_NoCompetidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Personaje_NoCompetidor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_real` varchar(256) NOT NULL,
  `apellido_real` varchar(256) NOT NULL,
  `nombre` varchar(256) DEFAULT NULL,
  `fallecido` tinyint(4) DEFAULT NULL,
  `genero` enum('M','F','Otro') DEFAULT NULL,
  `id_universo` int(10) unsigned DEFAULT NULL,
  `id_lugar_nacimiento` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_universo` (`id_universo`),
  KEY `id_lugar_nacimiento` (`id_lugar_nacimiento`),
  CONSTRAINT `Personaje_NoCompetidor_ibfk_1` FOREIGN KEY (`id_universo`) REFERENCES `Universo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Personaje_NoCompetidor_ibfk_2` FOREIGN KEY (`id_lugar_nacimiento`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personaje_NoCompetidor`
--

LOCK TABLES `Personaje_NoCompetidor` WRITE;
/*!40000 ALTER TABLE `Personaje_NoCompetidor` DISABLE KEYS */;
INSERT INTO `Personaje_NoCompetidor` VALUES 
(1,'Ted','Richards',NULL,1,'M',1,22),
(2,'Nathaniel',' Richards','The Warlord',0,'M',1,22),
(3,'Evelyn',' Richards',NULL,0,'F',1,22),
(4,'May',' Parker',NULL,NULL,'F',6,22),
(5,'Benjamin',' Parker',NULL,1,'M',6,22),
(6,'Wendell','Rand-Kai',NULL,1,'M',1,99),
(7,'Heather','Duncan',NULL,0,'F',1,22),
(8,'Danielle','Cage',NULL,0,'F',1,22),
(9,'Franklin','Richards',NULL,0,'M',1,22),
(10,'Valeria','Richards',NULL,0,'F',1,22),
(11,'Hamish',NULL,NULL,0,'M',1,22),
(12,'Laufey',NULL,'King Laufey',NULL,'M',1,114),
(13,'Farbauti ',NULL,NULL,NULL,'F',1,114),
(14,'Loki','Laufeyson',NULL,NULL,'M',1,114),
(15,'Angerboda',NULL,NULL,NULL,'F',1,69),
(16,'Helblindi',NULL,NULL,NULL,'M',1,114),
(17,'Fenris','Wolf',NULL,NULL,'M',1,69),
(18,'Jormungand',NULL,'Midgard Serpent',NULL,NULL,1,69),
(19,'Ramades',NULL,NULL,NULL,'M',1,37),
(20,'Marcus','Kang XXIII','Scarlet Centurion',1,'M',16,37),
(21,'Nathaniel',' Richards',NULL,0,'M',16,22),
(22,'Evelyn',' Richards',NULL,0,'F',16,22),
(23,'Thomas',' Duncan',NULL,1,'M',16,22)


;
/*!40000 ALTER TABLE `Personaje_NoCompetidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Poder`
--

DROP TABLE IF EXISTS `Poder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Poder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poder`
--

LOCK TABLES `Poder` WRITE;
/*!40000 ALTER TABLE `Poder` DISABLE KEYS */;
INSERT INTO `Poder` VALUES (1,'Chi Augmentation','Through concentration, Rand can harness his mystical chi to augment his physical and mental capabilities to increased levels.'),(2,'Iron Fist Punch','By summoning his chi and focusing it into his hand, he can draw upon the superhuman energy derived from the heart of the mystic serpent Shou-Lao and make his fist inhumanly powerful and super humanly resistant to injury and pain on a superhuman scale. '),(3,'Nervous System Control','complete control over his nervous system enabling him to deaden himself to pain, resist the effects of drugs or poisons, and slow down the rate at which he bleeds. He also is able pass lie detector tests.'),(4,'Hypnotism',' After obtaining The Book of the Iron Fist from Orson Randall, Rand has learned how to create various illusions and make his foes see what he wants them to see.'),(5,'Mind Fusion',' He can use his power to temporarily fuse his consciousness with another person, resulting in a sharing of knowledge, emotions, and memories.'),(6,'Energy Absorption','absorbes energy directed at himself and channeled it to augment his own power.'),(7,'Energy Generation','Iron Fist can project his Chi into a ranged attack, sort of like an energy blast. Rand can also transfer his Chi into other objects to accelerate them or give them more power.'),(8,'Energy Detection',' can use his power to temporarily fuse his consciousness with another person, resulting in a sharing of knowledge, emotions, and memories.'),(9,'Dimensional Travel',' Under certain circumstances, his chi can be focused to create nexus points between dimensions.'),(10,'Heightened Awareness',' Demonstrated the ability to detect a threat to his well-being in his immediate vicinity before they commit the action; such as (Iron Fist Killer)'),(11,'Enhanced Senses',' has unusually keen eyesight, but it is unclear if it extends to superhuman level. He can focus his hearing so intensely that he can hear sweat rolling down someones face.'),(12,'Organic Webbing',' When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange\'s mentor, the Ancient One appeared to him.'),(13,'Spider-Sense',' When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange\'s mentor, the Ancient One appeared to him.'),(14,'Superhuman Abilities',' When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange\'s mentor, the Ancient One appeared to him.'),(15,'Wall-Crawling',' When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange\'s mentor, the Ancient One appeared to him.');
/*!40000 ALTER TABLE `Poder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Poder_Competidor`
--

DROP TABLE IF EXISTS `Poder_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Poder_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_poder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_poder`),
  KEY `id_poder` (`id_poder`),
  CONSTRAINT `Poder_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Poder_Competidor_ibfk_2` FOREIGN KEY (`id_poder`) REFERENCES `Poder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poder_Competidor`
--

LOCK TABLES `Poder_Competidor` WRITE;
/*!40000 ALTER TABLE `Poder_Competidor` DISABLE KEYS */;
INSERT INTO `Poder_Competidor` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,13),(2,14),(2,15);
/*!40000 ALTER TABLE `Poder_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesion`
--

DROP TABLE IF EXISTS `Profesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Profesion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesion`
--

LOCK TABLES `Profesion` WRITE;
/*!40000 ALTER TABLE `Profesion` DISABLE KEYS */;
INSERT INTO `Profesion` VALUES (1,'Ing. Electrico','La ingeniería eléctrica es el campo de la ingeniería que se ocupa del estudio y la aplicación de la electricidad, la electrónica y el electromagnetismo'),(2,'Inventor','Inventor o inventora es la persona que idea, crea, concibe, construye o desarrolla algo que no existía antes'),(3,'Ing. Industrial','La ingeniería industrial es una de las ramas de la ingeniería, y se ocupa de la optimización de uso de recursos humanos, técnicos e informativos'),(7,'Vago','no hace nada'),(8,'Ing Informatico','La ingeniería informática o ingeniería en computación es la rama de la ingeniería que aplica los fundamentos de la ciencia de la computación, la ingeniería electrónica, la ingeniería de software y la ingeniería de telecomunicaciones'),(47,'Agricultor',''),(48,'Carpintero',''),(49,'Constructor',''),(50,'Arquitecto',''),(51,'Doctor',''),(52,'Veterinario',''),(53,'Profesor',''),(54,'Mecanico','');
/*!40000 ALTER TABLE `Profesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesion_Competidor`
--

DROP TABLE IF EXISTS `Profesion_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Profesion_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_profesion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_profesion`),
  KEY `id_profesion` (`id_profesion`),
  CONSTRAINT `Profesion_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Profesion_Competidor_ibfk_2` FOREIGN KEY (`id_profesion`) REFERENCES `Profesion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesion_Competidor`
--

LOCK TABLES `Profesion_Competidor` WRITE;
/*!40000 ALTER TABLE `Profesion_Competidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Profesion_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Relacion`
--

DROP TABLE IF EXISTS `Relacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Relacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor_padre` int(10) unsigned DEFAULT NULL,
  `id_competidor_hijo` int(10) unsigned DEFAULT NULL,
  `id_personaje_padre` int(10) unsigned DEFAULT NULL,
  `id_personaje_hijo` int(10) unsigned DEFAULT NULL,
  `tipo_relacion` enum('pariente','enemigo','aliado') NOT NULL,
  `tipo_relacion_pariente` enum('abuelo','padre','hermano','primo','tio') NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_personaje_padre`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`id_personaje_hijo`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`id_competidor_padre`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`id_competidor_hijo`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relacion`
--

LOCK TABLES `Relacion` WRITE;
/*!40000 ALTER TABLE `Relacion` DISABLE KEYS */;
INSERT INTO `Relacion`(
  id_personaje_padre,
  id_personaje_hijo,
  id_competidor_padre,
  id_competidor_hijo,
  tipo_relacion,
  tipo_relacion_pariente
  ) 
VALUES 

(1,NULL,NULL,3,'pariente','tio'),
(2,NULL,NULL,3,'pariente','padre'),
(3,NULL,NULL,3,'pariente','padre'),
(11,NULL,NULL,3,'pariente','primo'),
(NULL,9,3,NULL,'pariente','padre'),
(NULL,9,3,NULL,'pariente','padre'),

(4,NULL,NULL,2,'pariente','tio'),
(5,NULL,NULL,2,'pariente','tio'),


(12,NULL,NULL,6,'pariente','abuelo'),
(13,NULL,NULL,6,'pariente','abuelo'),
(14,NULL,NULL,6,'pariente','padre'),
(15,NULL,NULL,6,'pariente','padre'),
(16,NULL,NULL,6,'pariente','tio'),
(17,NULL,NULL,6,'pariente','hermano'),
(18,NULL,NULL,6,'pariente','hermano'),

(NULL,19,5,NULL,'pariente','padre'),
(NULL,20,5,NULL,'pariente','padre'),
(21,NULL,NULL,5,'pariente','padre'),
(22,NULL,NULL,5,'pariente','padre'),

(23,NULL,NULL,1,'pariente','abuelo'),
(6,NULL,NULL,1,'pariente','padre'),
(7,NULL,NULL,1,'madre','padre'),
(NULL,8,1,NULL,'pariente','tio');





/*!40000 ALTER TABLE `Relacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universo`
--

DROP TABLE IF EXISTS `Universo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Universo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universo`
--

LOCK TABLES `Universo` WRITE;
/*!40000 ALTER TABLE `Universo` DISABLE KEYS */;
INSERT INTO `Universo` VALUES (1,'Tierra 616','es el universo original de Marvel donde se originan la mayoría de las historias y personajes, de hecho este es el espacio de las series clásicas como X- Men, The Amazing Spider-Man y Fantastic Four'),(2,'House of M','es un universo que deriva de Tiera 616 donde los mutantes son quienes predominan. Debido a la acción de la Bruja Escarlata ningun ser humano recuerda como solía ser su mundo, excepto los agentes de SHIELD y Wolverine.'),(3,'Ultimate','se puede decir que es el universo donde todo vuelve a comenzar. En este universo los superhéroes presentan características diferentes a las del original, por ejemplo, el Ultimate Spider-Man es Miles Morales que es una persona afroamericana con ascendencia latina.'),(4,'Age of Apocalypse','es producto de un accidente temporal cuando Legion, hijo del profesor X, viaja al pasado para asesinar a Magneto, pero por un error mata a su propio padre, lo que provoca el ascenso de Apocalipsis como señor de la Tierra. En este Universo, también conocido como Tierra 295, los humanos se revelan junto a Reed Richards y Tony Stark.'),(5,'Marvel 2099','es el universo del futuro en este lugar las grandes corporaciones controlan un mundo dividido por una guerra entre humanos y mutantes, aquí surgen historias como Spider- Man 2099, X-Men 2099 y Fantastic Four 2099 entre otros.'),(6,'Marvel Noir','por alguna razón, la mayoría de los personajes no tienen poderes, a excepción de Spider-Man.'),(7,'Marvel Zombies','es el mundo de los muertos vivientes, en éste mundo los superhéroes y villanos son infectados por un virus alienígena que los convierte en zombies.'),(8,'Ucronías','es el universo donde los escritores se preguntaron “que hubiese pasado si...”. En esta línea temporal hay cosas que nunca sucedieron o sucedieron de forma diferente, por ejemplo Bruce Banner es mordido por una araña radioactiva que lo convierte en Spider-Man mientras que Peter Parker se inyecta la fórmula que lo convierte en Hulk.'),(9,'Larval Universe','también conocido como Tierra 8311, es el universo donde los personajes conocidos se presentan como una versión animal: Spider-Ham, Fantastic Fur y el Capitán Americat, entre otros.'),(10,'Tierra-001','La Tierra-001 es la realidad natal de Los Herederos y alberga los trofeos de mil mundos conquistados.'),(11,'Tierra-15513','La Tierra-15513 es una realidad dentro de la cual el Dios Emperador de Doom formó su Battleworld.'),(12,'Tierra-3145','Tierra-3145 es el hogar de Ben Parker, quien se convirtió en el hombre araña en esta realidad. Sin embargo, se retiró de Spider-Man después de que su esposa y su sobrino fueron asesinados por la Elf Esmeralda.'),(13,'Tierra-13','La Tierra-13 es una realidad alternativa del Universo 616. En este mundo Peter Parker fue elegido por la Fuerza Enigma y retuvo los poderes del Capitán Universo.'),(14,'Tierra-TRN588','Earth-TRN588 is a divergent reality similar to Earth-928, a reality where a second Age of Heroes began in the future of 2099 A.D. '),(15,'Multiverso','The Multiverse is the collection of alternate universes which share a universal hierarchy; it is a subsection of the larger Omniverse, the collection of all alternate universes. '),(16,'Tierra-6311','Other Earth\'s history is similar to the history of Earth-616 had the Dark Ages instead been filled with the great leaps of exploration and discovery characteristic of Earth\'s 20th century.');
/*!40000 ALTER TABLE `Universo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `np`
--

DROP TABLE IF EXISTS `np`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `np` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `np`
--

LOCK TABLES `np` WRITE;
/*!40000 ALTER TABLE `np` DISABLE KEYS */;
/*!40000 ALTER TABLE `np` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17 23:03:48
