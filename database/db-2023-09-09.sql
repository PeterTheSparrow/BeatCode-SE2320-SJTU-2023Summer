-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 121.37.162.88    Database: beatcode_mysql
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem` (
  `problem_id` int NOT NULL,
  `problem_name` varchar(255) DEFAULT NULL COMMENT '题目名',
  `time_limit` int DEFAULT NULL COMMENT '时间限制（毫秒）',
  `memory_limit` int DEFAULT NULL COMMENT '内存限制（MB）',
  `stack_limit` int DEFAULT NULL COMMENT '栈限制（null=default128MB）',
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,'a+b',1,5000,5000);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_info`
--

DROP TABLE IF EXISTS `tag_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_info` (
  `tag_id` int NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `tag_description` varchar(255) DEFAULT NULL,
  `tag_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_info`
--

LOCK TABLES `tag_info` WRITE;
/*!40000 ALTER TABLE `tag_info` DISABLE KEYS */;
INSERT INTO `tag_info` VALUES (1,'testing','tag-for-testing','#FF0000');
/*!40000 ALTER TABLE `tag_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_auth`
--

DROP TABLE IF EXISTS `token_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_auth` (
  `token` varbinary(16) NOT NULL COMMENT 'UUID库生成的16byte整数，非常混乱，而且重复概率比十连出十个五星还低',
  `last_login` bigint NOT NULL COMMENT '上次登录的时间，unix时间戳',
  `last_fresh` bigint NOT NULL COMMENT '上次发送请求的时间，如果logout则改成1970.1.1',
  `user_id` int NOT NULL COMMENT '在这个ip上登录的具体用户id',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='对Token授权，登录后需要每次请求在header携带token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_auth`
--

LOCK TABLES `token_auth` WRITE;
/*!40000 ALTER TABLE `token_auth` DISABLE KEYS */;
INSERT INTO `token_auth` VALUES (_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',1688975616665,1688975671994,1),(_binary '\0��-V\0Hū&�Oi�',1692141244865,1692141244865,79),(_binary '�\�*�M\��Ю�\�\�*',1689044707972,1689045748029,4),(_binary 'V*��\�A��/C\��j�',1689058905470,1689066293982,4),(_binary 'l\�7\�\�L��L\�\'�\�',1693554708388,1693554955967,2),(_binary 'H�\�7jA[�\�;߸�\�\�',1694004673833,1694004746443,68),(_binary '�\�\�+�HΙ\'����Y�',1694010088126,1694013555183,68),(_binary '\r���@#�a�sPC6',1693577796434,1693579033258,2),(_binary '�[�\ZB1�\�ԥYt&q',1693935642235,1693935684063,1),(_binary '�\�#	1Ck�2\�,[U��',1694074291678,1694075134375,68),(_binary 'SI-(5L�����T��',1689125117462,1689153274158,1),(_binary '��ݧ�Gh�\�R<\�2�(',1689054899398,1689054901844,4),(_binary '\Z~\�Bޣ�\�`\�\�2�',1689054332490,1689054505341,4),(_binary '�ߨچE(��o\�W\�^}',1689057406652,0,4),(_binary '��\'�3B��&���1��',1693483393480,1693484466963,2),(_binary '\�}^X�K޷\�^�<\�\�',1689062125334,1689063836243,1),(_binary ' ]<Hs�L\�L\�mM��',1694005936666,1694010736267,2),(_binary '!\��\�\�E��\ZG�M\�՚',1692141465855,1692141465855,81),(_binary ')&�\�\"D���ka>VŨ',1689149430735,1689150130523,4),(_binary ')Q\�\�OG��t>g��',1689045236048,1689053970802,4),(_binary '+\"\���\�N���}�)���',1692790697364,1692791060871,68),(_binary '6�\�9��B\�!w%H�\�',1692141257189,1692141257189,80),(_binary '7(��M~@��^Oh%�',1692066809364,1692066820656,1),(_binary ';^�siRG������]|�',1694004740438,1694004740438,68),(_binary ';�\�\��J��;(:j\�\�',1689055566460,1689055568904,4),(_binary '?\�\�c\�F��\�;BKbP/',1689055834535,1689055836983,4),(_binary 'K\��g(B�\�\���/',1694173500061,1694178295423,2),(_binary 'T\"F-^HJ�0�\ZU>n�',1693738452874,1693738454899,82),(_binary 'Wil�\�FL4�n���_V',1693651921292,1693662700101,82),(_binary 'Ws%��dB���l/\��',1689054670573,1689054673390,4),(_binary 'Y̴�bN\�72�CV�',1689056071098,0,4),(_binary 'bY<3@J@�Sw}�Z\"',1688978917834,0,1),(_binary 'b�w7B*J���S$\�#�$',1694143170649,1694143170649,85),(_binary 'fy\�\�,OC�O\��\�\�d',1689147935410,1689149149602,4),(_binary 'gB\�!VMA��\�gGo2',1693630470737,1693635953872,68),(_binary 'n�\�\�iB\�@+��S�',1692146312237,1692169818530,82),(_binary 'pE~�\�,K���\�wX\��',1692869560172,1692870500031,68),(_binary 'r��%lTC̘\�\�W��Bn',1689057114011,0,4),(_binary 't=>s8M9�iC֔9\�',1694142193854,1694142193854,83),(_binary 't�\�`\�(@���\�Պ(=�',1692063370671,1692066515815,1),(_binary '\�;��RFX�=\��]��r',1693730318127,1693730318127,82),(_binary '�\���\�Fڅ\�f\�r\�p\�',1692927031845,1692937399681,82),(_binary '�\�D՜Nd�\� ^%2L�',1693445222014,1693468806671,2),(_binary '��.�\�xK��r9t`\�a',1694159927032,1694160587970,2),(_binary '�Z@�3\�Mh�$i��\�iD',1693823344425,1693825328014,68),(_binary '����\��A֮f���I�',1689057676721,0,2),(_binary '�`\�s-BW�GEf\�L�[',1694001440165,1694001442979,2),(_binary '��q\�\�<B.�${N�\�\�',1693473023339,1693473976465,68),(_binary '��\�@�K�\�E\�\�>1',1693621250621,1693624448058,82),(_binary '�D/�(\�F��`�rX�Ss',1689213714778,1689237961117,68),(_binary '�q@\�\�.JS�٤D\�\�\�',1689040054910,1689040054910,1),(_binary '���/5�FE���Cp�\�;',1689057657658,0,4),(_binary '�v/�\�\�E�]�\�/\�\Z',1693935617734,1693935617734,2),(_binary '���\�@L0�11��kqk',1694142636534,1694142636534,84),(_binary '�oc	GO���,�u7',1694005431379,1694005484029,68),(_binary '��f�cI\�K5oW�\�4',1694173224610,1694173395911,2),(_binary '�D\�}L�Od�\�%\�(�',1689056646316,0,4),(_binary '�F�$�F�5T�qt\�',1693545397351,1693545854556,68),(_binary '�#\r�/O��;���C\�n',1689056239735,0,4),(_binary '\��\�M�`Oᆭ�\�V�t\�',1694088989755,1694096896427,1),(_binary '\�-�prB`�pҧ�*\�|',1689056702369,1689056920167,2),(_binary 'Ė5�\�\�H(�\r�\�\�\�ֆ',1689055539239,1689055542067,4),(_binary 'Ŷ�j�3Gt��\�\�1�y\�',1689213662281,1689213662281,68),(_binary 'ɝ\�~>A��\�@�\�m\�',1689057428108,1689057429819,2),(_binary '\�H4G�\�L��\�c7;��',1689056631943,1689056634031,2),(_binary '\��pw#N\��w�\�f�`',1693935972818,1693936349747,1),(_binary '\�?�*�@��\�[\��\���',1692146308445,1692146308445,82),(_binary 'ڜ\�|@�t�n>�',1689122812861,1689147807398,4),(_binary '\�\��܋	L��Q�\�\�\�+\�',1694137612413,1694137870845,2),(_binary '\�T\n\�bD��\�-\�\�;',1689211926265,1689211991186,4),(_binary '\�j#p\nJ��u+���',1693821970075,1693823324637,68),(_binary '\�?a��DJ�\�v��!q',1688979959577,1688979959577,1),(_binary '\�))\�CJ���\����\�',1693694919686,1693709471971,82),(_binary '\�կMHb��\�$e\�\�[',1689056484414,0,4),(_binary '\�$pU\�L\"�C\0��6v�',1689303966664,1689303968361,1),(_binary '\�&\�]EKm�Y`]7C\�J',1689044179309,1689044179309,4),(_binary '\�y�\��\�@0�\"skq\�r',1689054049768,1689054052540,4),(_binary '\�7dP�\�LQ�\'r4�\�',1689041092076,1689041092076,4),(_binary '�F\�a�BG��]��-�\�',1691140628487,1691143640848,68),(_binary '�\��\�Aō\� Jp�\�',1689044011685,0,1),(_binary '�\�f��\�I\�^�\�L��',1694004353201,1694004353201,68),(_binary '�$��L�:ە�',1689057184001,1689057186588,2),(_binary '��6�.6M	�\��N�\�',1693297527575,1693299049175,68);
/*!40000 ALTER TABLE `token_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_role` int NOT NULL COMMENT '0是普通用户，1是管理员',
  `password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL COMMENT '唯一的',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (1,0,'123456','alice'),(2,1,'bob','bob'),(4,0,'dontsaygoodbye','alanTam'),(68,0,'1234','1234'),(81,0,'jacky','jacky'),(82,0,'leslie','leslie'),(84,0,'1111','1111'),(85,0,'easonchan','easonchan');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'alice@sjtu.edu.cn','15000000000','alice'),(2,'bob@fdu.edu.cn','15000000001','bob'),(4,'alan@126.com','12345612541','alanTam'),(68,'1234@123.123','1234','1234'),(81,'zqjpeter@yeah.net','15688855555','jacky'),(82,'zqjpeter@163.com','123','leslie'),(84,'tehakoy563@docwl.com','11111111111','1111'),(85,'zqjpeter@126.com','40471111','easonchan');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_record`
--

DROP TABLE IF EXISTS `user_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_record` (
  `user_id` int NOT NULL,
  `accept_num` int NOT NULL COMMENT '通过的题目数目',
  `submit_num` int NOT NULL COMMENT '提交数目',
  `accept_submit` int NOT NULL COMMENT '通过的提交数目',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_record`
--

LOCK TABLES `user_record` WRITE;
/*!40000 ALTER TABLE `user_record` DISABLE KEYS */;
INSERT INTO `user_record` VALUES (1,1,1,1),(2,0,0,0),(4,0,0,0),(68,0,0,0),(81,0,0,0),(82,0,0,0),(84,0,0,0),(85,0,0,0);
/*!40000 ALTER TABLE `user_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_code`
--

DROP TABLE IF EXISTS `verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `expire_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='store the verification_code during registration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_code`
--

LOCK TABLES `verification_code` WRITE;
/*!40000 ALTER TABLE `verification_code` DISABLE KEYS */;
INSERT INTO `verification_code` VALUES (1,'zqjpeter@126.com','979520','2023-09-07 19:19:07','2023-09-07 19:29:07'),(2,'zqjpeter@sjtu.edu.cn','628469','2023-08-26 01:09:05','2023-08-26 01:19:05'),(3,'zqjpeter1@sjtu.edu.cn','344347','2023-08-26 01:09:15','2023-08-26 01:19:15'),(4,'zqjpeter12356@sjtu.edu.cn','476079','2023-08-26 01:18:00','2023-08-26 01:28:00'),(5,'zqjpeter@yeah.net','761380','2023-08-26 02:55:48','2023-08-26 03:05:48'),(6,'tehakoy563@docwl.com','747181','2023-09-07 19:09:32','2023-09-07 19:19:32');
/*!40000 ALTER TABLE `verification_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-08 22:30:04
