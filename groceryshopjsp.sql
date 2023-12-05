create database groceryshopjsp;

use groceryshopjsp;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
);

INSERT INTO `admin` VALUES ('admin','admin');

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `msgDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
);

INSERT INTO `contact` VALUES (1,'Rohit Raj','7845120012','rohit123@gmail.com','About Your Service','Hello Sir, How much time our product are delivery.','2021-12-03 19:28:31','yes'),(2,'Ragini','9865324585','ragini321@gmail.com','About Service','Which  Items Delivery Fast service','2021-12-03 19:29:51','yes');

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `catid` int NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL,
  PRIMARY KEY (`catid`)
);

INSERT INTO `category` VALUES (2,'Dairy Braid'),(3,'Fruits'),(4,'Beverages'),(5,'Grains'),(6,'Household'),(7,'Personal Care'),(8,'Vegitables');

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `prodid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `pcat` varchar(20) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `disc_price` decimal(16,2) NOT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `remarks` varchar(20) NOT NULL,
  `descr` text NOT NULL,
  `instock` varchar(20) DEFAULT 'In Stock',
  `featured` varchar(5) NOT NULL DEFAULT 'Yes',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prodid`)
);

INSERT INTO `products` VALUES (1,'Apple','Fruits',80.00,80.00,'1.jpg','No','Fresh and Red Apple','Out of Stock','Yes','2021-12-03 22:28:35'),(2,'Amul Cool','Beverages',50.00,50.00,'2.jpg','No','Amul Cool one of the best items.','In Stock','Yes','2021-12-03 22:30:40'),(3,'Appy Fizz','Beverages',40.00,40.00,'3.jpg','No','Fresh and Cool','In Stock','Yes','2021-12-03 22:31:54'),(4,'Beens','Vegitables',70.00,70.00,'4.jpg','No','Fresh and Green','In Stock','Yes','2021-12-03 22:32:30'),(5,'Orange','Fruits',40.00,40.00,'5.jpg','No','Fresh','In Stock','Yes','2021-12-03 22:50:50'),(6,'Papaya','Fruits',70.00,70.00,'6.jpg','No','Fresh and Sweets','In Stock','Yes','2021-12-03 22:51:35'),(7,'Pine Apple','Fruits',70.00,70.00,'7.jpg','No','Fresh ','In Stock','Yes','2021-12-03 22:52:32'),(8,'Pomegranate','Fruits',120.00,120.00,'8.jpg','No','Fresh and Sweet','In Stock','Yes','2021-12-03 22:53:45'),(9,'Brinjal','Vegitables',30.00,30.00,'9.jpg','No','Fresh','In Stock','Yes','2021-12-03 22:55:26'),(10,'Broccoli','Vegitables',40.00,40.00,'10.jpg','No','Fresh','In Stock','Yes','2021-12-03 22:56:06'),(11,'Ginger','Vegitables',60.00,60.00,'11.jpg','No','Fresh','In Stock','Yes','2021-12-03 22:56:50'),(12,'Bourn Vita','Dairy & Braid',350.00,350.00,'12.jpg','No','Bourn Vita For healthy Diet','In Stock','Yes','2021-12-03 22:58:16'),(13,'Pasty Cake','Dairy & Braid',50.00,50.00,'13.jpg','No','Pasty Cake eat with tea and Milk','In Stock','Yes','2021-12-03 22:59:32'),(14,'Toss Tea','Dairy & Braid',49.00,49.00,'14.jpg','No','Big packet of toss tea eat with milk and tea','In Stock','Yes','2021-12-03 23:00:31'),(15,'Brotainia Choco Muffels','Dairy & Braid',59.00,59.00,'15.jpg','No','Eat with teat Muffles crackers','In Stock','Yes','2021-12-03 23:01:31'),(16,'Idli Rawa','Grains',65.00,65.00,'16.jpg','No','Best Rawa','In Stock','Yes','2021-12-03 23:03:09'),(17,'Fortune flour','Grains',150.00,150.00,'17.jpg','No','Fresh Ckakki Aata','In Stock','Yes','2021-12-03 23:04:14'),(18,'Kaju','Grains',105.00,105.00,'18.jpg','No','Dry Food make Healthy','In Stock','Yes','2021-12-03 23:04:58'),(19,'Clinic Plus Sampoo & Oil','Personal Care',200.00,190.00,'19.jpg','Rs. 10 Off','Clinic Plus With milk oil','In Stock','Yes','2021-12-03 23:08:57'),(20,'Kaveri Mehandi','Personal Care',25.00,25.00,'20.jpg','No','Give nice color Mehandi use in Marriage','In Stock','Yes','2021-12-03 23:10:22'),(21,'Axe Body Spray','Personal Care',350.00,350.00,'21.jpg','No','Fresh body always','In Stock','Yes','2021-12-03 23:13:02'),(22,'Coca Cola','Beverages',70.00,70.00,'22.jpg','No','Drink and got Freshness','In Stock','Yes','2021-12-03 23:17:06'),(23,'Sugar','Grains',45.00,45.00,'23.jpg','No','Fresh Sugar','In Stock','Yes','2021-12-03 23:20:05');

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `userid` varchar(30) NOT NULL,
  `prodid` int NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`userid`,`prodid`)
);



--
-- Table structure for table `cust_address`
--

DROP TABLE IF EXISTS `cust_address`;

CREATE TABLE `cust_address` (
  `userid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` char(10) NOT NULL,
  `pin` char(8) NOT NULL,
  `locality` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `adtype` varchar(15) NOT NULL,
  PRIMARY KEY (`userid`)
);

INSERT INTO `cust_address` VALUES ('abhi@gmail.com','Abhishek','7845122010','462021','Bhopal','MP','Bhopal','Narela Sankari Bhopal','Home'),('pallavi@gmail.com','Pallavi Singh','9856321452','462021','Bima Hospital','MP','Bhopal','C Sec Indrapuri Bhopal ','Home'),('rahul@gmail.com','Rahul','7858254510','462021','Ara','Bihar','Ara','Karman Tola Arrah','Home'),('rohit@gmail.com','Rohit Raj','7845256352','462020','Indore','MP','Indore','Indore','Home');

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `feedbackDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
);

