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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`question_number`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Ce tendinţă prezintă un autoturism cu tracţiune pe spate, dacă acceleraţi prea puternic în curbă?'),(2,'Ce obligaţii are conducătorul de autovehicule când circulă pe un drum public?'),(3,'Ce se înţelege prin conducere ecologică a unui autovehicul?'),(4,'În rănile cu hemoragie se va avea în vedere, în faza iniţială:'),(5,'La semnalul poliţistului situat într-o intersecţie, cu braţul ridicat vertical, aveţi obligaţia:'),(6,'Care este deosebirea dintre oprire şi staţionare?'),(7,'Ce obligaţii vă revin la semnalul agentului de cale ferată de la trecerile la nivel, executat cu un dispozitiv cu lumină roşie ori cu bastonul fluorescent-reflectorizant?'),(8,'La apropierea de staţiile prevăzute cu alveolă, când circulaţi pe banda de lângă acostament, iar conducătorul autovehiculului de transport public de persoane semnalizează pornirea din staţie:'),(9,'Pe o autostradă cu trei benzi, s-a blocat circulaţia. Pe unde vor circula vehiculele de intervenţie?'),(10,'Utilizarea sistemului de climatizare are ca efect:'),(11,'Pentru a conduce ecologic un autovehicul, se recomandă:'),(12,'Când sunteţi obligat să păstraţi o distanţă corespunzătoare faţă de cel care rulează în faţa dumneavoastră?'),(13,'Semnalul poliţistului rutier aflat într-un autovehicul al poliţiei, efectuat cu braţul, cu sau fără baston reflectorizant, scos pe partea laterală dreaptă a vehiculului, semnifică:'),(14,'Copiii cu vârste de până la 12 ani pot fi transportaţi:'),(15,'Dezinfecţia plăgilor ce necesită a fi pansate se face cu:'),(16,'Cum procedează conducătorul de autovehicul atunci când, apropiindu-se de o trecere la nivel cu calea ferată, prevăzută cu bariere ori semibariere, cele două lumini roşii funcţionează intermitent-alternativ?'),(17,'Care este regula priorităţii de trecere la intersecţia a două drumuri de aceeaşi categorie, cu circulaţie nedirijată?'),(18,'În faţa dvs. s-a produs un accident rutier care este cercetat de poliţie, iar circulaţia se desfăşoară anevoios, pe un singur sens. Cum veţi proceda?'),(19,'Ce obligaţii aveţi la întâlnirea indicatorului „Biciclişti”?'),(20,'Este permisă oprirea voluntară a autovehiculului în tuneluri?'),(21,'În ce locuri circulaţia cu viteză duce adeseori la accidente?'),(22,'Ce trebuie să facă un conducător de vehicul pentru ca depăşirea să fie considerată regulamentară?'),(23,'Vă apropiaţi de o trecere la nivel cu calea ferată curentă fără bariere, în traversarea căreia s-a angajat o căruţă aflată în faţa dvs. În această situaţie puteţi efectua depăşirea?'),(24,'Care autovehicule pot fi echipate cu lumini speciale de avertizare de culoare albastră?'),(25,'Dacă circulaţi pe un drum naţional european (E), vă este interzis:'),(26,'Când este permisă trecerea la nivel cu o cale ferată fără bariere, prevăzută cu semnalizare luminoasă, dacă tocmai a trecut un tren?');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
