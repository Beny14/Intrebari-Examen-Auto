-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quizzer
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

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
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT 0,
  `choice` text COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choices`
--

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;
INSERT INTO `choices` VALUES (1,1,0,'autoturismul urmează, fără deviere, cursa volanului'),(2,1,1,'autoturismul tinde să derapeze cu spatele spre exteriorul curbei'),(3,1,0,'roţile din faţă se învârtesc în gol'),(4,2,0,'să circule numai dacă verificarea medicală lunară este efectuată'),(5,2,1,'să circule numai pe sectoarele de drum pe care îi este permis accesul şi să respecte normele referitoare la masele totale maxime autorizate admise de autoritatea competentă'),(6,2,0,'să se informeze din timp, la administratorii de drum, în legătură cu eventualele limite maxime şi minime de viteză'),(7,3,0,'obligaţia de a folosi în permanenţă carburant biodegradabil'),(8,3,0,'deplasări urbane cu bicicleta, pe jos sau cu alte mijloace care nu poluează atmosfera'),(9,3,1,'un ansamblu de măsuri comportamentale, de control sau de verificare a vehiculului, prin care se realizează o importantă economie de energie şi protecţia mediului'),(10,4,0,'curăţarea şi pansarea rănii'),(11,4,0,'pansarea rănii'),(12,4,1,'oprirea hemoragiei'),(13,5,0,'să circulaţi cu prudenţă maximă'),(14,5,0,'să reduceţi viteza'),(15,5,1,'să opriţi, indiferent din ce direcţie circulaţi'),(16,6,0,'niciuna'),(17,6,1,'deosebirea constă în durata de imobilizare a vehiculului'),(18,6,0,'deosebirea constă în modul de aşezare şi asigurare a autovehiculului pe drum'),(19,7,0,'să reduceţi viteza doar până traversaţi calea ferată'),(20,7,1,'să opriţi autovehiculul'),(21,7,0,'să reduceţi viteza şi să opriţi numai dacă circulă un vehicul feroviar'),(22,8,0,'opriţi obligatoriu'),(23,8,1,'reduceţi viteza şi, la nevoie, opriţi'),(24,8,0,'măriţi viteza'),(25,9,1,'pe banda de urgenţă'),(26,9,0,'între banda din stânga şi banda din mijloc'),(27,9,0,'între banda din dreapta şi banda din mijloc'),(28,10,1,'creşterea consumului de combustibil'),(29,10,0,'reducerea consumului de combustibil'),(30,10,0,'scăderea puternică a gradului de confort'),(31,11,0,'utilizarea climatizării numai în cazul traseelor scurte'),(32,11,0,'utilizarea climatizării numai pe timp de noapte'),(33,11,1,'utilizarea climatizării numai în situaţiile absolut necesare'),(34,12,0,'numai atunci când nu aveţi experienţă în conducere'),(35,12,0,'numai dacă autovehiculul pe care îl conduceţi nu are frânele eficiente'),(36,12,1,'în orice situaţie'),(37,13,1,'oprire pentru conducătorii vehiculelor care circulă în spatele autovehiculului poliţiei'),(38,13,0,'reducerea vitezei de către cei care circulă în spatele autovehiculului poliţiei'),(39,13,0,'semnalul se adresează celor care circulă din sens opus'),(40,14,0,'pe scaunul din faţă al autovehiculului, dacă sunt ţinuţi în braţe de persoane majore'),(41,14,0,'pe scaunul din faţă al autovehiculului, având fixată centura de siguranţă'),(42,14,1,'pe bancheta din spate a autovehiculului, având fixată centura de siguranţă, adaptată greutăţii şi dimensiunilor lor'),(43,15,1,'apă oxigenată sau iod'),(44,15,0,'ser fiziologic'),(45,15,0,'apă potabilă'),(46,16,0,'continuă deplasarea, dacă barierele nu sunt coborâte'),(47,16,1,'opreşte, deoarece barierele sunt închise sau urmează să coboare'),(48,16,0,'continuă deplasarea fără interdicţie, deoarece luminile semnalizează doar prezenţa unei treceri la nivel cu calea ferată'),(49,17,1,'prioritatea de dreapta'),(50,17,0,'prioritatea primului sosit'),(51,17,0,'prioritatea de drum principal'),(52,18,1,'vă continuaţi drumul cu atenţie, respectând indicaţiile poliţistului rutier'),(53,18,0,'vă continuaţi drumul cu viteză sporită, pentru a nu bloca traficul rutier'),(54,18,0,'reduceţi viteza şi opriţi în locul accidentului, pentru a vedea ce s-a întâmplat'),(55,19,0,'să reduceţi viteza la maximum 30 km/h'),(56,19,1,'să circulaţi cu atenţie şi, dacă este cazul, acordaţi prioritate de trecere bicicliştilor care circulă pe pista special destinată'),(57,19,0,'nu aveţi nicio obligaţie, bicicliştii vă vor acorda prioritate'),(58,20,0,'da'),(59,20,1,'nu'),(60,20,0,'numai dacă lungimea tunelului depăşeşte 1000 m'),(61,21,1,'în intersecţii'),(62,21,0,'în parcări'),(63,21,0,'în poligoanele auto'),(64,22,1,'să se asigure că manevra poate fi executată în condiţii de siguranţă, după care să semnalizeze intenţia de schimbare a poziţiei de mers şi să efectueze depăşirea'),(65,22,0,'să semnalizeze din timp intenţia de schimbare a direcţiei de mers'),(66,22,0,'să mărească viteza de deplasare, astfel încât să scurteze timpul de realizare a depăşirii'),(67,23,0,'da, dacă aceasta nu a ajuns încă la linia de tren'),(68,23,0,'da, întrucât căruţa este un vehicul lent'),(69,23,1,'nu'),(70,24,0,'legea nu prevede'),(71,24,0,'orice autovehicul pentru care se obţine aprobarea poliţiei rutiere'),(72,24,1,'vehiculele aparţinând poliţiei, jandarmeriei şi poliţiei de frontieră'),(73,25,0,'să folosiţi pe timpul zilei luminile de întâlnire'),(74,25,1,'să opriţi pe partea carosabilă'),(75,25,0,'să depăşiţi'),(76,26,1,'după ce s-a stins lumina roşie intermitentă'),(77,26,0,'după ce a trecut ultimul vagon'),(78,26,0,'atunci când pleacă vehiculele aflate de cealaltă parte a căii ferate');
/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11 18:40:42