INSERT INTO `feedback` VALUES (1,'Pallavi','7896541230','pallavi@gmail.com','Indrapuri','Your Service are fast','2021-12-03 23:35:46'),(2,'Rohit','8527411236','rohit@gmail.com','Indore','Your service are awesome and fast Service.','2021-12-04 00:54:36'),(3,'Abhishek','7845122021','abhi@gmail.com','Narela Sankari Bhopal','Your Product are awesome..','2021-12-04 01:46:42'),(4,'Rahul','9875824120','rahul@gmail.com','Karman Tola Ara Bihar','Your Service are very fast ','2021-12-04 16:58:05');

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(30) NOT NULL,
  `order_status` varchar(200) NOT NULL DEFAULT 'Pending',
  `remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
);

INSERT INTO `orders` VALUES (1,'2021-12-03 23:33:50','pallavi@gmail.com','Confirmed',NULL),(2,'2021-12-04 01:01:10','rohit@gmail.com','Cancelled','ghjk'),(3,'2021-12-04 13:10:17','abhi@gmail.com','Pending',NULL),(4,'2021-12-04 13:11:05','abhi@gmail.com','Confirmed',NULL),(5,'2021-12-04 16:57:30','rahul@gmail.com','Pending',NULL),(6,'2021-12-04 16:58:42','rahul@gmail.com','Confirmed',NULL);

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_id` int NOT NULL,
  `prodid` int NOT NULL,
  `qty` int NOT NULL
);

INSERT INTO `order_details` VALUES (1,4,3),(1,8,2),(1,12,2),(2,19,2),(2,21,1),(3,1,1),(3,2,2),(4,23,1),(5,2,1),(6,17,1);

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
);

INSERT INTO `users` VALUES (1,'Abhishek','Pandey','1234','abhi@gmail.com','7845122020','Bhopal','Narela Sankari Bhopal','1.jpg'),(2,'Rohit','Raj','1234','rohit@gmail.com','8527411236','Indore','Indore','2.jpg'),(3,'Pallavi','Singh','1234','pallavi@gmail.com','7896541230','Bhopal','Indrapuri','3.jpg'),(4,'Rahul','Sinha','123','rahul@gmail.com','9875824120','Arrah','Karman Tola Ara Bihar','4.jpg');

--
-- Temporary view structure for view `orderview`
--

DROP TABLE IF EXISTS `orderview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderview`  AS  select `o`.`order_id` AS `order_id`,`od`.`orderdate` AS `orderdate`,`p`.`pname` AS `pname`,`p`.`disc_price` AS `disc_price`,`o`.`qty` AS `qty`,`p`.`disc_price` * `o`.`qty` AS `amount` from ((`order_details` `o` join `products` `p` on(`p`.`prodid` = `o`.`prodid`)) join `orders` `od` on(`od`.`order_id` = `o`.`order_id`)) ;


