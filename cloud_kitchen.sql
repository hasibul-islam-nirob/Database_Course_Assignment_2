-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2024 at 05:38 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloud_kitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(8,2) NOT NULL,
  `cuisine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `description`, `price`, `cuisine`) VALUES
(1, 'Biryani', 'Fragrant rice dish with marinated chicken and spices', '450.00', 'Bangladeshi'),
(2, 'Panta Bhat', 'Fermented rice served with green chilies and onions', '150.00', 'Bangladeshi'),
(3, 'Hilsa Fish Curry', 'Traditional curry made with Hilsa fish', '800.00', 'Bangladeshi'),
(4, 'Chicken Bhuna', 'Spicy fried chicken cooked with onions and spices', '500.00', 'Bangladeshi'),
(5, 'Pork Bhuna', 'Slow-cooked pork with aromatic spices', '650.00', 'Bangladeshi'),
(6, 'Kacchi Biryani', 'Layered biryani with marinated raw meat and rice', '600.00', 'Bangladeshi'),
(7, 'Dal Tadka', 'Yellow lentils tempered with spices and herbs', '250.00', 'Bangladeshi'),
(8, 'Chingri Malai Curry', 'Prawns cooked in coconut milk and spices', '700.00', 'Bangladeshi'),
(9, 'Shorshe Ilish', 'Hilsa fish in mustard sauce', '750.00', 'Bangladeshi'),
(10, 'Murgir Jhol', 'Chicken stew with potatoes and spices', '400.00', 'Bangladeshi'),
(11, 'Caprese Salad', 'Fresh mozzarella, tomatoes, and basil drizzled with balsamic glaze', '500.00', 'Italian'),
(12, 'Spaghetti Carbonara', 'Spaghetti in a creamy sauce with pancetta', '700.00', 'Italian'),
(13, 'Lasagna', 'Layers of pasta with meat and cheese in tomato sauce', '800.00', 'Italian'),
(14, 'Fettuccine Alfredo', 'Fettuccine pasta in a creamy cheese sauce', '600.00', 'Italian'),
(15, 'Shrimp Scampi', 'Shrimp sautéed with garlic and olive oil over pasta', '750.00', 'Italian'),
(16, 'Cheeseburger', 'Juicy beef patty with cheese, lettuce, and tomato', '500.00', 'American'),
(17, 'Caesar Salad', 'Romaine lettuce with Caesar dressing and croutons', '350.00', 'American'),
(18, 'BBQ Ribs', 'Slow-cooked ribs with BBQ sauce', '800.00', 'American'),
(19, 'Fish and Chips', 'Battered fish served with fries', '600.00', 'British'),
(20, 'Shepherd\'s Pie', 'Ground meat with vegetables topped with mashed potatoes', '700.00', 'British'),
(21, 'Falafel', 'Deep-fried chickpea balls served with tahini sauce', '300.00', 'Middle Eastern'),
(22, 'Hummus Plate', 'Chickpea dip served with pita bread and vegetables', '350.00', 'Middle Eastern'),
(23, 'Shawarma', 'Grilled meat wrapped in pita bread with vegetables', '400.00', 'Middle Eastern'),
(24, 'Moussaka', 'Layered eggplant dish with ground meat and béchamel sauce', '600.00', 'Greek'),
(25, 'Dolma', 'Grapevine leaves stuffed with rice and spices', '300.00', 'Greek'),
(26, 'Sushi Rolls', 'Rice and seaweed rolls with various fillings', '800.00', 'Japanese'),
(27, 'Ramen', 'Noodle soup with meat and vegetables', '600.00', 'Japanese'),
(28, 'Pad Thai', 'Stir-fried noodles with shrimp, peanuts, and bean sprouts', '550.00', 'Thai'),
(29, 'Green Curry', 'Spicy coconut curry with vegetables and meat', '700.00', 'Thai'),
(30, 'Pho', 'Vietnamese noodle soup with herbs and meat', '600.00', 'Vietnamese'),
(31, 'Banh Mi', 'Vietnamese sandwich with meat and vegetables', '400.00', 'Vietnamese'),
(32, 'Dim Sum', 'Steamed dumplings with various fillings', '500.00', 'Chinese'),
(33, 'Kung Pao Chicken', 'Spicy stir-fried chicken with peanuts and vegetables', '600.00', 'Chinese'),
(34, 'Sweet and Sour Pork', 'Pork in sweet and tangy sauce', '700.00', 'Chinese'),
(35, 'Kimchi Fried Rice', 'Fried rice with kimchi and vegetables', '500.00', 'Korean'),
(36, 'Bibimbap', 'Mixed rice with vegetables and meat', '600.00', 'Korean'),
(37, 'Churros', 'Fried dough pastry coated with sugar', '250.00', 'Spanish'),
(38, 'Paella', 'Spanish rice dish with seafood and vegetables', '800.00', 'Spanish'),
(39, 'Croissant', 'Flaky pastry perfect for breakfast', '300.00', 'French'),
(40, 'Tarte Tatin', 'Upside-down caramelized apple tart', '400.00', 'French'),
(41, 'Baklava', 'Sweet pastry filled with nuts and honey', '450.00', 'Middle Eastern'),
(42, 'Goulash', 'Hungarian stew of meat and vegetables', '600.00', 'Hungarian'),
(43, 'Bratwurst', 'German sausage served with mustard and sauerkraut', '550.00', 'German'),
(44, 'Sauerbraten', 'Marinated pot roast served with gravy', '700.00', 'German'),
(45, 'Beef Stroganoff', 'Tender beef in a creamy mushroom sauce', '650.00', 'Russian'),
(46, 'Ratatouille', 'Vegetable stew from Provence', '500.00', 'French');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'Processing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_amount`, `status`) VALUES
(1, 1, '2024-05-01 04:15:00', '1850.00', 'Completed'),
(2, 2, '2024-09-01 06:00:00', '3350.00', 'Processing'),
(3, 3, '2024-09-02 08:30:00', '1700.00', 'Completed'),
(4, 4, '2024-09-03 03:45:00', '1300.00', 'Processing'),
(5, 5, '2024-09-04 05:00:00', '4300.00', 'Completed'),
(6, 6, '2024-09-05 07:20:00', '2000.00', 'Processing'),
(7, 7, '2024-09-06 09:35:00', '2650.00', 'Completed'),
(8, 8, '2024-09-07 02:25:00', '2000.00', 'Processing'),
(9, 9, '2024-09-08 10:40:00', '1350.00', 'Completed'),
(10, 10, '2024-09-09 08:15:00', '1400.00', 'Processing'),
(11, 11, '2024-09-10 04:00:00', '1900.00', 'Completed'),
(12, 12, '2024-09-11 06:10:00', '1750.00', 'Processing'),
(13, 13, '2024-09-12 12:25:00', '2000.00', 'Completed'),
(14, 14, '2024-09-13 03:55:00', '1300.00', 'Processing'),
(15, 15, '2024-09-14 05:30:00', '2500.00', 'Completed'),
(16, 16, '2024-09-15 07:45:00', '1700.00', 'Processing'),
(17, 17, '2024-09-16 09:50:00', '1300.00', 'Completed'),
(18, 18, '2024-09-17 03:30:00', '1100.00', 'Processing'),
(19, 19, '2024-09-18 08:05:00', '1950.00', 'Completed'),
(20, 20, '2024-09-19 10:20:00', '1800.00', 'Processing'),
(21, 21, '2024-09-20 04:10:00', '3950.00', 'Completed'),
(22, 22, '2024-09-21 06:15:00', '750.00', 'Processing'),
(23, 23, '2024-09-22 07:25:00', '1800.00', 'Completed'),
(24, 24, '2024-09-23 08:40:00', '1500.00', 'Processing'),
(25, 25, '2024-09-24 09:55:00', '2100.00', 'Completed'),
(26, 26, '2024-09-25 03:35:00', '1900.00', 'Processing'),
(27, 27, '2024-09-26 05:00:00', '1450.00', 'Completed'),
(28, 28, '2024-09-27 06:05:00', '1550.00', 'Processing'),
(29, 29, '2024-09-28 08:15:00', '1700.00', 'Completed'),
(30, 30, '2024-09-29 09:20:00', '2000.00', 'Processing'),
(31, 31, '2024-09-30 04:40:00', '2250.00', 'Completed'),
(32, 32, '2024-09-30 06:25:00', '1500.00', 'Processing'),
(33, 33, '2024-10-01 08:10:00', '2000.00', 'Completed'),
(34, 34, '2024-10-01 09:30:00', '1250.00', 'Processing'),
(35, 35, '2024-10-02 03:50:00', '1600.00', 'Completed'),
(36, 36, '2024-10-02 05:15:00', '1400.00', 'Processing'),
(37, 37, '2024-10-03 07:30:00', '1700.00', 'Completed'),
(38, 38, '2024-10-03 08:45:00', '2500.00', 'Processing'),
(39, 39, '2024-10-04 04:05:00', '1400.00', 'Completed'),
(40, 40, '2024-10-04 05:30:00', '1900.00', 'Processing'),
(41, 41, '2024-10-05 07:50:00', '1700.00', 'Completed'),
(42, 42, '2024-10-05 09:15:00', '1550.00', 'Processing'),
(43, 43, '2024-10-06 03:40:00', '1100.00', 'Completed'),
(44, 44, '2024-10-06 06:20:00', '2250.00', 'Processing'),
(45, 45, '2024-10-07 08:00:00', '1800.00', 'Completed'),
(46, 46, '2024-10-07 09:10:00', '1800.00', 'Processing'),
(47, 47, '2024-10-08 04:50:00', '1500.00', 'Completed'),
(48, 48, '2024-10-08 05:30:00', '2100.00', 'Processing'),
(49, 49, '2024-10-09 06:45:00', '900.00', 'Completed'),
(50, 50, '2024-10-09 07:30:00', '2100.00', 'Processing'),
(51, 1, '2024-10-02 11:40:57', '4750.00', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `dish_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `dish_id`, `quantity`, `price`) VALUES
(1, 1, 1, 2, '900.00'),
(2, 1, 2, 1, '150.00'),
(3, 1, 3, 1, '800.00'),
(4, 2, 4, 3, '1500.00'),
(5, 2, 5, 1, '650.00'),
(6, 2, 6, 2, '1200.00'),
(7, 3, 7, 1, '250.00'),
(8, 3, 8, 1, '700.00'),
(9, 3, 9, 1, '750.00'),
(10, 4, 10, 2, '800.00'),
(11, 4, 11, 1, '500.00'),
(12, 5, 12, 3, '2100.00'),
(13, 5, 13, 2, '1600.00'),
(14, 5, 14, 1, '600.00'),
(15, 6, 15, 2, '1500.00'),
(16, 6, 16, 1, '500.00'),
(17, 7, 17, 3, '1050.00'),
(18, 7, 18, 2, '1600.00'),
(19, 8, 19, 1, '600.00'),
(20, 8, 20, 2, '1400.00'),
(21, 9, 21, 1, '300.00'),
(22, 9, 22, 3, '1050.00'),
(23, 10, 23, 2, '800.00'),
(24, 10, 24, 1, '600.00'),
(25, 11, 25, 1, '300.00'),
(26, 11, 26, 2, '1600.00'),
(27, 12, 27, 2, '1200.00'),
(28, 12, 28, 1, '550.00'),
(29, 13, 29, 2, '1400.00'),
(30, 13, 30, 1, '600.00'),
(31, 14, 31, 2, '800.00'),
(32, 14, 32, 1, '500.00'),
(33, 15, 33, 3, '1800.00'),
(34, 15, 34, 1, '700.00'),
(35, 16, 35, 1, '500.00'),
(36, 16, 36, 2, '1200.00'),
(37, 17, 37, 2, '500.00'),
(38, 17, 38, 1, '800.00'),
(39, 18, 39, 1, '300.00'),
(40, 18, 40, 2, '800.00'),
(41, 19, 41, 3, '1350.00'),
(42, 19, 42, 1, '600.00'),
(43, 20, 43, 2, '1100.00'),
(44, 20, 44, 1, '700.00'),
(45, 21, 45, 3, '1950.00'),
(46, 21, 46, 2, '1000.00'),
(47, 22, 1, 1, '450.00'),
(48, 22, 2, 2, '300.00'),
(49, 23, 3, 1, '800.00'),
(50, 23, 4, 2, '1000.00'),
(51, 24, 1, 3, '1350.00'),
(52, 24, 2, 1, '150.00'),
(53, 25, 3, 2, '1600.00'),
(54, 25, 4, 1, '500.00'),
(55, 26, 5, 2, '1300.00'),
(56, 26, 6, 1, '600.00'),
(57, 27, 7, 3, '750.00'),
(58, 27, 8, 1, '700.00'),
(59, 28, 9, 1, '750.00'),
(60, 28, 10, 2, '800.00'),
(61, 29, 11, 2, '1000.00'),
(62, 29, 12, 1, '700.00'),
(63, 30, 13, 1, '800.00'),
(64, 30, 14, 2, '1200.00'),
(65, 31, 15, 1, '750.00'),
(66, 31, 16, 3, '1500.00'),
(67, 32, 17, 2, '700.00'),
(68, 32, 18, 1, '800.00'),
(69, 33, 19, 1, '600.00'),
(70, 33, 20, 2, '1400.00'),
(71, 34, 21, 3, '900.00'),
(72, 34, 22, 1, '350.00'),
(73, 35, 23, 1, '400.00'),
(74, 35, 24, 2, '1200.00'),
(75, 36, 25, 2, '600.00'),
(76, 36, 26, 1, '800.00'),
(77, 37, 27, 1, '600.00'),
(78, 37, 28, 2, '1100.00'),
(79, 38, 29, 1, '700.00'),
(80, 38, 30, 3, '1800.00'),
(81, 39, 31, 1, '400.00'),
(82, 39, 32, 2, '1000.00'),
(83, 40, 33, 2, '1200.00'),
(84, 40, 34, 1, '700.00'),
(85, 41, 35, 1, '500.00'),
(86, 41, 36, 2, '1200.00'),
(87, 42, 37, 3, '750.00'),
(88, 42, 38, 1, '800.00'),
(89, 43, 39, 1, '300.00'),
(90, 43, 40, 2, '800.00'),
(91, 44, 41, 1, '450.00'),
(92, 44, 42, 3, '1800.00'),
(93, 45, 43, 2, '1100.00'),
(94, 45, 44, 1, '700.00'),
(95, 46, 45, 2, '1300.00'),
(96, 46, 46, 1, '500.00'),
(97, 47, 1, 3, '1350.00'),
(98, 47, 2, 1, '150.00'),
(99, 48, 3, 2, '1600.00'),
(100, 48, 4, 1, '500.00'),
(101, 49, 1, 1, '450.00'),
(102, 49, 2, 3, '450.00'),
(103, 50, 3, 2, '1600.00'),
(104, 50, 4, 1, '500.00'),
(105, 51, 2, 5, '750.00'),
(106, 51, 3, 5, '4000.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`) VALUES
(1, 'Hasibul Islam', 'hasibul@gmail.com', '12/A, Dhanmondi, Dhaka'),
(2, 'Rakib Ahmed', 'rakib.ahmed@yahoo.com', '34, Shantinagar, Dhaka'),
(3, 'Shamim Hossain', 'shamim.hossain@outlook.com', '78, Gulshan-2, Dhaka'),
(4, 'Farhana Sultana', 'farhana.sultana@gmail.com', '23/1, Mirpur, Dhaka'),
(5, 'Aminul Haque', 'aminul.haque@yahoo.com', '45, Banani, Dhaka'),
(6, 'Mahmudul Hasan', 'mahmudul.hasan@outlook.com', '56, Baridhara, Dhaka'),
(7, 'Jannatul Ferdous', 'jannat.ferdous@gmail.com', '90, Uttara, Dhaka'),
(8, 'Mehedi Hasan', 'mehedi.hasan@yahoo.com', '11/A, Lalmatia, Dhaka'),
(9, 'Sadia Afrin', 'sadia.afrin@gmail.com', '67, Mohammadpur, Dhaka'),
(10, 'Faisal Kabir', 'faisal.kabir@hotmail.com', '22/3, Banasree, Dhaka'),
(11, 'Tahmina Akter', 'tahmina.akter@gmail.com', '56, Rampura, Dhaka'),
(12, 'Nurul Islam', 'nurul.islam@outlook.com', '12, Bashundhara R/A, Dhaka'),
(13, 'Shahriar Khan', 'shahriar.khan@gmail.com', '78, Mohakhali, Dhaka'),
(14, 'Anika Tabassum', 'anika.tabassum@yahoo.com', '32/4, Khilgaon, Dhaka'),
(15, 'Nazmul Alam', 'nazmul.alam@gmail.com', '14/B, Tejgaon, Dhaka'),
(16, 'Ishrat Jahan', 'ishrat.jahan@gmail.com', '89, Farmgate, Dhaka'),
(17, 'Rasel Hossain', 'rasel.hossain@yahoo.com', '23, Panthapath, Dhaka'),
(18, 'Sumaiya Rahman', 'sumaiya.rahman@gmail.com', '11, Aftabnagar, Dhaka'),
(19, 'Tanzina Akhter', 'tanzina.akhter@yahoo.com', '58, Kalyanpur, Dhaka'),
(20, 'Abdullah Al Mamun', 'abdullah.mamun@gmail.com', '76, Bashabo, Dhaka'),
(21, 'Rubel Mia', 'rubel.mia@yahoo.com', '34, Badda, Dhaka'),
(22, 'Fatema Begum', 'fatema.begum@gmail.com', '56, Shyamoli, Dhaka'),
(23, 'Tarek Aziz', 'tarek.aziz@hotmail.com', '12/C, Green Road, Dhaka'),
(24, 'Salma Khatun', 'salma.khatun@gmail.com', '23, Adabor, Dhaka'),
(25, 'Ahsan Habib', 'ahsan.habib@gmail.com', '45, Agargaon, Dhaka'),
(26, 'Lamia Islam', 'lamia.islam@yahoo.com', '76/A, Pallabi, Dhaka'),
(27, 'Shuvo Roy', 'shuvo.roy@gmail.com', '54, Tongi, Gazipur'),
(28, 'Shakil Khan', 'shakil.khan@outlook.com', '22, Savar, Dhaka'),
(29, 'Monira Rahman', 'monira.rahman@gmail.com', '89, Narayanganj, Dhaka'),
(30, 'Aminur Rahman', 'aminur.rahman@yahoo.com', '23, Cumilla Sadar, Cumilla'),
(31, 'Afroza Khatun', 'afroza.khatun@gmail.com', '45, Sreemangal, Moulvibazar'),
(32, 'Kazi Mahmud', 'kazi.mahmud@hotmail.com', '67, Pahartali, Chittagong'),
(33, 'Arman Hossain', 'arman.hossain@gmail.com', '90, Halishahar, Chittagong'),
(34, 'Shohel Rana', 'shohel.rana@yahoo.com', '23/A, Sitakunda, Chittagong'),
(35, 'Khaleda Akhter', 'khaleda.akhter@gmail.com', '56, Khulshi, Chittagong'),
(36, 'Rafiqur Rahman', 'rafiqur.rahman@yahoo.com', '11, Agrabad, Chittagong'),
(37, 'Tania Islam', 'tania.islam@gmail.com', '34, Kazir Dewri, Chittagong'),
(38, 'Alamin Sheikh', 'alamin.sheikh@gmail.com', '22, Feni Sadar, Feni'),
(39, 'Ismail Hossain', 'ismail.hossain@yahoo.com', '78, Bandarban Sadar, Bandarban'),
(40, 'Shirin Akter', 'shirin.akter@gmail.com', '45, Sylhet Sadar, Sylhet'),
(41, 'Sultan Mahmud', 'sultan.mahmud@yahoo.com', '23/A, Rajshahi Sadar, Rajshahi'),
(42, 'Faruk Ahmed', 'faruk.ahmed@gmail.com', '12/C, Bogura Sadar, Bogura'),
(43, 'Shamima Yasmin', 'shamima.yasmin@gmail.com', '34/B, Khulna Sadar, Khulna'),
(44, 'Nurjahan Begum', 'nurjahan.begum@yahoo.com', '56, Jashore Sadar, Jashore'),
(45, 'Jahidul Islam', 'jahidul.islam@gmail.com', '11, Satkhira Sadar, Satkhira'),
(46, 'Sabina Yasmin', 'sabina.yasmin@gmail.com', '89, Kushtia Sadar, Kushtia'),
(47, 'Rakibul Hasan', 'rakibul.hasan@gmail.com', '22, Barishal Sadar, Barishal'),
(48, 'Asif Hossain', 'asif.hossain@yahoo.com', '34, Patuakhali Sadar, Patuakhali'),
(49, 'Sadia Yasmin', 'sadia.yasmin@gmail.com', '67, Mymensingh Sadar, Mymensingh'),
(50, 'Sumon Khan', 'sumon.khan@yahoo.com', '89, Jamalpur Sadar, Jamalpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
