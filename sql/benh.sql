-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: benh_cay_lua
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `benh_cay_lua`
--

DROP TABLE IF EXISTS `benh_cay_lua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benh_cay_lua` (
  `id_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shape` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weather` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_phong_chua` int DEFAULT NULL,
  PRIMARY KEY (`id_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benh_cay_lua`
--

LOCK TABLES `benh_cay_lua` WRITE;
/*!40000 ALTER TABLE `benh_cay_lua` DISABLE KEYS */;
INSERT INTO `benh_cay_lua` VALUES ('cbl-1','c-4','p-1','sh-1','st-3','sy-8',NULL,4),('cbl-2','c-4','p-1','sh-1','st-3','sy-9',NULL,4),('cbl-3','c-4','p-1','sh-1','st-2','sy-8',NULL,4),('cbl-4','c-4','p-1','sh-1','st-2','sy-9',NULL,4),('do-1','c-5','p-1','sh-1','st-5','sy-14','w-4',1),('do-2','c-4','p-1','sh-3','st-5','sy-14','w-4',1),('do-3','c-4','p-2','sh-3','st-5','sy-6','w-4',1),('do-4','c-4','p-4','sh-5','st-5','sy-8','w-4',1),('dsvk-1','c-1','p-1','sh-4','st-2','sy-8',NULL,7),('dsvk-2','c-1','p-1','sh-4','st-2','sy-5',NULL,7),('dsvk-3','c-3','p-1','sh-5','st-2','sy-8',NULL,7),('dsvk-4','c-3','p-1','sh-5','st-2','sy-5',NULL,7),('kv-1','c-1','p-1','sh-5',NULL,'sy-4','w-1',2),('kv-2','c-1','p-3','sh-1',NULL,'sy-4','w-1',2),('kv-3','c-6','p-3','sh-3',NULL,'sy-4','w-1',2),('lh-1','c-5','p-4','sh-5','st-2','sy-8',NULL,8),('lh-2','c-6','p-4','sh-5','st-2','sy-8',NULL,8),('lh-3','c-6','p-4','sh-5','st-4','sy-8',NULL,8),('lh-4','c-5','p-4','sh-5','st-4','sy-8',NULL,8),('lv-1','c-1','p-1',NULL,'st-5','sy-12','w-2',6),('lv-2','c-2','p-1',NULL,'st-5','sy-12','w-2',6),('lv-3','c-2','p-1',NULL,'st-5','sy-8','w-2',6),('lv-4','c-1','p-1',NULL,'st-5','sy-8','w-2',6),('tg-1','c-5','p-1',NULL,'st-2','sy-10',NULL,9),('tg-2','c-2','p-1','sh-1','st-2','sy-11',NULL,9),('tg-3','c-2','p-5','sh-1','st-2','sy-11',NULL,9),('th-1','c-5','p-1','sh-1','st-5','sy-10',NULL,10),('th-2','c-5','p-1','sh-3','st-2','sy-10',NULL,10),('th-3','c-6','p-1','sh-1','st-5','sy-10',NULL,10),('th-4','c-6','p-1','sh-3','st-2','sy-10',NULL,10),('th-5','c-5','p-1','sh-1','st-2','sy-8',NULL,10),('th-6','c-6','p-1','sh-3','st-5','sy-8',NULL,10),('th-7','c-5','p-1','sh-1','st-2','sy-10',NULL,10),('th-8','c-6','p-1','sh-3','st-5','sy-10',NULL,10),('tv-1','c-1','p-4','sh-1','st-5','sy-1','w-2',11),('tv-2','c-1','p-4','sh-2','st-5','sy-1','w-2',11),('vl-1','c-2','p-1',NULL,'st-5','sy-13','w-4',5),('vl-2','c-3','p-1',NULL,'st-5','sy-13','w-4',5),('vlcs-1','c-2','p-1','sh-4','st-3',NULL,'w-1',3),('vlcs-2','c-3','p-1','sh-4','st-3',NULL,'w-1',3),('vlcs-3','c-3','p-1','sh-4','st-4',NULL,'w-1',3),('vlcs-4','c-2','p-1','sh-3','st-3',NULL,'w-1',3);
/*!40000 ALTER TABLE `benh_cay_lua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (10,'2022_10_29_053724_create__benh_cay_lua',2),(12,'2014_10_12_000000_create_users_table',3),(13,'2014_10_12_100000_create_password_resets_table',3),(14,'2019_08_19_000000_create_failed_jobs_table',3),(15,'2019_12_14_000001_create_personal_access_tokens_table',3),(16,'2022_10_29_053857_create_benh_cay_lua',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phong_chua_benh`
--

DROP TABLE IF EXISTS `phong_chua_benh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phong_chua_benh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phong_benh` varchar(500) DEFAULT NULL,
  `chua_benh` varchar(500) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phong_chua_benh`
--

LOCK TABLES `phong_chua_benh` WRITE;
/*!40000 ALTER TABLE `phong_chua_benh` DISABLE KEYS */;
INSERT INTO `phong_chua_benh` VALUES (1,'Phun ngừa và tranh thủ vào thời điểm trước và sau trổ bông. Đảm bảo lỹ thuật phun để từ lá, thân, bẹ lá được tiếp xúc với thuốc','Nhanh chóng phun thuốc. Dừng cấp đạm và gữi đủ nước trên ruộng. Các thuốc đặc hiệu: Filia 525SE, Amistar Top 325SC','Đạo ôn - do'),(2,'Cày sâu để loại bỏ hạch nấm. Gieo lúa với mật độ hợp lý. Bón phân đầy đủ để giúp cây tăng cường tính chống chịu của cây. Tránh để mực nước quá cao','Phun ngay khi phát hiện bệnh. Sử dụng các thuốc đặc trị: nhóm Pencycuron như (Moren 25WP…), nhóm Hexaconazole (Anvil 5SC, Chevin 5SL, Lervil 50SC, Shut 677WP, A-V-T Vil 5SC…), Amistar top 325SC, Indar 240F, Validacin 5L…','Khô vằn - kv'),(3,'Gieo mật độ hợp lý. Sử dụng các giống lúa chống chịu bệnh tốt. Điều lượng phân đạm hợp lý. Thường xuyên thăm ruộng, nhất là giai đoạn cây lúa bắt đầu làm đòng','Các loại thuốc có chứa các hoạt chất sau đây có hiệu quả với bệnh: Thiophanate methyl, Propiconazole, Azoxystrobine,.…','Vàng lá chín sớm - vlcs'),(4,'Bón phân cân đối ngay từ đầu vụ. Chọn giống lúa tốt có khả năng chịu bệnh. Không bón thúc đạm quá muộn.','Tiến hành phun ngay khi phát hiện ra bệnh. Có thể sử dụng các loại thuốc hóa học để trị bệnh như Kasumin 2L, Kasuran 47 WP, Xanthomix 20 WP, Cuproxat 345 SC…. Phun vào lúc trời mát, khô ráo','Cháy bìa lá - cbl'),(5,'Cày bừa, cả ruộng để diệt mầm bệnh. Vệ sinh bờ ruộng, loại bỏ cỏ lan tràn trên bờ. Thường xuyên thăm, làm sạch cỏ. Phun thuốc diệt rầy nâu nếu phát hiện.','Các loại thuốc cho hiệu quả cao là Actara 25WG, Chess 50WG.','Vàng lùn - vl'),(6,'Khi cấy lúa cần tránh làm đứt chồi, rễ mạ, dập nát  cây mạ. Kiểm tra ruộng lúa thường xuyên để phát hiện và nhổ bỏ kịp thời những cây bị bệnh đem ra khỏi ruộng tiêu hủy.Bón phân cân đối giữa đạm, lân và ka li để cây sinh trưởng, phát triển tốt cũng có tác dụng làm giảm bớt sự nhiễm bệnh của cây.','Xử lý hạt giống bằng nước nóng 54oC. Hoặc dùng một trong các lọai thuốc trừ bệnh như  Bendazol 50WP, Carbenzim 50WP, Derosal 50SC, Carben 50WP, Bavistin 50SC, Mancozeb 80WP...Cũng có thể sử dụng những lọai thuốc trên để  phun xịt trừ nấm bệnh trên cây.','Lúa von - lv'),(7,'Phun ngừacho đồng ruộng, nhất là giai đoạn lúa đang phát triển mạnh. Bón phân hợp lý đúng liều lượng và thời điểm.','Tiến hành phun thuốc khi trên ruộng bệnh: sử dụng Ridomil Gold 68WG, Proclaim 1.9EC, Amistar TOP 325SC hoặc Topsin M 70WP để trừ đốm sọc vi khuẩn lá lúa.ngừng bón đạm, kali, phân bón lá, các chất kích thích sinh trưởng và giữ đủ nước trong ruộng.','Đốm sọc vi khuẩn - dsvk'),(8,'Tiến hành thu gom, dọn sạch tàn dư rơm rạ và cỏ dại ra khỏi ruộng. Khi thu hoạch xong nên cày vùi rơm rạ ngay để diệt mầm bệnh. Gieo sạ thời vụ thích hợp để tránh lúa trổ gặp mưa gió nhiều; giai đoạn lúa đòng trổ không để ruộng khô hạn.Bón phân cân đối','Sử dụng Tilt Super 300EC, Amistar Top 325SC, Anvil 5SC, Nevo 330EC...C để đặc trị lem lép hạt hại lúa','Lép hạt - lh'),(9,'Bón phân cân đối cho lúa, chú ý không bón dư thừa phân đạm. Cần tháo cạn nước trên ruộng, tiến hành xả nước trong ruộng 1 – 2 lần để nhanh chóng xả bỏ chất độc, mầm bệnh, hạn chế lây lan, đồng thời tạo điều kiện cho đất thông thoáng để cây lúa ra rễ mới.','Khi phát hiện lúa bị bệnh, phải dừng ngay việc bón phân đạm. Phun vôi: Pha 2.5 kg vôi vào 25 lít nước để lắng trong, sau đó bà con lấy phần nước vôi trong để phun trên ruộng. Có thể dùng thuốc trừ vi khuẩn (Visen, Kasumin, Xantocin, Totan, …) để phòng trị.','Thối gốc - tg'),(10,'Bón phân cân đối hợp lý, nên sử dụng phân bón NPK tổng hợp chuyên dùng cho lúa, liều lượng bón tùy theo loại chân đất. ','Khi phát hiện sâu bệnh gây hại, cần vơ bỏ các lá già khô chết, thay nước ruộng và sử dụng một trong những loại thuốc bảo vệ thực vật sau để phun diệt ổ bệnh như: Kasai 2.2 WP, Anvil 5SC, Rovral 50 WP, Antraco 70WP… Phun kép 2-3 lần cách nhau 5-7 ngày nếu bệnh hại nặng','Tiêm hạch - th'),(11,'Sử dụng các giống lúa khỏe. Vệ sinh bờ bao và các kênh tưới. Giám sát cánh đồng để phát hiện các dấu hiệu của bệnh. Cày sâu và phơi đồng dưới ánh sáng mặt trời sau khi thu hoạch cũng góp phần giảm thiểu số lượng vật mang mầm bệnh.','Xử lý hạt giống ở nhiệt độ 52° C suốt 10 phút là biện pháp hiệu quả để giảm thiểu khả năng nhiễm bệnh. Khi phát hiện bệnh, nên phun các loại thuốc diệt nấm có gốc đồng để khống chế bệnh và bảo vệ phần nào năng suất của lúa:azoxystrobin, propiconazole, chlorothalonil, azoxystrobin. ','Than vàng - tv');
/*!40000 ALTER TABLE `phong_chua_benh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 22:19:54
