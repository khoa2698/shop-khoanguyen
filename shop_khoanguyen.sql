-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2022 at 10:00 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_khoanguyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `quantity`, `price`) VALUES
(1, 2, 20, 2, 1891000),
(2, 2, 46, 3, 150000),
(3, 3, 47, 3, 180000),
(4, 4, 32, 3, 980000),
(5, 4, 44, 1, 3190000),
(6, 5, 34, 1, 92170000),
(7, 6, 34, 1, 92170000),
(8, 7, 18, 2, 2891000),
(9, 7, 52, 3, 499000),
(10, 8, 50, 2, 299000),
(11, 9, 51, 10, 600000),
(12, 10, 37, 1, 8800000),
(13, 10, 42, 2, 2970000),
(14, 11, 41, 2, 810000),
(15, 12, 23, 2, 450000),
(16, 13, 40, 1, 1620000),
(17, 13, 49, 2, 3891000);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Minh Anh', '0962213752', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'admin@emr.com', 'Test 1', '2022-04-15 19:29:17', '2022-04-15 19:29:17'),
(3, 'Nguyễn Văn Khoa', '0962213752', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'khoa.nv99vp@gmail.com', 'Test 2', '2022-04-15 19:31:49', '2022-04-15 19:31:49'),
(4, 'Nguyễn Thị Minh Anh', '0234565948', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'admin1@emr.com', 'Test 4', '2022-04-15 19:38:18', '2022-04-15 19:38:18'),
(5, 'Trương Gia Dũng', '0234567894', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'admin2@emr.com', 'Test 4', '2022-04-15 20:09:32', '2022-04-15 20:09:32'),
(6, 'Nguyễn Thị Lan', '0345687956', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'lan.nt99vp@gmail.com', 'Test 3', '2022-04-15 20:13:20', '2022-04-15 20:13:20'),
(7, 'Nguyễn Thị Thúy Quỳnh', '0456875962', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'quynh.ntt99vp@gmail.com', 'test 5', '2022-04-15 20:15:41', '2022-04-15 20:15:41'),
(8, 'Nguyễn Quốc Khánh', '0354687489', 'Bắc Ninh', 'khanh.nq99bn@gmail.com', 'Test 6', '2022-04-15 20:30:01', '2022-04-15 20:30:01'),
(9, 'Chu Thị Thu Hà', '0354869784', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'ha.ct2k@gmail.com', 'test 7', '2022-04-15 20:32:25', '2022-04-15 20:32:25'),
(10, 'Nguyễn Quang Hưng', '0962213552', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'khoa.nv99vp@gmail.com', 'Gửi mail', '2022-04-15 20:53:22', '2022-04-15 20:53:22'),
(11, 'Phạm Thị Hằng', '0954789654', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'khoa.nv99vp@gmail.com', 'Gửi mail 2', '2022-04-15 21:00:58', '2022-04-15 21:00:58'),
(12, 'Trịnh Minh Tâm', '0356956789', 'Hà Nội', 'nguyenvankhoa99vp@gmail.com', 'Gửi mail 3', '2022-04-16 05:47:54', '2022-04-16 05:47:54'),
(13, 'Nguyễn Đức Long', '0963568745', 'Tam Hồng, Yên Lạc, Vĩnh Phúc', 'nguyenvankhoa99vp@gmail.com', 'gửi mail', '2022-04-16 05:52:54', '2022-04-16 05:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'ba7306da-7d9a-4280-89f2-47d6e670a6c1', 'database', 'default', '{\"uuid\":\"ba7306da-7d9a-4280-89f2-47d6e670a6c1\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:17:\\\"ha.ct2k@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-04-16 03:32:28.059704\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to connect to smtp.gmail.com:567 (A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.\r\n) in E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'E:\\\\Virtual_serv...\', 264, Array)\n#1 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'smtp.gmail.com:...\', 10060, \'A connection at...\', 30, 4, Resource id #770)\n#2 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#8 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#12 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#13 E:\\Virtual_servers\\laragon\\www\\shop\\app\\Jobs\\SendMail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#14 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#15 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#21 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#22 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#24 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#25 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#26 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#28 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(1005): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 E:\\Virtual_servers\\laragon\\www\\shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2022-04-15 20:53:57'),
(2, '188ce31b-e727-4408-9bf7-7dc069e6d08b', 'database', 'default', '{\"uuid\":\"188ce31b-e727-4408-9bf7-7dc069e6d08b\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"khoa.nv99vp@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-04-16 03:53:25.675224\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to connect to smtp.gmail.com:567 (A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.\r\n) in E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'E:\\\\Virtual_serv...\', 264, Array)\n#1 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'smtp.gmail.com:...\', 10060, \'A connection at...\', 30, 4, Resource id #803)\n#2 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#8 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#12 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#13 E:\\Virtual_servers\\laragon\\www\\shop\\app\\Jobs\\SendMail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#14 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#15 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#21 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#22 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#24 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#25 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#26 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#28 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(1005): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\Virtual_servers\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 E:\\Virtual_servers\\laragon\\www\\shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2022-04-15 20:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Nước hoa nam', 0, 'Nước hoa nam', '<p>Nước hoa nam</p>', 1, '2022-03-20 18:53:56', '2022-03-20 18:53:56'),
(3, 'Nước hoa nữ', 0, 'Nước hoa nữ', '<p>Nước hoa nữ</p>', 1, '2022-03-20 18:59:40', '2022-03-20 18:59:40'),
(4, 'Kính mắt', 0, 'Kính mắt', '<p>K&iacute;nh mắt</p>', 1, '2022-03-21 19:11:35', '2022-03-21 19:55:09'),
(5, 'Kính thời trang', 4, 'Kính thời trang', '<p>K&iacute;nh thời trang</p>', 1, '2022-03-21 19:11:55', '2022-03-21 19:11:55'),
(6, 'Kính cận', 4, 'Kính cận', '<p>K&iacute;nh cận</p>', 1, '2022-03-21 19:12:06', '2022-04-06 00:33:33'),
(7, 'Đồng hồ', 0, 'Đồng hồ', '<p>Đồng hồ</p>', 1, '2022-04-05 19:16:37', '2022-04-05 19:16:37'),
(8, 'Bộ Sưu Tập', 0, 'Bộ sưu tập', '<p>Bộ Sưu tập</p>', 1, '2022-04-05 19:40:18', '2022-04-05 19:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_20_091837_create_menus_table', 2),
(8, '2022_03_22_071912_create_products_table', 3),
(9, '2022_03_28_090544_create_sliders_table', 4),
(10, '2022_04_15_103812_create_customers_table', 5),
(11, '2022_04_15_104823_create_carts_table', 5),
(12, '2022_04_16_031951_create_jobs_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `content`, `thumb`, `parent_category_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Nước Hoa Xmen', 'Nước Hoa Xmen', '<p>Nước Hoa Xmen</p>', '/storage/images/2022/03/27/depda.jpg', 1, 23255, 2262, 1, '2022-03-26 18:52:45', '2022-03-26 18:52:45'),
(3, 'Nước Hoa Luxury', 'Nước Hoa Luxury', '<p>Nước Hoa Luxury</p>', '/storage/images/2022/03/28/image001.jpg', 3, 21000, 300, 1, '2022-03-28 00:29:12', '2022-03-28 00:29:12'),
(4, 'Tròng đổi màu Transition Signature Gen 8', 'Tròng đổi màu Transition Signature Gen 8', '<p>Tr&ograve;ng đổi m&agrave;u Transition Signature Gen 8</p>', '/storage/images/2022/03/28/enlgish.jpg', 6, 20000, 999, 1, '2022-03-28 00:33:26', '2022-03-28 01:34:00'),
(7, 'Mắt kính thời trang Nam Dora 7106-C4', 'Mắt kính thời trang Nam Dora 7106-C4', '<p>Mắt k&iacute;nh thời trang Nam Dora 7106-C4</p>', '/storage/images/2022/03/28/mat-kinh-thoi-trang-nam-dora-7106-c4-hong-gold-2-1.jpg', 5, 1280000, 300000, 1, '2022-03-28 00:35:01', '2022-04-05 19:48:07'),
(8, 'Frederique Constant Fc 220', 'Frederique Constant Fc 220', '<p>Frederique Constant Fc 220</p>', '/storage/images/2022/04/06/watch-frederique-constant-fc-220mpw3bd26ava-300x300.jpg', 7, 66450000, 700000, 1, '2022-04-05 19:20:16', '2022-04-05 19:20:16'),
(9, 'Frederique Constant Fc 760', 'Frederique Constant Fc 760', '<p>Frederique Constant Fc 760</p>', '/storage/images/2022/04/06/watch-frederique-constant-fc-760chc4h4-nam-300x300.jpg', 7, 103170000, 11000000, 1, '2022-04-05 19:21:32', '2022-04-05 19:21:32'),
(10, 'Frederique Constant Fc 760mc4h6', 'Frederique Constant Fc 760mc4h6', '<p>Frederique Constant Fc 760mc4h6</p>', '/storage/images/2022/04/06/watch-frederique-constant-fc-760mc4h6-nam-300x300.jpg', 7, 95000000, 10000000, 1, '2022-04-05 19:22:58', '2022-04-05 19:22:58'),
(11, 'Orient RA-AA0B04R19B', 'Orient RA-AA0B04R19B', '<p>Orient RA-AA0B04R19B</p>', '/storage/images/2022/04/06/watch-orient-ra-aa0b04r19b-thumb-600x600.jpg', 7, 8000000, 0, 1, '2022-04-05 19:25:18', '2022-04-05 19:25:18'),
(12, 'Orient RA-AA0B05R19B', 'Orient RA-AA0B05R19B', '<p>Orient RA-AA0B05R19B</p>', '/storage/images/2022/04/06/watch-orient-ra-aa0b05r19b-thumb-600x600.jpg', 7, 8800000, 0, 1, '2022-04-05 19:26:16', '2022-04-05 19:26:16'),
(13, 'Gues GU69555920W', 'Gues GU69555920W', '<p>Gues GU69555920W</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nam-guess-gu69555920w-thumb-1-7-600x600.jpg', 5, 3000000, 300000, 1, '2022-04-05 19:27:26', '2022-04-05 19:27:26'),
(14, 'Calvin Klein CK18535', 'Calvin Klein CK18535', '<p>Calvin Klein CK18535</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nu-calvin-klein-ck18535s55001-211221-114545-600x600.jpg', 5, 2000000, 200000, 1, '2022-04-05 19:28:15', '2022-04-05 19:29:40'),
(15, 'Guess GU76405778Z', 'Guess GU76405778Z', '<p>Guess GU76405778Z</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nu-guess-gu76405778z-thumb-1-600x600.jpg', 5, 1800000, 180000, 1, '2022-04-05 19:29:11', '2022-04-05 19:29:11'),
(16, 'Jill Stuart JS1000', 'Jill Stuart JS1000', '<p>Jill Stuart JS1000</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nu-jill-stuart-js1000863c02-thumb-1-6-600x600.jpg', 5, 900000, 90000, 1, '2022-04-05 19:31:01', '2022-04-05 19:31:01'),
(17, 'Dior Sauvage Eau', 'Dior Sauvage Eau', '<p>Dior Sauvage Eau</p>', '/storage/images/2022/04/06/perfume-dior-sauvage-eau-de-toilettebox.jpg', 1, 3300000, 330000, 1, '2022-04-05 19:33:25', '2022-04-05 19:33:25'),
(18, 'Versace Bright Crytal', 'Versace Bright Crytal', '<p>Versace Bright Crytal</p>', '/storage/images/2022/04/06/perfume-versace-bright-crystal-90ml_5d9e.jpg', 3, 2990000, 99000, 1, '2022-04-05 19:34:33', '2022-04-05 19:34:33'),
(19, 'Versace Eros Edt', 'Versace Eros Edt', '<p>Versace Eros Edt</p>', '/storage/images/2022/04/06/perfume-versace-eros-edt-5ml-mini_a198c9.jpg', 1, 3690000, 500000, 1, '2022-04-05 19:35:18', '2022-04-05 19:35:18'),
(20, 'Yves Saint Laurent Mon Paris', 'Yves Saint Laurent Mon Paris', '<p>Yves Saint Laurent Mon Paris</p>', '/storage/images/2022/04/06/perfume-yves-saint-laurent-mon-paris-50m.jpg', 3, 1990000, 99000, 1, '2022-04-05 19:36:10', '2022-04-05 19:36:10'),
(21, 'T-Shirt with Sleeve', 'T-Shirt with Sleeve', '<p><ins><a href=\"http://shop.ktest/product-detail.html\">T-Shirt with Sleeve</a></ins></p>', '/storage/images/2022/04/06/product-13.jpg', 8, 200000, 50000, 1, '2022-04-05 19:41:47', '2022-04-05 19:41:47'),
(22, 'Pretty Little Thing', 'Pretty Little Thing', '<p><a href=\"http://shop.ktest/product-detail.html\">Pretty Little Thing</a></p>', '/storage/images/2022/04/06/product-14.jpg', 8, 200000, 20000, 1, '2022-04-05 19:42:32', '2022-04-05 19:42:32'),
(23, 'Mini Silver Mesh Watch', 'Mini Silver Mesh Watch', '<p><a href=\"http://shop.ktest/product-detail.html\">Mini Silver Mesh Watch</a></p>', '/storage/images/2022/04/06/product-15.jpg', 7, 500000, 50000, 1, '2022-04-05 19:43:31', '2022-04-05 19:43:31'),
(24, 'Square Neck Back', 'Square Neck Back', '<p><a href=\"http://shop.ktest/product-detail.html\">Square Neck Back</a></p>', '/storage/images/2022/04/06/product-16.jpg', 8, 3990000, 99000, 1, '2022-04-05 19:44:16', '2022-04-05 19:44:16'),
(25, 'Herschel supply', 'Herschel supply', '<p><a href=\"http://shop.ktest/product-detail.html\">Herschel supply</a></p>', '/storage/images/2022/04/06/product-12.jpg', 8, 599000, 300000, 1, '2022-04-05 19:45:26', '2022-04-05 19:45:26'),
(26, 'Herschel supply', 'Herschel supply', '<p><a href=\"http://shop.ktest/product-detail.html\">Herschel supply</a></p>', '/storage/images/2022/04/06/product-11.jpg', 8, 699000, 99000, 1, '2022-04-05 19:46:00', '2022-04-05 19:46:00'),
(27, 'Femme T-Shirt In Stripe', 'Femme T-Shirt In Stripe', '<p><a href=\"http://shop.ktest/product-detail.html\">Femme T-Shirt In Stripe</a></p>', '/storage/images/2022/04/06/product-10.jpg', 8, 699000, 200000, 1, '2022-04-05 19:46:39', '2022-04-05 19:46:39'),
(28, 'Converse All Star Hi Plimsolls', 'Converse All Star Hi Plimsolls', '<p><a href=\"http://shop.ktest/product-detail.html\">Converse All Star Hi Plimsolls</a></p>', '/storage/images/2022/04/06/product-09.jpg', 8, 2990000, 500000, 1, '2022-04-05 19:47:26', '2022-04-05 19:47:26'),
(29, 'Nước Hoa Xmen', 'Nước Hoa Xmen', '<p>Nước Hoa Xmen</p>', '/storage/images/2022/03/27/depda.jpg', 1, 23255, 2262, 1, '2022-03-26 11:52:45', '2022-03-26 11:52:45'),
(30, 'Nước Hoa Luxury', 'Nước Hoa Luxury', '<p>Nước Hoa Luxury</p>', '/storage/images/2022/03/28/image001.jpg', 3, 21000, 300, 1, '2022-03-27 17:29:12', '2022-03-27 17:29:12'),
(31, 'Tròng đổi màu Transition Signature Gen 8', 'Tròng đổi màu Transition Signature Gen 8', '<p>Tr&ograve;ng đổi m&agrave;u Transition Signature Gen 8</p>', '/storage/images/2022/03/28/enlgish.jpg', 6, 20000, 999, 1, '2022-03-27 17:33:26', '2022-03-27 18:34:00'),
(32, 'Mắt kính thời trang Nam Dora 7106-C4', 'Mắt kính thời trang Nam Dora 7106-C4', '<p>Mắt k&iacute;nh thời trang Nam Dora 7106-C4</p>', '/storage/images/2022/03/28/mat-kinh-thoi-trang-nam-dora-7106-c4-hong-gold-2-1.jpg', 5, 1280000, 300000, 1, '2022-03-27 17:35:01', '2022-04-05 12:48:07'),
(33, 'Frederique Constant Fc 220', 'Frederique Constant Fc 220', '<p>Frederique Constant Fc 220</p>', '/storage/images/2022/04/06/watch-frederique-constant-fc-220mpw3bd26ava-300x300.jpg', 7, 66450000, 700000, 1, '2022-04-05 12:20:16', '2022-04-05 12:20:16'),
(34, 'Frederique Constant Fc 760', 'Frederique Constant Fc 760', '<p>Frederique Constant Fc 760</p>', '/storage/images/2022/04/06/watch-frederique-constant-fc-760chc4h4-nam-300x300.jpg', 7, 103170000, 11000000, 1, '2022-04-05 12:21:32', '2022-04-05 12:21:32'),
(35, 'Frederique Constant Fc 760mc4h6', 'Frederique Constant Fc 760mc4h6', '<p>Frederique Constant Fc 760mc4h6</p>', '/storage/images/2022/04/06/watch-frederique-constant-fc-760mc4h6-nam-300x300.jpg', 7, 95000000, 10000000, 1, '2022-04-05 12:22:58', '2022-04-05 12:22:58'),
(36, 'Orient RA-AA0B04R19B', 'Orient RA-AA0B04R19B', '<p>Orient RA-AA0B04R19B</p>', '/storage/images/2022/04/06/watch-orient-ra-aa0b04r19b-thumb-600x600.jpg', 7, 8000000, 0, 1, '2022-04-05 12:25:18', '2022-04-05 12:25:18'),
(37, 'Orient RA-AA0B05R19B', 'Orient RA-AA0B05R19B', '<p>Orient RA-AA0B05R19B</p>', '/storage/images/2022/04/06/watch-orient-ra-aa0b05r19b-thumb-600x600.jpg', 7, 8800000, 0, 1, '2022-04-05 12:26:16', '2022-04-05 12:26:16'),
(38, 'Gues GU69555920W', 'Gues GU69555920W', '<p>Gues GU69555920W</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nam-guess-gu69555920w-thumb-1-7-600x600.jpg', 5, 3000000, 300000, 1, '2022-04-05 12:27:26', '2022-04-05 12:27:26'),
(39, 'Calvin Klein CK18535', 'Calvin Klein CK18535', '<p>Calvin Klein CK18535</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nu-calvin-klein-ck18535s55001-211221-114545-600x600.jpg', 5, 2000000, 200000, 1, '2022-04-05 12:28:15', '2022-04-05 12:29:40'),
(40, 'Guess GU76405778Z', 'Guess GU76405778Z', '<p>Guess GU76405778Z</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nu-guess-gu76405778z-thumb-1-600x600.jpg', 5, 1800000, 180000, 1, '2022-04-05 12:29:11', '2022-04-05 12:29:11'),
(41, 'Jill Stuart JS1000', 'Jill Stuart JS1000', '<p>Jill Stuart JS1000</p>', '/storage/images/2022/04/06/glass-mat-kinh-thoi-trang-nu-jill-stuart-js1000863c02-thumb-1-6-600x600.jpg', 5, 900000, 90000, 1, '2022-04-05 12:31:01', '2022-04-05 12:31:01'),
(42, 'Dior Sauvage Eau', 'Dior Sauvage Eau', '<p>Dior Sauvage Eau</p>', '/storage/images/2022/04/06/perfume-dior-sauvage-eau-de-toilettebox.jpg', 1, 3300000, 330000, 1, '2022-04-05 12:33:25', '2022-04-05 12:33:25'),
(43, 'Versace Bright Crytal', 'Versace Bright Crytal', '<p>Versace Bright Crytal</p>', '/storage/images/2022/04/06/perfume-versace-bright-crystal-90ml_5d9e.jpg', 3, 2990000, 99000, 1, '2022-04-05 12:34:33', '2022-04-05 12:34:33'),
(44, 'Versace Eros Edt', 'Versace Eros Edt', '<p>Versace Eros Edt</p>', '/storage/images/2022/04/06/perfume-versace-eros-edt-5ml-mini_a198c9.jpg', 1, 3690000, 500000, 1, '2022-04-05 12:35:18', '2022-04-05 12:35:18'),
(45, 'Yves Saint Laurent Mon Paris', 'Yves Saint Laurent Mon Paris', '<p>Yves Saint Laurent Mon Paris</p>', '/storage/images/2022/04/06/perfume-yves-saint-laurent-mon-paris-50m.jpg', 3, 1990000, 99000, 1, '2022-04-05 12:36:10', '2022-04-05 12:36:10'),
(46, 'T-Shirt with Sleeve', 'T-Shirt with Sleeve', '<p><ins><a href=\"http://shop.ktest/product-detail.html\">T-Shirt with Sleeve</a></ins></p>', '/storage/images/2022/04/06/product-13.jpg', 8, 200000, 50000, 1, '2022-04-05 12:41:47', '2022-04-05 12:41:47'),
(47, 'Pretty Little Thing', 'Pretty Little Thing', '<p><a href=\"http://shop.ktest/product-detail.html\">Pretty Little Thing</a></p>', '/storage/images/2022/04/06/product-14.jpg', 8, 200000, 20000, 1, '2022-04-05 12:42:32', '2022-04-05 12:42:32'),
(48, 'Mini Silver Mesh Watch', 'Mini Silver Mesh Watch', '<p><a href=\"http://shop.ktest/product-detail.html\">Mini Silver Mesh Watch</a></p>', '/storage/images/2022/04/06/product-15.jpg', 7, 500000, 50000, 1, '2022-04-05 12:43:31', '2022-04-05 12:43:31'),
(49, 'Square Neck Back', 'Square Neck Back', '<p><a href=\"http://shop.ktest/product-detail.html\">Square Neck Back</a></p>', '/storage/images/2022/04/06/product-16.jpg', 8, 3990000, 99000, 1, '2022-04-05 12:44:16', '2022-04-05 12:44:16'),
(50, 'Herschel supply', 'Herschel supply', '<p><a href=\"http://shop.ktest/product-detail.html\">Herschel supply</a></p>', '/storage/images/2022/04/06/product-12.jpg', 8, 599000, 300000, 1, '2022-04-05 12:45:26', '2022-04-05 12:45:26'),
(51, 'Herschel supply', 'Herschel supply', '<p><a href=\"http://shop.ktest/product-detail.html\">Herschel supply</a></p>', '/storage/images/2022/04/06/product-11.jpg', 8, 699000, 99000, 1, '2022-04-05 12:46:00', '2022-04-05 12:46:00'),
(52, 'Femme T-Shirt In Stripe', 'Femme T-Shirt In Stripe', '<p><a href=\"http://shop.ktest/product-detail.html\">Femme T-Shirt In Stripe</a></p>', '/storage/images/2022/04/06/product-10.jpg', 8, 699000, 200000, 1, '2022-04-05 12:46:39', '2022-04-05 12:46:39'),
(53, 'Converse All Star Hi Plimsolls', 'Converse All Star Hi Plimsolls', '<p><a href=\"http://shop.ktest/product-detail.html\">Converse All Star Hi Plimsolls</a></p>', '/storage/images/2022/04/06/product-09.jpg', 8, 2990000, 500000, 1, '2022-04-05 12:47:26', '2022-04-05 12:47:26'),
(54, 'Gallery-05', 'Gallery-05', '<p>Gallery-05</p>', '/storage/images/2022/04/13/gallery-05.jpg', 8, NULL, NULL, 1, '2022-04-12 19:09:45', '2022-04-12 19:09:45'),
(55, 'Gallery-06', 'Gallery-06', '<p>Gallery-06</p>', '/storage/images/2022/04/13/gallery-06.jpg', 8, NULL, NULL, 1, '2022-04-12 19:10:07', '2022-04-12 19:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Couple 01', '#', '/storage/images/2022/04/05/slide-01.jpg', 1, 0, '2022-04-04 20:04:06', '2022-04-04 20:26:37'),
(6, 'Couple 02', '#', '/storage/images/2022/04/05/slide-02.jpg', 2, 0, '2022-04-04 20:04:22', '2022-04-04 20:26:32'),
(7, 'Couple 03', '#', '/storage/images/2022/04/05/slide-03.jpg', 3, 0, '2022-04-04 20:04:44', '2022-04-04 20:26:26'),
(8, 'slide-1', '#', '/storage/images/2022/04/05/slide-6.jpg', 1, 0, '2022-04-04 20:25:06', '2022-04-04 20:41:10'),
(9, 'slide 2', '#', '/storage/images/2022/04/05/slide-7.jpg', 2, 0, '2022-04-04 20:25:22', '2022-04-04 20:41:05'),
(10, 'slide 3', '#', '/storage/images/2022/04/05/slide-8.jpg', 3, 0, '2022-04-04 20:25:37', '2022-04-04 20:40:58'),
(11, 'Slide 01', '#', '/storage/images/2022/04/05/slide-9.jpg', 1, 0, '2022-04-04 20:40:12', '2022-04-05 00:43:51'),
(13, 'Slide 03', '#', '/storage/images/2022/04/05/slide-11.jpg', 3, 0, '2022-04-04 20:40:45', '2022-04-05 00:43:57'),
(15, 'Bộ Sưu Tập 2', '#', '/storage/images/2022/04/05/2921475.jpg', 2, 1, '2022-04-05 00:45:15', '2022-04-05 00:45:15'),
(19, 'Bộ Sưu Tập 1', '#', '/storage/images/2022/04/05/1448056_ccexpress.png', 1, 1, '2022-04-05 01:00:52', '2022-04-05 01:00:52'),
(23, 'Bộ Sưu Tập 3', '#', '/storage/images/2022/04/05/slide-04.jpg', 3, 1, '2022-04-05 02:56:31', '2022-04-05 02:56:31'),
(24, 'Bộ Sưu Tập 4', '#', '/storage/images/2022/04/05/slide-06.jpg', 5, 1, '2022-04-05 02:56:49', '2022-04-05 02:56:49'),
(25, 'Bộ Sưu Tập 6', '#', '/storage/images/2022/04/05/slide-07.jpg', 6, 0, '2022-04-05 02:57:03', '2022-04-05 02:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'khoa.nv99vp@gmail.com', '2022-02-28 09:42:45', '$2y$10$VqAZ63SPXJ.q6jkWaIEJWuwEzEnNqxXSwznSwQfqCewy5PQvrtnAy', 'XdDnURf6WaGTuBNlSFYRtnezvGc4hWTh4c47KFndarNBk6atMAzO2cQYBarE', '2022-02-28 09:42:45', '2022-02-28 09:42:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
