-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2020 at 03:35 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmld_site2`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Working area', 'amenities/working-area.png', '2020-02-03 23:16:00', '2020-02-10 20:02:43'),
(2, 'Bedroom', 'amenities/bedroom.png', '2020-02-03 23:18:00', '2020-02-10 20:02:28'),
(3, 'Living room', 'amenities/living-room.png', '2020-02-03 23:20:00', '2020-02-10 20:02:13'),
(4, 'Toilet', 'amenities/toilet.png', '2020-02-03 23:21:00', '2020-02-10 20:01:54'),
(6, 'Retail Area', 'amenities/kitchen.png', '2020-02-10 00:05:00', '2020-02-10 22:14:41'),
(7, 'Parking', 'amenities/working-area.png', '2020-02-10 00:06:00', '2020-02-10 22:13:19'),
(8, 'Dinning room', 'amenities/dining-room.png', '2020-02-10 00:08:00', '2020-02-10 20:01:34'),
(9, 'Kitchen', 'amenities/kitchen.png', '2020-02-10 00:08:00', '2020-02-10 22:10:02'),
(10, 'WC', 'amenities/toilet.png', '2020-02-10 00:09:00', '2020-02-10 22:09:39'),
(11, 'Bathroom', 'amenities/toilet.png', '2020-02-10 00:09:00', '2020-02-10 22:09:23'),
(12, '52.6sqm Room Size', 'amenities/room-size.png', '2020-02-10 00:10:44', '2020-02-10 00:10:44'),
(13, 'Lift', 'amenities/working-area.png', '2020-02-10 00:11:00', '2020-02-10 21:57:14'),
(14, 'Waiting Area', 'amenities/working-area.png', '2020-02-10 00:12:00', '2020-02-10 22:09:08'),
(15, 'Maid Room', 'amenities/bedroom.png', '2020-02-10 00:13:00', '2020-02-10 20:22:44'),
(16, 'Family Room', 'amenities/kitchen.png', '2020-02-10 00:14:00', '2020-02-10 20:22:57'),
(17, 'Study Area', 'amenities/working-area.png', '2020-02-10 20:19:00', '2020-02-10 22:08:38'),
(18, 'House Floors', 'amenities/working-area.png', '2020-02-10 20:25:00', '2020-02-10 22:15:14'),
(19, 'Family Area', 'amenities/living-room.png', '2020-02-10 20:33:00', '2020-02-10 22:12:02'),
(20, 'Living Area', 'amenities/living-room.png', '2020-02-10 20:34:00', '2020-02-10 22:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `attachment`, `detail`, `created_at`, `updated_at`, `deleted_at`, `logo`, `article_type_id`) VALUES
(2, 'Find your property', 'find-your-property', 'articles\\December2019\\irnlsn7fpMbZSJKH6uZN.jpg', '', '2019-12-29 18:13:08', '2019-12-30 01:13:52', NULL, NULL, NULL),
(3, 'Don\'t know what you want?', 'dont-know-what-you-want', 'articles\\December2019\\YFpdZOxiSwBru6ooFC2T.jpg', '<p>Let us guide you through what best would suit your needs. Take a quick test and see what Chip Mong Land has to offer.</p>', '2019-12-29 18:18:36', '2020-01-02 01:53:22', NULL, NULL, NULL),
(5, 'Home Page Background Bottom', 'home-page-background-bottom', 'articles\\December2019\\TIUki5c20svY5y5Ocyur.jpg', '', '2019-12-29 18:23:08', '2019-12-30 01:13:16', NULL, NULL, NULL),
(6, 'Artboard', 'artboard', 'articles\\December2019\\D2aedtMmiPX62YWz9j5u.jpg', '', '2019-12-30 01:32:54', '2019-12-30 01:32:54', NULL, NULL, NULL),
(7, 'Park Land 50M, new enormous and latest property plant along street 50M of Chip Mong Land just get its groundbreaking started.', 'Park-Land-50M', 'articles\\December2019\\d3bVYoo4W2KTdQadPCTw.jpg', '<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;/sup&gt; November 2019.</p>\n<p>Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.</p>\n<p>Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.</p>\n<p>This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.</p>\n<p>Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.</p>\n<p>Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.</p>\n<p>For more information, please contact 061 997 888 |&nbsp;<a href=\"https://www.facebook.com/chipmongland/\">https://www.facebook.com/chipmongland</a>&nbsp;|&nbsp;<a href=\"http://www.chipmongland.com/\" target=\"_blank\" rel=\"noopener\">www.chipmongland.com</a></p>', '2019-12-30 02:55:42', '2020-01-28 21:04:34', NULL, 'articles\\December2019\\TqZ0QdrEpP0XJUdBgBHk.jpg', 1),
(8, 'Chip Mong’s latest retail project breaks ground', 'Chip-Mong’s-latest-retail-project-breaks-ground', 'articles\\December2019\\cqf43lSYaUOJNa4nMOjR.jpg', '<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Construction work for a massive, $200-million shopping centre built by Chip Mong Retail, a subsidiary of local conglomerate Chip Mong, began yesterday.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Chip Mong 271 Mega Mall will extend over 41 hectares of land in the capital, and will feature a movie theater and a food court, among other entertainment and dining options.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Leang Khun, chairman of Chip Mong Group, said at the groundbreaking ceremony that the mall will beautify the city and, starting with its construction, create thousands of jobs.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;We guarantee that our customers will have a great experience, particularly those that enjoy modern amenities and entertainment,&rdquo; he said.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;Chip Mong 271 Mega Mall will be managed by our board of directors who are local and foreign experts in the operation of malls throughout the region. Our goal is to provide the best service to our customers,&rdquo; he added.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Philippe Prejent, Chip Mong Retail&rsquo;s president, said that, excluding this latest project, Chip Mong Retail has invested about $252 million in Cambodia. Some of its most successful projects include Chip Mong Monivong Super Market, Baktok Chip Mong Mall, Sen Sok Chip Mong Mall and 598 Chip Mong Mall.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;The construction of this new shopping mall here, in a landmark such as street 271, demonstrates Chip Mong&rsquo;s dedication and commitment to create new lifestyle and entertainment solutions for our customers,&rdquo; he said.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;We have a clear and strong commitment to support the economic development of the country and the evolution of modern retail,&rdquo; he added.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;Presiding over the ceremony, Land Management Minister Chea Sophara, said the mall will be an important contribution to the nation&rsquo;s construction sector and the national economy.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;&ldquo;I have seen the blueprints for the project and I can tell you that it is very well designed, modern and environmentally friendly, giving our people a great place to gather, shop, and look for entertainment options,&rdquo; he added.&lt;/p&gt;</span></span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span style=\"color: #000000;\"><span style=\"font-size: 10px;\">&lt;p&gt;According to Chip Mong&rsquo;s Mr Khun, the mall has been designed by foreign and local experts, and will be finished by 2020.&lt;/p&gt;</span></span></p>', '2019-12-30 03:02:20', '2020-01-29 03:31:32', NULL, 'articles\\December2019\\DcdblCnBgGdBQ6dj4KPR.jpg', 1),
(9, 'About The Group', 'about-the-group', 'articles\\January2020\\L1aYqoA2F99iZ748AdEX.jpg', '<p><span style=\"font-family: Gotham; font-size: 16pt;\">Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Gotham; font-size: 16pt;\">Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Gotham; font-size: 16pt;\">We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses/home offices.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Gotham; font-size: 16pt;\">As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.</span></p>', '2020-01-06 03:10:10', '2020-01-29 21:11:54', NULL, NULL, NULL),
(10, 'Message From The Charlady', 'message-from-the-charlady', 'articles\\January2020\\C8lHNMiEdTg6M9HOjUWZ.jpg', '<p><span style=\"font-size: 16pt; font-family: Gotham;\">In line with the development policy of Phnom Penh municipality, Chip Mong Land is committed to constructing many kinds of private luxurious houses to meet the needs of the poeple with modern lifestyles. The Park Land Sen Sok is the first project of Chip Mong Land whose success will be made a reality only thanks to our customers\' supports as well as their trust and confidence in our construction capability.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 16pt; font-family: Gotham;\">In the near future, Chip Mong Land will bring three new comprehensive residence construction projects to our customers. It is our commitment to continue building luxurious, safe and high-quality residences with fashionable designs in both the exterior and interior.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 16pt; font-family: Gotham;\">On behalf of Chip Mong Land, I would like to express my profound thanks to all current and prospective customers for your support.</span></p>\n<p><span style=\"font-size: 16pt; font-family: Gotham;\">I am looking forward to your further supports and having the opportunity to serve you.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Gotham; font-size: 16pt;\"><strong>Oknha Mandam Pheap Heak</strong></span></p>', '2020-01-07 01:39:01', '2020-01-29 21:16:34', NULL, NULL, NULL),
(11, '', NULL, 'articles\\January2020\\0DCMfbjkjWkSE5lAp7yB.jpg', '', '2020-01-08 21:20:51', '2020-01-08 21:20:51', NULL, NULL, NULL),
(12, 'Chip Mong Land Officially Launch Sales Of Park Land Condo TK', NULL, 'articles\\January2020\\tQoBjWhbX3firbY8whj4.jpg', '<p>&lt;p&gt;Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.&lt;/p&gt;</p>\n<p>&lt;p&gt;With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.&lt;/p&gt;</p>\n<p>&lt;p&gt;Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.&lt;/p&gt;</p>\n<p>&lt;p&gt;Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.&lt;/p&gt;</p>', '2020-01-08 21:43:54', '2020-01-29 03:42:54', NULL, NULL, 1),
(13, '', NULL, 'articles\\January2020\\2czzGaRxOGlNBO4QoR5Q.png', '', '2020-01-08 23:24:41', '2020-01-08 23:24:41', NULL, NULL, NULL),
(14, 'After Sale Services', NULL, 'articles\\January2020\\wyCczqibPS8osZ4xTqRH.jpg', '', '2020-01-08 23:37:30', '2020-01-08 23:37:30', NULL, 'articles\\January2020\\16cNYFSDZm246egnA0LD.png', NULL),
(15, '', NULL, 'articles\\January2020\\qApbLGoYD99Mv4WYge71.png', '', '2020-01-09 00:48:58', '2020-01-09 00:48:58', NULL, 'articles\\January2020\\y3qo4Ilbmf9emQDlGxag.png', NULL),
(16, 'Cambodia in Numbers', NULL, 'articles\\January2020\\tFuGtdGaKxTUAMmfGmHj.jpg', '<p>From constant econimic growth and a significant increase in foreign spending, the real estate sector in Cambodia has shown to have unprecedented levls of growth.</p>\n<p>Cambodia offers quality living supported by great prices. Investing in sauc a lively country not only means geeting more for your investment, but also getting a home in the gem of the east.</p>\n<p>Need to know specific numbers you want to show to write a blurb.</p>', '2020-01-09 02:01:37', '2020-01-09 02:01:37', NULL, NULL, NULL),
(17, 'Impressive Lifestyle', NULL, 'articles\\January2020\\wpeiZlG8NUPp6sFvme3m.jpg', '<p>It\'s not easy to find your perfect dream home. Cambodia offers diverse living options in the heart of the kingdom of wonder to suit any lifestyle. No matter what your preferences are, Cambodia offers them all.</p>', '2020-01-09 02:15:43', '2020-01-09 02:15:43', NULL, NULL, NULL),
(18, '', NULL, 'articles\\January2020\\LO2bF7RezDXmG9TNOlxd.jpg', '<p>Living in Phnom Penh allows for easy travel to tens or hundreds of close destinations both for adventure of relaxation. Fly or drive to Siem Reap to see the temples, Take a boat to Koh Rong and enjoy paradise, or take a scenic bus to Kampot to enjoy some relaxation time. Cambodia offers all you need and more.</p>', '2020-01-09 02:21:29', '2020-01-09 02:21:29', NULL, NULL, NULL),
(19, 'Cheaper But Better', NULL, 'articles\\January2020\\h9pS7pbSaOQZ9o0qEHuD.jpg', '<p>Cheaper isn\'t always better, but when it comes to cambodia\'s real estate market you cannot go wrong. Increase of foreign spending as well as growth in the middle class has allowed cambodia\'s real estate market to be among the best in South East Asia. Get more for less.</p>', '2020-01-09 02:26:21', '2020-01-09 02:26:21', NULL, NULL, NULL),
(20, '', NULL, 'articles\\January2020\\fsojX57fsgCJShWgspHa.jpg', '', '2020-01-12 20:01:48', '2020-01-12 20:01:48', NULL, NULL, NULL),
(21, '', NULL, 'articles\\January2020\\gRG75xA0Oy3EQwDf0lqF.png', '', '2020-01-12 20:20:29', '2020-01-12 20:20:29', NULL, NULL, NULL),
(22, '', NULL, 'articles\\January2020\\V1E3h6Aeklk4irSgNb6p.png', '', '2020-01-12 20:20:57', '2020-01-12 20:20:57', NULL, NULL, NULL),
(23, '', NULL, 'articles\\January2020\\9uwQ4WTLLEAEfW2u42nt.png', '', '2020-01-12 20:21:16', '2020-01-12 20:21:16', NULL, NULL, NULL),
(24, '', NULL, 'articles\\January2020\\SDOK1vrM2BCQEjGVa2wb.png', '', '2020-01-12 20:31:54', '2020-01-12 20:31:54', NULL, NULL, NULL),
(26, '', NULL, 'articles\\January2020\\LcaIDg8hqSwRwJT25GQ1.jpg', '', '2020-01-15 03:07:01', '2020-01-15 03:07:01', NULL, NULL, NULL),
(27, '', NULL, 'articles\\January2020\\xQq7OlM45GolaJ4tvjby.jpg', '', '2020-01-15 03:18:57', '2020-01-15 03:18:57', NULL, NULL, NULL),
(28, '', NULL, 'articles\\February2020\\Fa3PmwjJWYodElqh3US6.jpg', '', '2020-01-23 02:41:37', '2020-02-02 18:42:42', NULL, NULL, NULL),
(29, '', NULL, 'articles\\January2020\\yENUVWbGNWjJb0FmdJO1.png', '', '2020-01-23 02:48:47', '2020-01-31 03:05:39', NULL, NULL, NULL),
(30, 'Privacy Policy', NULL, NULL, '<p>Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.</p>\n<p>This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.</p>\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Chip Mong Land unless otherwise defined in this Privacy Policy.</p>\n<p><strong>Information Collection and Use</strong></p>\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to name, phone number, email address. The information that we request will be retained by us and used as described in this privacy policy.</p>\n<p>The app does use third party services that may collect information used to identify you.</p>\n<p>Link to privacy policy of third party service providers used by the app</p>\n<p>-&nbsp;<a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noopener\">Google Play Services</a></p>\n<p>-&nbsp;<a href=\"https://www.facebook.com/about/privacy\" target=\"_blank\" rel=\"noopener\">Facebook</a></p>\n<p>&nbsp;</p>\n<p><strong>Log Data</strong></p>\n<p>We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.</p>\n<p><strong>Cookies</strong></p>\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.</p>\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\n<p><strong>Service Providers</strong></p>\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\n<p>- To facilitate our Service;</p>\n<p>- To provide the Service on our behalf;</p>\n<p>- To perform Service-related services; or</p>\n<p>- To assist us in analyzing how our Service is used.&lt;/p&gt;</p>\n<p>We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<p><strong>Security</strong></p>\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<p><strong>Links to Other Sites</strong></p>\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<p><strong>Children&rsquo;s Privacy</strong></p>\n<p>These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<p><strong>Changes to This Privacy Policy</strong></p>\n<p>We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.</p>\n<p><strong>Contact Us</strong></p>\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at sokunpisith.taing@chipmong.com, 13b Mao Tse Tung Blvd, Phnom Penh, Cambodia.</p>\n<p>This privacy policy page was created at&nbsp;<a href=\"https://privacypolicytemplate.net/\" target=\"_blank\" rel=\"noopener\">privacypolicytemplate.net&nbsp;</a>and modified/generated by&nbsp;<a href=\"href=&quot;https://app-privacy-policy-generator.firebaseapp.com/\" target=\"_blank\" rel=\"noopener\">App Privacy Policy Generator</a></p>', '2020-01-23 18:23:52', '2020-01-23 19:07:37', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_types`
--

CREATE TABLE `article_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_types`
--

INSERT INTO `article_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'news', '2020-01-08 20:51:15', '2020-01-30 23:24:40', NULL),
(2, 'activities', '2020-01-08 20:51:38', '2020-01-30 23:24:32', NULL),
(3, 'promotions', '2020-01-08 20:51:56', '2020-01-30 23:24:21', NULL),
(4, 'ALL', '2020-01-29 21:07:16', '2020-01-30 23:24:00', '2020-01-30 23:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'updated', 'App\\Project', 3, '{\"location\":\"POINT(104.89506984106 11.591087569425)\",\"updated_at\":\"2020-01-21 08:26:17\"}', '{\"location\":{},\"updated_at\":\"2020-01-23 10:17:52\"}', 'http://dev.chipmongland.com/admin/projects/3', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:17:52', '2020-01-23 03:17:52'),
(2, 'App\\User', 1, 'updated', 'App\\Project', 3, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-23 10:17:52\"}', '{\"location\":{},\"updated_at\":\"2020-01-23 10:21:23\"}', 'http://dev.chipmongland.com/admin/projects/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:21:23', '2020-01-23 03:21:23'),
(3, 'App\\User', 1, 'updated', 'App\\Location', 1, '{\"status\":1,\"updated_at\":\"2019-12-26 03:08:45\"}', '{\"status\":0,\"updated_at\":\"2020-01-23 10:24:09\"}', 'http://dev.chipmongland.com/admin/locations/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:24:09', '2020-01-23 03:24:09'),
(4, 'App\\User', 1, 'updated', 'App\\Wording', 96, '{\"word\":\"<p>More info about loan<\\/p>\",\"updated_at\":\"2020-01-15 04:31:33\"}', '{\"word\":\"<p>More info about loanss<\\/p>\",\"updated_at\":\"2020-01-23 10:25:38\"}', 'http://dev.chipmongland.com/admin/wordings/96', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:25:38', '2020-01-23 03:25:38'),
(5, 'App\\User', 1, 'updated', 'App\\Wording', 96, '{\"word\":\"<p>More info about loanss<\\/p>\",\"updated_at\":\"2020-01-23 10:25:38\"}', '{\"word\":\"<p>More info about loan<\\/p>\",\"updated_at\":\"2020-01-23 10:25:52\"}', 'http://dev.chipmongland.com/admin/wordings/96', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:25:52', '2020-01-23 03:25:52'),
(6, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:35:09', '2020-01-23 03:35:09'),
(7, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 03:39:02', '2020-01-23 03:39:02'),
(8, 'App\\User', 1, 'deleted', 'App\\Wording', 99, '{\"id\":99,\"word\":\"\",\"created_at\":\"2020-01-16 03:05:39\",\"updated_at\":\"2020-01-24 01:21:29\"}', '[]', 'http://dev.chipmongland.com/admin/wordings/99', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 18:21:39', '2020-01-23 18:21:39'),
(9, 'App\\User', 1, 'created', 'App\\Article', 30, '[]', '{\"title\":\"Terms and Condition\",\"detail\":\"<p>Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.<\\/p>\",\"slug\":null,\"attachment\":null,\"deleted_at\":null,\"logo\":null,\"article_type_id\":null,\"updated_at\":\"2020-01-24 01:23:52\",\"created_at\":\"2020-01-24 01:23:52\",\"id\":30}', 'http://dev.chipmongland.com/admin/articles', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 18:23:52', '2020-01-23 18:23:52'),
(10, 'App\\User', 1, 'updated', 'App\\Article', 30, '{\"detail\":\"<p>Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.<\\/p>\",\"updated_at\":\"2020-01-24 01:23:52\"}', '{\"detail\":\"<p>&lt;p&gt;Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Chip Mong Land unless otherwise defined in this Privacy Policy.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Information Collection and Use&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to name, phone number, email address. The information that we request will be retained by us and used as described in this privacy policy.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;The app does use third party services that may collect information used to identify you.&lt;\\/p&gt;<\\/p>\\n<p>&lt;div&gt;<\\/p>\\n<p>&lt;p&gt;Link to privacy policy of third party service providers used by the app&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;-&amp;nbsp;&lt;a href=\\\"https:\\/\\/www.google.com\\/policies\\/privacy\\/\\\" target=\\\"_blank\\\"&gt;Google Play Services&lt;\\/a&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;-&amp;nbsp;&lt;a href=\\\"https:\\/\\/www.facebook.com\\/about\\/privacy\\\" target=\\\"_blank\\\"&gt;Facebook&lt;\\/a&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;\\/div&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Log Data&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Cookies&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Service Providers&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We may employ third-party companies and individuals due to the following reasons:&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To facilitate our Service;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To provide the Service on our behalf;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To perform Service-related services; or&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To assist us in analyzing how our Service is used.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Security&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Links to Other Sites&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Children&rsquo;s Privacy&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Changes to This Privacy Policy&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Contact Us&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at sokunpisith.taing@chipmong.com, 13b Mao Tse Tung Blvd, Phnom Penh, Cambodia.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This privacy policy page was created at&amp;nbsp;&lt;a href=\\\"https:\\/\\/privacypolicytemplate.net\\/\\\" target=\\\"_blank\\\"&gt;privacypolicytemplate.net&lt;\\/a&gt;&amp;nbsp;and modified\\/generated by&amp;nbsp;&lt;a href=\\\"https:\\/\\/app-privacy-policy-generator.firebaseapp.com\\/\\\" target=\\\"_blank\\\"&gt;App Privacy Policy Generator&lt;\\/a&gt;&lt;\\/p&gt;<\\/p>\",\"updated_at\":\"2020-01-24 01:34:50\"}', 'http://dev.chipmongland.com/admin/articles/30', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 18:34:50', '2020-01-23 18:34:50'),
(11, 'App\\User', 1, 'updated', 'App\\Article', 30, '{\"title\":\"Terms and Condition\",\"detail\":\"<p>&lt;p&gt;Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Chip Mong Land unless otherwise defined in this Privacy Policy.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Information Collection and Use&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to name, phone number, email address. The information that we request will be retained by us and used as described in this privacy policy.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;The app does use third party services that may collect information used to identify you.&lt;\\/p&gt;<\\/p>\\n<p>&lt;div&gt;<\\/p>\\n<p>&lt;p&gt;Link to privacy policy of third party service providers used by the app&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;-&amp;nbsp;&lt;a href=\\\"https:\\/\\/www.google.com\\/policies\\/privacy\\/\\\" target=\\\"_blank\\\"&gt;Google Play Services&lt;\\/a&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;-&amp;nbsp;&lt;a href=\\\"https:\\/\\/www.facebook.com\\/about\\/privacy\\\" target=\\\"_blank\\\"&gt;Facebook&lt;\\/a&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;\\/div&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Log Data&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Cookies&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Service Providers&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We may employ third-party companies and individuals due to the following reasons:&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To facilitate our Service;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To provide the Service on our behalf;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To perform Service-related services; or&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;- To assist us in analyzing how our Service is used.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Security&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Links to Other Sites&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Children&rsquo;s Privacy&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Changes to This Privacy Policy&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;&lt;strong&gt;Contact Us&lt;\\/strong&gt;&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at sokunpisith.taing@chipmong.com, 13b Mao Tse Tung Blvd, Phnom Penh, Cambodia.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;This privacy policy page was created at&amp;nbsp;&lt;a href=\\\"https:\\/\\/privacypolicytemplate.net\\/\\\" target=\\\"_blank\\\"&gt;privacypolicytemplate.net&lt;\\/a&gt;&amp;nbsp;and modified\\/generated by&amp;nbsp;&lt;a href=\\\"https:\\/\\/app-privacy-policy-generator.firebaseapp.com\\/\\\" target=\\\"_blank\\\"&gt;App Privacy Policy Generator&lt;\\/a&gt;&lt;\\/p&gt;<\\/p>\",\"updated_at\":\"2020-01-24 01:34:50\"}', '{\"title\":\"Privacy Policy\",\"detail\":\"<p>Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.<\\/p>\\n<p>This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.<\\/p>\\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.<\\/p>\\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Chip Mong Land unless otherwise defined in this Privacy Policy.<\\/p>\\n<p><strong>Information Collection and Use<\\/strong><\\/p>\\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to name, phone number, email address. The information that we request will be retained by us and used as described in this privacy policy.<\\/p>\\n<p>The app does use third party services that may collect information used to identify you.<\\/p>\\n<p>Link to privacy policy of third party service providers used by the app<\\/p>\\n<p>-&nbsp;<a href=\\\"https:\\/\\/www.google.com\\/policies\\/privacy\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Google Play Services<\\/a><\\/p>\\n<p>-&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/about\\/privacy\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Facebook<\\/a><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><strong>Log Data<\\/strong><\\/p>\\n<p>We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.<\\/p>\\n<p><strong>Cookies<\\/strong><\\/p>\\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.<\\/p>\\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.<\\/p>\\n<p><strong>Service Providers<\\/strong><\\/p>\\n<p>We may employ third-party companies and individuals due to the following reasons:<\\/p>\\n<p>- To facilitate our Service;<\\/p>\\n<p>- To provide the Service on our behalf;<\\/p>\\n<p>- To perform Service-related services; or<\\/p>\\n<p>- To assist us in analyzing how our Service is used.&lt;\\/p&gt;<\\/p>\\n<p>We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.<\\/p>\\n<p><strong>Security<\\/strong><\\/p>\\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.<\\/p>\\n<p><strong>Links to Other Sites<\\/strong><\\/p>\\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.<\\/p>\\n<p><strong>Children&rsquo;s Privacy<\\/strong><\\/p>\\n<p>These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.<\\/p>\\n<p><strong>Changes to This Privacy Policy<\\/strong><\\/p>\\n<p>We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.<\\/p>\\n<p><strong>Contact Us<\\/strong><\\/p>\\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at sokunpisith.taing@chipmong.com, 13b Mao Tse Tung Blvd, Phnom Penh, Cambodia.<\\/p>\\n<p>This privacy policy page was created at&nbsp;<a href=\\\"https:\\/\\/privacypolicytemplate.net\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">privacypolicytemplate.net&nbsp;<\\/a>and modified\\/generated by&nbsp;<a href=\\\"href=&quot;https:\\/\\/app-privacy-policy-generator.firebaseapp.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">App Privacy Policy Generator<\\/a><\\/p>\",\"updated_at\":\"2020-01-24 02:07:37\"}', 'http://dev.chipmongland.com/admin/articles/30', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 19:07:37', '2020-01-23 19:07:37'),
(12, 'App\\User', 1, 'updated', 'App\\Location', 1, '{\"status\":0,\"updated_at\":\"2020-01-23 10:24:09\"}', '{\"status\":1,\"updated_at\":\"2020-01-24 03:36:00\"}', 'http://dev.chipmongland.com/admin/locations/1', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 20:36:00', '2020-01-23 20:36:00'),
(13, 'App\\User', 1, 'updated', 'App\\Article', 9, '{\"detail\":\"<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.<\\/span><\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses\\/home offices.<\\/span><\\/span><\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\"><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.<\\/span><\\/span><\\/span><\\/span><\\/p>\",\"updated_at\":\"2020-01-08 01:04:31\"}', '{\"detail\":\"<p>Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses\\/home offices.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.<\\/p>\",\"updated_at\":\"2020-01-24 04:27:23\"}', 'http://dev.chipmongland.com/admin/articles/9', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 21:27:23', '2020-01-23 21:27:23'),
(14, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 21:27:40', '2020-01-23 21:27:40'),
(15, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 21:37:41', '2020-01-23 21:37:41'),
(16, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 22:03:29', '2020-01-23 22:03:29'),
(17, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 22:07:38', '2020-01-23 22:07:38'),
(18, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 23:06:53', '2020-01-23 23:06:53'),
(19, 'App\\User', 1, 'updated', 'App\\Article', 10, '{\"detail\":\"<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">In line with the development policy of Phnom Penh municipality, Chip Mong Land is committed to constructing many kinds of private luxurious houses to meet the needs of the people with modern lifestyles. The Park Land Sen Sok is the first project of Chip Mong Land whose success will be made a reality only thanks to our customers&rsquo; supports as well as their trust and confidence in our construction capability.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">In the near future, Chip Mong Land will bring three new comprehensive residence construction projects to our customers. It is our commitment to continue building luxurious, safe and high-quality residences with fashionable designs in both the exterior and interior.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">On behalf of Chip Mong Land, I would like to express my profound thanks to all current and prospective customers for your support.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">I am looking forward to your further supports and having the opportunity to serve you.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">Oknha Madam Pheap Heak<\\/span><\\/p>\",\"updated_at\":\"2020-01-09 04:17:02\"}', '{\"detail\":\"<p>In line with the development policy of Phnom Penh<\\/p>\\n<p>municipality, Chip Mong Land is committed to constructing<\\/p>\\n<p>many kinds of private luxurious houses to meet the needs of<\\/p>\\n<p>the poeple with modern lifestyles. The Park Land Sen Sok is<\\/p>\\n<p>the first project of Chip Mong Land whose success will be<\\/p>\\n<p>made a reality only thanks to our customers\' supports as<\\/p>\\n<p>well as their trust and confidence in our construction<\\/p>\\n<p>capability.<\\/p>\\n<p>In the near future, Chip Mong Land will bring three new<\\/p>\\n<p>comprehensive residence construction projects to our<\\/p>\\n<p>customers. It is our commitment to continue building<\\/p>\\n<p>luxurious, safe and high-quality residences with fashionable<\\/p>\\n<p>designs in both the exterior and interior.<\\/p>\\n<p>On behalf of Chip Mong Land, I would like to express my<\\/p>\\n<p>profound thanks to all current and prospective customers for<\\/p>\\n<p>your support.<\\/p>\\n<p>I am looking forward to your further supports and having the<\\/p>\\n<p>opportunity to serve you.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p><strong>Oknha Mandam Pheap Heak<\\/strong><\\/p>\",\"updated_at\":\"2020-01-24 06:15:35\"}', 'http://dev.chipmongland.com/admin/articles/10', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-23 23:15:35', '2020-01-23 23:15:35'),
(20, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-24 00:45:46', '2020-01-24 00:45:46'),
(21, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-24 01:00:53', '2020-01-24 01:00:53'),
(22, 'App\\User', 2, 'updated', 'App\\Project', 3, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-23 10:21:23\"}', '{\"location\":{},\"updated_at\":\"2020-01-29 02:12:48\"}', 'http://dev.chipmongland.com/admin/projects/3', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:12:48', '2020-01-28 19:12:48'),
(23, 'App\\User', 2, 'updated', 'App\\Project', 2, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-21 10:23:56\"}', '{\"location\":{},\"updated_at\":\"2020-01-29 02:13:23\"}', 'http://dev.chipmongland.com/admin/projects/2', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:13:23', '2020-01-28 19:13:23'),
(24, 'App\\User', 2, 'updated', 'App\\Project', 1, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-21 10:22:28\"}', '{\"location\":{},\"updated_at\":\"2020-01-29 02:13:56\"}', 'http://dev.chipmongland.com/admin/projects/1', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:13:56', '2020-01-28 19:13:56'),
(25, 'App\\User', 3, 'updated', 'App\\Project', 2, '{\"start_price\":181900,\"to_price\":500000,\"title\":\"Experience where home becomes more than a place. Landmark 271 is the epitome of living experiences, with mega malls and hotels, a few steps away.\",\"location\":\"POINT(104.88897586218 11.629971999374)\",\"updated_at\":\"2020-01-29 02:13:23\"}', '{\"start_price\":\"220900\",\"to_price\":\"683897\",\"title\":\"Offering a wide variety of living arrangements, and a convenient community mall, Park Land 598 provides for everything in one place.\",\"location\":{},\"updated_at\":\"2020-01-29 02:37:50\"}', 'http://dev.chipmongland.com/admin/projects/2', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:37:50', '2020-01-28 19:37:50'),
(26, 'App\\User', 3, 'updated', 'App\\Project', 3, '{\"start_price\":49798,\"to_price\":500000,\"location\":\"POINT(104.89517712943 11.591045529271)\",\"updated_at\":\"2020-01-29 02:12:48\"}', '{\"start_price\":\"54000\",\"to_price\":\"282000\",\"location\":{},\"updated_at\":\"2020-01-29 02:39:09\"}', 'http://dev.chipmongland.com/admin/projects/3', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:39:09', '2020-01-28 19:39:09'),
(27, 'App\\User', 3, 'updated', 'App\\Project', 1, '{\"to_price\":499998,\"location\":\"POINT(104.92213869444 11.520692996373)\",\"updated_at\":\"2020-01-29 02:13:56\"}', '{\"to_price\":\"1050800\",\"location\":{},\"updated_at\":\"2020-01-29 02:41:04\"}', 'http://dev.chipmongland.com/admin/projects/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:41:04', '2020-01-28 19:41:04'),
(28, 'App\\User', 3, 'created', 'App\\Project', 5, '[]', '{\"name\":\"Landmark 60M\",\"start_price\":\"288800\",\"to_price\":\"1000800\",\"title\":\"With a total land area of approximately 100 Ha, Landmark 60M project is located right on Phnom Penh\\u2019s biggest boulevard, Hun Sen 60M boulevard\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">&nbsp;Premium properties with incredible perks. Land Mark 60M not only has a superstore, but also a hypermarket to provide convenience to all its residents.<\\/span><\\/p>\",\"logo\":\"projects\\\\January2020\\\\s5KMxYhKe0640JfA0XNv.jpg\",\"background\":\"projects\\\\January2020\\\\ke9zpw7Li9RCvlRto8lL.jpg\",\"address\":\"\",\"location\":{},\"location_id\":null,\"updated_at\":\"2020-01-29 02:43:45\",\"created_at\":\"2020-01-29 02:43:45\",\"id\":5}', 'http://dev.chipmongland.com/admin/projects', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:43:45', '2020-01-28 19:43:45'),
(29, 'App\\User', 3, 'updated', 'App\\Project', 5, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 02:43:45\",\"status\":null}', '{\"location\":{},\"updated_at\":\"2020-01-29 02:44:53\",\"status\":1}', 'http://dev.chipmongland.com/admin/projects/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:44:53', '2020-01-28 19:44:53'),
(30, 'App\\User', 3, 'created', 'App\\Facility', 4, '[]', '{\"title\":\"Book A Visit\",\"contact\":\"+855(0)61 997 888\",\"interest\":\"Interested?\",\"description\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Security, hyper market, club house, swimming pool, Park, hotel, Commercial, and office.<\\/span><\\/p>\",\"article\":\"<p>What are you waiting for? Start booking a visit today.<\\/p>\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 02:52:14\",\"created_at\":\"2020-01-29 02:52:14\",\"id\":4}', 'http://dev.chipmongland.com/admin/facilities', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:52:14', '2020-01-28 19:52:14'),
(31, 'App\\User', 3, 'updated', 'App\\Project', 5, '{\"location\":\"POINT(104.922364 11.580241)\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">&nbsp;Premium properties with incredible perks. Land Mark 60M not only has a superstore, but also a hypermarket to provide convenience to all its residents.<\\/span><\\/p>\",\"updated_at\":\"2020-01-29 02:44:53\"}', '{\"location\":{},\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Premium properties with incredible perks. Land Mark 60M not only has a superstore, but also a hypermarket to provide convenience to all its residents.<\\/span><\\/p>\",\"updated_at\":\"2020-01-29 02:54:21\"}', 'http://dev.chipmongland.com/admin/projects/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:54:21', '2020-01-28 19:54:21'),
(32, 'App\\User', 3, 'updated', 'App\\Project', 1, '{\"name\":\"Chip Mong Land 271\",\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 02:41:04\"}', '{\"name\":\"Landmark 271\",\"location\":{},\"updated_at\":\"2020-01-29 02:56:52\"}', 'http://dev.chipmongland.com/admin/projects/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 19:56:52', '2020-01-28 19:56:52'),
(33, 'App\\User', 3, 'created', 'App\\ProjectImage', 13, '[]', '{\"title\":\"Swimming Pool\",\"image\":\"project-images\\\\January2020\\\\hNewhz8to1kUpRm2JWu3.jpg\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 03:01:17\",\"created_at\":\"2020-01-29 03:01:17\",\"id\":13}', 'http://dev.chipmongland.com/admin/project-images/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:01:17', '2020-01-28 20:01:17'),
(34, 'App\\User', 3, 'created', 'App\\ProjectImage', 14, '[]', '{\"title\":\"Garden\",\"image\":\"project-images\\\\January2020\\\\LZ1abPitMCGT10nSEvOm.jpg\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 03:01:40\",\"created_at\":\"2020-01-29 03:01:40\",\"id\":14}', 'http://dev.chipmongland.com/admin/project-images/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:01:40', '2020-01-28 20:01:40'),
(35, 'App\\User', 3, 'created', 'App\\ProjectImage', 15, '[]', '{\"title\":\"Gym\",\"image\":\"project-images\\\\January2020\\\\a5QNep5y8H5xfZwee00w.jpg\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 03:02:14\",\"created_at\":\"2020-01-29 03:02:14\",\"id\":15}', 'http://dev.chipmongland.com/admin/project-images/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:02:14', '2020-01-28 20:02:14'),
(36, 'App\\User', 3, 'created', 'App\\ProjectImage', 16, '[]', '{\"title\":\"Hotel\",\"image\":\"project-images\\\\January2020\\\\RomqS98DOkcclQtdaRpy.jpg\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 03:02:58\",\"created_at\":\"2020-01-29 03:02:58\",\"id\":16}', 'http://dev.chipmongland.com/admin/project-images/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:02:58', '2020-01-28 20:02:58'),
(37, 'App\\User', 3, 'created', 'App\\ProjectSize', 8, '[]', '{\"title\":\"TYPE OF UNITS\",\"total\":\"5\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 03:15:58\",\"created_at\":\"2020-01-29 03:15:58\",\"id\":8}', 'http://dev.chipmongland.com/admin/project-sizes/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:15:58', '2020-01-28 20:15:58'),
(38, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:16:39', '2020-01-28 20:16:39'),
(39, 'App\\User', 3, 'created', 'App\\ProjectSize', 9, '[]', '{\"title\":\"FACILITIES\",\"total\":\"5\",\"project_id\":\"5\",\"updated_at\":\"2020-01-29 03:17:10\",\"created_at\":\"2020-01-29 03:17:10\",\"id\":9}', 'http://dev.chipmongland.com/admin/project-sizes/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:17:11', '2020-01-28 20:17:11'),
(40, 'App\\User', 3, 'created', 'App\\Property', 14, '[]', '{\"name\":\"QUEEN VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"5\",\"layout\":\"[\\\"properties\\/QUEEN VILLA.jpg\\\"]\",\"updated_at\":\"2020-01-29 03:21:15\",\"created_at\":\"2020-01-29 03:21:15\",\"id\":14}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:21:15', '2020-01-28 20:21:15');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(41, 'App\\User', 1, 'updated', 'App\\Article', 7, '{\"detail\":\"<p style=\\\"color: #000000; font-size: 10px;\\\">Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14<sup>th<\\/sup>&nbsp;November 2019.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Park Land 50M offers many villa types such as Queen Villa, Queen A Villa, Twin Villa, Link A Villa, and their new house types like Queen B Villa, Shop House AI and Shop House AII. In addition, this property plant also offers club house, swimming pool, kid&rsquo;s playground, greenery garden, within a very big commercial street which provide convenience for transportation as well as accessibility to many other main road around the project.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">For more information, please contact 061 997 888&nbsp; \\u200b|&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/chipmongland\\/\\\">https:\\/\\/www.facebook.com\\/chipmongland\\/<\\/a>&nbsp;|&nbsp;<a href=\\\"http:\\/\\/www.chipmongland.com\\/\\\">www.chipmongland.com<\\/a><\\/p>\",\"updated_at\":\"2020-01-09 03:53:26\"}', '{\"detail\":\"<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.<\\/p>\\n<p>Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.<\\/p>\\n<p>This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.<\\/p>\\n<p>Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.&lt;\\/p&gt;<\\/p>\\n<p>Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.&lt;\\/p&gt;<\\/p>\\n<p>For more information, please contact 061 997 888 |&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/chipmongland\\/\\\">https:\\/\\/www.facebook.com\\/chipmongland<\\/a>&nbsp;|&nbsp;<a href=\\\"http:\\/\\/www.chipmongland.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">www.chipmongland.com<\\/a><\\/p>\",\"updated_at\":\"2020-01-29 03:24:13\"}', 'http://dev.chipmongland.com/admin/articles/7', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:24:13', '2020-01-28 20:24:13'),
(42, 'App\\User', 3, 'created', 'App\\Property', 15, '[]', '{\"name\":\"QUEEN A VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"5\",\"layout\":\"[\\\"properties\\/QUEEN A VILLA.jpg\\\"]\",\"updated_at\":\"2020-01-29 03:24:23\",\"created_at\":\"2020-01-29 03:24:23\",\"id\":15}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:24:23', '2020-01-28 20:24:23'),
(43, 'App\\User', 1, 'updated', 'App\\Article', 7, '{\"detail\":\"<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.<\\/p>\\n<p>Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.<\\/p>\\n<p>This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.<\\/p>\\n<p>Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.&lt;\\/p&gt;<\\/p>\\n<p>Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.&lt;\\/p&gt;<\\/p>\\n<p>For more information, please contact 061 997 888 |&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/chipmongland\\/\\\">https:\\/\\/www.facebook.com\\/chipmongland<\\/a>&nbsp;|&nbsp;<a href=\\\"http:\\/\\/www.chipmongland.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">www.chipmongland.com<\\/a><\\/p>\",\"updated_at\":\"2020-01-29 03:24:13\"}', '{\"detail\":\"<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.<\\/p>\\n<p>Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.<\\/p>\\n<p>This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.<\\/p>\\n<p>Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.<\\/p>\\n<p>Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.<\\/p>\\n<p>For more information, please contact 061 997 888 |&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/chipmongland\\/\\\">https:\\/\\/www.facebook.com\\/chipmongland<\\/a>&nbsp;|&nbsp;<a href=\\\"http:\\/\\/www.chipmongland.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">www.chipmongland.com<\\/a><\\/p>\",\"updated_at\":\"2020-01-29 03:24:43\"}', 'http://dev.chipmongland.com/admin/articles/7', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:24:43', '2020-01-28 20:24:43'),
(44, 'App\\User', 3, 'created', 'App\\Property', 16, '[]', '{\"name\":\"TWIN VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"5\",\"layout\":\"[\\\"properties\\/Twin Villa.jpg\\\"]\",\"updated_at\":\"2020-01-29 03:33:13\",\"created_at\":\"2020-01-29 03:33:13\",\"id\":16}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:33:13', '2020-01-28 20:33:13'),
(45, 'App\\User', 3, 'created', 'App\\Property', 17, '[]', '{\"name\":\"LINK A VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"5\",\"layout\":\"[\\\"properties\\/Link House A.jpg\\\"]\",\"updated_at\":\"2020-01-29 03:34:12\",\"created_at\":\"2020-01-29 03:34:12\",\"id\":17}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:34:12', '2020-01-28 20:34:12'),
(46, 'App\\User', 1, 'updated', 'App\\Project', 3, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 02:39:09\"}', '{\"location\":{},\"updated_at\":\"2020-01-29 03:35:45\"}', 'http://dev.chipmongland.com/admin/projects/3', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:35:45', '2020-01-28 20:35:45'),
(47, 'App\\User', 1, 'updated', 'App\\Project', 2, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 02:37:50\"}', '{\"location\":{},\"updated_at\":\"2020-01-29 03:36:17\"}', 'http://dev.chipmongland.com/admin/projects/2', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:36:17', '2020-01-28 20:36:17'),
(48, 'App\\User', 3, 'created', 'App\\Property', 18, '[]', '{\"name\":\"SHOP HOUSE\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Comfortable and affordable shop houses offer all you need for you and your family to call a home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"5\",\"layout\":\"[\\\"properties\\/Shop-House-60m.jpg\\\"]\",\"updated_at\":\"2020-01-29 03:38:39\",\"created_at\":\"2020-01-29 03:38:39\",\"id\":18}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:38:39', '2020-01-28 20:38:39'),
(49, 'App\\User', 3, 'created', 'App\\RoomFeature', 62, '[]', '{\"title\":\"House Floor\",\"total\":\"3\",\"property_id\":\"18\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 03:46:08\",\"created_at\":\"2020-01-29 03:46:08\",\"id\":62}', 'http://dev.chipmongland.com/admin/room-features/18', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:46:08', '2020-01-28 20:46:08'),
(50, 'App\\User', 3, 'created', 'App\\RoomFeature', 63, '[]', '{\"title\":\"Bedrooms\",\"total\":\"6\",\"property_id\":\"18\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 03:46:54\",\"created_at\":\"2020-01-29 03:46:54\",\"id\":63}', 'http://dev.chipmongland.com/admin/room-features/18', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:46:54', '2020-01-28 20:46:54'),
(51, 'App\\User', 3, 'created', 'App\\RoomFeature', 64, '[]', '{\"title\":\"Parking\",\"total\":\"1\",\"property_id\":\"18\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 03:47:29\",\"created_at\":\"2020-01-29 03:47:29\",\"id\":64}', 'http://dev.chipmongland.com/admin/room-features/18', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:47:29', '2020-01-28 20:47:29'),
(52, 'App\\User', 3, 'created', 'App\\RoomFeature', 65, '[]', '{\"title\":\"Shop Area\",\"total\":\"1\",\"property_id\":\"18\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 03:48:04\",\"created_at\":\"2020-01-29 03:48:04\",\"id\":65}', 'http://dev.chipmongland.com/admin/room-features/18', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:48:04', '2020-01-28 20:48:04'),
(53, 'App\\User', 3, 'created', 'App\\RoomFeature', 66, '[]', '{\"title\":\"Toilets\",\"total\":\"7\",\"property_id\":\"18\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 03:48:45\",\"created_at\":\"2020-01-29 03:48:45\",\"id\":66}', 'http://dev.chipmongland.com/admin/room-features/18', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 20:48:45', '2020-01-28 20:48:45'),
(54, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:03:45', '2020-01-28 21:03:45'),
(55, 'App\\User', 3, 'updated', 'App\\RoomFeature', 46, '{\"title\":\"5 Bedroom\",\"updated_at\":\"2020-01-21 09:57:07\"}', '{\"title\":\"Bedroom\",\"updated_at\":\"2020-01-29 04:04:12\"}', 'http://dev.chipmongland.com/admin/room-features/46/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:04:12', '2020-01-28 21:04:12'),
(56, 'App\\User', 1, 'updated', 'App\\Article', 7, '{\"detail\":\"<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.<\\/p>\\n<p>Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.<\\/p>\\n<p>This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.<\\/p>\\n<p>Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.<\\/p>\\n<p>Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.<\\/p>\\n<p>For more information, please contact 061 997 888 |&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/chipmongland\\/\\\">https:\\/\\/www.facebook.com\\/chipmongland<\\/a>&nbsp;|&nbsp;<a href=\\\"http:\\/\\/www.chipmongland.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">www.chipmongland.com<\\/a><\\/p>\",\"updated_at\":\"2020-01-29 03:24:43\"}', '{\"detail\":\"<p>Phnom Penh: Chip Mong Land, which is the biggest property developer in Cambodia has launched groundbreaking event of their new enormous project &ldquo;Park Land 50M&rdquo; early this morning of 14&lt;sup&gt;th&lt;\\/sup&gt; November 2019.<\\/p>\\n<p>Chip Mong Supermarket is coming to Park Land 50M project to fulfill the needs of modern living of customers within the project and also people in the surrounding area, which create perfect business opportunity for our shophouse owners within Park Land 50M.<\\/p>\\n<p>Park Land 50M currently locates on street 50M, the second biggest connecting road, corner by street 30M (Prey Sar) located in Chamkadong area which is a very potential and growing with many development plans.<\\/p>\\n<p>This project is only 3 minutes away from Chomkadong market, 10 minutes from Chip Mong 60M supermarket, AEON III as well as 15 minutes from Chip Mong 271 Megamall.<\\/p>\\n<p>Currently, Chip Mong Land already has 10 enormous property plants as such: Landmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, Park Land Condo TK, Land Riche Chomkadong, Park Land 50M, and Grand Phnom Penh, which all located in potential location across Phnom Penh.<\\/p>\\n<p>Stay tuned for more information, as Park Land 50M will be opening on sale to customer very soon.<\\/p>\\n<p>For more information, please contact 061 997 888 |&nbsp;<a href=\\\"https:\\/\\/www.facebook.com\\/chipmongland\\/\\\">https:\\/\\/www.facebook.com\\/chipmongland<\\/a>&nbsp;|&nbsp;<a href=\\\"http:\\/\\/www.chipmongland.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">www.chipmongland.com<\\/a><\\/p>\",\"updated_at\":\"2020-01-29 04:04:34\"}', 'http://dev.chipmongland.com/admin/articles/7', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:04:34', '2020-01-28 21:04:34'),
(57, 'App\\User', 3, 'created', 'App\\RoomFeature', 67, '[]', '{\"title\":\"Bedroom\",\"total\":\"5\",\"property_id\":\"14\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 04:13:49\",\"created_at\":\"2020-01-29 04:13:49\",\"id\":67}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:13:49', '2020-01-28 21:13:49'),
(58, 'App\\User', 3, 'created', 'App\\RoomFeature', 68, '[]', '{\"title\":\"Family Room\",\"total\":\"1\",\"property_id\":\"14\",\"icon\":\"room-features\\/kitchen.png\",\"updated_at\":\"2020-01-29 04:14:58\",\"created_at\":\"2020-01-29 04:14:58\",\"id\":68}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:14:58', '2020-01-28 21:14:58'),
(59, 'App\\User', 3, 'created', 'App\\RoomFeature', 69, '[]', '{\"title\":\"Toilets\",\"total\":\"6\",\"property_id\":\"14\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 04:16:05\",\"created_at\":\"2020-01-29 04:16:05\",\"id\":69}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:16:05', '2020-01-28 21:16:05'),
(60, 'App\\User', 3, 'created', 'App\\RoomFeature', 70, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"14\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 04:16:51\",\"created_at\":\"2020-01-29 04:16:51\",\"id\":70}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:16:51', '2020-01-28 21:16:51'),
(61, 'App\\User', 3, 'created', 'App\\RoomFeature', 71, '[]', '{\"title\":\"Maid room\",\"total\":\"1\",\"property_id\":\"14\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 04:21:04\",\"created_at\":\"2020-01-29 04:21:04\",\"id\":71}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:21:04', '2020-01-28 21:21:04'),
(62, 'App\\User', 3, 'created', 'App\\RoomFeature', 72, '[]', '{\"title\":\"Parking\",\"total\":\"2\",\"property_id\":\"14\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 04:22:00\",\"created_at\":\"2020-01-29 04:22:00\",\"id\":72}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:22:00', '2020-01-28 21:22:00'),
(63, 'App\\User', 1, 'updated', 'App\\Project', 2, '{\"background\":\"projects\\\\December2019\\\\omYfe9VkFdT62WL5bLAG.jpg\",\"updated_at\":\"2020-01-29 03:36:17\"}', '{\"background\":null,\"updated_at\":\"2020-01-29 04:26:22\"}', 'http://dev.chipmongland.com/admin/projects/remove', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:26:22', '2020-01-28 21:26:22'),
(64, 'App\\User', 1, 'updated', 'App\\Project', 2, '{\"background\":null,\"location\":\"POINT(104.88914752356 11.63005606794)\",\"updated_at\":\"2020-01-29 04:26:22\"}', '{\"background\":\"projects\\\\January2020\\\\G0bu5pLFxkRU0S028gfs.jpg\",\"location\":{},\"updated_at\":\"2020-01-29 04:26:32\"}', 'http://dev.chipmongland.com/admin/projects/2', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:26:32', '2020-01-28 21:26:32'),
(65, 'App\\User', 3, 'created', 'App\\RoomFeature', 73, '[]', '{\"title\":\"Bedroom\",\"total\":\"5\",\"property_id\":\"15\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 04:28:29\",\"created_at\":\"2020-01-29 04:28:29\",\"id\":73}', 'http://dev.chipmongland.com/admin/room-features/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:28:29', '2020-01-28 21:28:29'),
(66, 'App\\User', 3, 'created', 'App\\RoomFeature', 74, '[]', '{\"title\":\"Family room \",\"total\":\"1\",\"property_id\":\"15\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 04:28:52\",\"created_at\":\"2020-01-29 04:28:52\",\"id\":74}', 'http://dev.chipmongland.com/admin/room-features/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:28:52', '2020-01-28 21:28:52'),
(67, 'App\\User', 3, 'created', 'App\\RoomFeature', 75, '[]', '{\"title\":\"Bathrooms\",\"total\":\"6\",\"property_id\":\"15\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 04:29:16\",\"created_at\":\"2020-01-29 04:29:16\",\"id\":75}', 'http://dev.chipmongland.com/admin/room-features/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:29:16', '2020-01-28 21:29:16'),
(68, 'App\\User', 3, 'created', 'App\\RoomFeature', 76, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"15\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 04:29:46\",\"created_at\":\"2020-01-29 04:29:46\",\"id\":76}', 'http://dev.chipmongland.com/admin/room-features/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:29:46', '2020-01-28 21:29:46'),
(69, 'App\\User', 3, 'created', 'App\\RoomFeature', 77, '[]', '{\"title\":\"Maid room\",\"total\":\"1\",\"property_id\":\"15\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 04:30:06\",\"created_at\":\"2020-01-29 04:30:06\",\"id\":77}', 'http://dev.chipmongland.com/admin/room-features/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:30:06', '2020-01-28 21:30:06'),
(70, 'App\\User', 3, 'created', 'App\\RoomFeature', 78, '[]', '{\"title\":\"Parking\",\"total\":\"2\",\"property_id\":\"15\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 04:30:23\",\"created_at\":\"2020-01-29 04:30:23\",\"id\":78}', 'http://dev.chipmongland.com/admin/room-features/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:30:23', '2020-01-28 21:30:23'),
(71, 'App\\User', 3, 'updated', 'App\\RoomFeature', 72, '{\"total\":\"2\",\"updated_at\":\"2020-01-29 04:22:00\"}', '{\"total\":\"4\",\"updated_at\":\"2020-01-29 04:35:49\"}', 'http://dev.chipmongland.com/admin/room-features/72/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:35:49', '2020-01-28 21:35:49'),
(72, 'App\\User', 3, 'created', 'App\\RoomFeature', 79, '[]', '{\"title\":\"Bedroom\",\"total\":\"4\",\"property_id\":\"16\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 04:37:32\",\"created_at\":\"2020-01-29 04:37:32\",\"id\":79}', 'http://dev.chipmongland.com/admin/room-features/16', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:37:32', '2020-01-28 21:37:32'),
(73, 'App\\User', 3, 'created', 'App\\RoomFeature', 80, '[]', '{\"title\":\"Toilet\",\"total\":\"5\",\"property_id\":\"16\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 04:38:01\",\"created_at\":\"2020-01-29 04:38:01\",\"id\":80}', 'http://dev.chipmongland.com/admin/room-features/16', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:38:01', '2020-01-28 21:38:01'),
(74, 'App\\User', 3, 'created', 'App\\RoomFeature', 81, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"16\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 04:38:29\",\"created_at\":\"2020-01-29 04:38:29\",\"id\":81}', 'http://dev.chipmongland.com/admin/room-features/16', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:38:29', '2020-01-28 21:38:29'),
(75, 'App\\User', 3, 'created', 'App\\RoomFeature', 82, '[]', '{\"title\":\"Parking\",\"total\":\"1\",\"property_id\":\"16\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 04:39:02\",\"created_at\":\"2020-01-29 04:39:02\",\"id\":82}', 'http://dev.chipmongland.com/admin/room-features/16', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:39:02', '2020-01-28 21:39:02'),
(76, 'App\\User', 3, 'created', 'App\\RoomFeature', 83, '[]', '{\"title\":\"Bedroom\",\"total\":\"4\",\"property_id\":\"17\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 04:40:10\",\"created_at\":\"2020-01-29 04:40:10\",\"id\":83}', 'http://dev.chipmongland.com/admin/room-features/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:40:10', '2020-01-28 21:40:10'),
(77, 'App\\User', 3, 'created', 'App\\RoomFeature', 84, '[]', '{\"title\":\"House Floor\",\"total\":\"3\",\"property_id\":\"17\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 04:41:04\",\"created_at\":\"2020-01-29 04:41:04\",\"id\":84}', 'http://dev.chipmongland.com/admin/room-features/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:41:05', '2020-01-28 21:41:05'),
(78, 'App\\User', 3, 'created', 'App\\RoomFeature', 85, '[]', '{\"title\":\"Parking\",\"total\":\"1\",\"property_id\":\"17\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 04:41:28\",\"created_at\":\"2020-01-29 04:41:28\",\"id\":85}', 'http://dev.chipmongland.com/admin/room-features/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:41:28', '2020-01-28 21:41:28'),
(79, 'App\\User', 3, 'created', 'App\\RoomFeature', 86, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"17\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 04:42:30\",\"created_at\":\"2020-01-29 04:42:30\",\"id\":86}', 'http://dev.chipmongland.com/admin/room-features/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:42:30', '2020-01-28 21:42:30'),
(80, 'App\\User', 3, 'created', 'App\\RoomFeature', 87, '[]', '{\"title\":\"Bathroom\",\"total\":\"5\",\"property_id\":\"17\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 04:43:09\",\"created_at\":\"2020-01-29 04:43:09\",\"id\":87}', 'http://dev.chipmongland.com/admin/room-features/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-28 21:43:09', '2020-01-28 21:43:09'),
(81, 'App\\User', 3, 'created', 'App\\Project', 6, '[]', '{\"name\":\"Park Land 50M\",\"start_price\":\"168899\",\"to_price\":\"588898\",\"title\":\"Offering a wide variety of living arrangements and a convenient community mall, Park Land 50M provides for everything in one place. \",\"detail\":\"<p>Situated along street 50M corner with street 30M (Preysar street) offers a wide range of homes including Queen Villa, Queen A Villa, Queen B Villa, Twin Villa, Link A Villa and Shop House. Inside the project, there\'s also a very big commercial street, shopping mall, club house, kid\'s playground, and garden. This project will also be connected to public road to allow in-flow of traffic to project in order to support people running business in the project.<\\/p>\",\"logo\":\"projects\\\\January2020\\\\8tU3WFjKpCjvZclFRAcJ.jpg\",\"background\":null,\"address\":\"\",\"location\":{},\"location_id\":null,\"updated_at\":\"2020-01-29 07:05:58\",\"created_at\":\"2020-01-29 07:05:58\",\"id\":6}', 'http://dev.chipmongland.com/admin/projects', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:05:58', '2020-01-29 00:05:58'),
(82, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 07:05:58\",\"location_id\":null,\"status\":null}', '{\"location\":{},\"updated_at\":\"2020-01-29 07:06:54\",\"location_id\":\"1\",\"status\":0}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:06:54', '2020-01-29 00:06:54'),
(83, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 07:06:54\"}', '{\"location\":{},\"updated_at\":\"2020-01-29 07:14:21\"}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:14:21', '2020-01-29 00:14:21'),
(84, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"background\":null,\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 07:14:21\"}', '{\"background\":\"projects\\\\January2020\\\\MsK8pdrOfRPQzXg7l4fy.png\",\"location\":{},\"updated_at\":\"2020-01-29 07:25:55\"}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:25:55', '2020-01-29 00:25:55'),
(85, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"background\":\"projects\\\\January2020\\\\MsK8pdrOfRPQzXg7l4fy.png\",\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 07:25:55\"}', '{\"background\":\"projects\\\\January2020\\\\xOSKVmWr9KNz02Pa6sWy.jpg\",\"location\":{},\"updated_at\":\"2020-01-29 07:28:51\"}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:28:51', '2020-01-29 00:28:51'),
(86, 'App\\User', 3, 'created', 'App\\ProjectImage', 17, '[]', '{\"title\":\"Swimming Pool \",\"image\":\"project-images\\\\January2020\\\\7zv4lg2eDNyazCUybWpd.jpg\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:29:53\",\"created_at\":\"2020-01-29 07:29:53\",\"id\":17}', 'http://dev.chipmongland.com/admin/project-images/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:29:53', '2020-01-29 00:29:53'),
(87, 'App\\User', 3, 'updated', 'App\\ProjectImage', 17, '{\"title\":\"Swimming Pool \",\"updated_at\":\"2020-01-29 07:29:53\"}', '{\"title\":\"Gym\",\"updated_at\":\"2020-01-29 07:30:23\"}', 'http://dev.chipmongland.com/admin/project-images/17/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:30:23', '2020-01-29 00:30:23'),
(88, 'App\\User', 3, 'created', 'App\\ProjectImage', 18, '[]', '{\"title\":\"Garden\",\"image\":\"project-images\\\\January2020\\\\9N3wISxLOKv9R0CU2Ith.jpg\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:30:58\",\"created_at\":\"2020-01-29 07:30:58\",\"id\":18}', 'http://dev.chipmongland.com/admin/project-images/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:30:58', '2020-01-29 00:30:58'),
(89, 'App\\User', 3, 'created', 'App\\ProjectImage', 19, '[]', '{\"title\":\"Swimming Pool\",\"image\":\"project-images\\\\January2020\\\\EgYyeB2SQ7hgL4mWQUkT.jpg\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:31:27\",\"created_at\":\"2020-01-29 07:31:27\",\"id\":19}', 'http://dev.chipmongland.com/admin/project-images/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:31:27', '2020-01-29 00:31:27'),
(90, 'App\\User', 3, 'created', 'App\\ProjectImage', 20, '[]', '{\"title\":\"Clubhouse\",\"image\":\"project-images\\\\January2020\\\\lygQqdhsrJMSGLC7ZOzZ.jpg\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:31:48\",\"created_at\":\"2020-01-29 07:31:48\",\"id\":20}', 'http://dev.chipmongland.com/admin/project-images/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:31:48', '2020-01-29 00:31:48'),
(91, 'App\\User', 3, 'created', 'App\\ProjectSize', 10, '[]', '{\"title\":\"TYPE OF UNITS\",\"total\":\"6\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:33:27\",\"created_at\":\"2020-01-29 07:33:27\",\"id\":10}', 'http://dev.chipmongland.com/admin/project-sizes/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:33:27', '2020-01-29 00:33:27'),
(92, 'App\\User', 3, 'created', 'App\\ProjectSize', 11, '[]', '{\"title\":\"FACILITIES\",\"total\":\"5\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:33:43\",\"created_at\":\"2020-01-29 07:33:43\",\"id\":11}', 'http://dev.chipmongland.com/admin/project-sizes/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:33:43', '2020-01-29 00:33:43'),
(93, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 07:28:51\",\"status\":0}', '{\"location\":{},\"updated_at\":\"2020-01-29 07:34:34\",\"status\":1}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:34:34', '2020-01-29 00:34:34'),
(94, 'App\\User', 3, 'created', 'App\\Facility', 5, '[]', '{\"title\":\"Book A Visit\",\"contact\":\"+855(0)61 997 888\",\"interest\":\"Interested?\",\"description\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Security, hyper market, club house, swimming pool, Park, and Commercial road<\\/span><\\/p>\",\"article\":\"<p>What are you waiting for? Start booking a visit today.<\\/p>\",\"project_id\":\"6\",\"updated_at\":\"2020-01-29 07:38:13\",\"created_at\":\"2020-01-29 07:38:13\",\"id\":5}', 'http://dev.chipmongland.com/admin/facilities', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 00:38:13', '2020-01-29 00:38:13'),
(95, 'App\\User', 3, 'created', 'App\\Property', 19, '[]', '{\"name\":\"QUEEN VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"6\",\"layout\":\"[\\\"properties\\/QUEEN VILLA.jpg\\\"]\",\"updated_at\":\"2020-01-29 08:56:48\",\"created_at\":\"2020-01-29 08:56:48\",\"id\":19}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 01:56:48', '2020-01-29 01:56:48'),
(96, 'App\\User', 3, 'created', 'App\\Property', 20, '[]', '{\"name\":\"QUEEN A VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"6\",\"layout\":\"[\\\"properties\\/QUEEN A VILLA.jpg\\\"]\",\"updated_at\":\"2020-01-29 08:57:51\",\"created_at\":\"2020-01-29 08:57:51\",\"id\":20}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 01:57:51', '2020-01-29 01:57:51'),
(97, 'App\\User', 3, 'created', 'App\\Property', 21, '[]', '{\"name\":\"QUEEN B VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"6\",\"layout\":\"[\\\"properties\\/QB.jpg\\\"]\",\"updated_at\":\"2020-01-29 08:59:30\",\"created_at\":\"2020-01-29 08:59:30\",\"id\":21}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 01:59:30', '2020-01-29 01:59:30'),
(98, 'App\\User', 3, 'created', 'App\\Property', 22, '[]', '{\"name\":\"TWIN VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"6\",\"layout\":\"[\\\"properties\\/Twin Villa.jpg\\\"]\",\"updated_at\":\"2020-01-29 09:01:17\",\"created_at\":\"2020-01-29 09:01:17\",\"id\":22}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:01:17', '2020-01-29 02:01:17'),
(99, 'App\\User', 3, 'created', 'App\\Property', 23, '[]', '{\"name\":\"LINK A VILLA\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"6\",\"layout\":\"[\\\"properties\\/Link House A.jpg\\\"]\",\"updated_at\":\"2020-01-29 09:02:26\",\"created_at\":\"2020-01-29 09:02:26\",\"id\":23}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:02:26', '2020-01-29 02:02:26'),
(100, 'App\\User', 3, 'created', 'App\\Property', 24, '[]', '{\"name\":\"SHOP HOUSE\",\"detail\":\"<p><span style=\\\"color: #000000; font-size: 10px;\\\">Comfortable and affordable shop houses offer all you need for you and your family to call a home<\\/span><\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"6\",\"layout\":\"[\\\"properties\\/Shop House 50M-01.png\\\"]\",\"updated_at\":\"2020-01-29 09:08:51\",\"created_at\":\"2020-01-29 09:08:51\",\"id\":24}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:08:51', '2020-01-29 02:08:51'),
(101, 'App\\User', 3, 'created', 'App\\RoomFeature', 88, '[]', '{\"title\":\"Bedroom\",\"total\":\"5\",\"property_id\":\"19\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 09:27:37\",\"created_at\":\"2020-01-29 09:27:37\",\"id\":88}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:27:37', '2020-01-29 02:27:37'),
(102, 'App\\User', 3, 'created', 'App\\RoomFeature', 89, '[]', '{\"title\":\"Family Room\",\"total\":\"1\",\"property_id\":\"19\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:28:10\",\"created_at\":\"2020-01-29 09:28:10\",\"id\":89}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:28:10', '2020-01-29 02:28:10'),
(103, 'App\\User', 3, 'created', 'App\\RoomFeature', 90, '[]', '{\"title\":\"Toilet\",\"total\":\"6\",\"property_id\":\"19\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 09:28:49\",\"created_at\":\"2020-01-29 09:28:49\",\"id\":90}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:28:49', '2020-01-29 02:28:49'),
(104, 'App\\User', 3, 'created', 'App\\RoomFeature', 91, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"19\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 09:29:23\",\"created_at\":\"2020-01-29 09:29:23\",\"id\":91}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:29:23', '2020-01-29 02:29:23'),
(105, 'App\\User', 3, 'created', 'App\\RoomFeature', 92, '[]', '{\"title\":\"Maid room\",\"total\":\"1\",\"property_id\":\"19\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:30:00\",\"created_at\":\"2020-01-29 09:30:00\",\"id\":92}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:30:00', '2020-01-29 02:30:00'),
(106, 'App\\User', 3, 'created', 'App\\RoomFeature', 93, '[]', '{\"title\":\"Parking\",\"total\":\"4\",\"property_id\":\"19\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:30:31\",\"created_at\":\"2020-01-29 09:30:31\",\"id\":93}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:30:31', '2020-01-29 02:30:31'),
(107, 'App\\User', 3, 'created', 'App\\RoomFeature', 94, '[]', '{\"title\":\"Bedroom\",\"total\":\"5\",\"property_id\":\"20\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 09:37:30\",\"created_at\":\"2020-01-29 09:37:30\",\"id\":94}', 'http://dev.chipmongland.com/admin/room-features/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:37:30', '2020-01-29 02:37:30'),
(108, 'App\\User', 3, 'created', 'App\\RoomFeature', 95, '[]', '{\"title\":\"Family Room\",\"total\":\"1\",\"property_id\":\"20\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:38:02\",\"created_at\":\"2020-01-29 09:38:02\",\"id\":95}', 'http://dev.chipmongland.com/admin/room-features/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:38:02', '2020-01-29 02:38:02'),
(109, 'App\\User', 3, 'created', 'App\\RoomFeature', 96, '[]', '{\"title\":\"Toilet\",\"total\":\"6\",\"property_id\":\"20\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 09:38:47\",\"created_at\":\"2020-01-29 09:38:47\",\"id\":96}', 'http://dev.chipmongland.com/admin/room-features/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:38:47', '2020-01-29 02:38:47'),
(110, 'App\\User', 3, 'created', 'App\\RoomFeature', 97, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"20\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 09:39:10\",\"created_at\":\"2020-01-29 09:39:10\",\"id\":97}', 'http://dev.chipmongland.com/admin/room-features/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:39:10', '2020-01-29 02:39:10'),
(111, 'App\\User', 3, 'created', 'App\\RoomFeature', 98, '[]', '{\"title\":\"Maid room\",\"total\":\"1\",\"property_id\":\"20\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 09:39:37\",\"created_at\":\"2020-01-29 09:39:37\",\"id\":98}', 'http://dev.chipmongland.com/admin/room-features/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:39:37', '2020-01-29 02:39:37');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(112, 'App\\User', 3, 'created', 'App\\RoomFeature', 99, '[]', '{\"title\":\"Parking\",\"total\":\"2\",\"property_id\":\"20\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:40:01\",\"created_at\":\"2020-01-29 09:40:01\",\"id\":99}', 'http://dev.chipmongland.com/admin/room-features/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:40:01', '2020-01-29 02:40:01'),
(113, 'App\\User', 3, 'created', 'App\\RoomFeature', 100, '[]', '{\"title\":\"Bedroom\",\"total\":\"5\",\"property_id\":\"21\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 09:41:47\",\"created_at\":\"2020-01-29 09:41:47\",\"id\":100}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:41:47', '2020-01-29 02:41:47'),
(114, 'App\\User', 3, 'created', 'App\\RoomFeature', 101, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"21\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 09:42:33\",\"created_at\":\"2020-01-29 09:42:33\",\"id\":101}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:42:33', '2020-01-29 02:42:33'),
(115, 'App\\User', 3, 'created', 'App\\RoomFeature', 102, '[]', '{\"title\":\"Toilet\",\"total\":\"7\",\"property_id\":\"21\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 09:43:09\",\"created_at\":\"2020-01-29 09:43:09\",\"id\":102}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:43:09', '2020-01-29 02:43:09'),
(116, 'App\\User', 3, 'created', 'App\\RoomFeature', 103, '[]', '{\"title\":\"Study Area\",\"total\":\"1\",\"property_id\":\"21\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:43:54\",\"created_at\":\"2020-01-29 09:43:54\",\"id\":103}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:43:54', '2020-01-29 02:43:54'),
(117, 'App\\User', 3, 'created', 'App\\RoomFeature', 104, '[]', '{\"title\":\"Maid room\",\"total\":\"1\",\"property_id\":\"21\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 09:44:20\",\"created_at\":\"2020-01-29 09:44:20\",\"id\":104}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:44:20', '2020-01-29 02:44:20'),
(118, 'App\\User', 3, 'created', 'App\\RoomFeature', 105, '[]', '{\"title\":\"Parking\",\"total\":\"2\",\"property_id\":\"21\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 09:45:05\",\"created_at\":\"2020-01-29 09:45:05\",\"id\":105}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:45:05', '2020-01-29 02:45:05'),
(119, 'App\\User', 3, 'created', 'App\\RoomFeature', 106, '[]', '{\"title\":\"Bedrooms\",\"total\":\"4\",\"property_id\":\"22\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 09:52:21\",\"created_at\":\"2020-01-29 09:52:21\",\"id\":106}', 'http://dev.chipmongland.com/admin/room-features/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:52:21', '2020-01-29 02:52:21'),
(120, 'App\\User', 3, 'created', 'App\\RoomFeature', 107, '[]', '{\"title\":\"Toilets\",\"total\":\"5\",\"property_id\":\"22\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 09:52:43\",\"created_at\":\"2020-01-29 09:52:43\",\"id\":107}', 'http://dev.chipmongland.com/admin/room-features/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:52:43', '2020-01-29 02:52:43'),
(121, 'App\\User', 3, 'created', 'App\\RoomFeature', 108, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"22\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 09:59:49\",\"created_at\":\"2020-01-29 09:59:49\",\"id\":108}', 'http://dev.chipmongland.com/admin/room-features/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 02:59:49', '2020-01-29 02:59:49'),
(122, 'App\\User', 3, 'created', 'App\\RoomFeature', 109, '[]', '{\"title\":\"Parking \",\"total\":\"2\",\"property_id\":\"22\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 10:00:09\",\"created_at\":\"2020-01-29 10:00:09\",\"id\":109}', 'http://dev.chipmongland.com/admin/room-features/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:00:09', '2020-01-29 03:00:09'),
(123, 'App\\User', 3, 'created', 'App\\RoomFeature', 110, '[]', '{\"title\":\"Bedroom\",\"total\":\"4\",\"property_id\":\"23\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 10:02:45\",\"created_at\":\"2020-01-29 10:02:45\",\"id\":110}', 'http://dev.chipmongland.com/admin/room-features/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:02:45', '2020-01-29 03:02:45'),
(124, 'App\\User', 3, 'created', 'App\\RoomFeature', 111, '[]', '{\"title\":\"House Floor\",\"total\":\"3\",\"property_id\":\"23\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 10:03:57\",\"created_at\":\"2020-01-29 10:03:57\",\"id\":111}', 'http://dev.chipmongland.com/admin/room-features/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:03:57', '2020-01-29 03:03:57'),
(125, 'App\\User', 3, 'created', 'App\\RoomFeature', 112, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"23\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 10:04:35\",\"created_at\":\"2020-01-29 10:04:35\",\"id\":112}', 'http://dev.chipmongland.com/admin/room-features/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:04:35', '2020-01-29 03:04:35'),
(126, 'App\\User', 3, 'created', 'App\\RoomFeature', 113, '[]', '{\"title\":\"Toilet\",\"total\":\"5\",\"property_id\":\"23\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 10:04:54\",\"created_at\":\"2020-01-29 10:04:54\",\"id\":113}', 'http://dev.chipmongland.com/admin/room-features/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:04:54', '2020-01-29 03:04:54'),
(127, 'App\\User', 3, 'created', 'App\\RoomFeature', 114, '[]', '{\"title\":\"Parking\",\"total\":\"1\",\"property_id\":\"23\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 10:05:53\",\"created_at\":\"2020-01-29 10:05:53\",\"id\":114}', 'http://dev.chipmongland.com/admin/room-features/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:05:53', '2020-01-29 03:05:53'),
(128, 'App\\User', 3, 'created', 'App\\RoomFeature', 115, '[]', '{\"title\":\"Bedroom\",\"total\":\"4\",\"property_id\":\"24\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-29 10:09:11\",\"created_at\":\"2020-01-29 10:09:11\",\"id\":115}', 'http://dev.chipmongland.com/admin/room-features/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:09:11', '2020-01-29 03:09:11'),
(129, 'App\\User', 3, 'created', 'App\\RoomFeature', 116, '[]', '{\"title\":\"Living Room\",\"total\":\"1\",\"property_id\":\"24\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-29 10:10:49\",\"created_at\":\"2020-01-29 10:10:49\",\"id\":116}', 'http://dev.chipmongland.com/admin/room-features/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:10:49', '2020-01-29 03:10:49'),
(130, 'App\\User', 3, 'created', 'App\\RoomFeature', 117, '[]', '{\"title\":\"Retail Area\",\"total\":\"1\",\"property_id\":\"24\",\"icon\":\"room-features\\/kitchen.png\",\"updated_at\":\"2020-01-29 10:11:22\",\"created_at\":\"2020-01-29 10:11:22\",\"id\":117}', 'http://dev.chipmongland.com/admin/room-features/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:11:22', '2020-01-29 03:11:22'),
(131, 'App\\User', 3, 'created', 'App\\RoomFeature', 118, '[]', '{\"title\":\"Study Area\",\"total\":\"1\",\"property_id\":\"24\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 10:12:31\",\"created_at\":\"2020-01-29 10:12:31\",\"id\":118}', 'http://dev.chipmongland.com/admin/room-features/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:12:31', '2020-01-29 03:12:31'),
(132, 'App\\User', 3, 'created', 'App\\RoomFeature', 119, '[]', '{\"title\":\"Toilet\",\"total\":\"5\",\"property_id\":\"24\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-29 10:12:50\",\"created_at\":\"2020-01-29 10:12:50\",\"id\":119}', 'http://dev.chipmongland.com/admin/room-features/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:12:50', '2020-01-29 03:12:50'),
(133, 'App\\User', 3, 'created', 'App\\RoomFeature', 120, '[]', '{\"title\":\"Parking\",\"total\":\"1\",\"property_id\":\"24\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-29 10:13:12\",\"created_at\":\"2020-01-29 10:13:12\",\"id\":120}', 'http://dev.chipmongland.com/admin/room-features/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:13:12', '2020-01-29 03:13:12'),
(134, 'App\\User', 1, 'updated', 'App\\Article', 12, '{\"detail\":\"<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.x<\\/span><\\/p>\",\"updated_at\":\"2020-01-09 04:43:54\"}', '{\"detail\":\"<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.x<\\/span><\\/p>\",\"updated_at\":\"2020-01-29 10:25:54\"}', 'http://dev.chipmongland.com/admin/articles/12', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:25:54', '2020-01-29 03:25:54'),
(135, 'App\\User', 1, 'updated', 'App\\Article', 8, '{\"detail\":\"<p style=\\\"color: #000000; font-size: 10px;\\\">Construction work for a massive, $200-million shopping centre built by Chip Mong Retail, a subsidiary of local conglomerate Chip Mong, began yesterday.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&nbsp;<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Chip Mong 271 Mega Mall will extend over 41 hectares of land in the capital, and will feature a movie theater and a food court, among other entertainment and dining options.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Leang Khun, chairman of Chip Mong Group, said at the groundbreaking ceremony that the mall will beautify the city and, starting with its construction, create thousands of jobs.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;We guarantee that our customers will have a great experience, particularly those that enjoy modern amenities and entertainment,&rdquo; he said.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;Chip Mong 271 Mega Mall will be managed by our board of directors who are local and foreign experts in the operation of malls throughout the region. Our goal is to provide the best service to our customers,&rdquo; he added.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Philippe Prejent, Chip Mong Retail&rsquo;s president, said that, excluding this latest project, Chip Mong Retail has invested about $252 million in Cambodia. Some of its most successful projects include Chip Mong Monivong Super Market, Baktok Chip Mong Mall, Sen Sok Chip Mong Mall and 598 Chip Mong Mall.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;The construction of this new shopping mall here, in a landmark such as street 271, demonstrates Chip Mong&rsquo;s dedication and commitment to create new lifestyle and entertainment solutions for our customers,&rdquo; he said.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;We have a clear and strong commitment to support the economic development of the country and the evolution of modern retail,&rdquo; he added.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">Presiding over the ceremony, Land Management Minister Chea Sophara, said the mall will be an important contribution to the nation&rsquo;s construction sector and the national economy.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&ldquo;I have seen the blueprints for the project and I can tell you that it is very well designed, modern and environmentally friendly, giving our people a great place to gather, shop, and look for entertainment options,&rdquo; he added.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">According to Chip Mong&rsquo;s Mr Khun, the mall has been designed by foreign and local experts, and will be finished by 2020.<\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\">&nbsp;<\\/p>\",\"updated_at\":\"2020-01-09 03:53:49\"}', '{\"detail\":\"<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Construction work for a massive, $200-million shopping centre built by Chip Mong Retail, a subsidiary of local conglomerate Chip Mong, began yesterday.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Chip Mong 271 Mega Mall will extend over 41 hectares of land in the capital, and will feature a movie theater and a food court, among other entertainment and dining options.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Leang Khun, chairman of Chip Mong Group, said at the groundbreaking ceremony that the mall will beautify the city and, starting with its construction, create thousands of jobs.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;We guarantee that our customers will have a great experience, particularly those that enjoy modern amenities and entertainment,&rdquo; he said.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;Chip Mong 271 Mega Mall will be managed by our board of directors who are local and foreign experts in the operation of malls throughout the region. Our goal is to provide the best service to our customers,&rdquo; he added.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Philippe Prejent, Chip Mong Retail&rsquo;s president, said that, excluding this latest project, Chip Mong Retail has invested about $252 million in Cambodia. Some of its most successful projects include Chip Mong Monivong Super Market, Baktok Chip Mong Mall, Sen Sok Chip Mong Mall and 598 Chip Mong Mall.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;The construction of this new shopping mall here, in a landmark such as street 271, demonstrates Chip Mong&rsquo;s dedication and commitment to create new lifestyle and entertainment solutions for our customers,&rdquo; he said.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;We have a clear and strong commitment to support the economic development of the country and the evolution of modern retail,&rdquo; he added.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;Presiding over the ceremony, Land Management Minister Chea Sophara, said the mall will be an important contribution to the nation&rsquo;s construction sector and the national economy.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;&ldquo;I have seen the blueprints for the project and I can tell you that it is very well designed, modern and environmentally friendly, giving our people a great place to gather, shop, and look for entertainment options,&rdquo; he added.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\\n<p style=\\\"color: #000000; font-size: 10px;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-size: 10px;\\\">&lt;p&gt;According to Chip Mong&rsquo;s Mr Khun, the mall has been designed by foreign and local experts, and will be finished by 2020.&lt;\\/p&gt;<\\/span><\\/span><\\/p>\",\"updated_at\":\"2020-01-29 10:31:32\"}', 'http://dev.chipmongland.com/admin/articles/8', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:31:32', '2020-01-29 03:31:32'),
(136, 'App\\User', 1, 'updated', 'App\\Wording', 92, '{\"word\":\"<p>Apply Chip Mong Bank Rate<\\/p>\",\"updated_at\":\"2020-01-15 04:01:53\"}', '{\"word\":\"<p>Apply Bank Rate<\\/p>\",\"updated_at\":\"2020-01-29 10:33:13\"}', 'http://dev.chipmongland.com/admin/wordings/92', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:33:13', '2020-01-29 03:33:13'),
(137, 'App\\User', 1, 'updated', 'App\\Wording', 92, '{\"word\":\"<p>Apply Bank Rate<\\/p>\",\"updated_at\":\"2020-01-29 10:33:13\"}', '{\"word\":\"<p>Apply Rate<\\/p>\",\"updated_at\":\"2020-01-29 10:38:22\"}', 'http://dev.chipmongland.com/admin/wordings/92', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:38:22', '2020-01-29 03:38:22'),
(138, 'App\\User', 1, 'updated', 'App\\Article', 12, '{\"detail\":\"<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.<\\/span><\\/p>\\n<p><span style=\\\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; white-space: pre-wrap;\\\">Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.x<\\/span><\\/p>\",\"updated_at\":\"2020-01-29 10:25:54\"}', '{\"detail\":\"\",\"updated_at\":\"2020-01-29 10:39:39\"}', 'http://dev.chipmongland.com/admin/articles/12', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:39:39', '2020-01-29 03:39:39'),
(139, 'App\\User', 1, 'updated', 'App\\Article', 12, '{\"detail\":\"\",\"updated_at\":\"2020-01-29 10:39:39\"}', '{\"detail\":\"<p>&lt;p&gt;Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.x&lt;\\/p&gt;<\\/p>\",\"updated_at\":\"2020-01-29 10:42:20\"}', 'http://dev.chipmongland.com/admin/articles/12', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:42:20', '2020-01-29 03:42:20'),
(140, 'App\\User', 1, 'updated', 'App\\Article', 12, '{\"detail\":\"<p>&lt;p&gt;Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.x&lt;\\/p&gt;<\\/p>\",\"updated_at\":\"2020-01-29 10:42:20\"}', '{\"detail\":\"<p>&lt;p&gt;Phnom Penh &ndash; Chip Mong Land, one of the leading real estate developers in Cambodia, officially launched its first ever premium condo project with a very special offer on May 24, 2019 with a special discount offer up to 5%. Park Land Condo TK is located inside Park Land TK, stretching along Oknha Mong Reththy Street in the main commercial area of Sen Sok district where is the heart of development of the city.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;With the commitment of bringing new experience of modern and trust in living to customers, Park Land Condo TK has been built in addition to villa and shophouse project. The 26-storey condo comes with a four floors of parking space, rooftop swimming pool, sky garden, modern fitness center, co-working space, and sky-pavilion where residents can host special events. Park Land Condo TK also comes with a jogging track at sky garden which allow customers to exercise, relax and enjoy the greenery every day.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Interestingly, Customers can now pay less than 500 USD to own a unit of this luxurious condo or choosing the progressive payment without interest rate up to 2 years. For more information, please contact to 061 997 888.&lt;\\/p&gt;<\\/p>\\n<p>&lt;p&gt;Chip Mong Land has 7 residential projects which are all located in potential areas of Phnom Penh &ndash; Land Mark 271, Land Mark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A, and Land Riche Chomkadong, which all receive tremendous support from customers.&lt;\\/p&gt;<\\/p>\",\"updated_at\":\"2020-01-29 10:42:54\"}', 'http://dev.chipmongland.com/admin/articles/12', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 03:42:54', '2020-01-29 03:42:54'),
(141, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 04:03:00', '2020-01-29 04:03:00'),
(142, 'App\\User', 3, 'updated', 'App\\RoomFeature', 88, '{\"total\":\"5\",\"updated_at\":\"2020-01-29 09:27:37\"}', '{\"total\":\"6\",\"updated_at\":\"2020-01-30 01:36:59\"}', 'http://dev.chipmongland.com/admin/room-features/88/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:36:59', '2020-01-29 18:36:59'),
(143, 'App\\User', 3, 'updated', 'App\\RoomFeature', 91, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 09:29:23\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 01:37:17\"}', 'http://dev.chipmongland.com/admin/room-features/91/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:37:17', '2020-01-29 18:37:17'),
(144, 'App\\User', 3, 'updated', 'App\\RoomFeature', 89, '{\"title\":\"Family Room\",\"updated_at\":\"2020-01-29 09:28:10\",\"icon\":\"room-features\\/working-area.png\"}', '{\"title\":\"Family Area\",\"updated_at\":\"2020-01-30 01:37:50\",\"icon\":\"room-features\\/living-room.png\"}', 'http://dev.chipmongland.com/admin/room-features/89/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:37:50', '2020-01-29 18:37:50'),
(145, 'App\\User', 3, 'created', 'App\\RoomFeature', 121, '[]', '{\"title\":\"Work Area\",\"total\":\"1\",\"property_id\":\"19\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-30 01:38:27\",\"created_at\":\"2020-01-30 01:38:27\",\"id\":121}', 'http://dev.chipmongland.com/admin/room-features/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:38:27', '2020-01-29 18:38:27'),
(146, 'App\\User', 3, 'updated', 'App\\RoomFeature', 90, '{\"total\":\"6\",\"updated_at\":\"2020-01-29 09:28:49\"}', '{\"total\":\"8\",\"updated_at\":\"2020-01-30 01:38:47\"}', 'http://dev.chipmongland.com/admin/room-features/90/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:38:47', '2020-01-29 18:38:47'),
(147, 'App\\User', 3, 'updated', 'App\\RoomFeature', 67, '{\"total\":\"5\",\"updated_at\":\"2020-01-29 04:13:49\"}', '{\"total\":\"6\",\"updated_at\":\"2020-01-30 01:41:34\"}', 'http://dev.chipmongland.com/admin/room-features/67/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:41:34', '2020-01-29 18:41:34'),
(148, 'App\\User', 3, 'updated', 'App\\RoomFeature', 68, '{\"title\":\"Family Room\",\"updated_at\":\"2020-01-29 04:14:58\"}', '{\"title\":\"Family Area\",\"updated_at\":\"2020-01-30 01:42:39\"}', 'http://dev.chipmongland.com/admin/room-features/68/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:42:39', '2020-01-29 18:42:39'),
(149, 'App\\User', 3, 'updated', 'App\\RoomFeature', 69, '{\"title\":\"Toilets\",\"total\":\"6\",\"updated_at\":\"2020-01-29 04:16:05\"}', '{\"title\":\"Toilet\",\"total\":\"8\",\"updated_at\":\"2020-01-30 01:43:05\"}', 'http://dev.chipmongland.com/admin/room-features/69/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:43:05', '2020-01-29 18:43:05'),
(150, 'App\\User', 3, 'updated', 'App\\RoomFeature', 70, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 04:16:51\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 01:43:28\"}', 'http://dev.chipmongland.com/admin/room-features/70/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:43:29', '2020-01-29 18:43:29'),
(151, 'App\\User', 3, 'updated', 'App\\RoomFeature', 68, '{\"updated_at\":\"2020-01-30 01:42:39\",\"icon\":\"room-features\\/kitchen.png\"}', '{\"updated_at\":\"2020-01-30 01:43:43\",\"icon\":\"room-features\\/living-room.png\"}', 'http://dev.chipmongland.com/admin/room-features/68/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:43:43', '2020-01-29 18:43:43'),
(152, 'App\\User', 3, 'created', 'App\\RoomFeature', 122, '[]', '{\"title\":\"Work Area\",\"total\":\"1\",\"property_id\":\"14\",\"icon\":\"room-features\\/kitchen.png\",\"updated_at\":\"2020-01-30 01:46:55\",\"created_at\":\"2020-01-30 01:46:55\",\"id\":122}', 'http://dev.chipmongland.com/admin/room-features/14', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:46:55', '2020-01-29 18:46:55'),
(153, 'App\\User', 3, 'updated', 'App\\RoomFeature', 2, '{\"title\":\"Family area\",\"updated_at\":\"2020-01-03 10:33:33\"}', '{\"title\":\"Family Area\",\"updated_at\":\"2020-01-30 01:48:48\"}', 'http://dev.chipmongland.com/admin/room-features/2/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:48:48', '2020-01-29 18:48:48'),
(154, 'App\\User', 3, 'updated', 'App\\RoomFeature', 3, '{\"total\":\"7 \",\"updated_at\":\"2020-01-03 10:26:22\"}', '{\"total\":\"8\",\"updated_at\":\"2020-01-30 01:49:14\"}', 'http://dev.chipmongland.com/admin/room-features/3/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:49:14', '2020-01-29 18:49:14'),
(155, 'App\\User', 3, 'updated', 'App\\RoomFeature', 5, '{\"updated_at\":\"2020-01-03 10:33:54\",\"icon\":\"room-features\\/working-area.png\"}', '{\"updated_at\":\"2020-01-30 01:50:03\",\"icon\":\"room-features\\/living-room.png\"}', 'http://dev.chipmongland.com/admin/room-features/5/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:50:03', '2020-01-29 18:50:03'),
(156, 'App\\User', 3, 'updated', 'App\\RoomFeature', 6, '{\"title\":\"Working Areas\",\"total\":\"6\",\"updated_at\":\"2020-01-21 06:46:43\"}', '{\"title\":\"Working Area\",\"total\":\"1\",\"updated_at\":\"2020-01-30 01:50:48\"}', 'http://dev.chipmongland.com/admin/room-features/6/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:50:48', '2020-01-29 18:50:48'),
(157, 'App\\User', 3, 'updated', 'App\\RoomFeature', 46, '{\"total\":\"5\",\"updated_at\":\"2020-01-29 04:04:12\"}', '{\"total\":\"6\",\"updated_at\":\"2020-01-30 01:54:32\"}', 'http://dev.chipmongland.com/admin/room-features/46/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:54:32', '2020-01-29 18:54:32'),
(158, 'App\\User', 3, 'updated', 'App\\RoomFeature', 47, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-21 09:58:07\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 01:55:50\"}', 'http://dev.chipmongland.com/admin/room-features/47/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:55:50', '2020-01-29 18:55:50'),
(159, 'App\\User', 3, 'updated', 'App\\RoomFeature', 48, '{\"title\":\"Family Room\",\"updated_at\":\"2020-01-21 09:59:03\"}', '{\"title\":\"Family Area\",\"updated_at\":\"2020-01-30 01:56:19\"}', 'http://dev.chipmongland.com/admin/room-features/48/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:56:19', '2020-01-29 18:56:19'),
(160, 'App\\User', 3, 'updated', 'App\\RoomFeature', 50, '{\"total\":\"6\",\"updated_at\":\"2020-01-21 10:00:33\"}', '{\"total\":\"8\",\"updated_at\":\"2020-01-30 01:57:12\"}', 'http://dev.chipmongland.com/admin/room-features/50/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:57:12', '2020-01-29 18:57:12'),
(161, 'App\\User', 3, 'updated', 'App\\RoomFeature', 51, '{\"total\":\"2\",\"updated_at\":\"2020-01-21 10:01:13\"}', '{\"total\":\"4\",\"updated_at\":\"2020-01-30 01:57:32\"}', 'http://dev.chipmongland.com/admin/room-features/51/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:57:32', '2020-01-29 18:57:32'),
(162, 'App\\User', 3, 'created', 'App\\RoomFeature', 123, '[]', '{\"title\":\"Work Area\",\"total\":\"1\",\"property_id\":\"6\",\"icon\":null,\"updated_at\":\"2020-01-30 01:58:44\",\"created_at\":\"2020-01-30 01:58:44\",\"id\":123}', 'http://dev.chipmongland.com/admin/room-features/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:58:44', '2020-01-29 18:58:44'),
(163, 'App\\User', 1, 'updated', 'App\\Article', 9, '{\"detail\":\"<p>Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses\\/home offices.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.<\\/p>\",\"updated_at\":\"2020-01-24 04:27:23\"}', '{\"detail\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">Excellence Worn Lightly<\\/span><\\/span><\\/p>\\n<p>Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses\\/home offices.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.<\\/p>\",\"updated_at\":\"2020-01-30 01:59:00\"}', 'http://dev.chipmongland.com/admin/articles/9', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:59:00', '2020-01-29 18:59:00'),
(164, 'App\\User', 3, 'updated', 'App\\RoomFeature', 123, '{\"updated_at\":\"2020-01-30 01:58:44\",\"icon\":null}', '{\"updated_at\":\"2020-01-30 01:59:04\",\"icon\":\"room-features\\/working-area.png\"}', 'http://dev.chipmongland.com/admin/room-features/123/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 18:59:04', '2020-01-29 18:59:04'),
(165, 'App\\User', 3, 'updated', 'App\\RoomFeature', 101, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 09:42:33\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:02:12\"}', 'http://dev.chipmongland.com/admin/room-features/101/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:02:12', '2020-01-29 19:02:12'),
(166, 'App\\User', 3, 'created', 'App\\RoomFeature', 124, '[]', '{\"title\":\"Family Room\",\"total\":\"1\",\"property_id\":\"21\",\"icon\":\"room-features\\/kitchen.png\",\"updated_at\":\"2020-01-30 02:04:02\",\"created_at\":\"2020-01-30 02:04:02\",\"id\":124}', 'http://dev.chipmongland.com/admin/room-features/21', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:04:02', '2020-01-29 19:04:02');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(167, 'App\\User', 3, 'updated', 'App\\RoomFeature', 89, '{\"title\":\"Family Area\",\"updated_at\":\"2020-01-30 01:37:50\"}', '{\"title\":\"Family Room\",\"updated_at\":\"2020-01-30 02:06:15\"}', 'http://dev.chipmongland.com/admin/room-features/89/19', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:06:15', '2020-01-29 19:06:15'),
(168, 'App\\User', 3, 'updated', 'App\\RoomFeature', 97, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 09:39:10\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:07:04\"}', 'http://dev.chipmongland.com/admin/room-features/97/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:07:04', '2020-01-29 19:07:04'),
(169, 'App\\User', 3, 'updated', 'App\\RoomFeature', 96, '{\"total\":\"6\",\"updated_at\":\"2020-01-29 09:38:47\"}', '{\"total\":\"7\",\"updated_at\":\"2020-01-30 02:09:36\"}', 'http://dev.chipmongland.com/admin/room-features/96/20', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:09:36', '2020-01-29 19:09:36'),
(170, 'App\\User', 3, 'updated', 'App\\RoomFeature', 75, '{\"title\":\"Bathrooms\",\"total\":\"6\",\"updated_at\":\"2020-01-29 04:29:16\"}', '{\"title\":\"Bathroom\",\"total\":\"7\",\"updated_at\":\"2020-01-30 02:14:35\"}', 'http://dev.chipmongland.com/admin/room-features/75/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:14:35', '2020-01-29 19:14:35'),
(171, 'App\\User', 3, 'updated', 'App\\RoomFeature', 76, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 04:29:46\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:15:11\"}', 'http://dev.chipmongland.com/admin/room-features/76/15', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:15:11', '2020-01-29 19:15:11'),
(172, 'App\\User', 3, 'updated', 'App\\RoomFeature', 46, '{\"total\":\"6\",\"updated_at\":\"2020-01-30 01:54:32\"}', '{\"total\":\"5\",\"updated_at\":\"2020-01-30 02:17:54\"}', 'http://dev.chipmongland.com/admin/room-features/46/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:17:54', '2020-01-29 19:17:54'),
(173, 'App\\User', 3, 'updated', 'App\\RoomFeature', 48, '{\"title\":\"Family Area\",\"updated_at\":\"2020-01-30 01:56:19\"}', '{\"title\":\"Family Room\",\"updated_at\":\"2020-01-30 02:18:30\"}', 'http://dev.chipmongland.com/admin/room-features/48/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:18:30', '2020-01-29 19:18:30'),
(174, 'App\\User', 3, 'updated', 'App\\RoomFeature', 46, '{\"total\":\"5\",\"updated_at\":\"2020-01-30 02:17:54\"}', '{\"total\":\"6\",\"updated_at\":\"2020-01-30 02:19:17\"}', 'http://dev.chipmongland.com/admin/room-features/46/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:19:17', '2020-01-29 19:19:17'),
(175, 'App\\User', 3, 'updated', 'App\\RoomFeature', 53, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-21 10:02:59\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:20:11\"}', 'http://dev.chipmongland.com/admin/room-features/53/7', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:20:11', '2020-01-29 19:20:11'),
(176, 'App\\User', 3, 'updated', 'App\\RoomFeature', 56, '{\"title\":\"Toilets\",\"total\":\"6\",\"updated_at\":\"2020-01-21 10:04:43\"}', '{\"title\":\"Toilet\",\"total\":\"7\",\"updated_at\":\"2020-01-30 02:21:32\"}', 'http://dev.chipmongland.com/admin/room-features/56/7', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:21:32', '2020-01-29 19:21:32'),
(177, 'App\\User', 3, 'updated', 'App\\RoomFeature', 10, '{\"total\":\"6\",\"updated_at\":\"2020-01-07 02:25:07\"}', '{\"total\":\"7\",\"updated_at\":\"2020-01-30 02:25:20\"}', 'http://dev.chipmongland.com/admin/room-features/10/2', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:25:20', '2020-01-29 19:25:20'),
(178, 'App\\User', 3, 'updated', 'App\\RoomFeature', 11, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-07 02:25:22\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:25:43\"}', 'http://dev.chipmongland.com/admin/room-features/11/2', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:25:43', '2020-01-29 19:25:43'),
(179, 'App\\User', 3, 'updated', 'App\\Property', 8, '{\"name\":\"Twin Villa\",\"updated_at\":\"2020-01-21 09:51:30\"}', '{\"name\":\"TWIN VILLA\",\"updated_at\":\"2020-01-30 02:37:52\"}', 'http://dev.chipmongland.com/admin/properties/8', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:37:52', '2020-01-29 19:37:52'),
(180, 'App\\User', 3, 'updated', 'App\\Property', 3, '{\"name\":\"Twin Villa\",\"updated_at\":\"2020-01-16 04:29:56\"}', '{\"name\":\"TWIN VILLA\",\"updated_at\":\"2020-01-30 02:38:13\"}', 'http://dev.chipmongland.com/admin/properties/3', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:38:13', '2020-01-29 19:38:13'),
(181, 'App\\User', 3, 'updated', 'App\\RoomFeature', 106, '{\"title\":\"Bedrooms\",\"updated_at\":\"2020-01-29 09:52:21\"}', '{\"title\":\"Bedroom\",\"updated_at\":\"2020-01-30 02:39:46\"}', 'http://dev.chipmongland.com/admin/room-features/106/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:39:46', '2020-01-29 19:39:46'),
(182, 'App\\User', 3, 'updated', 'App\\RoomFeature', 107, '{\"title\":\"Toilets\",\"updated_at\":\"2020-01-29 09:52:43\"}', '{\"title\":\"Toilet\",\"updated_at\":\"2020-01-30 02:40:04\"}', 'http://dev.chipmongland.com/admin/room-features/107/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:40:04', '2020-01-29 19:40:04'),
(183, 'App\\User', 3, 'updated', 'App\\RoomFeature', 108, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 09:59:49\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:40:21\"}', 'http://dev.chipmongland.com/admin/room-features/108/22', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:40:21', '2020-01-29 19:40:21'),
(184, 'App\\User', 3, 'updated', 'App\\RoomFeature', 82, '{\"total\":\"1\",\"updated_at\":\"2020-01-29 04:39:02\"}', '{\"total\":\"2\",\"updated_at\":\"2020-01-30 02:41:08\"}', 'http://dev.chipmongland.com/admin/room-features/82/16', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:41:08', '2020-01-29 19:41:08'),
(185, 'App\\User', 3, 'updated', 'App\\RoomFeature', 81, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 04:38:29\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:41:24\"}', 'http://dev.chipmongland.com/admin/room-features/81/16', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:41:24', '2020-01-29 19:41:24'),
(186, 'App\\User', 3, 'updated', 'App\\RoomFeature', 59, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-21 10:07:18\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:42:09\"}', 'http://dev.chipmongland.com/admin/room-features/59/8', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:42:09', '2020-01-29 19:42:09'),
(187, 'App\\User', 3, 'updated', 'App\\RoomFeature', 60, '{\"title\":\"Toilets\",\"updated_at\":\"2020-01-21 10:08:04\"}', '{\"title\":\"Toilet\",\"updated_at\":\"2020-01-30 02:42:29\"}', 'http://dev.chipmongland.com/admin/room-features/60/8', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:42:29', '2020-01-29 19:42:29'),
(188, 'App\\User', 3, 'updated', 'App\\RoomFeature', 15, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-07 03:34:03\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:44:42\"}', 'http://dev.chipmongland.com/admin/room-features/15/3', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:44:42', '2020-01-29 19:44:42'),
(189, 'App\\User', 3, 'updated', 'App\\RoomFeature', 111, '{\"title\":\"House Floor\",\"updated_at\":\"2020-01-29 10:03:57\"}', '{\"title\":\"House Floors\",\"updated_at\":\"2020-01-30 02:48:18\"}', 'http://dev.chipmongland.com/admin/room-features/111/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:48:18', '2020-01-29 19:48:18'),
(190, 'App\\User', 3, 'updated', 'App\\RoomFeature', 112, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 10:04:35\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:48:36\"}', 'http://dev.chipmongland.com/admin/room-features/112/23', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:48:36', '2020-01-29 19:48:36'),
(191, 'App\\User', 3, 'updated', 'App\\RoomFeature', 84, '{\"title\":\"House Floor\",\"updated_at\":\"2020-01-29 04:41:04\"}', '{\"title\":\"House Floors\",\"updated_at\":\"2020-01-30 02:49:58\"}', 'http://dev.chipmongland.com/admin/room-features/84/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:49:58', '2020-01-29 19:49:58'),
(192, 'App\\User', 3, 'updated', 'App\\RoomFeature', 86, '{\"title\":\"Living Room\",\"updated_at\":\"2020-01-29 04:42:30\"}', '{\"title\":\"Living Area\",\"updated_at\":\"2020-01-30 02:50:27\"}', 'http://dev.chipmongland.com/admin/room-features/86/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:50:27', '2020-01-29 19:50:27'),
(193, 'App\\User', 3, 'updated', 'App\\RoomFeature', 87, '{\"title\":\"Bathroom\",\"updated_at\":\"2020-01-29 04:43:09\"}', '{\"title\":\"Toilet\",\"updated_at\":\"2020-01-30 02:50:44\"}', 'http://dev.chipmongland.com/admin/room-features/87/17', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:50:44', '2020-01-29 19:50:44'),
(194, 'App\\User', 3, 'updated', 'App\\RoomFeature', 19, '{\"title\":\"Badroom\",\"updated_at\":\"2020-01-07 03:38:10\"}', '{\"title\":\"Bedroom\",\"updated_at\":\"2020-01-30 02:52:18\"}', 'http://dev.chipmongland.com/admin/room-features/19/9', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:52:18', '2020-01-29 19:52:18'),
(195, 'App\\User', 3, 'updated', 'App\\RoomFeature', 22, '{\"title\":\"House Floor\",\"updated_at\":\"2020-01-21 10:13:07\"}', '{\"title\":\"House Floors\",\"updated_at\":\"2020-01-30 02:52:36\"}', 'http://dev.chipmongland.com/admin/room-features/22/9', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:52:36', '2020-01-29 19:52:36'),
(196, 'App\\User', 3, 'deleted', 'App\\RoomFeature', 116, '{\"id\":116,\"title\":\"Living Room\",\"total\":\"1\",\"created_at\":\"2020-01-29 10:10:49\",\"updated_at\":\"2020-01-29 10:10:49\",\"property_id\":24,\"deleted_at\":null,\"icon\":\"room-features\\/living-room.png\"}', '[]', 'http://dev.chipmongland.com/admin/room-features/116/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:54:35', '2020-01-29 19:54:35'),
(197, 'App\\User', 3, 'deleted', 'App\\RoomFeature', 118, '{\"id\":118,\"title\":\"Study Area\",\"total\":\"1\",\"created_at\":\"2020-01-29 10:12:31\",\"updated_at\":\"2020-01-29 10:12:31\",\"property_id\":24,\"deleted_at\":null,\"icon\":\"room-features\\/working-area.png\"}', '[]', 'http://dev.chipmongland.com/admin/room-features/118/24', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 19:54:44', '2020-01-29 19:54:44'),
(198, 'App\\User', 1, 'created', 'App\\ArticleType', 4, '[]', '{\"name\":\"All\",\"updated_at\":\"2020-01-30 04:07:16\",\"created_at\":\"2020-01-30 04:07:16\",\"id\":4}', 'http://dev.chipmongland.com/admin/article-types', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:07:16', '2020-01-29 21:07:16'),
(199, 'App\\User', 1, 'updated', 'App\\ArticleType', 4, '{\"name\":\"All\",\"updated_at\":\"2020-01-30 04:07:16\"}', '{\"name\":\"ALL\",\"updated_at\":\"2020-01-30 04:07:28\"}', 'http://dev.chipmongland.com/admin/article-types/4', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:07:28', '2020-01-29 21:07:28'),
(200, 'App\\User', 1, 'updated', 'App\\Article', 9, '{\"detail\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #000000;\\\"><span style=\\\"font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\\\">Excellence Worn Lightly<\\/span><\\/span><\\/p>\\n<p>Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses\\/home offices.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.<\\/p>\",\"updated_at\":\"2020-01-30 01:59:00\"}', '{\"detail\":\"<p><span style=\\\"font-family: Gotham; font-size: 16pt;\\\">Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"font-family: Gotham; font-size: 16pt;\\\">Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"font-family: Gotham; font-size: 16pt;\\\">We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses\\/home offices.<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"font-family: Gotham; font-size: 16pt;\\\">As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.<\\/span><\\/p>\",\"updated_at\":\"2020-01-30 04:11:54\"}', 'http://dev.chipmongland.com/admin/articles/9', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:11:54', '2020-01-29 21:11:54'),
(201, 'App\\User', 1, 'updated', 'App\\Article', 10, '{\"detail\":\"<p>In line with the development policy of Phnom Penh<\\/p>\\n<p>municipality, Chip Mong Land is committed to constructing<\\/p>\\n<p>many kinds of private luxurious houses to meet the needs of<\\/p>\\n<p>the poeple with modern lifestyles. The Park Land Sen Sok is<\\/p>\\n<p>the first project of Chip Mong Land whose success will be<\\/p>\\n<p>made a reality only thanks to our customers\' supports as<\\/p>\\n<p>well as their trust and confidence in our construction<\\/p>\\n<p>capability.<\\/p>\\n<p>In the near future, Chip Mong Land will bring three new<\\/p>\\n<p>comprehensive residence construction projects to our<\\/p>\\n<p>customers. It is our commitment to continue building<\\/p>\\n<p>luxurious, safe and high-quality residences with fashionable<\\/p>\\n<p>designs in both the exterior and interior.<\\/p>\\n<p>On behalf of Chip Mong Land, I would like to express my<\\/p>\\n<p>profound thanks to all current and prospective customers for<\\/p>\\n<p>your support.<\\/p>\\n<p>I am looking forward to your further supports and having the<\\/p>\\n<p>opportunity to serve you.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p><strong>Oknha Mandam Pheap Heak<\\/strong><\\/p>\",\"updated_at\":\"2020-01-24 06:15:35\"}', '{\"detail\":\"<p><span style=\\\"font-size: 16pt; font-family: Gotham;\\\">In line with the development policy of Phnom Penh municipality, Chip Mong Land is committed to constructing many kinds of private luxurious houses to meet the needs of the poeple with modern lifestyles. The Park Land Sen Sok is the first project of Chip Mong Land whose success will be made a reality only thanks to our customers\' supports as well as their trust and confidence in our construction capability.<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"font-size: 16pt; font-family: Gotham;\\\">In the near future, Chip Mong Land will bring three new comprehensive residence construction projects to our customers. It is our commitment to continue building luxurious, safe and high-quality residences with fashionable designs in both the exterior and interior.<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"font-size: 16pt; font-family: Gotham;\\\">On behalf of Chip Mong Land, I would like to express my profound thanks to all current and prospective customers for your support.<\\/span><\\/p>\\n<p><span style=\\\"font-size: 16pt; font-family: Gotham;\\\">I am looking forward to your further supports and having the opportunity to serve you.<\\/span><\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"font-family: Gotham; font-size: 16pt;\\\"><strong>Oknha Mandam Pheap Heak<\\/strong><\\/span><\\/p>\",\"updated_at\":\"2020-01-30 04:14:03\"}', 'http://dev.chipmongland.com/admin/articles/10', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:14:03', '2020-01-29 21:14:03'),
(202, 'App\\User', 1, 'updated', 'App\\Article', 10, '{\"slug\":null,\"updated_at\":\"2020-01-30 04:14:03\"}', '{\"slug\":\"message-from-the-charlady\",\"updated_at\":\"2020-01-30 04:16:34\"}', 'http://dev.chipmongland.com/admin/articles/10', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:16:34', '2020-01-29 21:16:34'),
(203, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:17:20', '2020-01-29 21:17:20'),
(204, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"address\":\"\",\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 07:34:34\"}', '{\"address\":\"Phnom Penh\",\"location\":{},\"updated_at\":\"2020-01-30 04:22:14\"}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:22:14', '2020-01-29 21:22:14'),
(205, 'App\\User', 3, 'updated', 'App\\Project', 5, '{\"address\":\"\",\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 02:54:21\"}', '{\"address\":\"Phnom Penh\",\"location\":{},\"updated_at\":\"2020-01-30 04:22:44\"}', 'http://dev.chipmongland.com/admin/projects/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:22:44', '2020-01-29 21:22:44'),
(206, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-30 04:22:14\"}', '{\"location\":{},\"updated_at\":\"2020-01-30 04:27:55\"}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:27:55', '2020-01-29 21:27:55'),
(207, 'App\\User', 3, 'updated', 'App\\Project', 5, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-30 04:22:44\"}', '{\"location\":{},\"updated_at\":\"2020-01-30 04:28:40\"}', 'http://dev.chipmongland.com/admin/projects/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 21:28:40', '2020-01-29 21:28:40'),
(208, 'App\\User', 3, 'created', 'App\\Property', 25, '[]', '{\"name\":\"HOME OFFICE\",\"detail\":\"<p>Work or run your business with the comfort and ease of your own Home Office.<\\/p>\",\"start_price\":null,\"to_price\":null,\"project_id\":\"1\",\"layout\":\"[\\\"properties\\/Home-office.jpg\\\"]\",\"updated_at\":\"2020-01-30 06:36:51\",\"created_at\":\"2020-01-30 06:36:51\",\"id\":25}', 'http://dev.chipmongland.com/admin/properties', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:36:51', '2020-01-29 23:36:51'),
(209, 'App\\User', 3, 'created', 'App\\RoomFeature', 125, '[]', '{\"title\":\"Lift\",\"total\":\"1\",\"property_id\":\"25\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-30 06:54:27\",\"created_at\":\"2020-01-30 06:54:27\",\"id\":125}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:54:27', '2020-01-29 23:54:27'),
(210, 'App\\User', 3, 'created', 'App\\RoomFeature', 126, '[]', '{\"title\":\"Bedroom\",\"total\":\"4\",\"property_id\":\"25\",\"icon\":\"room-features\\/bedroom.png\",\"updated_at\":\"2020-01-30 06:55:35\",\"created_at\":\"2020-01-30 06:55:35\",\"id\":126}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:55:35', '2020-01-29 23:55:35'),
(211, 'App\\User', 3, 'created', 'App\\RoomFeature', 127, '[]', '{\"title\":\"Living Area\",\"total\":\"1\",\"property_id\":\"25\",\"icon\":\"room-features\\/living-room.png\",\"updated_at\":\"2020-01-30 06:56:01\",\"created_at\":\"2020-01-30 06:56:01\",\"id\":127}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:56:01', '2020-01-29 23:56:01'),
(212, 'App\\User', 3, 'created', 'App\\RoomFeature', 128, '[]', '{\"title\":\"Work Area\",\"total\":\"1\",\"property_id\":\"25\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-30 06:56:37\",\"created_at\":\"2020-01-30 06:56:37\",\"id\":128}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:56:37', '2020-01-29 23:56:37'),
(213, 'App\\User', 3, 'created', 'App\\RoomFeature', 129, '[]', '{\"title\":\"Waiting Area\",\"total\":\"1\",\"property_id\":\"25\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-30 06:56:59\",\"created_at\":\"2020-01-30 06:56:59\",\"id\":129}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:56:59', '2020-01-29 23:56:59'),
(214, 'App\\User', 3, 'created', 'App\\RoomFeature', 130, '[]', '{\"title\":\"Bathroom\",\"total\":\"7\",\"property_id\":\"25\",\"icon\":\"room-features\\/toilet.png\",\"updated_at\":\"2020-01-30 06:57:22\",\"created_at\":\"2020-01-30 06:57:22\",\"id\":130}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:57:22', '2020-01-29 23:57:22'),
(215, 'App\\User', 3, 'created', 'App\\RoomFeature', 131, '[]', '{\"title\":\"Parking\",\"total\":\"2\",\"property_id\":\"25\",\"icon\":\"room-features\\/working-area.png\",\"updated_at\":\"2020-01-30 06:57:56\",\"created_at\":\"2020-01-30 06:57:56\",\"id\":131}', 'http://dev.chipmongland.com/admin/room-features/25', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-29 23:57:56', '2020-01-29 23:57:56'),
(216, 'App\\User', 1, 'updated', 'App\\User', 1, '[]', '[]', 'http://dev.chipmongland.com/admin/logout', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 04:06:31', '2020-01-30 04:06:31'),
(217, 'App\\User', 1, 'deleted', 'App\\ArticleType', 4, '{\"id\":4,\"name\":\"ALL\",\"created_at\":\"2020-01-30 04:07:16\",\"updated_at\":\"2020-01-31 06:24:00\",\"deleted_at\":\"2020-01-31 06:24:00\"}', '[]', 'http://dev.chipmongland.com/admin/article-types/4', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:24:00', '2020-01-30 23:24:00'),
(218, 'App\\User', 1, 'updated', 'App\\ArticleType', 3, '{\"name\":\"PROMOTIONS\",\"updated_at\":\"2020-01-09 03:51:56\"}', '{\"name\":\"promotions\",\"updated_at\":\"2020-01-31 06:24:21\"}', 'http://dev.chipmongland.com/admin/article-types/3', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:24:21', '2020-01-30 23:24:21'),
(219, 'App\\User', 1, 'updated', 'App\\ArticleType', 2, '{\"name\":\"ACTIVITIES\",\"updated_at\":\"2020-01-09 07:12:45\"}', '{\"name\":\"activities\",\"updated_at\":\"2020-01-31 06:24:32\"}', 'http://dev.chipmongland.com/admin/article-types/2', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:24:32', '2020-01-30 23:24:32'),
(220, 'App\\User', 1, 'updated', 'App\\ArticleType', 1, '{\"name\":\"NEWS\",\"updated_at\":\"2020-01-09 03:51:15\"}', '{\"name\":\"news\",\"updated_at\":\"2020-01-31 06:24:40\"}', 'http://dev.chipmongland.com/admin/article-types/1', '172.22.21.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:24:40', '2020-01-30 23:24:40'),
(221, 'App\\User', 1, 'updated', 'App\\Property', 25, '{\"updated_at\":\"2020-01-30 06:36:51\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:28:43\",\"property_type_id\":\"2\"}', 'http://dev.chipmongland.com/admin/properties/25', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:28:43', '2020-01-30 23:28:43'),
(222, 'App\\User', 1, 'updated', 'App\\Property', 24, '{\"updated_at\":\"2020-01-29 09:08:51\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:29:47\",\"property_type_id\":\"2\"}', 'http://dev.chipmongland.com/admin/properties/24', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:29:47', '2020-01-30 23:29:47'),
(223, 'App\\User', 1, 'updated', 'App\\Property', 23, '{\"updated_at\":\"2020-01-29 09:02:26\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:29:59\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/23', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:29:59', '2020-01-30 23:29:59'),
(224, 'App\\User', 1, 'updated', 'App\\Property', 22, '{\"updated_at\":\"2020-01-29 09:01:17\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:30:26\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/22', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:30:26', '2020-01-30 23:30:26'),
(225, 'App\\User', 1, 'updated', 'App\\Property', 21, '{\"updated_at\":\"2020-01-29 08:59:30\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:30:33\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/21', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:30:33', '2020-01-30 23:30:33'),
(226, 'App\\User', 1, 'updated', 'App\\Property', 20, '{\"updated_at\":\"2020-01-29 08:57:51\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:30:39\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/20', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:30:39', '2020-01-30 23:30:39'),
(227, 'App\\User', 1, 'updated', 'App\\Property', 19, '{\"updated_at\":\"2020-01-29 08:56:48\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:30:47\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/19', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:30:47', '2020-01-30 23:30:47'),
(228, 'App\\User', 1, 'updated', 'App\\Property', 18, '{\"updated_at\":\"2020-01-29 03:38:39\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:31:01\",\"property_type_id\":\"2\"}', 'http://dev.chipmongland.com/admin/properties/18', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:31:01', '2020-01-30 23:31:01'),
(229, 'App\\User', 1, 'updated', 'App\\Property', 17, '{\"updated_at\":\"2020-01-29 03:34:12\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:31:15\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/17', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:31:15', '2020-01-30 23:31:15'),
(230, 'App\\User', 1, 'updated', 'App\\Property', 16, '{\"updated_at\":\"2020-01-29 03:33:13\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:31:23\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/16', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:31:23', '2020-01-30 23:31:23'),
(231, 'App\\User', 1, 'updated', 'App\\Property', 15, '{\"updated_at\":\"2020-01-29 03:24:23\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:31:53\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/15', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:31:53', '2020-01-30 23:31:53'),
(232, 'App\\User', 1, 'updated', 'App\\Property', 14, '{\"updated_at\":\"2020-01-29 03:21:15\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:31:58\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/14', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:31:58', '2020-01-30 23:31:58'),
(233, 'App\\User', 1, 'updated', 'App\\Property', 13, '{\"updated_at\":\"2020-01-16 04:20:40\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:32:18\",\"property_type_id\":\"3\"}', 'http://dev.chipmongland.com/admin/properties/13', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:32:18', '2020-01-30 23:32:18'),
(234, 'App\\User', 1, 'updated', 'App\\Property', 12, '{\"updated_at\":\"2020-01-16 04:27:54\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:32:23\",\"property_type_id\":\"3\"}', 'http://dev.chipmongland.com/admin/properties/12', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:32:23', '2020-01-30 23:32:23'),
(235, 'App\\User', 1, 'updated', 'App\\Property', 11, '{\"updated_at\":\"2020-01-16 04:28:09\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:32:29\",\"property_type_id\":\"3\"}', 'http://dev.chipmongland.com/admin/properties/11', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:32:29', '2020-01-30 23:32:29'),
(236, 'App\\User', 1, 'updated', 'App\\Property', 10, '{\"updated_at\":\"2020-01-21 09:52:02\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:32:44\",\"property_type_id\":\"2\"}', 'http://dev.chipmongland.com/admin/properties/10', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:32:44', '2020-01-30 23:32:44'),
(237, 'App\\User', 1, 'updated', 'App\\Property', 9, '{\"updated_at\":\"2020-01-21 09:51:50\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:32:50\",\"property_type_id\":\"2\"}', 'http://dev.chipmongland.com/admin/properties/9', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:32:50', '2020-01-30 23:32:50'),
(238, 'App\\User', 1, 'updated', 'App\\Property', 6, '{\"updated_at\":\"2020-01-21 09:50:39\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:33:01\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/6', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:33:01', '2020-01-30 23:33:01'),
(239, 'App\\User', 1, 'updated', 'App\\Property', 7, '{\"updated_at\":\"2020-01-21 09:51:05\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:33:06\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/7', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:33:06', '2020-01-30 23:33:06'),
(240, 'App\\User', 1, 'updated', 'App\\Property', 8, '{\"updated_at\":\"2020-01-30 02:37:52\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:33:11\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/8', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:33:11', '2020-01-30 23:33:11'),
(241, 'App\\User', 1, 'updated', 'App\\Property', 3, '{\"updated_at\":\"2020-01-30 02:38:13\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:33:52\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/3', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:33:52', '2020-01-30 23:33:52'),
(242, 'App\\User', 1, 'updated', 'App\\Property', 2, '{\"updated_at\":\"2020-01-16 04:30:12\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:33:57\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/2', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:33:57', '2020-01-30 23:33:57'),
(243, 'App\\User', 1, 'updated', 'App\\Property', 1, '{\"updated_at\":\"2020-01-16 04:30:37\",\"property_type_id\":null}', '{\"updated_at\":\"2020-01-31 06:34:03\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/1', '172.22.21.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:34:03', '2020-01-30 23:34:03'),
(244, 'App\\User', 3, 'updated', 'App\\Project', 1, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 02:56:52\"}', '{\"location\":{},\"updated_at\":\"2020-01-31 06:36:21\"}', 'http://dev.chipmongland.com/admin/projects/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:36:21', '2020-01-30 23:36:21'),
(245, 'App\\User', 3, 'updated', 'App\\Project', 1, '{\"location\":\"POINT(104.92254639021 11.523016288676)\",\"updated_at\":\"2020-01-31 06:36:21\"}', '{\"location\":{},\"updated_at\":\"2020-01-31 06:37:36\"}', 'http://dev.chipmongland.com/admin/projects/1', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:37:36', '2020-01-30 23:37:36'),
(246, 'App\\User', 3, 'updated', 'App\\Project', 2, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-29 04:26:32\"}', '{\"location\":{},\"updated_at\":\"2020-01-31 06:41:04\"}', 'http://dev.chipmongland.com/admin/projects/2', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:41:04', '2020-01-30 23:41:04'),
(247, 'App\\User', 3, 'updated', 'App\\Project', 3, '{\"location\":\"POINT(104.89425444952 11.591129609573)\",\"updated_at\":\"2020-01-29 03:35:45\"}', '{\"location\":{},\"updated_at\":\"2020-01-31 06:42:40\"}', 'http://dev.chipmongland.com/admin/projects/3', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:42:40', '2020-01-30 23:42:40'),
(248, 'App\\User', 3, 'updated', 'App\\Project', 6, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-30 04:27:55\"}', '{\"location\":{},\"updated_at\":\"2020-01-31 06:45:49\"}', 'http://dev.chipmongland.com/admin/projects/6', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:45:49', '2020-01-30 23:45:49'),
(249, 'App\\User', 3, 'updated', 'App\\Project', 5, '{\"location\":\"POINT(104.922364 11.580241)\",\"updated_at\":\"2020-01-30 04:28:40\"}', '{\"location\":{},\"updated_at\":\"2020-01-31 06:46:46\"}', 'http://dev.chipmongland.com/admin/projects/5', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-30 23:46:46', '2020-01-30 23:46:46'),
(250, 'App\\User', 3, 'updated', 'App\\Property', 9, '{\"name\":\"Link House A\",\"updated_at\":\"2020-01-31 06:32:50\",\"property_type_id\":2}', '{\"name\":\"LINK A VILLA\",\"updated_at\":\"2020-01-31 07:17:56\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/9', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-31 00:17:56', '2020-01-31 00:17:56'),
(251, 'App\\User', 3, 'updated', 'App\\Property', 10, '{\"name\":\"Link House B\",\"updated_at\":\"2020-01-31 06:32:44\",\"property_type_id\":2}', '{\"name\":\"LINK B VILLA\",\"updated_at\":\"2020-01-31 07:18:17\",\"property_type_id\":\"1\"}', 'http://dev.chipmongland.com/admin/properties/10', '172.22.20.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-31 00:18:17', '2020-01-31 00:18:17'),
(252, 'App\\User', 1, 'updated', 'App\\Article', 28, '{\"attachment\":\"articles\\\\January2020\\\\hh0BfY7YYsVHra99UVRS.jpg\",\"updated_at\":\"2020-01-23 09:41:37\"}', '{\"attachment\":null,\"updated_at\":\"2020-01-31 09:40:46\"}', 'http://chipmongland.local:8080/admin/articles/remove', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-31 02:40:46', '2020-01-31 02:40:46'),
(253, 'App\\User', 1, 'updated', 'App\\Article', 28, '{\"attachment\":null,\"updated_at\":\"2020-01-31 09:40:46\"}', '{\"attachment\":\"articles\\\\January2020\\\\JyUkeBtw9Bs5QygmDZBz.jpg\",\"updated_at\":\"2020-01-31 09:40:55\"}', 'http://chipmongland.local:8080/admin/articles/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-31 02:40:55', '2020-01-31 02:40:55'),
(254, 'App\\User', 1, 'updated', 'App\\Article', 29, '{\"attachment\":\"articles\\\\January2020\\\\gvF9l7P2ApJrkpK1MSAL.png\",\"updated_at\":\"2020-01-23 09:48:47\"}', '{\"attachment\":null,\"updated_at\":\"2020-01-31 10:05:30\"}', 'http://chipmongland.local:8080/admin/articles/remove', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-31 03:05:30', '2020-01-31 03:05:30'),
(255, 'App\\User', 1, 'updated', 'App\\Article', 29, '{\"attachment\":null,\"updated_at\":\"2020-01-31 10:05:30\"}', '{\"attachment\":\"articles\\\\January2020\\\\yENUVWbGNWjJb0FmdJO1.png\",\"updated_at\":\"2020-01-31 10:05:39\"}', 'http://chipmongland.local:8080/admin/articles/29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-01-31 03:05:39', '2020-01-31 03:05:39'),
(256, 'App\\User', 1, 'updated', 'App\\Article', 28, '{\"attachment\":\"articles\\\\January2020\\\\JyUkeBtw9Bs5QygmDZBz.jpg\",\"updated_at\":\"2020-01-31 09:40:55\"}', '{\"attachment\":null,\"updated_at\":\"2020-02-03 01:42:34\"}', 'http://chipmongland.local:8080/admin/articles/remove', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-02 18:42:34', '2020-02-02 18:42:34'),
(257, 'App\\User', 1, 'updated', 'App\\Article', 28, '{\"attachment\":null,\"updated_at\":\"2020-02-03 01:42:34\"}', '{\"attachment\":\"articles\\\\February2020\\\\Fa3PmwjJWYodElqh3US6.jpg\",\"updated_at\":\"2020-02-03 01:42:42\"}', 'http://chipmongland.local:8080/admin/articles/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-02 18:42:42', '2020-02-02 18:42:42'),
(258, 'App\\User', 1, 'created', 'App\\RoomFeature', 132, '[]', '{\"total\":\"\\u17e6\",\"amenity_id\":null,\"updated_at\":\"2020-02-04 09:51:20\",\"created_at\":\"2020-02-04 09:51:20\",\"id\":132}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-04 02:51:20', '2020-02-04 02:51:20'),
(259, 'App\\User', 1, 'created', 'App\\RoomFeature', 133, '[]', '{\"total\":\"4\",\"amenity_id\":null,\"updated_at\":\"2020-02-04 09:51:31\",\"created_at\":\"2020-02-04 09:51:31\",\"id\":133}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-04 02:51:31', '2020-02-04 02:51:31'),
(260, 'App\\User', 1, 'created', 'App\\RoomFeature', 134, '[]', '{\"total\":\"\\u17e6\",\"amenity_id\":null,\"updated_at\":\"2020-02-05 03:28:58\",\"created_at\":\"2020-02-05 03:28:58\",\"id\":134}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-04 20:28:58', '2020-02-04 20:28:58'),
(261, 'App\\User', 1, 'created', 'App\\RoomFeature', 135, '[]', '{\"total\":\"5+\",\"amenity_id\":null,\"updated_at\":\"2020-02-05 04:10:20\",\"created_at\":\"2020-02-05 04:10:20\",\"id\":135}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-04 21:10:20', '2020-02-04 21:10:20'),
(262, 'App\\User', 1, 'updated', 'App\\RoomFeature', 134, '{\"amenity_id\":3,\"total\":\"\\u17e6\",\"created_at\":\"2020-02-05 03:28:58\",\"updated_at\":\"2020-02-05 03:28:58\"}', '{\"amenity_id\":null,\"total\":\"2\",\"created_at\":\"2020-02-05 03:28:00\",\"updated_at\":\"2020-02-06 02:04:33\"}', 'http://chipmongland.local:8080/admin/room-features/134/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 19:04:33', '2020-02-05 19:04:33'),
(263, 'App\\User', 1, 'updated', 'App\\RoomFeature', 132, '{\"amenity_id\":1,\"total\":\"\\u17e6\",\"created_at\":\"2020-02-04 09:51:20\",\"updated_at\":\"2020-02-04 09:51:20\"}', '{\"amenity_id\":null,\"total\":\"6\",\"created_at\":\"2020-02-04 09:51:00\",\"updated_at\":\"2020-02-06 02:04:42\"}', 'http://chipmongland.local:8080/admin/room-features/132/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 19:04:42', '2020-02-05 19:04:42'),
(264, 'App\\User', 1, 'created', 'App\\RoomFeature', 136, '[]', '{\"total\":\"3\",\"amenity_id\":null,\"updated_at\":\"2020-02-06 02:11:54\",\"created_at\":\"2020-02-06 02:11:54\",\"id\":136}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 19:11:54', '2020-02-05 19:11:54'),
(265, 'App\\User', 1, 'created', 'App\\RoomFeature', 137, '[]', '{\"total\":\"100\",\"amenity_id\":null,\"updated_at\":\"2020-02-06 02:26:43\",\"created_at\":\"2020-02-06 02:26:43\",\"id\":137}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 19:26:43', '2020-02-05 19:26:43');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(266, 'App\\User', 1, 'created', 'App\\RoomFeature', 138, '[]', '{\"total\":\"1000\",\"amenity_id\":null,\"property_id\":\"25\",\"updated_at\":\"2020-02-06 02:27:50\",\"created_at\":\"2020-02-06 02:27:50\",\"id\":138}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 19:27:50', '2020-02-05 19:27:50'),
(267, 'App\\User', 1, 'created', 'App\\RoomFeature', 139, '[]', '{\"total\":\"\\u17e1\",\"amenity_id\":null,\"property_id\":\"25\",\"updated_at\":\"2020-02-06 02:46:12\",\"created_at\":\"2020-02-06 02:46:12\",\"id\":139}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 19:46:12', '2020-02-05 19:46:12'),
(268, 'App\\User', 1, 'created', 'App\\RoomFeature', 140, '[]', '{\"amenity_id\":null,\"total\":\"\",\"property_id\":\"24\",\"updated_at\":\"2020-02-06 06:27:59\",\"created_at\":\"2020-02-06 06:27:59\",\"id\":140}', 'http://chipmongland.local:8080/admin/room-features/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 23:27:59', '2020-02-05 23:27:59'),
(269, 'App\\User', 1, 'updated', 'App\\RoomFeature', 140, '{\"total\":\"\",\"created_at\":\"2020-02-06 06:27:59\",\"updated_at\":\"2020-02-06 06:27:59\"}', '{\"total\":\"\\u17e2\",\"created_at\":\"2020-02-06 06:27:00\",\"updated_at\":\"2020-02-06 06:52:51\"}', 'http://chipmongland.local:8080/admin/room-features/140/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-05 23:52:51', '2020-02-05 23:52:51'),
(270, 'App\\User', 1, 'created', 'App\\RoomFeature', 141, '[]', '{\"total\":\"5+\",\"amenity_id\":null,\"property_id\":\"10\",\"updated_at\":\"2020-02-07 04:28:11\",\"created_at\":\"2020-02-07 04:28:11\",\"id\":141}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-06 21:28:11', '2020-02-06 21:28:11'),
(271, 'App\\User', 1, 'updated', 'App\\RoomFeature', 141, '{\"amenity_id\":1,\"created_at\":\"2020-02-07 04:28:11\",\"updated_at\":\"2020-02-07 04:28:11\"}', '{\"amenity_id\":null,\"created_at\":\"2020-02-07 04:28:00\",\"updated_at\":\"2020-02-07 04:33:06\"}', 'http://chipmongland.local:8080/admin/room-features/141/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2020-02-06 21:33:06', '2020-02-06 21:33:06'),
(272, 'App\\User', 1, 'updated', 'App\\RoomFeature', 132, '{\"amenity_id\":1,\"updated_at\":\"2020-02-06 02:04:42\"}', '{\"amenity_id\":null,\"updated_at\":\"2020-02-10 01:33:37\"}', 'http://chipmongland.local:8080/admin/room-features/132/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-09 18:33:37', '2020-02-09 18:33:37'),
(273, 'App\\User', 1, 'created', 'App\\RoomFeature', 142, '[]', '{\"amenity_id\":null,\"total\":\"\",\"property_id\":\"25\",\"updated_at\":\"2020-02-10 03:31:38\",\"created_at\":\"2020-02-10 03:31:38\",\"id\":142}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-09 20:31:38', '2020-02-09 20:31:38'),
(274, 'App\\User', 1, 'deleted', 'App\\RoomFeature', 142, '{\"id\":142,\"amenity_id\":null,\"total\":\"\",\"created_at\":\"2020-02-10 03:31:38\",\"updated_at\":\"2020-02-10 03:31:38\",\"property_id\":25,\"deleted_at\":null}', '[]', 'http://chipmongland.local:8080/admin/room-features/142/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-09 21:36:53', '2020-02-09 21:36:53'),
(275, 'App\\User', 1, 'created', 'App\\RoomFeature', 143, '[]', '{\"total\":\"5+\",\"amenity_id\":\"1\",\"property_id\":\"24\",\"updated_at\":\"2020-02-10 04:38:31\",\"created_at\":\"2020-02-10 04:38:31\",\"id\":143}', 'http://chipmongland.local:8080/admin/room-features/24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-09 21:38:31', '2020-02-09 21:38:31'),
(276, 'App\\User', 1, 'created', 'App\\RoomFeature', 144, '[]', '{\"total\":\"5+\",\"amenity_id\":\"1\",\"property_id\":\"25\",\"updated_at\":\"2020-02-10 06:05:12\",\"created_at\":\"2020-02-10 06:05:12\",\"id\":144}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-09 23:05:12', '2020-02-09 23:05:12'),
(277, 'App\\User', 1, 'created', 'App\\RoomFeature', 145, '[]', '{\"total\":\"6\",\"amenity_id\":\"2\",\"property_id\":\"19\",\"updated_at\":\"2020-02-10 07:22:32\",\"created_at\":\"2020-02-10 07:22:32\",\"id\":145}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 00:22:32', '2020-02-10 00:22:32'),
(278, 'App\\User', 1, 'created', 'App\\RoomFeature', 146, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"11\",\"updated_at\":\"2020-02-11 02:05:36\",\"created_at\":\"2020-02-11 02:05:36\",\"id\":146}', 'http://chipmongland.local:8080/admin/room-features/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:05:37', '2020-02-10 19:05:37'),
(279, 'App\\User', 1, 'created', 'App\\RoomFeature', 147, '[]', '{\"total\":\"1\",\"amenity_id\":\"8\",\"property_id\":\"11\",\"updated_at\":\"2020-02-11 02:06:00\",\"created_at\":\"2020-02-11 02:06:00\",\"id\":147}', 'http://chipmongland.local:8080/admin/room-features/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:06:00', '2020-02-10 19:06:00'),
(280, 'App\\User', 1, 'created', 'App\\RoomFeature', 148, '[]', '{\"total\":\"1\",\"amenity_id\":\"10\",\"property_id\":\"11\",\"updated_at\":\"2020-02-11 02:10:23\",\"created_at\":\"2020-02-11 02:10:23\",\"id\":148}', 'http://chipmongland.local:8080/admin/room-features/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:10:23', '2020-02-10 19:10:23'),
(281, 'App\\User', 1, 'created', 'App\\RoomFeature', 149, '[]', '{\"total\":\"1\",\"amenity_id\":\"11\",\"property_id\":\"11\",\"updated_at\":\"2020-02-11 02:10:50\",\"created_at\":\"2020-02-11 02:10:50\",\"id\":149}', 'http://chipmongland.local:8080/admin/room-features/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:10:50', '2020-02-10 19:10:50'),
(282, 'App\\User', 1, 'created', 'App\\RoomFeature', 150, '[]', '{\"total\":\"1\",\"amenity_id\":\"9\",\"property_id\":\"11\",\"updated_at\":\"2020-02-11 02:11:20\",\"created_at\":\"2020-02-11 02:11:20\",\"id\":150}', 'http://chipmongland.local:8080/admin/room-features/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:11:20', '2020-02-10 19:11:20'),
(283, 'App\\User', 1, 'created', 'App\\RoomFeature', 151, '[]', '{\"amenity_id\":\"12\",\"property_id\":\"12\",\"total\":\"\",\"updated_at\":\"2020-02-11 02:40:46\",\"created_at\":\"2020-02-11 02:40:46\",\"id\":151}', 'http://chipmongland.local:8080/admin/room-features/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:40:46', '2020-02-10 19:40:46'),
(284, 'App\\User', 1, 'created', 'App\\RoomFeature', 152, '[]', '{\"total\":\"1\",\"amenity_id\":\"8\",\"property_id\":\"12\",\"updated_at\":\"2020-02-11 02:40:59\",\"created_at\":\"2020-02-11 02:40:59\",\"id\":152}', 'http://chipmongland.local:8080/admin/room-features/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:40:59', '2020-02-10 19:40:59'),
(285, 'App\\User', 1, 'created', 'App\\RoomFeature', 153, '[]', '{\"total\":\"1\",\"amenity_id\":\"11\",\"property_id\":\"12\",\"updated_at\":\"2020-02-11 02:41:14\",\"created_at\":\"2020-02-11 02:41:14\",\"id\":153}', 'http://chipmongland.local:8080/admin/room-features/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:41:14', '2020-02-10 19:41:14'),
(286, 'App\\User', 1, 'created', 'App\\RoomFeature', 154, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"12\",\"updated_at\":\"2020-02-11 02:41:26\",\"created_at\":\"2020-02-11 02:41:26\",\"id\":154}', 'http://chipmongland.local:8080/admin/room-features/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:41:26', '2020-02-10 19:41:26'),
(287, 'App\\User', 1, 'created', 'App\\RoomFeature', 155, '[]', '{\"total\":\"1\",\"amenity_id\":\"9\",\"property_id\":\"12\",\"updated_at\":\"2020-02-11 02:41:39\",\"created_at\":\"2020-02-11 02:41:39\",\"id\":155}', 'http://chipmongland.local:8080/admin/room-features/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:41:39', '2020-02-10 19:41:39'),
(288, 'App\\User', 1, 'created', 'App\\RoomFeature', 156, '[]', '{\"total\":\"2\",\"amenity_id\":\"10\",\"property_id\":\"12\",\"updated_at\":\"2020-02-11 02:41:54\",\"created_at\":\"2020-02-11 02:41:54\",\"id\":156}', 'http://chipmongland.local:8080/admin/room-features/12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 19:41:54', '2020-02-10 19:41:54'),
(289, 'App\\User', 1, 'created', 'App\\RoomFeature', 157, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"19\",\"updated_at\":\"2020-02-11 03:06:47\",\"created_at\":\"2020-02-11 03:06:47\",\"id\":157}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:06:47', '2020-02-10 20:06:47'),
(290, 'App\\User', 1, 'created', 'App\\RoomFeature', 158, '[]', '{\"total\":\"8\",\"amenity_id\":\"4\",\"property_id\":\"19\",\"updated_at\":\"2020-02-11 03:07:12\",\"created_at\":\"2020-02-11 03:07:12\",\"id\":158}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:07:12', '2020-02-10 20:07:12'),
(291, 'App\\User', 1, 'created', 'App\\RoomFeature', 159, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"19\",\"updated_at\":\"2020-02-11 03:07:36\",\"created_at\":\"2020-02-11 03:07:36\",\"id\":159}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:07:36', '2020-02-10 20:07:36'),
(292, 'App\\User', 1, 'created', 'App\\RoomFeature', 160, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"19\",\"updated_at\":\"2020-02-11 03:07:54\",\"created_at\":\"2020-02-11 03:07:54\",\"id\":160}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:07:54', '2020-02-10 20:07:54'),
(293, 'App\\User', 1, 'created', 'App\\RoomFeature', 161, '[]', '{\"total\":\"4\",\"amenity_id\":\"7\",\"property_id\":\"19\",\"updated_at\":\"2020-02-11 03:08:18\",\"created_at\":\"2020-02-11 03:08:18\",\"id\":161}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:08:18', '2020-02-10 20:08:18'),
(294, 'App\\User', 1, 'created', 'App\\RoomFeature', 162, '[]', '{\"total\":\"1\",\"amenity_id\":\"1\",\"property_id\":\"19\",\"updated_at\":\"2020-02-11 03:08:31\",\"created_at\":\"2020-02-11 03:08:31\",\"id\":162}', 'http://chipmongland.local:8080/admin/room-features/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:08:31', '2020-02-10 20:08:31'),
(295, 'App\\User', 1, 'created', 'App\\RoomFeature', 163, '[]', '{\"total\":\"5\",\"amenity_id\":\"2\",\"property_id\":\"20\",\"updated_at\":\"2020-02-11 03:16:11\",\"created_at\":\"2020-02-11 03:16:11\",\"id\":163}', 'http://chipmongland.local:8080/admin/room-features/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:16:11', '2020-02-10 20:16:11'),
(296, 'App\\User', 1, 'created', 'App\\RoomFeature', 164, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"20\",\"updated_at\":\"2020-02-11 03:16:25\",\"created_at\":\"2020-02-11 03:16:25\",\"id\":164}', 'http://chipmongland.local:8080/admin/room-features/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:16:25', '2020-02-10 20:16:25'),
(297, 'App\\User', 1, 'created', 'App\\RoomFeature', 165, '[]', '{\"total\":\"7\",\"amenity_id\":\"4\",\"property_id\":\"20\",\"updated_at\":\"2020-02-11 03:16:37\",\"created_at\":\"2020-02-11 03:16:37\",\"id\":165}', 'http://chipmongland.local:8080/admin/room-features/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:16:37', '2020-02-10 20:16:37'),
(298, 'App\\User', 1, 'created', 'App\\RoomFeature', 166, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"20\",\"updated_at\":\"2020-02-11 03:16:48\",\"created_at\":\"2020-02-11 03:16:48\",\"id\":166}', 'http://chipmongland.local:8080/admin/room-features/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:16:48', '2020-02-10 20:16:48'),
(299, 'App\\User', 1, 'created', 'App\\RoomFeature', 167, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"20\",\"updated_at\":\"2020-02-11 03:17:09\",\"created_at\":\"2020-02-11 03:17:09\",\"id\":167}', 'http://chipmongland.local:8080/admin/room-features/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:17:09', '2020-02-10 20:17:09'),
(300, 'App\\User', 1, 'created', 'App\\RoomFeature', 168, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"20\",\"updated_at\":\"2020-02-11 03:17:23\",\"created_at\":\"2020-02-11 03:17:23\",\"id\":168}', 'http://chipmongland.local:8080/admin/room-features/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:17:23', '2020-02-10 20:17:23'),
(301, 'App\\User', 1, 'created', 'App\\RoomFeature', 169, '[]', '{\"total\":\"5\",\"amenity_id\":\"2\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:18:11\",\"created_at\":\"2020-02-11 03:18:11\",\"id\":169}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:18:11', '2020-02-10 20:18:11'),
(302, 'App\\User', 1, 'created', 'App\\RoomFeature', 170, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:18:29\",\"created_at\":\"2020-02-11 03:18:29\",\"id\":170}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:18:29', '2020-02-10 20:18:29'),
(303, 'App\\User', 1, 'created', 'App\\RoomFeature', 171, '[]', '{\"total\":\"7\",\"amenity_id\":\"4\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:18:41\",\"created_at\":\"2020-02-11 03:18:41\",\"id\":171}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:18:41', '2020-02-10 20:18:41'),
(304, 'App\\User', 1, 'created', 'App\\RoomFeature', 172, '[]', '{\"total\":\"1\",\"amenity_id\":\"17\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:19:38\",\"created_at\":\"2020-02-11 03:19:38\",\"id\":172}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:19:39', '2020-02-10 20:19:39'),
(305, 'App\\User', 1, 'created', 'App\\RoomFeature', 173, '[]', '{\"total\":\"1\",\"amenity_id\":\"2\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:19:51\",\"created_at\":\"2020-02-11 03:19:51\",\"id\":173}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:19:51', '2020-02-10 20:19:51'),
(306, 'App\\User', 1, 'updated', 'App\\RoomFeature', 173, '{\"amenity_id\":2,\"updated_at\":\"2020-02-11 03:19:51\"}', '{\"amenity_id\":\"15\",\"updated_at\":\"2020-02-11 03:20:07\"}', 'http://chipmongland.local:8080/admin/room-features/173/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:20:07', '2020-02-10 20:20:07'),
(307, 'App\\User', 1, 'created', 'App\\RoomFeature', 174, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:20:24\",\"created_at\":\"2020-02-11 03:20:24\",\"id\":174}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:20:24', '2020-02-10 20:20:24'),
(308, 'App\\User', 1, 'created', 'App\\RoomFeature', 175, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"21\",\"updated_at\":\"2020-02-11 03:20:43\",\"created_at\":\"2020-02-11 03:20:43\",\"id\":175}', 'http://chipmongland.local:8080/admin/room-features/21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:20:43', '2020-02-10 20:20:43'),
(309, 'App\\User', 1, 'created', 'App\\RoomFeature', 176, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"22\",\"updated_at\":\"2020-02-11 03:23:56\",\"created_at\":\"2020-02-11 03:23:56\",\"id\":176}', 'http://chipmongland.local:8080/admin/room-features/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:23:56', '2020-02-10 20:23:56'),
(310, 'App\\User', 1, 'created', 'App\\RoomFeature', 177, '[]', '{\"total\":\"5\",\"amenity_id\":\"4\",\"property_id\":\"22\",\"updated_at\":\"2020-02-11 03:24:07\",\"created_at\":\"2020-02-11 03:24:07\",\"id\":177}', 'http://chipmongland.local:8080/admin/room-features/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:24:07', '2020-02-10 20:24:07'),
(311, 'App\\User', 1, 'created', 'App\\RoomFeature', 178, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"22\",\"updated_at\":\"2020-02-11 03:24:17\",\"created_at\":\"2020-02-11 03:24:17\",\"id\":178}', 'http://chipmongland.local:8080/admin/room-features/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:24:17', '2020-02-10 20:24:17'),
(312, 'App\\User', 1, 'created', 'App\\RoomFeature', 179, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"22\",\"updated_at\":\"2020-02-11 03:24:38\",\"created_at\":\"2020-02-11 03:24:38\",\"id\":179}', 'http://chipmongland.local:8080/admin/room-features/22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:24:38', '2020-02-10 20:24:38'),
(313, 'App\\User', 1, 'created', 'App\\RoomFeature', 180, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"23\",\"updated_at\":\"2020-02-11 03:25:27\",\"created_at\":\"2020-02-11 03:25:27\",\"id\":180}', 'http://chipmongland.local:8080/admin/room-features/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:25:27', '2020-02-10 20:25:27'),
(314, 'App\\User', 1, 'created', 'App\\RoomFeature', 181, '[]', '{\"total\":\"3\",\"amenity_id\":\"18\",\"property_id\":\"23\",\"updated_at\":\"2020-02-11 03:26:11\",\"created_at\":\"2020-02-11 03:26:11\",\"id\":181}', 'http://chipmongland.local:8080/admin/room-features/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:26:11', '2020-02-10 20:26:11'),
(315, 'App\\User', 1, 'created', 'App\\RoomFeature', 182, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"23\",\"updated_at\":\"2020-02-11 03:26:24\",\"created_at\":\"2020-02-11 03:26:24\",\"id\":182}', 'http://chipmongland.local:8080/admin/room-features/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:26:24', '2020-02-10 20:26:24'),
(316, 'App\\User', 1, 'created', 'App\\RoomFeature', 183, '[]', '{\"total\":\"5\",\"amenity_id\":\"4\",\"property_id\":\"23\",\"updated_at\":\"2020-02-11 03:26:36\",\"created_at\":\"2020-02-11 03:26:36\",\"id\":183}', 'http://chipmongland.local:8080/admin/room-features/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:26:36', '2020-02-10 20:26:36'),
(317, 'App\\User', 1, 'created', 'App\\RoomFeature', 184, '[]', '{\"total\":\"1\",\"amenity_id\":\"7\",\"property_id\":\"23\",\"updated_at\":\"2020-02-11 03:26:59\",\"created_at\":\"2020-02-11 03:26:59\",\"id\":184}', 'http://chipmongland.local:8080/admin/room-features/23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:26:59', '2020-02-10 20:26:59'),
(318, 'App\\User', 1, 'created', 'App\\RoomFeature', 185, '[]', '{\"total\":\"6\",\"amenity_id\":\"2\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:28:26\",\"created_at\":\"2020-02-11 03:28:26\",\"id\":185}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:28:26', '2020-02-10 20:28:26'),
(319, 'App\\User', 1, 'created', 'App\\RoomFeature', 186, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:28:43\",\"created_at\":\"2020-02-11 03:28:43\",\"id\":186}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:28:43', '2020-02-10 20:28:43'),
(320, 'App\\User', 1, 'created', 'App\\RoomFeature', 187, '[]', '{\"total\":\"8\",\"amenity_id\":\"4\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:28:55\",\"created_at\":\"2020-02-11 03:28:55\",\"id\":187}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:28:55', '2020-02-10 20:28:55'),
(321, 'App\\User', 1, 'created', 'App\\RoomFeature', 188, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:29:09\",\"created_at\":\"2020-02-11 03:29:09\",\"id\":188}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:29:09', '2020-02-10 20:29:09'),
(322, 'App\\User', 1, 'created', 'App\\RoomFeature', 189, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:29:29\",\"created_at\":\"2020-02-11 03:29:29\",\"id\":189}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:29:29', '2020-02-10 20:29:29'),
(323, 'App\\User', 1, 'created', 'App\\RoomFeature', 190, '[]', '{\"total\":\"4\",\"amenity_id\":\"7\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:29:48\",\"created_at\":\"2020-02-11 03:29:48\",\"id\":190}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:29:48', '2020-02-10 20:29:48'),
(324, 'App\\User', 1, 'created', 'App\\RoomFeature', 191, '[]', '{\"total\":\"1\",\"amenity_id\":\"1\",\"property_id\":\"15\",\"updated_at\":\"2020-02-11 03:30:02\",\"created_at\":\"2020-02-11 03:30:02\",\"id\":191}', 'http://chipmongland.local:8080/admin/room-features/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:30:02', '2020-02-10 20:30:02'),
(325, 'App\\User', 1, 'updated', 'App\\RoomFeature', 185, '{\"total\":\"6\",\"updated_at\":\"2020-02-11 03:28:26\"}', '{\"total\":\"5\",\"updated_at\":\"2020-02-11 03:30:45\"}', 'http://chipmongland.local:8080/admin/room-features/185/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:30:45', '2020-02-10 20:30:45'),
(326, 'App\\User', 1, 'updated', 'App\\RoomFeature', 187, '{\"amenity_id\":4,\"total\":\"8\",\"updated_at\":\"2020-02-11 03:28:55\"}', '{\"amenity_id\":\"11\",\"total\":\"7\",\"updated_at\":\"2020-02-11 03:31:32\"}', 'http://chipmongland.local:8080/admin/room-features/187/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:31:32', '2020-02-10 20:31:32'),
(327, 'App\\User', 1, 'updated', 'App\\RoomFeature', 190, '{\"total\":\"4\",\"updated_at\":\"2020-02-11 03:29:48\"}', '{\"total\":\"2\",\"updated_at\":\"2020-02-11 03:31:52\"}', 'http://chipmongland.local:8080/admin/room-features/190/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:31:52', '2020-02-10 20:31:52'),
(328, 'App\\User', 1, 'deleted', 'App\\RoomFeature', 191, '{\"id\":191,\"amenity_id\":1,\"total\":\"1\",\"created_at\":\"2020-02-11 03:30:02\",\"updated_at\":\"2020-02-11 03:30:02\",\"property_id\":15,\"deleted_at\":null}', '[]', 'http://chipmongland.local:8080/admin/room-features/191/15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:31:57', '2020-02-10 20:31:57'),
(329, 'App\\User', 1, 'created', 'App\\RoomFeature', 192, '[]', '{\"total\":\"6\",\"amenity_id\":\"2\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:32:49\",\"created_at\":\"2020-02-11 03:32:49\",\"id\":192}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:32:49', '2020-02-10 20:32:49'),
(330, 'App\\User', 1, 'created', 'App\\RoomFeature', 193, '[]', '{\"total\":\"1\",\"amenity_id\":\"19\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:33:48\",\"created_at\":\"2020-02-11 03:33:48\",\"id\":193}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:33:48', '2020-02-10 20:33:48'),
(331, 'App\\User', 1, 'created', 'App\\RoomFeature', 194, '[]', '{\"total\":\"8\",\"amenity_id\":\"4\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:33:58\",\"created_at\":\"2020-02-11 03:33:58\",\"id\":194}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:33:58', '2020-02-10 20:33:58'),
(332, 'App\\User', 1, 'created', 'App\\RoomFeature', 195, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:34:51\",\"created_at\":\"2020-02-11 03:34:51\",\"id\":195}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:34:51', '2020-02-10 20:34:51'),
(333, 'App\\User', 1, 'created', 'App\\RoomFeature', 196, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:35:07\",\"created_at\":\"2020-02-11 03:35:07\",\"id\":196}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:35:07', '2020-02-10 20:35:07'),
(334, 'App\\User', 1, 'created', 'App\\RoomFeature', 197, '[]', '{\"total\":\"4\",\"amenity_id\":\"7\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:35:18\",\"created_at\":\"2020-02-11 03:35:18\",\"id\":197}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:35:18', '2020-02-10 20:35:18'),
(335, 'App\\User', 1, 'created', 'App\\RoomFeature', 198, '[]', '{\"total\":\"1\",\"amenity_id\":\"1\",\"property_id\":\"14\",\"updated_at\":\"2020-02-11 03:35:30\",\"created_at\":\"2020-02-11 03:35:30\",\"id\":198}', 'http://chipmongland.local:8080/admin/room-features/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:35:30', '2020-02-10 20:35:30'),
(336, 'App\\User', 1, 'created', 'App\\RoomFeature', 199, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"16\",\"updated_at\":\"2020-02-11 03:36:54\",\"created_at\":\"2020-02-11 03:36:54\",\"id\":199}', 'http://chipmongland.local:8080/admin/room-features/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:36:54', '2020-02-10 20:36:54'),
(337, 'App\\User', 1, 'created', 'App\\RoomFeature', 200, '[]', '{\"total\":\"5\",\"amenity_id\":\"4\",\"property_id\":\"16\",\"updated_at\":\"2020-02-11 03:37:05\",\"created_at\":\"2020-02-11 03:37:05\",\"id\":200}', 'http://chipmongland.local:8080/admin/room-features/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:37:05', '2020-02-10 20:37:05'),
(338, 'App\\User', 1, 'created', 'App\\RoomFeature', 201, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"16\",\"updated_at\":\"2020-02-11 03:37:20\",\"created_at\":\"2020-02-11 03:37:20\",\"id\":201}', 'http://chipmongland.local:8080/admin/room-features/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:37:20', '2020-02-10 20:37:20'),
(339, 'App\\User', 1, 'created', 'App\\RoomFeature', 202, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"16\",\"updated_at\":\"2020-02-11 03:37:32\",\"created_at\":\"2020-02-11 03:37:32\",\"id\":202}', 'http://chipmongland.local:8080/admin/room-features/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:37:32', '2020-02-10 20:37:32'),
(340, 'App\\User', 1, 'created', 'App\\RoomFeature', 203, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"17\",\"updated_at\":\"2020-02-11 03:38:08\",\"created_at\":\"2020-02-11 03:38:08\",\"id\":203}', 'http://chipmongland.local:8080/admin/room-features/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:38:08', '2020-02-10 20:38:08'),
(341, 'App\\User', 1, 'created', 'App\\RoomFeature', 204, '[]', '{\"total\":\"3\",\"amenity_id\":\"18\",\"property_id\":\"17\",\"updated_at\":\"2020-02-11 03:38:19\",\"created_at\":\"2020-02-11 03:38:19\",\"id\":204}', 'http://chipmongland.local:8080/admin/room-features/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:38:19', '2020-02-10 20:38:19'),
(342, 'App\\User', 1, 'created', 'App\\RoomFeature', 205, '[]', '{\"total\":\"1\",\"amenity_id\":\"7\",\"property_id\":\"17\",\"updated_at\":\"2020-02-11 03:38:39\",\"created_at\":\"2020-02-11 03:38:39\",\"id\":205}', 'http://chipmongland.local:8080/admin/room-features/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:38:39', '2020-02-10 20:38:39'),
(343, 'App\\User', 1, 'created', 'App\\RoomFeature', 206, '[]', '{\"total\":\"1\",\"amenity_id\":\"19\",\"property_id\":\"17\",\"updated_at\":\"2020-02-11 03:38:55\",\"created_at\":\"2020-02-11 03:38:55\",\"id\":206}', 'http://chipmongland.local:8080/admin/room-features/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:38:55', '2020-02-10 20:38:55'),
(344, 'App\\User', 1, 'created', 'App\\RoomFeature', 207, '[]', '{\"total\":\"5\",\"amenity_id\":\"4\",\"property_id\":\"17\",\"updated_at\":\"2020-02-11 03:39:06\",\"created_at\":\"2020-02-11 03:39:06\",\"id\":207}', 'http://chipmongland.local:8080/admin/room-features/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:39:06', '2020-02-10 20:39:06'),
(345, 'App\\User', 1, 'created', 'App\\RoomFeature', 208, '[]', '{\"total\":\"6\",\"amenity_id\":\"2\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:40:45\",\"created_at\":\"2020-02-11 03:40:45\",\"id\":208}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:40:45', '2020-02-10 20:40:45'),
(346, 'App\\User', 1, 'created', 'App\\RoomFeature', 209, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:41:19\",\"created_at\":\"2020-02-11 03:41:19\",\"id\":209}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:41:19', '2020-02-10 20:41:19'),
(347, 'App\\User', 1, 'created', 'App\\RoomFeature', 210, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:41:36\",\"created_at\":\"2020-02-11 03:41:36\",\"id\":210}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:41:36', '2020-02-10 20:41:36'),
(348, 'App\\User', 1, 'created', 'App\\RoomFeature', 211, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:41:50\",\"created_at\":\"2020-02-11 03:41:50\",\"id\":211}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:41:50', '2020-02-10 20:41:50'),
(349, 'App\\User', 1, 'created', 'App\\RoomFeature', 212, '[]', '{\"total\":\"8\",\"amenity_id\":\"4\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:42:01\",\"created_at\":\"2020-02-11 03:42:01\",\"id\":212}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:42:01', '2020-02-10 20:42:01'),
(350, 'App\\User', 1, 'created', 'App\\RoomFeature', 213, '[]', '{\"total\":\"4\",\"amenity_id\":\"7\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:42:12\",\"created_at\":\"2020-02-11 03:42:12\",\"id\":213}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:42:12', '2020-02-10 20:42:12'),
(351, 'App\\User', 1, 'created', 'App\\RoomFeature', 214, '[]', '{\"total\":\"1\",\"amenity_id\":\"1\",\"property_id\":\"6\",\"updated_at\":\"2020-02-11 03:42:23\",\"created_at\":\"2020-02-11 03:42:23\",\"id\":214}', 'http://chipmongland.local:8080/admin/room-features/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:42:23', '2020-02-10 20:42:23'),
(352, 'App\\User', 1, 'created', 'App\\RoomFeature', 215, '[]', '{\"total\":\"5\",\"amenity_id\":\"2\",\"property_id\":\"9\",\"updated_at\":\"2020-02-11 03:43:11\",\"created_at\":\"2020-02-11 03:43:11\",\"id\":215}', 'http://chipmongland.local:8080/admin/room-features/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:43:11', '2020-02-10 20:43:11'),
(353, 'App\\User', 1, 'created', 'App\\RoomFeature', 216, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"9\",\"updated_at\":\"2020-02-11 03:43:25\",\"created_at\":\"2020-02-11 03:43:25\",\"id\":216}', 'http://chipmongland.local:8080/admin/room-features/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:43:25', '2020-02-10 20:43:25'),
(354, 'App\\User', 1, 'created', 'App\\RoomFeature', 217, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"9\",\"updated_at\":\"2020-02-11 03:43:37\",\"created_at\":\"2020-02-11 03:43:37\",\"id\":217}', 'http://chipmongland.local:8080/admin/room-features/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:43:37', '2020-02-10 20:43:37'),
(355, 'App\\User', 1, 'created', 'App\\RoomFeature', 218, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"9\",\"updated_at\":\"2020-02-11 03:43:53\",\"created_at\":\"2020-02-11 03:43:53\",\"id\":218}', 'http://chipmongland.local:8080/admin/room-features/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:43:53', '2020-02-10 20:43:53'),
(356, 'App\\User', 1, 'created', 'App\\RoomFeature', 219, '[]', '{\"total\":\"7\",\"amenity_id\":\"4\",\"property_id\":\"9\",\"updated_at\":\"2020-02-11 03:44:06\",\"created_at\":\"2020-02-11 03:44:06\",\"id\":219}', 'http://chipmongland.local:8080/admin/room-features/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:44:06', '2020-02-10 20:44:06'),
(357, 'App\\User', 1, 'created', 'App\\RoomFeature', 220, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"9\",\"updated_at\":\"2020-02-11 03:44:29\",\"created_at\":\"2020-02-11 03:44:29\",\"id\":220}', 'http://chipmongland.local:8080/admin/room-features/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:44:29', '2020-02-10 20:44:29'),
(358, 'App\\User', 1, 'created', 'App\\RoomFeature', 221, '[]', '{\"total\":\"5\",\"amenity_id\":\"2\",\"property_id\":\"7\",\"updated_at\":\"2020-02-11 03:45:47\",\"created_at\":\"2020-02-11 03:45:47\",\"id\":221}', 'http://chipmongland.local:8080/admin/room-features/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:45:47', '2020-02-10 20:45:47'),
(359, 'App\\User', 1, 'created', 'App\\RoomFeature', 222, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"7\",\"updated_at\":\"2020-02-11 03:46:00\",\"created_at\":\"2020-02-11 03:46:00\",\"id\":222}', 'http://chipmongland.local:8080/admin/room-features/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:46:00', '2020-02-10 20:46:00'),
(360, 'App\\User', 1, 'created', 'App\\RoomFeature', 223, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"7\",\"updated_at\":\"2020-02-11 03:46:24\",\"created_at\":\"2020-02-11 03:46:24\",\"id\":223}', 'http://chipmongland.local:8080/admin/room-features/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:46:24', '2020-02-10 20:46:24'),
(361, 'App\\User', 1, 'created', 'App\\RoomFeature', 224, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"7\",\"updated_at\":\"2020-02-11 03:46:39\",\"created_at\":\"2020-02-11 03:46:39\",\"id\":224}', 'http://chipmongland.local:8080/admin/room-features/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:46:39', '2020-02-10 20:46:39'),
(362, 'App\\User', 1, 'created', 'App\\RoomFeature', 225, '[]', '{\"total\":\"7\",\"amenity_id\":\"4\",\"property_id\":\"7\",\"updated_at\":\"2020-02-11 03:46:51\",\"created_at\":\"2020-02-11 03:46:51\",\"id\":225}', 'http://chipmongland.local:8080/admin/room-features/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:46:51', '2020-02-10 20:46:51'),
(363, 'App\\User', 1, 'created', 'App\\RoomFeature', 226, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"7\",\"updated_at\":\"2020-02-11 03:47:11\",\"created_at\":\"2020-02-11 03:47:11\",\"id\":226}', 'http://chipmongland.local:8080/admin/room-features/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:47:11', '2020-02-10 20:47:11'),
(364, 'App\\User', 1, 'created', 'App\\RoomFeature', 227, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"8\",\"updated_at\":\"2020-02-11 03:47:47\",\"created_at\":\"2020-02-11 03:47:47\",\"id\":227}', 'http://chipmongland.local:8080/admin/room-features/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:47:47', '2020-02-10 20:47:47'),
(365, 'App\\User', 1, 'created', 'App\\RoomFeature', 228, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"8\",\"updated_at\":\"2020-02-11 03:48:01\",\"created_at\":\"2020-02-11 03:48:01\",\"id\":228}', 'http://chipmongland.local:8080/admin/room-features/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:48:01', '2020-02-10 20:48:01'),
(366, 'App\\User', 1, 'created', 'App\\RoomFeature', 229, '[]', '{\"total\":\"5\",\"amenity_id\":\"4\",\"property_id\":\"8\",\"updated_at\":\"2020-02-11 03:48:12\",\"created_at\":\"2020-02-11 03:48:12\",\"id\":229}', 'http://chipmongland.local:8080/admin/room-features/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:48:12', '2020-02-10 20:48:12'),
(367, 'App\\User', 1, 'created', 'App\\RoomFeature', 230, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"8\",\"updated_at\":\"2020-02-11 03:48:25\",\"created_at\":\"2020-02-11 03:48:25\",\"id\":230}', 'http://chipmongland.local:8080/admin/room-features/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:48:25', '2020-02-10 20:48:25'),
(368, 'App\\User', 1, 'updated', 'App\\RoomFeature', 220, '{\"total\":\"2\",\"updated_at\":\"2020-02-11 03:44:29\"}', '{\"total\":\"1\",\"updated_at\":\"2020-02-11 03:49:30\"}', 'http://chipmongland.local:8080/admin/room-features/220/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:49:30', '2020-02-10 20:49:30'),
(369, 'App\\User', 1, 'updated', 'App\\RoomFeature', 219, '{\"total\":\"7\",\"updated_at\":\"2020-02-11 03:44:06\"}', '{\"total\":\"5\",\"updated_at\":\"2020-02-11 03:49:44\"}', 'http://chipmongland.local:8080/admin/room-features/219/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:49:44', '2020-02-10 20:49:44'),
(370, 'App\\User', 1, 'updated', 'App\\RoomFeature', 218, '{\"amenity_id\":15,\"total\":\"1\",\"updated_at\":\"2020-02-11 03:43:53\"}', '{\"amenity_id\":\"18\",\"total\":\"3\",\"updated_at\":\"2020-02-11 03:50:08\"}', 'http://chipmongland.local:8080/admin/room-features/218/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:50:08', '2020-02-10 20:50:08'),
(371, 'App\\User', 1, 'updated', 'App\\RoomFeature', 215, '{\"total\":\"5\",\"updated_at\":\"2020-02-11 03:43:11\"}', '{\"total\":\"4\",\"updated_at\":\"2020-02-11 03:50:24\"}', 'http://chipmongland.local:8080/admin/room-features/215/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:50:24', '2020-02-10 20:50:24'),
(372, 'App\\User', 1, 'deleted', 'App\\RoomFeature', 217, '{\"id\":217,\"amenity_id\":16,\"total\":\"1\",\"created_at\":\"2020-02-11 03:43:37\",\"updated_at\":\"2020-02-11 03:43:37\",\"property_id\":9,\"deleted_at\":null}', '[]', 'http://chipmongland.local:8080/admin/room-features/217/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:50:53', '2020-02-10 20:50:53'),
(373, 'App\\User', 1, 'created', 'App\\RoomFeature', 231, '[]', '{\"total\":\"1\",\"amenity_id\":\"3\",\"property_id\":\"10\",\"updated_at\":\"2020-02-11 03:51:43\",\"created_at\":\"2020-02-11 03:51:43\",\"id\":231}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:51:43', '2020-02-10 20:51:43'),
(374, 'App\\User', 1, 'created', 'App\\RoomFeature', 232, '[]', '{\"total\":\"3\",\"amenity_id\":\"2\",\"property_id\":\"10\",\"updated_at\":\"2020-02-11 03:51:53\",\"created_at\":\"2020-02-11 03:51:53\",\"id\":232}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:51:53', '2020-02-10 20:51:53');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(375, 'App\\User', 1, 'created', 'App\\RoomFeature', 233, '[]', '{\"total\":\"4\",\"amenity_id\":\"4\",\"property_id\":\"10\",\"updated_at\":\"2020-02-11 03:52:04\",\"created_at\":\"2020-02-11 03:52:04\",\"id\":233}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:52:04', '2020-02-10 20:52:04'),
(376, 'App\\User', 1, 'created', 'App\\RoomFeature', 234, '[]', '{\"total\":\"3\",\"amenity_id\":\"18\",\"property_id\":\"10\",\"updated_at\":\"2020-02-11 03:52:18\",\"created_at\":\"2020-02-11 03:52:18\",\"id\":234}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:52:18', '2020-02-10 20:52:18'),
(377, 'App\\User', 1, 'created', 'App\\RoomFeature', 235, '[]', '{\"total\":\"1\",\"amenity_id\":\"7\",\"property_id\":\"10\",\"updated_at\":\"2020-02-11 03:52:31\",\"created_at\":\"2020-02-11 03:52:31\",\"id\":235}', 'http://chipmongland.local:8080/admin/room-features/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:52:31', '2020-02-10 20:52:31'),
(378, 'App\\User', 1, 'created', 'App\\RoomFeature', 236, '[]', '{\"total\":\"6\",\"amenity_id\":\"2\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:55:21\",\"created_at\":\"2020-02-11 03:55:21\",\"id\":236}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:55:21', '2020-02-10 20:55:21'),
(379, 'App\\User', 1, 'created', 'App\\RoomFeature', 237, '[]', '{\"total\":\"1\",\"amenity_id\":\"19\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:55:34\",\"created_at\":\"2020-02-11 03:55:34\",\"id\":237}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:55:34', '2020-02-10 20:55:34'),
(380, 'App\\User', 1, 'created', 'App\\RoomFeature', 238, '[]', '{\"total\":\"8\",\"amenity_id\":\"4\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:55:45\",\"created_at\":\"2020-02-11 03:55:45\",\"id\":238}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:55:45', '2020-02-10 20:55:45'),
(381, 'App\\User', 1, 'created', 'App\\RoomFeature', 239, '[]', '{\"total\":\"4\",\"amenity_id\":\"7\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:55:59\",\"created_at\":\"2020-02-11 03:55:59\",\"id\":239}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:55:59', '2020-02-10 20:55:59'),
(382, 'App\\User', 1, 'created', 'App\\RoomFeature', 240, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:56:23\",\"created_at\":\"2020-02-11 03:56:23\",\"id\":240}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:56:23', '2020-02-10 20:56:23'),
(383, 'App\\User', 1, 'created', 'App\\RoomFeature', 241, '[]', '{\"total\":\"1\",\"amenity_id\":\"1\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:56:33\",\"created_at\":\"2020-02-11 03:56:33\",\"id\":241}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:56:33', '2020-02-10 20:56:33'),
(384, 'App\\User', 1, 'created', 'App\\RoomFeature', 242, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"1\",\"updated_at\":\"2020-02-11 03:56:49\",\"created_at\":\"2020-02-11 03:56:49\",\"id\":242}', 'http://chipmongland.local:8080/admin/room-features/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:56:49', '2020-02-10 20:56:49'),
(385, 'App\\User', 1, 'created', 'App\\RoomFeature', 243, '[]', '{\"total\":\"5\",\"amenity_id\":\"2\",\"property_id\":\"2\",\"updated_at\":\"2020-02-11 03:57:28\",\"created_at\":\"2020-02-11 03:57:28\",\"id\":243}', 'http://chipmongland.local:8080/admin/room-features/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:57:28', '2020-02-10 20:57:28'),
(386, 'App\\User', 1, 'created', 'App\\RoomFeature', 244, '[]', '{\"total\":\"1\",\"amenity_id\":\"16\",\"property_id\":\"2\",\"updated_at\":\"2020-02-11 03:57:43\",\"created_at\":\"2020-02-11 03:57:43\",\"id\":244}', 'http://chipmongland.local:8080/admin/room-features/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:57:43', '2020-02-10 20:57:43'),
(387, 'App\\User', 1, 'created', 'App\\RoomFeature', 245, '[]', '{\"total\":\"7\",\"amenity_id\":\"4\",\"property_id\":\"2\",\"updated_at\":\"2020-02-11 03:57:54\",\"created_at\":\"2020-02-11 03:57:54\",\"id\":245}', 'http://chipmongland.local:8080/admin/room-features/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:57:54', '2020-02-10 20:57:54'),
(388, 'App\\User', 1, 'created', 'App\\RoomFeature', 246, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"2\",\"updated_at\":\"2020-02-11 03:58:10\",\"created_at\":\"2020-02-11 03:58:10\",\"id\":246}', 'http://chipmongland.local:8080/admin/room-features/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:58:10', '2020-02-10 20:58:10'),
(389, 'App\\User', 1, 'created', 'App\\RoomFeature', 247, '[]', '{\"total\":\"1\",\"amenity_id\":\"15\",\"property_id\":\"2\",\"updated_at\":\"2020-02-11 03:58:24\",\"created_at\":\"2020-02-11 03:58:24\",\"id\":247}', 'http://chipmongland.local:8080/admin/room-features/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:58:24', '2020-02-10 20:58:24'),
(390, 'App\\User', 1, 'created', 'App\\RoomFeature', 248, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"2\",\"updated_at\":\"2020-02-11 03:58:38\",\"created_at\":\"2020-02-11 03:58:38\",\"id\":248}', 'http://chipmongland.local:8080/admin/room-features/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:58:38', '2020-02-10 20:58:38'),
(391, 'App\\User', 1, 'created', 'App\\RoomFeature', 249, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"3\",\"updated_at\":\"2020-02-11 03:59:24\",\"created_at\":\"2020-02-11 03:59:24\",\"id\":249}', 'http://chipmongland.local:8080/admin/room-features/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:59:24', '2020-02-10 20:59:24'),
(392, 'App\\User', 1, 'created', 'App\\RoomFeature', 250, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"3\",\"updated_at\":\"2020-02-11 03:59:40\",\"created_at\":\"2020-02-11 03:59:40\",\"id\":250}', 'http://chipmongland.local:8080/admin/room-features/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:59:40', '2020-02-10 20:59:40'),
(393, 'App\\User', 1, 'created', 'App\\RoomFeature', 251, '[]', '{\"total\":\"5\",\"amenity_id\":\"4\",\"property_id\":\"3\",\"updated_at\":\"2020-02-11 03:59:54\",\"created_at\":\"2020-02-11 03:59:54\",\"id\":251}', 'http://chipmongland.local:8080/admin/room-features/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 20:59:54', '2020-02-10 20:59:54'),
(394, 'App\\User', 1, 'created', 'App\\RoomFeature', 252, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"3\",\"updated_at\":\"2020-02-11 04:00:05\",\"created_at\":\"2020-02-11 04:00:05\",\"id\":252}', 'http://chipmongland.local:8080/admin/room-features/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:00:05', '2020-02-10 21:00:05'),
(395, 'App\\User', 1, 'updated', 'App\\RoomFeature', 144, '{\"amenity_id\":1,\"total\":\"5+\",\"updated_at\":\"2020-02-10 06:05:12\"}', '{\"amenity_id\":\"13\",\"total\":\"1\",\"updated_at\":\"2020-02-11 04:46:12\"}', 'http://chipmongland.local:8080/admin/room-features/144/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:46:12', '2020-02-10 21:46:12'),
(396, 'App\\User', 1, 'created', 'App\\RoomFeature', 253, '[]', '{\"total\":\"4\",\"amenity_id\":\"2\",\"property_id\":\"25\",\"updated_at\":\"2020-02-11 04:46:30\",\"created_at\":\"2020-02-11 04:46:30\",\"id\":253}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:46:30', '2020-02-10 21:46:30'),
(397, 'App\\User', 1, 'created', 'App\\RoomFeature', 254, '[]', '{\"total\":\"1\",\"amenity_id\":\"20\",\"property_id\":\"25\",\"updated_at\":\"2020-02-11 04:46:55\",\"created_at\":\"2020-02-11 04:46:55\",\"id\":254}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:46:55', '2020-02-10 21:46:55'),
(398, 'App\\User', 1, 'created', 'App\\RoomFeature', 255, '[]', '{\"total\":\"1\",\"amenity_id\":\"1\",\"property_id\":\"25\",\"updated_at\":\"2020-02-11 04:47:15\",\"created_at\":\"2020-02-11 04:47:15\",\"id\":255}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:47:15', '2020-02-10 21:47:15'),
(399, 'App\\User', 1, 'created', 'App\\RoomFeature', 256, '[]', '{\"total\":\"1\",\"amenity_id\":\"14\",\"property_id\":\"25\",\"updated_at\":\"2020-02-11 04:47:45\",\"created_at\":\"2020-02-11 04:47:45\",\"id\":256}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:47:45', '2020-02-10 21:47:45'),
(400, 'App\\User', 1, 'created', 'App\\RoomFeature', 257, '[]', '{\"total\":\"7\",\"amenity_id\":\"11\",\"property_id\":\"25\",\"updated_at\":\"2020-02-11 04:48:03\",\"created_at\":\"2020-02-11 04:48:03\",\"id\":257}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:48:03', '2020-02-10 21:48:03'),
(401, 'App\\User', 1, 'created', 'App\\RoomFeature', 258, '[]', '{\"total\":\"2\",\"amenity_id\":\"7\",\"property_id\":\"25\",\"updated_at\":\"2020-02-11 04:48:17\",\"created_at\":\"2020-02-11 04:48:17\",\"id\":258}', 'http://chipmongland.local:8080/admin/room-features/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:48:17', '2020-02-10 21:48:17'),
(402, 'App\\User', 1, 'updated', 'App\\Amenity', 13, '{\"created_at\":\"2020-02-10 07:11:49\",\"updated_at\":\"2020-02-10 07:11:49\"}', '{\"created_at\":\"2020-02-10 07:11:00\",\"updated_at\":\"2020-02-11 04:57:14\"}', 'http://chipmongland.local:8080/admin/amenities/13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 21:57:14', '2020-02-10 21:57:14'),
(403, 'App\\User', 1, 'updated', 'App\\Amenity', 20, '{\"created_at\":\"2020-02-11 03:34:36\",\"updated_at\":\"2020-02-11 03:34:36\"}', '{\"created_at\":\"2020-02-11 03:34:00\",\"updated_at\":\"2020-02-11 05:08:15\"}', 'http://chipmongland.local:8080/admin/amenities/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:08:15', '2020-02-10 22:08:15'),
(404, 'App\\User', 1, 'updated', 'App\\Amenity', 17, '{\"created_at\":\"2020-02-11 03:19:29\",\"updated_at\":\"2020-02-11 03:19:29\"}', '{\"created_at\":\"2020-02-11 03:19:00\",\"updated_at\":\"2020-02-11 05:08:38\"}', 'http://chipmongland.local:8080/admin/amenities/17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:08:38', '2020-02-10 22:08:38'),
(405, 'App\\User', 1, 'updated', 'App\\Amenity', 14, '{\"created_at\":\"2020-02-10 07:12:45\",\"updated_at\":\"2020-02-10 07:12:45\"}', '{\"created_at\":\"2020-02-10 07:12:00\",\"updated_at\":\"2020-02-11 05:09:08\"}', 'http://chipmongland.local:8080/admin/amenities/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:09:08', '2020-02-10 22:09:08'),
(406, 'App\\User', 1, 'updated', 'App\\Amenity', 11, '{\"created_at\":\"2020-02-10 07:09:45\",\"updated_at\":\"2020-02-10 07:09:45\"}', '{\"created_at\":\"2020-02-10 07:09:00\",\"updated_at\":\"2020-02-11 05:09:23\"}', 'http://chipmongland.local:8080/admin/amenities/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:09:23', '2020-02-10 22:09:23'),
(407, 'App\\User', 1, 'updated', 'App\\Amenity', 10, '{\"created_at\":\"2020-02-10 07:09:14\",\"updated_at\":\"2020-02-10 07:09:14\"}', '{\"created_at\":\"2020-02-10 07:09:00\",\"updated_at\":\"2020-02-11 05:09:39\"}', 'http://chipmongland.local:8080/admin/amenities/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:09:39', '2020-02-10 22:09:39'),
(408, 'App\\User', 1, 'updated', 'App\\Amenity', 9, '{\"created_at\":\"2020-02-10 07:08:58\",\"updated_at\":\"2020-02-10 07:08:58\"}', '{\"created_at\":\"2020-02-10 07:08:00\",\"updated_at\":\"2020-02-11 05:10:02\"}', 'http://chipmongland.local:8080/admin/amenities/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:10:02', '2020-02-10 22:10:02'),
(409, 'App\\User', 1, 'updated', 'App\\Amenity', 19, '{\"created_at\":\"2020-02-11 03:33:35\",\"updated_at\":\"2020-02-11 03:33:35\"}', '{\"created_at\":\"2020-02-11 03:33:00\",\"updated_at\":\"2020-02-11 05:12:02\"}', 'http://chipmongland.local:8080/admin/amenities/19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:12:02', '2020-02-10 22:12:02'),
(410, 'App\\User', 1, 'updated', 'App\\Amenity', 7, '{\"created_at\":\"2020-02-10 07:06:27\",\"updated_at\":\"2020-02-10 07:06:27\"}', '{\"created_at\":\"2020-02-10 07:06:00\",\"updated_at\":\"2020-02-11 05:13:19\"}', 'http://chipmongland.local:8080/admin/amenities/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:13:19', '2020-02-10 22:13:19'),
(411, 'App\\User', 1, 'updated', 'App\\Amenity', 6, '{\"created_at\":\"2020-02-10 07:05:57\",\"updated_at\":\"2020-02-10 07:05:57\"}', '{\"created_at\":\"2020-02-10 07:05:00\",\"updated_at\":\"2020-02-11 05:14:41\"}', 'http://chipmongland.local:8080/admin/amenities/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:14:41', '2020-02-10 22:14:41'),
(412, 'App\\User', 1, 'updated', 'App\\Amenity', 18, '{\"created_at\":\"2020-02-11 03:25:58\",\"updated_at\":\"2020-02-11 03:25:58\"}', '{\"created_at\":\"2020-02-11 03:25:00\",\"updated_at\":\"2020-02-11 05:15:14\"}', 'http://chipmongland.local:8080/admin/amenities/18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:15:14', '2020-02-10 22:15:14'),
(413, 'App\\User', 1, 'updated', 'App\\RoomFeature', 144, '{\"total\":\"1\",\"updated_at\":\"2020-02-11 04:46:12\"}', '{\"total\":\"5+\",\"updated_at\":\"2020-02-11 05:48:43\"}', 'http://chipmongland.local:8080/admin/room-features/144/25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 22:48:43', '2020-02-10 22:48:43'),
(414, 'App\\User', 1, 'updated', 'App\\RoomFeature', 199, '{\"total\":\"4\",\"updated_at\":\"2020-02-11 03:36:54\"}', '{\"total\":\"\\u17e4\",\"updated_at\":\"2020-02-11 06:26:06\"}', 'http://chipmongland.local:8080/admin/room-features/199/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 23:26:06', '2020-02-10 23:26:06'),
(415, 'App\\User', 1, 'updated', 'App\\RoomFeature', 199, '{\"total\":\"\\u17e4\",\"updated_at\":\"2020-02-11 06:26:06\"}', '{\"total\":\"4\",\"updated_at\":\"2020-02-11 06:26:28\"}', 'http://chipmongland.local:8080/admin/room-features/199/16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 23:26:28', '2020-02-10 23:26:28'),
(416, 'App\\User', 1, 'updated', 'App\\RoomFeature', 149, '{\"total\":\"1\",\"updated_at\":\"2020-02-11 02:10:50\"}', '{\"total\":\"\\u17e1\",\"updated_at\":\"2020-02-11 06:32:40\"}', 'http://chipmongland.local:8080/admin/room-features/149/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 23:32:40', '2020-02-10 23:32:40'),
(417, 'App\\User', 1, 'updated', 'App\\RoomFeature', 149, '{\"total\":\"\\u17e1\",\"updated_at\":\"2020-02-11 06:32:40\"}', '{\"total\":\"1\",\"updated_at\":\"2020-02-11 06:32:57\"}', 'http://chipmongland.local:8080/admin/room-features/149/11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', NULL, '2020-02-10 23:32:57', '2020-02-10 23:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `book_visits`
--

CREATE TABLE `book_visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_time` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_visits`
--

INSERT INTO `book_visits` (`id`, `name`, `phone`, `email`, `visit_date`, `visit_time`, `created_at`, `updated_at`, `project_id`) VALUES
(2, 'Porngpisey CHOEM', '070809282', 'porngpisey.choem@chipmong.com', '2020-01-22 00:00:00', '01:30 PM', '2020-01-22 00:21:52', '2020-01-23 01:11:58', 2),
(3, 'Chanthan', '0904948545', NULL, '01/23/2020', '9:00 AM', '2020-01-23 01:04:36', '2020-01-23 01:04:36', 2),
(4, 'Dara', '080534545', NULL, '01/29/2020', '9:00 AM', '2020-01-23 01:07:48', '2020-01-23 01:07:48', 1),
(5, 'Phirum', '070948483', NULL, '01/30/2020', '9:00 AM', '2020-01-23 01:23:27', '2020-01-23 01:23:27', 3),
(6, 'Test', '+855 70 809 282', NULL, '01/23/2020', '9:00 AM', '2020-01-23 01:24:53', '2020-01-23 01:24:53', 3),
(7, 'Nathan John', '096643235', NULL, '01/23/2020', '4:00 PM', '2020-01-23 01:27:18', '2020-01-23 01:27:18', 1),
(8, 'Testing 2', '+855 70 809 282', NULL, '01/23/2020', '9:00 AM', '2020-01-23 01:28:46', '2020-01-23 01:28:46', 3),
(9, 'Testing 4', '657588699', NULL, '01/22/2020', '9:00 AM', '2020-01-23 01:29:40', '2020-01-23 01:29:40', 3),
(10, 'Test District', '+855 70 809 282', NULL, '01/22/2020', '9:00 AM', '2020-01-23 01:33:12', '2020-01-23 01:33:12', 3),
(11, 'Testing user', '0904948545', NULL, '01/23/2020', '9:00 AM', '2020-01-23 01:34:36', '2020-01-23 01:34:36', 3),
(12, 'Test District 12', '+855 70 809 282', NULL, '01/23/2020', '9:00 AM', '2020-01-23 01:46:13', '2020-01-23 01:46:13', 3),
(13, 'Paula Collins', '+1 (279) 327-7425', NULL, '04/23/2015', '9:00 AM', '2020-01-23 01:50:21', '2020-01-23 01:50:21', 3),
(14, 'Alec Good', '+1 (533) 505-6837', NULL, '12/23/1999', '12:00 AM', '2020-01-23 01:53:48', '2020-01-23 01:53:48', 3),
(15, 'Dina Chanthan', '23232323323232', NULL, '01/23/2020', '4:00 PM', '2020-01-23 01:56:30', '2020-01-23 01:56:30', 2),
(16, 'Yoshio Nunez', '+1 (146) 689-10073', NULL, '12/23/1976', '12:00 AM', '2020-01-23 02:03:02', '2020-01-23 02:03:02', 3),
(17, 'Breanna Parsons', '+1 (815) 559-4316', NULL, '10/23/2019', '12:00 AM', '2020-01-23 02:04:13', '2020-01-23 02:04:13', 3),
(18, 'From mobile', '093827262', NULL, '04/01/20', '9:00 AM', '2020-01-23 02:06:10', '2020-01-23 02:06:10', 3),
(19, 'James Wilson', '+1 (297) 805-4739', 'qozux@mailinator.com', '12/23/2010', '12:00 AM', '2020-01-23 02:21:55', '2020-01-23 02:21:55', 3),
(20, 'Xaviera Hartman', '+1 (8108) 944-6218', 'ginuxok@mailinator.com', '06/23/2008', '9:00 AM', '2020-01-23 02:26:21', '2020-01-23 02:26:21', 3),
(21, 'Nina Cox', '+1 (424) 188-10226', 'luviz@mailinator.com', '01/30/2020', '12:00 PM', '2020-01-23 02:27:39', '2020-01-23 02:27:39', 3),
(22, 'Beck Stanton', '+1 (566) 654-4888', 'gajosusyvo@mailinator.com', '11/23/1994', '9:00 AM', '2020-01-23 02:30:48', '2020-01-23 02:30:48', 1),
(23, 'Dina Chanthan', '222222222', 'admin@admin.com', '01/24/2020', '9:00 AM', '2020-01-23 18:11:42', '2020-01-23 18:11:42', 2),
(24, 'Plato Price', '+1 (837) 828-1537', 'nami@mailinator.net', '03/27/1984', '12:00 AM', '2020-01-23 20:28:06', '2020-01-23 20:28:06', 3),
(25, 'Jessica Hinton', '+1 (414) 965-7809', 'mycu@mailinator.net', '05/24/2020', '12:05 PM', '2020-01-24 00:55:31', '2020-01-24 00:55:31', 2),
(26, 'Leila Scott', '+1 (835) 111-7045', 'cuti@mailinator.net', '03/24/2020', '1:00 PM', '2020-01-24 00:58:52', '2020-01-24 00:58:52', 2),
(27, 'Chase Mullen', '+1 (346) 171-3275', 'waxilyjoh@mailinator.net', '12/30/1985', '9:00 AM', '2020-01-30 00:17:06', '2020-01-30 00:17:06', 3),
(28, 'Oren Mckenzie', '+1 (509) 906-3162', 'vuxawatomo@mailinator.com', '05/30/2020', '9:20 AM', '2020-01-30 02:07:01', '2020-01-30 02:07:01', 6),
(29, 'Oren Mckenzie', '+1 (509) 906-3162', 'vuxawatomo@mailinator.com', '05/30/2020', '9:20 AM', '2020-01-30 02:07:49', '2020-01-30 02:07:49', 6),
(30, 'Oren Mckenzie', '+1 (509) 906-3162', 'vuxawatomo@mailinator.com', '05/30/2020', '9:20 AM', '2020-01-30 02:09:17', '2020-01-30 02:09:17', 6),
(31, 'Oren Mckenzie', '+1 (509) 906-3162', 'vuxawatomo@mailinator.com', '05/30/2020', '9:20 AM', '2020-01-30 02:11:28', '2020-01-30 02:11:28', 6),
(32, 'Warren Guzman', '+1 (916) 526-9355', 'vocahejavy@mailinator.net', '02/29/2020', '12:00 AM', '2020-01-30 02:13:21', '2020-01-30 02:13:21', 6),
(33, 'Warren Guzman', '+1 (916) 526-9355', 'vocahejavy@mailinator.net', '02/29/2020', '12:00 AM', '2020-01-30 02:14:00', '2020-01-30 02:14:00', 6),
(34, 'Warren Guzman', '+1 (916) 526-9355', 'vocahejavy@mailinator.net', '02/29/2020', '12:00 AM', '2020-01-30 02:24:23', '2020-01-30 02:24:23', 6),
(35, 'Warren Guzman', '+1 (916) 526-9355', 'vocahejavy@mailinator.net', '02/29/2020', '12:00 AM', '2020-01-30 02:31:40', '2020-01-30 02:31:40', 6),
(36, 'Warren Guzman', '+1 (916) 526-9355', 'vocahejavy@mailinator.net', '02/29/2020', '12:00 AM', '2020-01-30 02:35:02', '2020-01-30 02:35:02', 6),
(37, 'Warren Guzman', '+1 (916) 526-9355', 'vocahejavy@mailinator.net', '02/29/2020', '12:00 AM', '2020-01-30 02:36:39', '2020-01-30 02:36:39', 6),
(38, 'Zephania Nicholson', '+1 (557) 623-6816', 'nypovegovy@mailinator.net', '11/30/2020', '9:00 AM', '2020-01-30 02:47:07', '2020-01-30 02:47:07', 6),
(39, 'Zephania Nicholson', '+1 (557) 623-6816', 'nypovegovy@mailinator.net', '11/30/2020', '9:00 AM', '2020-01-30 02:51:38', '2020-01-30 02:51:38', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 7, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{\"on\":\"Enabled\",\"off\":\"Disabled\",\"checked\":true}', 3),
(25, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(26, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 5),
(52, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(53, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(54, 13, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{\"on\":\"Enabled\",\"off\":\"Disabled\",\"checked\":true}', 3),
(55, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(56, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(95, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 17, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(97, 17, 'contact', 'text', 'Contact', 0, 1, 1, 1, 1, 1, '{}', 3),
(98, 17, 'interest', 'text_area', 'Interest', 0, 1, 1, 1, 1, 1, '{}', 4),
(99, 17, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(100, 17, 'article', 'rich_text_box', 'Article', 0, 1, 1, 1, 1, 1, '{}', 6),
(101, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 7),
(102, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 1, '{}', 8),
(103, 17, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(104, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 1, '{}', 10),
(105, 17, 'facility_belongsto_project_relationship', 'relationship', 'Projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(121, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 20, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(123, 20, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(124, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(125, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(126, 20, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(127, 20, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(128, 20, 'project_image_belongsto_project_relationship', 'relationship', 'Projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(137, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(138, 22, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(139, 22, 'total', 'text', 'Total', 0, 1, 1, 1, 1, 1, '{}', 3),
(140, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(141, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(142, 22, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(143, 22, 'project_size_belongsto_project_relationship', 'relationship', 'Projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(159, 25, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(160, 25, 'word', 'rich_text_box', 'Word', 0, 1, 1, 1, 1, 1, '{}', 2),
(161, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 3),
(162, 25, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 4),
(209, 32, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(210, 32, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(211, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 3),
(212, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(213, 32, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(214, 33, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(215, 33, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(216, 33, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(217, 33, 'attachment', 'image', 'Attachment', 0, 1, 1, 1, 1, 1, '{}', 4),
(218, 33, 'detail', 'rich_text_box', 'Detail', 0, 1, 1, 1, 1, 1, '{}', 5),
(219, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(220, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(221, 33, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(222, 33, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 9),
(223, 33, 'article_type_id', 'text', 'Article Type Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(224, 33, 'article_belongsto_article_type_relationship', 'relationship', 'Article Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ArticleType\",\"table\":\"article_types\",\"type\":\"belongsTo\",\"column\":\"article_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(271, 38, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(272, 38, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(273, 38, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
(274, 38, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(275, 38, 'visit_date', 'date', 'Visit Date', 0, 1, 1, 1, 1, 1, '{\"format\":\"%Y-%m-%d\"}', 5),
(276, 38, 'visit_time', 'text', 'Visit Time', 0, 1, 1, 1, 1, 1, '{}', 6),
(277, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(278, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(279, 38, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(280, 38, 'book_visit_belongsto_project_relationship', 'relationship', 'Projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(281, 39, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(282, 39, 'user_type', 'text', 'User Type', 0, 1, 1, 1, 1, 1, '{}', 2),
(283, 39, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(284, 39, 'event', 'text', 'Event', 1, 1, 1, 1, 1, 1, '{}', 4),
(285, 39, 'auditable_type', 'text', 'Auditable Type', 1, 1, 1, 1, 1, 1, '{}', 5),
(286, 39, 'auditable_id', 'text', 'Auditable Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(287, 39, 'old_values', 'text', 'Old Values', 0, 1, 1, 1, 1, 1, '{}', 7),
(288, 39, 'new_values', 'text', 'New Values', 0, 1, 1, 1, 1, 1, '{}', 8),
(289, 39, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(290, 39, 'ip_address', 'text', 'Ip Address', 0, 1, 1, 1, 1, 1, '{}', 10),
(291, 39, 'user_agent', 'text', 'User Agent', 0, 1, 1, 1, 1, 1, '{}', 11),
(292, 39, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '{}', 12),
(293, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 13),
(294, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(295, 42, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(296, 42, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, '{}', 2),
(297, 42, 'table_name', 'text', 'Table Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(298, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(299, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(300, 43, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(301, 43, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(302, 43, 'start_price', 'number', 'Start Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(303, 43, 'to_price', 'number', 'To Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(304, 43, 'title', 'text_area', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(305, 43, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 6),
(306, 43, 'background', 'image', 'Background', 0, 1, 1, 1, 1, 1, '{}', 7),
(307, 43, 'address', 'text_area', 'Address', 0, 1, 1, 1, 1, 1, '{}', 8),
(308, 43, 'location', 'coordinates', 'Location', 1, 1, 1, 1, 1, 1, '{}', 9),
(309, 43, 'detail', 'rich_text_box', 'Detail', 0, 1, 1, 1, 1, 1, '{}', 10),
(310, 43, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 11),
(311, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(312, 43, 'location_id', 'text', 'Location Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(313, 43, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 0, 1, '{\"on\":\"Publish\",\"off\":\"Unpublish\",\"checked\":false}', 14),
(314, 43, 'project_belongsto_location_relationship', 'relationship', 'Locations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Location\",\"table\":\"locations\",\"type\":\"belongsTo\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(315, 43, 'project_belongstomany_property_type_relationship', 'relationship', 'Property Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PropertyType\",\"table\":\"property_types\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"project_property_type\",\"pivot\":\"1\",\"taggable\":\"on\"}', 16),
(317, 44, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(318, 44, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(319, 44, 'start_price', 'number', 'Start Price', 0, 0, 0, 0, 0, 0, '{}', 3),
(320, 44, 'to_price', 'number', 'To Price', 0, 0, 0, 0, 0, 0, '{}', 4),
(321, 44, 'detail', 'rich_text_box', 'Detail', 0, 1, 1, 1, 1, 1, '{}', 5),
(322, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(323, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(324, 44, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(325, 44, 'layout', 'media_picker', 'Layout', 0, 1, 1, 1, 1, 1, '{\"max\":4,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_as_images\":true,\"allow_rename\":true}', 9),
(326, 44, 'property_type_id', 'text', 'Property Type Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(327, 44, 'property_belongsto_project_relationship', 'relationship', 'Projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(328, 44, 'property_belongsto_property_type_relationship', 'relationship', 'Property Types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PropertyType\",\"table\":\"property_types\",\"type\":\"belongsTo\",\"column\":\"property_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(329, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(330, 45, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(331, 45, 'image', 'media_picker', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(332, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(333, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(356, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(357, 48, 'amenity_id', 'select_dropdown', 'Amenity Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(358, 48, 'total', 'text', 'Total', 0, 1, 1, 1, 1, 1, '{}', 4),
(359, 48, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(360, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(361, 48, 'property_id', 'select_dropdown', 'Property Id', 0, 0, 0, 0, 1, 1, '{}', 3),
(362, 48, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 7),
(381, 48, 'room_feature_belongsto_property_relationship', 'relationship', 'properties', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Property\",\"table\":\"properties\",\"type\":\"belongsTo\",\"column\":\"property_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"amenities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(383, 48, 'room_feature_belongsto_amenity_relationship', 'relationship', 'amenities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Amenity\",\"table\":\"amenities\",\"type\":\"belongsTo\",\"column\":\"amenity_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"amenities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-20 01:41:28', '2020-01-23 20:59:40'),
(7, 'property_types', 'property-types', 'Property Type', 'Property Types', 'voyager-list', 'App\\PropertyType', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 20:54:52', '2019-12-24 21:27:21'),
(9, 'project_size', 'project-size', 'Project Size', 'Project Sizes', NULL, 'App\\ProjectSize', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-25 19:15:48', '2019-12-25 19:15:48'),
(11, 'property', 'property', 'Property', 'Properties', 'voyager-dot', 'App\\Property', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-25 19:32:02', '2019-12-25 19:36:40'),
(13, 'locations', 'locations', 'Location', 'Locations', 'voyager-location', 'App\\Location', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2019-12-25 20:04:19', '2019-12-25 20:08:01'),
(17, 'facilities', 'facilities', 'Facility', 'Facilities', 'voyager-mail', 'App\\Facility', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2019-12-25 20:54:36', '2020-02-11 18:58:50'),
(20, 'project_images', 'project-images', 'Project Image', 'Project Images', 'voyager-images', 'App\\ProjectImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-25 21:06:57', '2020-01-16 21:36:46'),
(22, 'project_sizes', 'project-sizes', 'Project Size', 'Project Sizes', 'voyager-list', 'App\\ProjectSize', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2019-12-25 21:19:15', '2020-01-16 18:37:29'),
(25, 'wordings', 'wordings', 'Wording', 'Wordings', 'voyager-file-text', 'App\\Wording', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"word\",\"scope\":null}', '2019-12-29 19:26:28', '2020-01-07 02:43:31'),
(32, 'article_types', 'article-types', 'Article Type', 'Article Types', NULL, 'App\\ArticleType', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-01-08 20:38:14', '2020-01-08 20:52:39'),
(33, 'articles', 'articles', 'Article', 'Articles', 'voyager-news', 'App\\Article', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"article_type_id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-01-08 20:49:13', '2020-01-28 19:45:52'),
(38, 'book_visits', 'book-visits', 'Book Visit', 'Book Visits', 'voyager-calendar', 'App\\BookVisit', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-01-22 00:42:33', '2020-01-23 03:27:03'),
(39, 'audits', 'audits', 'Audit', 'Audits', 'voyager-logbook', 'App\\Audit', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"event\",\"scope\":null}', '2020-01-23 03:20:05', '2020-01-23 03:31:29'),
(42, 'permissions', 'permissions', 'Permission', 'Permissions', 'voyager-key', 'App\\Permission', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-01-23 21:09:32', '2020-01-23 21:09:32'),
(43, 'projects', 'projects', 'Project', 'Projects', 'voyager-wand', 'App\\Project', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-01-23 21:31:57', '2020-01-23 21:59:26'),
(44, 'properties', 'properties', 'Property', 'Properties', 'voyager-home', 'App\\Property', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-01-30 23:26:59', '2020-02-11 18:52:04'),
(45, 'amenities', 'amenities', 'Amenity', 'Amenities', 'voyager-params', 'App\\Amenity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-02-03 21:41:29', '2020-02-05 19:09:48'),
(48, 'room_features', 'room-features', 'Room Feature', 'Room Features', NULL, 'App\\RoomFeature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-04 00:02:28', '2020-02-10 00:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `contact`, `interest`, `description`, `article`, `created_at`, `updated_at`, `project_id`, `deleted_at`) VALUES
(1, 'Book A Visit', '+855(0)61 997 888', 'Interested?', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">With a mega mall, club house, swimming pool, commercial street, office building, a park, a hotel, and many omre state of the art facilities, Land Mark 271 offers more than just a comfortable and luxurious life</span></p>', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">What are you waiting for? Start booking a visit today.</span></p>', '2020-01-02 18:51:00', '2020-01-21 00:39:26', 1, NULL),
(2, 'Book A Visit', '+855(0)61 997 888', 'Interested?', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Stroll the park or take a break at the club house, pool, and chip mong 598 community mall. Park Land 598 offers this and many more amazing facilities for you and your family to enjoy to the fullest</span></p>', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">What are you waiting for? Start booking a visit today.</span></p>', '2020-01-06 02:05:00', '2020-01-21 00:26:29', 2, NULL),
(3, 'Book A Visit', '+855(0)61 997 888', 'Interested?', '<p>\"Park Land Condo TK has many state of the art facilities for you and your loved ones to enjoy. Take a dip in the pool or jog in the sky track. At Condo TK, everything you need is there.\"</p>', '<p>What are you waiting for? Start booking a visit today.</p>', '2020-01-07 00:28:00', '2020-01-07 00:37:08', 3, NULL),
(4, 'Book A Visit', '+855(0)61 997 888', 'Interested?', '<p><span style=\"color: #000000; font-size: 10px;\">Security, hyper market, club house, swimming pool, Park, hotel, Commercial, and office.</span></p>', '<p>What are you waiting for? Start booking a visit today.</p>', '2020-01-28 19:52:14', '2020-01-28 19:52:14', 5, NULL),
(5, 'Book A Visit', '+855(0)61 997 888', 'Interested?', '<p><span style=\"color: #000000; font-size: 10px;\">Security, hyper market, club house, swimming pool, Park, and Commercial road</span></p>', '<p>What are you waiting for? Start booking a visit today.</p>', '2020-01-29 00:38:13', '2020-01-29 00:38:13', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phnom Penh', 1, '2019-12-25 20:08:45', '2020-01-23 20:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-20 01:41:28', '2019-12-20 01:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2019-12-20 01:41:28', '2019-12-20 02:14:46', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2019-12-20 01:41:28', '2020-01-30 23:29:26', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 55, 3, '2019-12-20 01:41:28', '2020-01-23 21:13:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 55, 1, '2019-12-20 01:41:28', '2020-01-23 21:13:28', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2019-12-20 01:41:28', '2020-01-30 23:29:26', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-20 01:41:28', '2019-12-24 20:58:42', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-20 01:41:28', '2019-12-24 20:58:42', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-20 01:41:28', '2019-12-24 20:58:42', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-20 01:41:28', '2019-12-24 20:58:42', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2019-12-20 01:41:28', '2020-01-30 23:29:26', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-12-20 01:41:28', '2019-12-24 20:58:42', 'voyager.hooks', NULL),
(15, 1, 'Property Types', '', '_self', 'voyager-list', '#000000', 36, 2, '2019-12-24 20:54:52', '2020-01-30 23:29:26', 'voyager.property-types.index', 'null'),
(22, 1, 'Locations', '', '_self', 'voyager-location', '#000000', NULL, 6, '2019-12-25 20:04:19', '2020-01-23 21:54:01', 'voyager.locations.index', 'null'),
(26, 1, 'Facilities', '', '_self', 'voyager-mail', '#000000', 35, 2, '2019-12-25 20:54:36', '2020-01-23 21:54:01', 'voyager.facilities.index', 'null'),
(33, 1, 'Wordings', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2019-12-29 19:26:28', '2020-01-23 21:54:01', 'voyager.wordings.index', 'null'),
(35, 1, 'Manage Project', '', '_self', 'voyager-wand', '#000000', NULL, 2, '2020-01-02 19:34:01', '2020-01-02 19:35:30', NULL, ''),
(36, 1, 'Manage Property', '', '_self', 'voyager-home', '#000000', NULL, 3, '2020-01-02 19:36:16', '2020-01-02 19:36:58', NULL, ''),
(43, 1, 'Article Types', '', '_self', 'voyager-list', '#000000', 45, 2, '2020-01-08 20:38:15', '2020-02-09 23:03:30', 'voyager.article-types.index', 'null'),
(44, 1, 'Articles', '', '_self', 'voyager-news', '#000000', 45, 1, '2020-01-08 20:49:14', '2020-02-09 23:03:30', 'voyager.articles.index', 'null'),
(45, 1, 'Manage Article', '', '_self', 'voyager-news', '#000000', NULL, 4, '2020-01-08 20:56:03', '2020-01-14 20:52:47', NULL, ''),
(51, 1, 'Book Visits', '', '_self', 'voyager-calendar', '#000000', NULL, 5, '2020-01-22 00:42:33', '2020-01-23 03:26:50', 'voyager.book-visits.index', 'null'),
(52, 1, 'Audits', '', '_self', 'voyager-logbook', '#000000', NULL, 8, '2020-01-23 03:20:05', '2020-01-23 21:54:01', 'voyager.audits.index', 'null'),
(54, 1, 'Permissions', '', '_self', 'voyager-key', NULL, 55, 2, '2020-01-23 21:09:32', '2020-01-23 21:13:29', 'voyager.permissions.index', NULL),
(55, 1, 'Administration', '', '_self', 'voyager-people', '#000000', NULL, 9, '2020-01-23 21:13:02', '2020-01-30 23:29:26', NULL, ''),
(56, 1, 'Projects', '', '_self', 'voyager-wand', NULL, 35, 1, '2020-01-23 21:31:58', '2020-01-23 21:54:01', 'voyager.projects.index', NULL),
(57, 1, 'Properties', '', '_self', 'voyager-home', NULL, 36, 1, '2020-01-30 23:26:59', '2020-01-30 23:29:26', 'voyager.properties.index', NULL),
(58, 1, 'Amenities', '', '_self', 'voyager-params', NULL, 36, 3, '2020-02-03 21:41:29', '2020-02-09 23:03:30', 'voyager.amenities.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2020_01_23_101040_create_audits_table', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(2, 'browse_bread', NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(3, 'browse_database', NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(4, 'browse_media', NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(5, 'browse_compass', NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(6, 'browse_menus', 'menus', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(7, 'read_menus', 'menus', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(8, 'edit_menus', 'menus', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(9, 'add_menus', 'menus', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(10, 'delete_menus', 'menus', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(11, 'browse_roles', 'roles', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(12, 'read_roles', 'roles', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(13, 'edit_roles', 'roles', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(14, 'add_roles', 'roles', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(15, 'delete_roles', 'roles', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(16, 'browse_users', 'users', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(17, 'read_users', 'users', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(18, 'edit_users', 'users', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(19, 'add_users', 'users', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(20, 'delete_users', 'users', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(21, 'browse_settings', 'settings', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(22, 'read_settings', 'settings', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(23, 'edit_settings', 'settings', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(24, 'add_settings', 'settings', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(25, 'delete_settings', 'settings', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(26, 'browse_hooks', NULL, '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(37, 'browse_property_types', 'property_types', '2019-12-24 20:54:52', '2019-12-24 20:54:52'),
(38, 'read_property_types', 'property_types', '2019-12-24 20:54:52', '2019-12-24 20:54:52'),
(39, 'edit_property_types', 'property_types', '2019-12-24 20:54:52', '2019-12-24 20:54:52'),
(40, 'add_property_types', 'property_types', '2019-12-24 20:54:52', '2019-12-24 20:54:52'),
(41, 'delete_property_types', 'property_types', '2019-12-24 20:54:52', '2019-12-24 20:54:52'),
(47, 'browse_project_size', 'project_size', '2019-12-25 19:15:48', '2019-12-25 19:15:48'),
(48, 'read_project_size', 'project_size', '2019-12-25 19:15:48', '2019-12-25 19:15:48'),
(49, 'edit_project_size', 'project_size', '2019-12-25 19:15:48', '2019-12-25 19:15:48'),
(50, 'add_project_size', 'project_size', '2019-12-25 19:15:48', '2019-12-25 19:15:48'),
(51, 'delete_project_size', 'project_size', '2019-12-25 19:15:48', '2019-12-25 19:15:48'),
(57, 'browse_property', 'property', '2019-12-25 19:32:02', '2019-12-25 19:32:02'),
(58, 'read_property', 'property', '2019-12-25 19:32:02', '2019-12-25 19:32:02'),
(59, 'edit_property', 'property', '2019-12-25 19:32:02', '2019-12-25 19:32:02'),
(60, 'add_property', 'property', '2019-12-25 19:32:02', '2019-12-25 19:32:02'),
(61, 'delete_property', 'property', '2019-12-25 19:32:02', '2019-12-25 19:32:02'),
(67, 'browse_locations', 'locations', '2019-12-25 20:04:19', '2019-12-25 20:04:19'),
(68, 'read_locations', 'locations', '2019-12-25 20:04:19', '2019-12-25 20:04:19'),
(69, 'edit_locations', 'locations', '2019-12-25 20:04:19', '2019-12-25 20:04:19'),
(70, 'add_locations', 'locations', '2019-12-25 20:04:19', '2019-12-25 20:04:19'),
(71, 'delete_locations', 'locations', '2019-12-25 20:04:19', '2019-12-25 20:04:19'),
(87, 'browse_facilities', 'facilities', '2019-12-25 20:54:36', '2019-12-25 20:54:36'),
(88, 'read_facilities', 'facilities', '2019-12-25 20:54:36', '2019-12-25 20:54:36'),
(89, 'edit_facilities', 'facilities', '2019-12-25 20:54:36', '2019-12-25 20:54:36'),
(90, 'add_facilities', 'facilities', '2019-12-25 20:54:36', '2019-12-25 20:54:36'),
(91, 'delete_facilities', 'facilities', '2019-12-25 20:54:36', '2019-12-25 20:54:36'),
(102, 'browse_project_images', 'project_images', '2019-12-25 21:06:57', '2019-12-25 21:06:57'),
(103, 'read_project_images', 'project_images', '2019-12-25 21:06:57', '2019-12-25 21:06:57'),
(104, 'edit_project_images', 'project_images', '2019-12-25 21:06:57', '2019-12-25 21:06:57'),
(105, 'add_project_images', 'project_images', '2019-12-25 21:06:57', '2019-12-25 21:06:57'),
(106, 'delete_project_images', 'project_images', '2019-12-25 21:06:57', '2019-12-25 21:06:57'),
(112, 'browse_project_sizes', 'project_sizes', '2019-12-25 21:19:15', '2019-12-25 21:19:15'),
(113, 'read_project_sizes', 'project_sizes', '2019-12-25 21:19:15', '2019-12-25 21:19:15'),
(114, 'edit_project_sizes', 'project_sizes', '2019-12-25 21:19:15', '2019-12-25 21:19:15'),
(115, 'add_project_sizes', 'project_sizes', '2019-12-25 21:19:15', '2019-12-25 21:19:15'),
(116, 'delete_project_sizes', 'project_sizes', '2019-12-25 21:19:15', '2019-12-25 21:19:15'),
(122, 'browse_wordings', 'wordings', '2019-12-29 19:26:28', '2019-12-29 19:26:28'),
(123, 'read_wordings', 'wordings', '2019-12-29 19:26:28', '2019-12-29 19:26:28'),
(124, 'edit_wordings', 'wordings', '2019-12-29 19:26:28', '2019-12-29 19:26:28'),
(125, 'add_wordings', 'wordings', '2019-12-29 19:26:28', '2019-12-29 19:26:28'),
(126, 'delete_wordings', 'wordings', '2019-12-29 19:26:28', '2019-12-29 19:26:28'),
(157, 'browse_article_types', 'article_types', '2020-01-08 20:38:15', '2020-01-08 20:38:15'),
(158, 'read_article_types', 'article_types', '2020-01-08 20:38:15', '2020-01-08 20:38:15'),
(159, 'edit_article_types', 'article_types', '2020-01-08 20:38:15', '2020-01-08 20:38:15'),
(160, 'add_article_types', 'article_types', '2020-01-08 20:38:15', '2020-01-08 20:38:15'),
(161, 'delete_article_types', 'article_types', '2020-01-08 20:38:15', '2020-01-08 20:38:15'),
(162, 'browse_articles', 'articles', '2020-01-08 20:49:14', '2020-01-08 20:49:14'),
(163, 'read_articles', 'articles', '2020-01-08 20:49:14', '2020-01-08 20:49:14'),
(164, 'edit_articles', 'articles', '2020-01-08 20:49:14', '2020-01-08 20:49:14'),
(165, 'add_articles', 'articles', '2020-01-08 20:49:14', '2020-01-08 20:49:14'),
(166, 'delete_articles', 'articles', '2020-01-08 20:49:14', '2020-01-08 20:49:14'),
(187, 'browse_book_visits', 'book_visits', '2020-01-22 00:42:33', '2020-01-22 00:42:33'),
(188, 'read_book_visits', 'book_visits', '2020-01-22 00:42:33', '2020-01-22 00:42:33'),
(189, 'edit_book_visits', 'book_visits', '2020-01-22 00:42:33', '2020-01-22 00:42:33'),
(190, 'add_book_visits', 'book_visits', '2020-01-22 00:42:33', '2020-01-22 00:42:33'),
(191, 'delete_book_visits', 'book_visits', '2020-01-22 00:42:33', '2020-01-22 00:42:33'),
(192, 'browse_audits', 'audits', '2020-01-23 03:20:05', '2020-01-23 03:20:05'),
(193, 'read_audits', 'audits', '2020-01-23 03:20:05', '2020-01-23 03:20:05'),
(194, 'edit_audits', 'audits', '2020-01-23 03:20:05', '2020-01-23 03:20:05'),
(195, 'add_audits', 'audits', '2020-01-23 03:20:05', '2020-01-23 03:20:05'),
(196, 'delete_audits', 'audits', '2020-01-23 03:20:05', '2020-01-23 03:20:05'),
(199, 'browse_permissions', 'permissions', '2020-01-23 21:09:32', '2020-01-23 21:09:32'),
(200, 'read_permissions', 'permissions', '2020-01-23 21:09:32', '2020-01-23 21:09:32'),
(201, 'edit_permissions', 'permissions', '2020-01-23 21:09:32', '2020-01-23 21:09:32'),
(202, 'add_permissions', 'permissions', '2020-01-23 21:09:32', '2020-01-23 21:09:32'),
(203, 'delete_permissions', 'permissions', '2020-01-23 21:09:32', '2020-01-23 21:09:32'),
(206, 'browse_projects', 'projects', '2020-01-23 21:31:57', '2020-01-23 21:31:57'),
(207, 'read_projects', 'projects', '2020-01-23 21:31:57', '2020-01-23 21:31:57'),
(208, 'edit_projects', 'projects', '2020-01-23 21:31:57', '2020-01-23 21:31:57'),
(209, 'add_projects', 'projects', '2020-01-23 21:31:57', '2020-01-23 21:31:57'),
(210, 'delete_projects', 'projects', '2020-01-23 21:31:57', '2020-01-23 21:31:57'),
(211, 'browse_properties', 'properties', '2020-01-30 23:26:59', '2020-01-30 23:26:59'),
(212, 'read_properties', 'properties', '2020-01-30 23:26:59', '2020-01-30 23:26:59'),
(213, 'edit_properties', 'properties', '2020-01-30 23:26:59', '2020-01-30 23:26:59'),
(214, 'add_properties', 'properties', '2020-01-30 23:26:59', '2020-01-30 23:26:59'),
(215, 'delete_properties', 'properties', '2020-01-30 23:26:59', '2020-01-30 23:26:59'),
(216, 'browse_amenities', 'amenities', '2020-02-03 21:41:29', '2020-02-03 21:41:29'),
(217, 'read_amenities', 'amenities', '2020-02-03 21:41:29', '2020-02-03 21:41:29'),
(218, 'edit_amenities', 'amenities', '2020-02-03 21:41:29', '2020-02-03 21:41:29'),
(219, 'add_amenities', 'amenities', '2020-02-03 21:41:29', '2020-02-03 21:41:29'),
(220, 'delete_amenities', 'amenities', '2020-02-03 21:41:29', '2020-02-03 21:41:29'),
(231, 'browse_room_features', 'room_features', '2020-02-04 00:02:28', '2020-02-04 00:02:28'),
(232, 'read_room_features', 'room_features', '2020-02-04 00:02:28', '2020-02-04 00:02:28'),
(233, 'edit_room_features', 'room_features', '2020-02-04 00:02:28', '2020-02-04 00:02:28'),
(234, 'add_room_features', 'room_features', '2020-02-04 00:02:28', '2020-02-04 00:02:28'),
(235, 'delete_room_features', 'room_features', '2020-02-04 00:02:28', '2020-02-04 00:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 10),
(2, 1),
(3, 1),
(4, 1),
(4, 11),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(37, 1),
(37, 10),
(38, 1),
(38, 10),
(39, 1),
(39, 10),
(40, 1),
(40, 10),
(41, 1),
(41, 10),
(47, 1),
(47, 10),
(48, 1),
(48, 10),
(49, 1),
(49, 10),
(50, 1),
(50, 10),
(51, 1),
(51, 10),
(57, 1),
(57, 10),
(58, 1),
(58, 10),
(59, 1),
(59, 10),
(60, 1),
(60, 10),
(61, 1),
(61, 10),
(67, 1),
(67, 10),
(68, 1),
(68, 10),
(69, 1),
(69, 10),
(70, 1),
(70, 10),
(71, 1),
(71, 10),
(87, 1),
(87, 10),
(88, 1),
(88, 10),
(89, 1),
(89, 10),
(90, 1),
(90, 10),
(91, 1),
(91, 10),
(102, 1),
(102, 10),
(103, 1),
(103, 10),
(104, 1),
(104, 10),
(105, 1),
(105, 10),
(106, 1),
(106, 10),
(112, 1),
(112, 10),
(113, 1),
(113, 10),
(114, 1),
(114, 10),
(115, 1),
(115, 10),
(116, 1),
(116, 10),
(122, 1),
(122, 10),
(123, 1),
(123, 10),
(124, 1),
(124, 10),
(125, 1),
(125, 10),
(126, 1),
(157, 1),
(157, 10),
(158, 1),
(158, 10),
(159, 1),
(159, 10),
(160, 1),
(160, 10),
(161, 1),
(161, 10),
(162, 1),
(162, 10),
(163, 1),
(163, 10),
(164, 1),
(164, 10),
(165, 1),
(165, 10),
(166, 1),
(166, 10),
(187, 1),
(187, 10),
(188, 1),
(188, 10),
(189, 1),
(189, 10),
(190, 1),
(190, 10),
(191, 1),
(192, 1),
(192, 10),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(206, 1),
(206, 10),
(207, 1),
(207, 10),
(208, 1),
(208, 10),
(209, 1),
(209, 10),
(210, 1),
(210, 10),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_price` double DEFAULT NULL,
  `to_price` double DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` geometry NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `start_price`, `to_price`, `title`, `logo`, `background`, `address`, `location`, `detail`, `created_at`, `updated_at`, `location_id`, `status`) VALUES
(1, 'Landmark 271', 397800, 1050800, 'Experience where home becomes more than a place. Landmark 271 is the epitome of living experiences, with mega malls and hotels, a few steps away.', 'projects\\December2019\\H1d3dFPUiRlfvvSpaNiE.jpg', 'projects\\December2019\\K8XWz551eYljHwhvlkQ8.jpg', 'Phnom Penh', 0x00000000010100000057bf03840e3b5a40482b1beb7b0c2740, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Covering a land area of 42 Ha, Landmark 271 is a mixed-used development projects home to some of the large scale development projects including a mega mall, known as Chip Mong 271 mega mall, an international hotel, commercial offices, condominiums and residential area. The residential project builds 4 types of houses &ndash;Queen Villa, Queen A Villa, Twin Villa and Home Office - with modern design and premium facilities.</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">The project is very well connected to some of the biggest and busiest main street in the city such as St. 271, St. 371 and Hun Sen 60M boulevard, providing convenience to people living and doing business in the project.</span></p>', '2019-12-25 14:58:31', '2020-01-30 23:37:36', 1, 1),
(2, 'Park Land 598', 220900, 683897, 'Offering a wide variety of living arrangements, and a convenient community mall, Park Land 598 provides for everything in one place.', 'projects\\January2020\\mxpaZxsn5HmOs12a8Mpp.jpg', 'projects\\January2020\\G0bu5pLFxkRU0S028gfs.jpg', 'Phnom Penh', 0x000000000101000000d5c103cfd4385a4012e50de348422740, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Situated along St. 598, also known as Cheasophara Street, Park Land 598 offers a wide range of homes including Queen Villa, Queen A Villa, Twin Villa, Link A Villa, Link B Villa, and Shop House. A four-story community mall is also built right inside the project to provide convenience to people living inside and around the project. Other facilities including club house, swimming pool, playground, among others, are also available in the project to enrich people&rsquo;s living experience in the project. Total land area of approximately 40Ha.</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">The project will also be connected to public road to allow in-flow of traffic into the project in order to support people running businesses in the project.</span></p>', '2019-12-31 00:38:54', '2020-01-30 23:41:04', 1, 1),
(3, 'Park Land Condo Tk', 54000, 282000, 'Step into a premium living arrangement that focuses on open and green spaces, community living, and high standards of construction.', 'projects\\January2020\\loOfUla8uwXvXyl2VwYy.jpg', 'projects\\January2020\\2FKNcxlk3O0c4tfplbKK.jpg', 'Toul Kork, Phnom Penh', 0x00000000010100000047bf038a19395a40fb25f2eaa92e2740, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">With a compound nearing the 2 hectares and 26 floors, Park Land Condo TK is an incredible, modern, and impressive condominium</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Take advantage of the incredible facilities offered, that range from a sky jogging track, to a swimming pool and gym. Park Land Condo TK is your dream come true.</span></span></p>', '2020-01-06 23:05:29', '2020-01-30 23:42:40', 1, 1),
(5, 'Landmark 60M', 288800, 1000800, 'With a total land area of approximately 100 Ha, Landmark 60M project is located right on Phnom Penh’s biggest boulevard, Hun Sen 60M boulevard', 'projects\\January2020\\s5KMxYhKe0640JfA0XNv.jpg', 'projects\\January2020\\ke9zpw7Li9RCvlRto8lL.jpg', 'Phnom Penh', 0x00000000010100000059bf033bdf3a5a40058e2e004af92640, '<p><span style=\"color: #000000; font-size: 10px;\">Premium properties with incredible perks. Land Mark 60M not only has a superstore, but also a hypermarket to provide convenience to all its residents.</span></p>', '2020-01-28 19:43:45', '2020-01-30 23:46:46', NULL, 1),
(6, 'Park Land 50M', 168899, 588898, 'Offering a wide variety of living arrangements and a convenient community mall, Park Land 50M provides for everything in one place. ', 'projects\\January2020\\8tU3WFjKpCjvZclFRAcJ.jpg', 'projects\\January2020\\xOSKVmWr9KNz02Pa6sWy.jpg', 'Phnom Penh', 0x00000000010100000088c003374f385a40c2b439c1cd002740, '<p>Situated along street 50M corner with street 30M (Preysar street) offers a wide range of homes including Queen Villa, Queen A Villa, Queen B Villa, Twin Villa, Link A Villa and Shop House. Inside the project, there\'s also a very big commercial street, shopping mall, club house, kid\'s playground, and garden. This project will also be connected to public road to allow in-flow of traffic to project in order to support people running business in the project.</p>', '2020-01-29 00:05:58', '2020-01-30 23:45:49', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `title`, `image`, `created_at`, `updated_at`, `deleted_at`, `project_id`) VALUES
(1, 'Swimming Pool', 'project-images\\December2019\\ANshRdRcheEHWI9I5tyM.jpg', '2019-12-25 22:54:33', '2019-12-25 22:54:45', NULL, 1),
(2, 'Chip Mong 271 Megamall', 'project-images\\December2019\\mtkJ4SgjKQhBzduJj1tM.jpg', '2019-12-25 22:55:21', '2019-12-25 22:55:21', NULL, 1),
(3, 'Garden', 'project-images\\December2019\\oOpyFHnLD38GZ9oSHvxy.jpg', '2019-12-25 22:55:41', '2019-12-25 22:55:52', NULL, 1),
(4, 'Club House', 'project-images\\December2019\\vJfQNTmc06Y9suoajAtS.jpg', '2019-12-25 22:56:14', '2019-12-26 01:44:47', NULL, 1),
(5, 'Club House', 'project-images\\January2020\\f9Qs47J4zFay37mQIXi7.jpg', '2020-01-06 02:10:03', '2020-01-21 02:17:16', NULL, 2),
(6, 'Chip Mong 598 Mall', 'project-images\\January2020\\JwQM7OW4MDFhbnzX5eNr.jpg', '2020-01-06 02:10:33', '2020-01-21 02:16:40', NULL, 2),
(7, 'Roof Garden', 'project-images\\January2020\\3w42A4KoMlAeOScAZWuM.jpg', '2020-01-06 02:11:17', '2020-01-21 02:15:22', NULL, 2),
(8, 'Swimming Pool', 'project-images\\January2020\\lY5K99XKj3J5YdVuIwGw.jpg', '2020-01-06 02:11:43', '2020-01-21 02:14:53', NULL, 2),
(9, 'Swimming Pool', 'project-images\\January2020\\TZ2jt1ppS5GzaHjdyxwv.jpg', '2020-01-07 00:29:19', '2020-01-21 00:45:34', NULL, 3),
(10, 'Roof Garden', 'project-images\\January2020\\mojdYhetLtXoC819XS40.jpg', '2020-01-07 00:29:54', '2020-01-07 00:29:54', NULL, 3),
(11, 'Co-Working Space', 'project-images\\January2020\\k5Xl5xl1pDoWosA2BUjT.jpg', '2020-01-07 00:31:02', '2020-01-21 00:46:54', NULL, 3),
(12, 'Gym', 'project-images\\January2020\\eD6iW06HvUtJeH1qIosN.jpg', '2020-01-07 00:31:37', '2020-01-20 23:09:04', NULL, 3),
(13, 'Swimming Pool', 'project-images\\January2020\\hNewhz8to1kUpRm2JWu3.jpg', '2020-01-28 20:01:17', '2020-01-28 20:01:17', NULL, 5),
(14, 'Garden', 'project-images\\January2020\\LZ1abPitMCGT10nSEvOm.jpg', '2020-01-28 20:01:40', '2020-01-28 20:01:40', NULL, 5),
(15, 'Gym', 'project-images\\January2020\\a5QNep5y8H5xfZwee00w.jpg', '2020-01-28 20:02:14', '2020-01-28 20:02:14', NULL, 5),
(16, 'Hotel', 'project-images\\January2020\\RomqS98DOkcclQtdaRpy.jpg', '2020-01-28 20:02:58', '2020-01-28 20:02:58', NULL, 5),
(17, 'Gym', 'project-images\\January2020\\7zv4lg2eDNyazCUybWpd.jpg', '2020-01-29 00:29:53', '2020-01-29 00:30:23', NULL, 6),
(18, 'Garden', 'project-images\\January2020\\9N3wISxLOKv9R0CU2Ith.jpg', '2020-01-29 00:30:58', '2020-01-29 00:30:58', NULL, 6),
(19, 'Swimming Pool', 'project-images\\January2020\\EgYyeB2SQ7hgL4mWQUkT.jpg', '2020-01-29 00:31:27', '2020-01-29 00:31:27', NULL, 6),
(20, 'Clubhouse', 'project-images\\January2020\\lygQqdhsrJMSGLC7ZOzZ.jpg', '2020-01-29 00:31:48', '2020-01-29 00:31:48', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `project_property_type`
--

CREATE TABLE `project_property_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `property_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_property_type`
--

INSERT INTO `project_property_type` (`id`, `project_id`, `property_type_id`) VALUES
(8, 2, 2),
(12, 1, 1),
(13, 4, 3),
(15, 1, 2),
(18, 2, 1),
(19, 3, 3),
(20, 5, 1),
(21, 5, 2),
(22, 6, 1),
(23, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project_sizes`
--

CREATE TABLE `project_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_sizes`
--

INSERT INTO `project_sizes` (`id`, `title`, `total`, `created_at`, `updated_at`, `project_id`) VALUES
(1, 'Type of Units', '4', '2020-01-02 21:17:16', '2020-01-03 00:12:01', 1),
(2, 'Facilities', '7+', '2020-01-02 21:18:12', '2020-01-02 23:59:42', 1),
(3, 'Type of Unit', '6', '2020-01-06 02:37:31', '2020-01-20 23:05:57', 2),
(4, 'Facilities', '5+', '2020-01-06 02:37:47', '2020-01-06 02:37:47', 2),
(5, 'Floors', '26', '2020-01-06 23:27:37', '2020-01-06 23:27:37', 3),
(6, 'Facilities', '8+', '2020-01-06 23:28:03', '2020-01-06 23:28:03', 3),
(7, 'Hectares', '4', '2020-01-21 01:57:53', '2020-01-21 20:48:32', 3),
(8, 'TYPE OF UNITS', '5', '2020-01-28 20:15:58', '2020-01-28 20:15:58', 5),
(9, 'FACILITIES', '5', '2020-01-28 20:17:10', '2020-01-28 20:17:10', 5),
(10, 'TYPE OF UNITS', '6', '2020-01-29 00:33:27', '2020-01-29 00:33:27', 6),
(11, 'FACILITIES', '5', '2020-01-29 00:33:43', '2020-01-29 00:33:43', 6);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_price` double DEFAULT NULL,
  `to_price` double DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `layout` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `start_price`, `to_price`, `detail`, `created_at`, `updated_at`, `project_id`, `layout`, `property_type_id`) VALUES
(1, 'Queen Villa', NULL, NULL, '<p>Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</p>', '2020-01-02 19:35:00', '2020-01-30 23:34:03', 1, '[\"properties/QUEEN VILLA.jpg\"]', 1),
(2, 'Queen A Villa', NULL, NULL, '<p>Enjoy the comforts and luxuries of a villa as well as the benefits that it fcan bring as a family home</p>', '2020-01-03 00:46:00', '2020-01-30 23:33:57', 1, '[\"properties/QUEEN A VILLA.jpg\"]', 1),
(3, 'TWIN VILLA', NULL, NULL, '<p>Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</p>', '2020-01-03 00:48:00', '2020-01-30 23:33:52', 1, '[\"properties/Twin Villa.jpg\"]', 1),
(6, 'QUEEN VILLA', NULL, NULL, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-06 02:18:00', '2020-01-30 23:33:01', 2, '[\"properties/QUEEN VILLA.jpg\"]', 1),
(7, 'QUEEN A VILLA', NULL, NULL, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-06 02:18:00', '2020-01-30 23:33:06', 2, '[\"properties/QUEEN A VILLA.jpg\"]', 1),
(8, 'TWIN VILLA', NULL, NULL, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-06 02:18:00', '2020-01-30 23:33:11', 2, '[\"properties/Twin Villa.jpg\"]', 1),
(9, 'LINK A VILLA', NULL, NULL, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Modern designs matched with quality materials allows our link houses offer all you need for you and your family to call a home.</span></p>', '2020-01-06 20:36:00', '2020-01-31 00:17:56', 2, '[\"properties/Link House A.jpg\"]', 1),
(10, 'LINK B VILLA', NULL, NULL, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Modern designs matched with quality materials allows our link houses offer all you need for you and your family to call a home.</span></p>', '2020-01-06 21:49:58', '2020-01-31 00:18:17', 2, '[\"properties/Link House B.jpg\"]', 1),
(11, '1 Bedroom', NULL, NULL, '<p>Enjoy the luxury and freedom of Park Land with a comfortable one bedroom home.</p>', '2020-01-06 23:31:00', '2020-01-30 23:32:29', 3, '[\"properties/1 Bedroom.jpg\",\"properties/1 Bedroom2.jpg\"]', 3),
(12, '2 Bedrooms', NULL, NULL, '<p>Bring your dreams to life with quality living arrangemets with a two bedroom home.</p>', '2020-01-06 23:32:00', '2020-01-30 23:32:23', 3, '[\"properties/2 Bedrooms.jpg\",\"properties/2 Bedrooms2.jpg\"]', 3),
(13, 'Penthouse', NULL, NULL, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Live your best and most comfortable life with a spacious and modern penthouse.</span></p>', '2020-01-06 23:33:00', '2020-01-30 23:32:18', 3, '[\"properties/Penthouse.jpg\",\"properties/Penthouse2.jpg\"]', 3),
(14, 'QUEEN VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-28 20:21:15', '2020-01-30 23:31:58', 5, '[\"properties/QUEEN VILLA.jpg\"]', 1),
(15, 'QUEEN A VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-28 20:24:23', '2020-01-30 23:31:53', 5, '[\"properties/QUEEN A VILLA.jpg\"]', 1),
(16, 'TWIN VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-28 20:33:13', '2020-01-30 23:31:23', 5, '[\"properties/Twin Villa.jpg\"]', 1),
(17, 'LINK A VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-28 20:34:12', '2020-01-30 23:31:15', 5, '[\"properties/Link House A.jpg\"]', 1),
(18, 'SHOP HOUSE', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Comfortable and affordable shop houses offer all you need for you and your family to call a home</span></p>', '2020-01-28 20:38:39', '2020-01-30 23:31:01', 5, '[\"properties/Shop-House-60m.jpg\"]', 2),
(19, 'QUEEN VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-29 01:56:48', '2020-01-30 23:30:47', 6, '[\"properties/QUEEN VILLA.jpg\"]', 1),
(20, 'QUEEN A VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-29 01:57:51', '2020-01-30 23:30:39', 6, '[\"properties/QUEEN A VILLA.jpg\"]', 1),
(21, 'QUEEN B VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-29 01:59:30', '2020-01-30 23:30:33', 6, '[\"properties/QB.jpg\"]', 1),
(22, 'TWIN VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-29 02:01:17', '2020-01-30 23:30:26', 6, '[\"properties/Twin Villa.jpg\"]', 1),
(23, 'LINK A VILLA', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Enjoy the comforts and luxuries of a villa as well as the benefits that it can bring as a family home</span></p>', '2020-01-29 02:02:26', '2020-01-30 23:29:59', 6, '[\"properties/Link House A.jpg\"]', 1),
(24, 'SHOP HOUSE', NULL, NULL, '<p><span style=\"color: #000000; font-size: 10px;\">Comfortable and affordable shop houses offer all you need for you and your family to call a home</span></p>', '2020-01-29 02:08:51', '2020-01-30 23:29:47', 6, '[\"properties/Shop House 50M-01.png\"]', 2),
(25, 'HOME OFFICE', NULL, NULL, '<p>Work or run your business with the comfort and ease of your own Home Office.</p>', '2020-01-29 23:36:51', '2020-01-30 23:28:43', 1, '[\"properties/Home-office.jpg\"]', 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Villa', 1, '2019-12-24 20:59:11', '2019-12-24 21:19:25'),
(2, 'Shop House', 1, '2019-12-25 02:31:57', '2019-12-25 02:31:57'),
(3, 'Condominium', 1, '2019-12-25 18:43:24', '2019-12-25 18:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-20 01:41:28', '2019-12-20 01:41:28'),
(10, 'User', 'Normal User', '2020-01-23 22:02:40', '2020-01-23 22:02:40'),
(11, 'Media', 'User can access Media', '2020-01-28 20:16:20', '2020-01-28 20:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `amenity_id` int(11) DEFAULT NULL,
  `total` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`id`, `amenity_id`, `total`, `created_at`, `updated_at`, `property_id`, `deleted_at`) VALUES
(143, 1, '5+', '2020-02-09 21:38:31', '2020-02-09 21:38:31', 24, NULL),
(144, 13, '5+', '2020-02-09 23:05:12', '2020-02-10 22:48:43', 25, NULL),
(145, 2, '6', '2020-02-10 00:22:32', '2020-02-10 00:22:32', 19, NULL),
(146, 3, '1', '2020-02-10 19:05:36', '2020-02-10 19:05:36', 11, NULL),
(147, 8, '1', '2020-02-10 19:06:00', '2020-02-10 19:06:00', 11, NULL),
(148, 10, '1', '2020-02-10 19:10:23', '2020-02-10 19:10:23', 11, NULL),
(149, 11, '1', '2020-02-10 19:10:50', '2020-02-10 23:32:57', 11, NULL),
(150, 9, '1', '2020-02-10 19:11:20', '2020-02-10 19:11:20', 11, NULL),
(151, 12, '', '2020-02-10 19:40:46', '2020-02-10 19:40:46', 12, NULL),
(152, 8, '1', '2020-02-10 19:40:59', '2020-02-10 19:40:59', 12, NULL),
(153, 11, '1', '2020-02-10 19:41:14', '2020-02-10 19:41:14', 12, NULL),
(154, 3, '1', '2020-02-10 19:41:26', '2020-02-10 19:41:26', 12, NULL),
(155, 9, '1', '2020-02-10 19:41:39', '2020-02-10 19:41:39', 12, NULL),
(156, 10, '2', '2020-02-10 19:41:54', '2020-02-10 19:41:54', 12, NULL),
(157, 16, '1', '2020-02-10 20:06:47', '2020-02-10 20:06:47', 19, NULL),
(158, 4, '8', '2020-02-10 20:07:12', '2020-02-10 20:07:12', 19, NULL),
(159, 3, '1', '2020-02-10 20:07:36', '2020-02-10 20:07:36', 19, NULL),
(160, 15, '1', '2020-02-10 20:07:54', '2020-02-10 20:07:54', 19, NULL),
(161, 7, '4', '2020-02-10 20:08:18', '2020-02-10 20:08:18', 19, NULL),
(162, 1, '1', '2020-02-10 20:08:31', '2020-02-10 20:08:31', 19, NULL),
(163, 2, '5', '2020-02-10 20:16:11', '2020-02-10 20:16:11', 20, NULL),
(164, 16, '1', '2020-02-10 20:16:25', '2020-02-10 20:16:25', 20, NULL),
(165, 4, '7', '2020-02-10 20:16:37', '2020-02-10 20:16:37', 20, NULL),
(166, 3, '1', '2020-02-10 20:16:48', '2020-02-10 20:16:48', 20, NULL),
(167, 15, '1', '2020-02-10 20:17:09', '2020-02-10 20:17:09', 20, NULL),
(168, 7, '2', '2020-02-10 20:17:23', '2020-02-10 20:17:23', 20, NULL),
(169, 2, '5', '2020-02-10 20:18:11', '2020-02-10 20:18:11', 21, NULL),
(170, 3, '1', '2020-02-10 20:18:29', '2020-02-10 20:18:29', 21, NULL),
(171, 4, '7', '2020-02-10 20:18:41', '2020-02-10 20:18:41', 21, NULL),
(172, 17, '1', '2020-02-10 20:19:38', '2020-02-10 20:19:38', 21, NULL),
(173, 15, '1', '2020-02-10 20:19:51', '2020-02-10 20:20:07', 21, NULL),
(174, 7, '2', '2020-02-10 20:20:24', '2020-02-10 20:20:24', 21, NULL),
(175, 16, '1', '2020-02-10 20:20:43', '2020-02-10 20:20:43', 21, NULL),
(176, 2, '4', '2020-02-10 20:23:56', '2020-02-10 20:23:56', 22, NULL),
(177, 4, '5', '2020-02-10 20:24:07', '2020-02-10 20:24:07', 22, NULL),
(178, 3, '1', '2020-02-10 20:24:17', '2020-02-10 20:24:17', 22, NULL),
(179, 7, '2', '2020-02-10 20:24:38', '2020-02-10 20:24:38', 22, NULL),
(180, 2, '4', '2020-02-10 20:25:27', '2020-02-10 20:25:27', 23, NULL),
(181, 18, '3', '2020-02-10 20:26:11', '2020-02-10 20:26:11', 23, NULL),
(182, 3, '1', '2020-02-10 20:26:24', '2020-02-10 20:26:24', 23, NULL),
(183, 4, '5', '2020-02-10 20:26:36', '2020-02-10 20:26:36', 23, NULL),
(184, 7, '1', '2020-02-10 20:26:59', '2020-02-10 20:26:59', 23, NULL),
(185, 2, '5', '2020-02-10 20:28:26', '2020-02-10 20:30:45', 15, NULL),
(186, 16, '1', '2020-02-10 20:28:43', '2020-02-10 20:28:43', 15, NULL),
(187, 11, '7', '2020-02-10 20:28:55', '2020-02-10 20:31:32', 15, NULL),
(188, 3, '1', '2020-02-10 20:29:09', '2020-02-10 20:29:09', 15, NULL),
(189, 15, '1', '2020-02-10 20:29:29', '2020-02-10 20:29:29', 15, NULL),
(190, 7, '2', '2020-02-10 20:29:48', '2020-02-10 20:31:52', 15, NULL),
(192, 2, '6', '2020-02-10 20:32:49', '2020-02-10 20:32:49', 14, NULL),
(193, 19, '1', '2020-02-10 20:33:48', '2020-02-10 20:33:48', 14, NULL),
(194, 4, '8', '2020-02-10 20:33:58', '2020-02-10 20:33:58', 14, NULL),
(195, 20, '1', '2020-02-10 20:34:51', '2020-02-10 20:34:51', 14, NULL),
(196, 15, '1', '2020-02-10 20:35:07', '2020-02-10 20:35:07', 14, NULL),
(197, 7, '4', '2020-02-10 20:35:18', '2020-02-10 20:35:18', 14, NULL),
(198, 1, '1', '2020-02-10 20:35:30', '2020-02-10 20:35:30', 14, NULL),
(199, 2, '4', '2020-02-10 20:36:54', '2020-02-10 23:26:28', 16, NULL),
(200, 4, '5', '2020-02-10 20:37:05', '2020-02-10 20:37:05', 16, NULL),
(201, 3, '1', '2020-02-10 20:37:20', '2020-02-10 20:37:20', 16, NULL),
(202, 7, '2', '2020-02-10 20:37:32', '2020-02-10 20:37:32', 16, NULL),
(203, 2, '4', '2020-02-10 20:38:08', '2020-02-10 20:38:08', 17, NULL),
(204, 18, '3', '2020-02-10 20:38:19', '2020-02-10 20:38:19', 17, NULL),
(205, 7, '1', '2020-02-10 20:38:39', '2020-02-10 20:38:39', 17, NULL),
(206, 19, '1', '2020-02-10 20:38:55', '2020-02-10 20:38:55', 17, NULL),
(207, 4, '5', '2020-02-10 20:39:06', '2020-02-10 20:39:06', 17, NULL),
(208, 2, '6', '2020-02-10 20:40:45', '2020-02-10 20:40:45', 6, NULL),
(209, 20, '1', '2020-02-10 20:41:19', '2020-02-10 20:41:19', 6, NULL),
(210, 16, '1', '2020-02-10 20:41:36', '2020-02-10 20:41:36', 6, NULL),
(211, 15, '1', '2020-02-10 20:41:50', '2020-02-10 20:41:50', 6, NULL),
(212, 4, '8', '2020-02-10 20:42:01', '2020-02-10 20:42:01', 6, NULL),
(213, 7, '4', '2020-02-10 20:42:12', '2020-02-10 20:42:12', 6, NULL),
(214, 1, '1', '2020-02-10 20:42:23', '2020-02-10 20:42:23', 6, NULL),
(215, 2, '4', '2020-02-10 20:43:11', '2020-02-10 20:50:24', 9, NULL),
(216, 20, '1', '2020-02-10 20:43:25', '2020-02-10 20:43:25', 9, NULL),
(218, 18, '3', '2020-02-10 20:43:53', '2020-02-10 20:50:08', 9, NULL),
(219, 4, '5', '2020-02-10 20:44:06', '2020-02-10 20:49:44', 9, NULL),
(220, 7, '1', '2020-02-10 20:44:29', '2020-02-10 20:49:30', 9, NULL),
(221, 2, '5', '2020-02-10 20:45:47', '2020-02-10 20:45:47', 7, NULL),
(222, 20, '1', '2020-02-10 20:46:00', '2020-02-10 20:46:00', 7, NULL),
(223, 16, '1', '2020-02-10 20:46:24', '2020-02-10 20:46:24', 7, NULL),
(224, 15, '1', '2020-02-10 20:46:39', '2020-02-10 20:46:39', 7, NULL),
(225, 4, '7', '2020-02-10 20:46:51', '2020-02-10 20:46:51', 7, NULL),
(226, 7, '2', '2020-02-10 20:47:11', '2020-02-10 20:47:11', 7, NULL),
(227, 2, '4', '2020-02-10 20:47:47', '2020-02-10 20:47:47', 8, NULL),
(228, 20, '1', '2020-02-10 20:48:01', '2020-02-10 20:48:01', 8, NULL),
(229, 4, '5', '2020-02-10 20:48:12', '2020-02-10 20:48:12', 8, NULL),
(230, 7, '2', '2020-02-10 20:48:25', '2020-02-10 20:48:25', 8, NULL),
(231, 3, '1', '2020-02-10 20:51:43', '2020-02-10 20:51:43', 10, NULL),
(232, 2, '3', '2020-02-10 20:51:53', '2020-02-10 20:51:53', 10, NULL),
(233, 4, '4', '2020-02-10 20:52:04', '2020-02-10 20:52:04', 10, NULL),
(234, 18, '3', '2020-02-10 20:52:18', '2020-02-10 20:52:18', 10, NULL),
(235, 7, '1', '2020-02-10 20:52:31', '2020-02-10 20:52:31', 10, NULL),
(236, 2, '6', '2020-02-10 20:55:21', '2020-02-10 20:55:21', 1, NULL),
(237, 19, '1', '2020-02-10 20:55:34', '2020-02-10 20:55:34', 1, NULL),
(238, 4, '8', '2020-02-10 20:55:45', '2020-02-10 20:55:45', 1, NULL),
(239, 7, '4', '2020-02-10 20:55:59', '2020-02-10 20:55:59', 1, NULL),
(240, 20, '1', '2020-02-10 20:56:23', '2020-02-10 20:56:23', 1, NULL),
(241, 1, '1', '2020-02-10 20:56:33', '2020-02-10 20:56:33', 1, NULL),
(242, 15, '1', '2020-02-10 20:56:49', '2020-02-10 20:56:49', 1, NULL),
(243, 2, '5', '2020-02-10 20:57:28', '2020-02-10 20:57:28', 2, NULL),
(244, 16, '1', '2020-02-10 20:57:43', '2020-02-10 20:57:43', 2, NULL),
(245, 4, '7', '2020-02-10 20:57:54', '2020-02-10 20:57:54', 2, NULL),
(246, 20, '1', '2020-02-10 20:58:10', '2020-02-10 20:58:10', 2, NULL),
(247, 15, '1', '2020-02-10 20:58:24', '2020-02-10 20:58:24', 2, NULL),
(248, 7, '2', '2020-02-10 20:58:38', '2020-02-10 20:58:38', 2, NULL),
(249, 2, '4', '2020-02-10 20:59:24', '2020-02-10 20:59:24', 3, NULL),
(250, 20, '1', '2020-02-10 20:59:40', '2020-02-10 20:59:40', 3, NULL),
(251, 4, '5', '2020-02-10 20:59:54', '2020-02-10 20:59:54', 3, NULL),
(252, 7, '2', '2020-02-10 21:00:05', '2020-02-10 21:00:05', 3, NULL),
(253, 2, '4', '2020-02-10 21:46:30', '2020-02-10 21:46:30', 25, NULL),
(254, 20, '1', '2020-02-10 21:46:55', '2020-02-10 21:46:55', 25, NULL),
(255, 1, '1', '2020-02-10 21:47:15', '2020-02-10 21:47:15', 25, NULL),
(256, 14, '1', '2020-02-10 21:47:45', '2020-02-10 21:47:45', 25, NULL),
(257, 11, '7', '2020-02-10 21:48:03', '2020-02-10 21:48:03', 25, NULL),
(258, 7, '2', '2020-02-10 21:48:17', '2020-02-10 21:48:17', 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'CMLD', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'admin.logo', 'Site Logo', 'settings\\December2019\\pA5JstR3ujJx5UTAleR6.png', '', 'image', 3, 'Admin'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\December2019\\27ouU3CkrhkOpq5YqVrp.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'CMLD Management', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Chip Mong Land Management.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\December2019\\NYZPgEbsEtILQ24tXk6Y.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '835634884660-h3r3rjrajgnoso4j6oo4nqi5inbf4a8a.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'menu_items', 'title', 1, 'kh', 'Dashboard', '2019-12-20 02:14:46', '2019-12-20 02:17:15'),
(4, 'menu_items', 'title', 15, 'kh', 'ប្រភេទផ្ទះ', '2019-12-24 20:58:31', '2019-12-24 21:17:09'),
(5, 'data_rows', 'display_name', 22, 'kh', 'Id', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(6, 'data_rows', 'display_name', 23, 'kh', 'Name', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(7, 'data_rows', 'display_name', 24, 'kh', 'Status', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(8, 'data_rows', 'display_name', 25, 'kh', 'Created At', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(9, 'data_rows', 'display_name', 26, 'kh', 'Updated At', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(10, 'data_types', 'display_name_singular', 7, 'kh', 'Property Type', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(11, 'data_types', 'display_name_plural', 7, 'kh', 'Property Types', '2019-12-24 21:09:32', '2019-12-24 21:09:32'),
(12, 'property_types', 'name', 1, 'kh', 'វីឡា', '2019-12-24 21:29:03', '2019-12-30 19:19:05'),
(13, 'property_types', 'name', 2, 'kh', 'ហ្សបហោស៍', '2019-12-25 02:31:57', '2019-12-25 02:31:57'),
(14, 'property_types', 'name', 3, 'kh', 'ខុនដូ', '2019-12-25 18:43:24', '2019-12-25 18:43:24'),
(15, 'data_types', 'display_name_singular', 11, 'kh', 'Property', '2019-12-25 19:36:40', '2019-12-25 19:36:40'),
(16, 'data_types', 'display_name_plural', 11, 'kh', 'Properties', '2019-12-25 19:36:40', '2019-12-25 19:36:40'),
(18, 'data_rows', 'display_name', 34, 'kh', 'Id', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(19, 'data_rows', 'display_name', 35, 'kh', 'Name', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(20, 'data_rows', 'display_name', 36, 'kh', 'Start Price', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(21, 'data_rows', 'display_name', 37, 'kh', 'To Price', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(22, 'data_rows', 'display_name', 38, 'kh', 'Title', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(23, 'data_rows', 'display_name', 39, 'kh', 'Logo', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(24, 'data_rows', 'display_name', 40, 'kh', 'Background', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(25, 'data_rows', 'display_name', 41, 'kh', 'Address', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(26, 'data_rows', 'display_name', 42, 'kh', 'Latitude', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(27, 'data_rows', 'display_name', 43, 'kh', 'Longitude', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(28, 'data_rows', 'display_name', 44, 'kh', 'Detail', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(29, 'data_rows', 'display_name', 45, 'kh', 'Created At', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(30, 'data_rows', 'display_name', 46, 'kh', 'Updated At', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(31, 'data_rows', 'display_name', 47, 'kh', 'Property Id', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(32, 'data_rows', 'display_name', 48, 'kh', 'Location Id', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(33, 'data_rows', 'display_name', 49, 'kh', 'Facility Id', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(34, 'data_rows', 'display_name', 50, 'kh', 'property_types', '2019-12-25 19:38:12', '2019-12-25 19:38:12'),
(37, 'menu_items', 'title', 22, 'kh', 'Locations', '2019-12-25 20:05:04', '2019-12-25 20:05:04'),
(38, 'data_rows', 'display_name', 52, 'kh', 'Id', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(39, 'data_rows', 'display_name', 53, 'kh', 'Name', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(40, 'data_rows', 'display_name', 54, 'kh', 'Status', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(41, 'data_rows', 'display_name', 55, 'kh', 'Created At', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(42, 'data_rows', 'display_name', 56, 'kh', 'Updated At', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(43, 'data_types', 'display_name_singular', 13, 'kh', 'Location', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(44, 'data_types', 'display_name_plural', 13, 'kh', 'Locations', '2019-12-25 20:08:01', '2019-12-25 20:08:01'),
(45, 'locations', 'name', 1, 'kh', 'ភ្នំពេញ', '2019-12-25 20:22:54', '2019-12-25 20:22:54'),
(46, 'data_rows', 'display_name', 59, 'kh', 'Id', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(47, 'data_rows', 'display_name', 60, 'kh', 'Name', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(48, 'data_rows', 'display_name', 61, 'kh', 'Start Price', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(49, 'data_rows', 'display_name', 62, 'kh', 'To Price', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(50, 'data_rows', 'display_name', 63, 'kh', 'Title', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(51, 'data_rows', 'display_name', 64, 'kh', 'Logo', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(52, 'data_rows', 'display_name', 65, 'kh', 'Background', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(53, 'data_rows', 'display_name', 66, 'kh', 'Address', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(54, 'data_rows', 'display_name', 67, 'kh', 'Latitude', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(55, 'data_rows', 'display_name', 68, 'kh', 'Longitude', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(56, 'data_rows', 'display_name', 69, 'kh', 'Detail', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(57, 'data_rows', 'display_name', 70, 'kh', 'Created At', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(58, 'data_rows', 'display_name', 71, 'kh', 'Updated At', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(59, 'data_rows', 'display_name', 72, 'kh', 'Property Type Id', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(60, 'data_rows', 'display_name', 73, 'kh', 'Location Id', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(61, 'data_rows', 'display_name', 74, 'kh', 'locations', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(62, 'data_rows', 'display_name', 75, 'kh', 'property_types', '2019-12-25 20:41:04', '2019-12-25 20:41:04'),
(65, 'menu_items', 'title', 23, 'kh', 'Projects', '2019-12-25 20:41:40', '2019-12-25 20:41:40'),
(66, 'menu_items', 'title', 24, 'kh', 'Facilities', '2019-12-25 20:45:56', '2019-12-25 20:45:56'),
(67, 'data_rows', 'display_name', 76, 'kh', 'Id', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(68, 'data_rows', 'display_name', 77, 'kh', 'Title', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(69, 'data_rows', 'display_name', 78, 'kh', 'Contact', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(70, 'data_rows', 'display_name', 79, 'kh', 'Interest', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(71, 'data_rows', 'display_name', 80, 'kh', 'Description', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(72, 'data_rows', 'display_name', 81, 'kh', 'Article', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(73, 'data_rows', 'display_name', 82, 'kh', 'Created At', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(74, 'data_rows', 'display_name', 83, 'kh', 'Updated At', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(75, 'data_rows', 'display_name', 84, 'kh', 'Project Id', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(76, 'data_rows', 'display_name', 85, 'kh', 'projects', '2019-12-25 20:46:50', '2019-12-25 20:46:50'),
(79, 'data_rows', 'display_name', 86, 'kh', 'Id', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(80, 'data_rows', 'display_name', 87, 'kh', 'Name', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(81, 'data_rows', 'display_name', 88, 'kh', 'Start Price', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(82, 'data_rows', 'display_name', 89, 'kh', 'To Price', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(83, 'data_rows', 'display_name', 90, 'kh', 'Detail', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(84, 'data_rows', 'display_name', 91, 'kh', 'Created At', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(85, 'data_rows', 'display_name', 92, 'kh', 'Updated At', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(86, 'data_rows', 'display_name', 93, 'kh', 'Project Id', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(87, 'data_rows', 'display_name', 94, 'kh', 'projects', '2019-12-25 20:48:51', '2019-12-25 20:48:51'),
(90, 'menu_items', 'title', 25, 'kh', 'Properties', '2019-12-25 20:50:15', '2019-12-25 20:50:15'),
(91, 'data_rows', 'display_name', 95, 'kh', 'Id', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(92, 'data_rows', 'display_name', 96, 'kh', 'Title', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(93, 'data_rows', 'display_name', 97, 'kh', 'Contact', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(94, 'data_rows', 'display_name', 98, 'kh', 'Interest', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(95, 'data_rows', 'display_name', 99, 'kh', 'Description', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(96, 'data_rows', 'display_name', 100, 'kh', 'Article', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(97, 'data_rows', 'display_name', 101, 'kh', 'Created At', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(98, 'data_rows', 'display_name', 102, 'kh', 'Updated At', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(99, 'data_rows', 'display_name', 103, 'kh', 'Project Id', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(100, 'data_rows', 'display_name', 104, 'kh', 'Deleted At', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(101, 'data_rows', 'display_name', 105, 'kh', 'projects', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(102, 'data_types', 'display_name_singular', 17, 'kh', 'Facility', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(103, 'data_types', 'display_name_plural', 17, 'kh', 'Facilities', '2019-12-25 20:55:31', '2019-12-25 20:55:31'),
(104, 'data_rows', 'display_name', 129, 'kh', 'Id', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(105, 'data_rows', 'display_name', 130, 'kh', 'Title', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(106, 'data_rows', 'display_name', 131, 'kh', 'Slug', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(107, 'data_rows', 'display_name', 132, 'kh', 'Attachment', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(108, 'data_rows', 'display_name', 133, 'kh', 'Detail', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(109, 'data_rows', 'display_name', 134, 'kh', 'Created At', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(110, 'data_rows', 'display_name', 135, 'kh', 'Updated At', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(111, 'data_rows', 'display_name', 136, 'kh', 'Deleted At', '2019-12-25 21:10:04', '2019-12-25 21:10:04'),
(114, 'menu_items', 'title', 30, 'kh', 'Articles', '2019-12-25 21:12:53', '2019-12-25 21:12:53'),
(125, 'data_rows', 'display_name', 144, 'kh', 'Id', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(126, 'data_rows', 'display_name', 145, 'kh', 'Name', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(127, 'data_rows', 'display_name', 146, 'kh', 'Start Price', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(128, 'data_rows', 'display_name', 147, 'kh', 'To Price', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(129, 'data_rows', 'display_name', 148, 'kh', 'Title', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(130, 'data_rows', 'display_name', 149, 'kh', 'Logo', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(131, 'data_rows', 'display_name', 150, 'kh', 'Background', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(132, 'data_rows', 'display_name', 151, 'kh', 'Address', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(133, 'data_rows', 'display_name', 152, 'kh', 'Location', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(134, 'data_rows', 'display_name', 153, 'kh', 'Detail', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(135, 'data_rows', 'display_name', 154, 'kh', 'Created At', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(136, 'data_rows', 'display_name', 155, 'kh', 'Updated At', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(137, 'data_rows', 'display_name', 156, 'kh', 'Location Id', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(138, 'data_rows', 'display_name', 157, 'kh', 'locations', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(139, 'data_rows', 'display_name', 158, 'kh', 'property_types', '2019-12-25 21:58:23', '2019-12-25 21:58:23'),
(142, 'projects', 'name', 2, 'kh', 'គម្រោង ផាក លែន ៥៩៨', '2019-12-25 21:59:31', '2020-01-21 00:19:31'),
(143, 'projects', 'start_price', 2, 'kh', '220900', '2019-12-25 21:59:31', '2020-01-28 19:37:50'),
(144, 'projects', 'to_price', 2, 'kh', '683897', '2019-12-25 21:59:31', '2020-01-28 19:37:50'),
(145, 'projects', 'title', 2, 'kh', 'ផ្តល់ជូនគេហដ្ឋានជាច្រើនប្រភេទដ៏សម្បូរបែបក្នុងការរស់នៅ រួមជាមួយផ្សារទំនើបប្រកបដោយផាសុកភាព គម្រោង ផាកលែន ៥៩៨ ផ្តល់ជូនអ្វីៗគ្រប់យ៉ាងក្នុងកន្លែងតែ១។', '2019-12-25 21:59:31', '2020-01-21 00:19:31'),
(146, 'projects', 'address', 2, 'kh', 'ភ្នំពេញ ', '2019-12-25 21:59:31', '2020-01-01 23:28:04'),
(147, 'projects', 'detail', 2, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">មាន​ទី​តាំង​នៅ​តាម​បណ្តោយផ្លូវ​លេខ ៥៩៨ ឬ វិថី​ឯកឧត្តម ជា សុផារ៉ា ផាក​ លែន​ ៥៩៨ ផ្តល់​ជូន​គេហដ្ឋាន​ជា​ច្រើន​ប្រភេទ។</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">គម្រោង​ ផាក​ លែន ៥៩៨ មិន​ត្រឹម​តែ​ផ្តល់​ជូន​នូវ​បទពិសោធន៍​រស់​នៅ​ដ៏​ល្អ​ឥតខ្ចោះ​នោះ​ទេ​ ថែម​ទាំងការ​រស់​នៅ​បែប​ប្រណិត និង​មាន​លក្ខណៈ​បែប​សិល្បៈ​ថែម​ទៀត​ផង មិន​ថា​លោក​អ្នក​រស់​នៅ​ក្នុង​គេ​ហដ្ឋាន​បែប​ណា​នោះ​ឡើយ។</span></span></p>', '2019-12-25 21:59:31', '2020-01-21 00:33:53'),
(148, 'menu_items', 'title', 28, 'kh', 'Property Layouts', '2019-12-25 22:41:39', '2019-12-25 22:41:39'),
(149, 'menu_items', 'title', 27, 'kh', 'Room Features', '2019-12-25 22:47:23', '2019-12-25 22:47:23'),
(150, 'menu_items', 'title', 26, 'kh', 'Facilities', '2019-12-25 22:50:25', '2019-12-25 22:50:25'),
(151, 'project_images', 'title', 4, 'kh', 'ក្លឹបហាត់ប្រាណ', '2019-12-26 01:44:11', '2019-12-26 01:44:47'),
(152, 'project_images', 'title', 3, 'kh', 'សួនច្បារ', '2019-12-26 01:45:40', '2019-12-26 01:45:40'),
(153, 'project_images', 'title', 2, 'kh', 'ផ្សារទំនើប ជីប ម៉ង​​ 271', '2019-12-26 01:48:20', '2019-12-26 01:48:20'),
(154, 'project_images', 'title', 1, 'kh', 'អាងហែលទឹក', '2019-12-26 01:48:41', '2019-12-26 01:48:41'),
(155, 'articles', 'title', 2, 'kh', 'ស្វែករកលំនៅឋានរបស់អ្នក', '2019-12-29 18:13:44', '2019-12-29 18:13:44'),
(158, 'articles', 'title', 3, 'kh', 'មិនទាន់ប្រាកដថាចង់បានផ្ទះបែបម៉េច មែនទេ?', '2019-12-29 19:21:23', '2019-12-29 19:22:11'),
(159, 'articles', 'detail', 3, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទុក​ឲ្យ​យើង​ខ្ញុំ​បង្ហាញនូវ​អ្វី​ដែល​សាក​សម​បំផុត​ ទៅនឹង​តម្រូវការ​របស់​​លោក​អ្នក​</span><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">។​ ធ្វើ​តេស្ត​សាក​ល្បងដើម្បី​ដឹង​ថា​ ក្រុម​ហ៊ុន​ ជីបម៉ុង​លែន​មាន​អ្វីផ្តល់​ជូនលោក​អ្នក​បាន។</span></p>', '2019-12-29 19:21:23', '2019-12-29 19:22:37'),
(160, 'menu_items', 'title', 33, 'kh', 'Wordings', '2019-12-29 19:27:37', '2019-12-29 19:27:37'),
(161, 'data_rows', 'display_name', 159, 'kh', 'Id', '2019-12-29 19:28:22', '2019-12-29 19:28:22'),
(162, 'data_rows', 'display_name', 160, 'kh', 'Word', '2019-12-29 19:28:22', '2019-12-29 19:28:22'),
(163, 'data_rows', 'display_name', 161, 'kh', 'Created At', '2019-12-29 19:28:22', '2019-12-29 19:28:22'),
(164, 'data_rows', 'display_name', 162, 'kh', 'Updated At', '2019-12-29 19:28:22', '2019-12-29 19:28:22'),
(165, 'data_types', 'display_name_singular', 25, 'kh', 'Wording', '2019-12-29 19:28:22', '2019-12-29 19:28:22'),
(166, 'data_types', 'display_name_plural', 25, 'kh', 'Wordings', '2019-12-29 19:28:22', '2019-12-29 19:28:22'),
(167, 'wordings', 'word', 1, 'kh', 'ជាតួរលេខ', '2019-12-29 19:36:06', '2019-12-29 19:36:06'),
(168, 'wordings', 'word', 2, 'kh', 'ក្រុម​ហ៊ុន​ ជីប ម៉ុង​លែន បាន​នាំ​មក​ជូន​នូវ​ការ​រស់​នៅ​ដែល​ប្រកប​ដោយ​គុណភាព និង​ជាទី​ទុក​ចិត្ត​ដល់​ប្រទេស​កម្ពុជា។', '2019-12-29 19:36:39', '2019-12-29 19:36:39'),
(169, 'wordings', 'word', 3, 'kh', '<p>+១១|ដំណើរការជាង១១ឆ្នាំ</p>', '2019-12-29 19:37:17', '2019-12-30 01:37:37'),
(170, 'wordings', 'word', 4, 'kh', '<p>៨+|មានគម្រោងអភិវឌ្ឍន៍ជាង៨ទីតាំង</p>', '2019-12-29 19:38:03', '2019-12-30 01:46:11'),
(171, 'wordings', 'word', 5, 'kh', '<p>៥០+|មានគោលដៅរយៈពេលវែងគិតជាឆ្នាំ</p>', '2019-12-29 19:38:25', '2019-12-30 01:48:33'),
(172, 'wordings', 'word', 6, 'kh', 'ចាប់ផ្តើម', '2019-12-29 19:39:58', '2019-12-29 19:39:58'),
(173, 'wordings', 'word', 7, 'kh', 'ជីប ម៉ុងលែន', '2019-12-29 19:41:11', '2019-12-29 19:41:11'),
(174, 'wordings', 'word', 8, 'kh', 'ប្រភេទអចលនទ្រព្យ', '2019-12-29 19:41:44', '2019-12-29 19:41:44'),
(175, 'wordings', 'word', 9, 'kh', 'ទំនាក់ទំនង', '2019-12-29 19:42:04', '2019-12-29 19:42:04'),
(176, 'wordings', 'word', 10, 'kh', '<p>១៣៧B មហាវិថី​ម៉ៅសេទុងភ្នំពេញ |</p>\n<p>(855) 61 997 888/68 997 888/81 997 888 |</p>\n<p><a href=\"mailto:sales@chipmongland.com\">sales@chipmongland.com</a></p>', '2019-12-29 19:45:13', '2019-12-30 18:59:39'),
(177, 'wordings', 'word', 11, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រក្សាសិទ្ធគ្រប់យ៉ាងដោយ ក្រុមហ៊ុន ជីប ម៉ុងលែន 2019</span></p>', '2019-12-29 19:48:38', '2019-12-29 19:48:38'),
(178, 'wordings', 'word', 12, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ល័ក្ខខ័ណ្ឌត្រូវបានអនុវត្ត</span></p>', '2019-12-29 19:50:10', '2020-01-02 01:36:29'),
(179, 'wordings', 'word', 13, 'kh', '<p><a href=\"https://chipmongland.com/termscondition\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">គោលការណ៍​ភាព​ឯកជន</span></a></p>', '2019-12-29 19:51:07', '2019-12-29 19:51:07'),
(180, 'wordings', 'word', 17, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ជ្រើសរើសគម្រោង</span></p>', '2019-12-29 19:57:34', '2019-12-29 19:57:34'),
(181, 'wordings', 'word', 18, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ជ្រើសរើសទីកន្លែង</span></p>', '2019-12-29 19:57:51', '2019-12-29 19:57:51'),
(182, 'wordings', 'word', 19, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ជ្រើសរើសប្រភេទផ្ទះ</span></p>', '2019-12-29 19:58:09', '2019-12-29 19:58:09'),
(183, 'wordings', 'word', 21, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទាំងអស់</span></p>', '2019-12-29 19:58:23', '2019-12-29 19:58:23'),
(184, 'wordings', 'word', 20, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ជ្រើសរើសតម្លៃ</span></p>', '2019-12-29 19:58:47', '2019-12-29 19:58:47'),
(185, 'wordings', 'word', 24, 'kh', '<p><a href=\"https://chipmongland.com/listnews\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">មើលទាំងអស់</span></a></p>', '2019-12-29 20:04:08', '2019-12-29 20:04:08'),
(186, 'wordings', 'word', 23, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">សកម្មភាពថ្មីៗ</span></p>', '2019-12-29 20:04:32', '2019-12-29 20:04:32'),
(187, 'wordings', 'word', 25, 'kh', '<p><span style=\"color: #000000; font-family: monospace; font-size: medium; white-space: pre-wrap;\">$40ពាន់ - $100ពាន់</span></p>', '2019-12-30 00:11:02', '2019-12-30 00:11:02'),
(188, 'wordings', 'word', 26, 'kh', '<p><span style=\"color: #000000; font-family: monospace; font-size: medium; white-space: pre-wrap;\">$101ពាន់ - $250ពាន់</span></p>', '2019-12-30 00:11:30', '2019-12-30 00:11:30'),
(189, 'wordings', 'word', 27, 'kh', '<p><span style=\"color: #000000; font-family: monospace; font-size: medium; white-space: pre-wrap;\">$251ពាន់ - $400ពាន់</span></p>', '2019-12-30 00:11:45', '2019-12-30 00:11:45'),
(190, 'wordings', 'word', 28, 'kh', '<p><span style=\"color: #000000; font-family: monospace; font-size: medium; white-space: pre-wrap;\">$400ពាន់ - $700ពាន់</span></p>', '2019-12-30 00:12:11', '2019-12-30 00:12:11'),
(191, 'wordings', 'word', 29, 'kh', '<p><span style=\"color: #000000; font-family: monospace; font-size: medium; white-space: pre-wrap;\">លើសពី $700ពាន់</span></p>', '2019-12-30 00:12:32', '2019-12-30 00:12:32'),
(192, 'articles', 'title', 5, 'kh', 'Home Page Background Bottom', '2019-12-30 01:13:16', '2019-12-30 01:13:16'),
(193, 'wordings', 'word', 30, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ដំណឹង</span></p>', '2019-12-30 02:00:28', '2019-12-30 02:00:28'),
(194, 'articles', 'title', 7, 'kh', 'ជីប ម៉ុង លែន បញ្ចុះបឋមសិលាបើកការដ្ឋានសាងសង់គម្រោងថ្មីដ៏ធំអស្ចារ្យមួយទៀតលើផ្លូវ៥០ម៉ែត្រ', '2019-12-30 02:56:34', '2019-12-30 02:56:34'),
(195, 'articles', 'detail', 7, 'kh', '<p style=\"color: #000000;\">ភ្នំពេញ៖ ក្រុមហ៊ុន​អភិវឌ្ឍន៍​​អចលនទ្រព្យ ជីប ម៉ុង​&nbsp;លែន​&nbsp;បាន​ប្រារព្ធ​ពិធី​​​បញ្ចុះ​​បឋម​សិលា​សាងសង់​គម្រោង​​ថ្មី​ដ៏ធំអស្ចារ្យមួយទៀតគឺ&nbsp;<strong>ផាក លែន ៥០ម៉ែត្រ</strong>&nbsp;នាព្រឹកថ្ងៃទី​ ១៤ ខែ វិច្ឆិកា ឆ្នាំ ២០១៩ ។</p>\n<p style=\"color: #000000;\">គម្រោង&nbsp;<strong>ផាក លែន ៥០ម៉ែត្រ</strong>&nbsp;នឹងសាងសង់លំនៅដ្ឋានប្រណិតៗជាច្រើនប្រភេទ ដូចជា វីឡាឃ្វីន វីឡាឃ្វីន អេ វីឡាភ្លោះ វីឡាកូនកាត់អេ និង លំនៅឋានថ្មី ៣ ប្រភេទគឺ៖ វីឡាឃ្វីន ប៊ី ហ្សប ហៅស៍ អេ I និង ហ្សប ហៅស៍ អេ II។</p>\n<p style=\"color: #000000;\">ក្នុងបរិវេណគម្រោងក៏នឹងមានក្លឹបហាត់ប្រាណ, អាងហែលទឹក, សូនកុមារ, សូនច្បារបៃតង​ អមទៅដោយផ្លូវថ្នល់ធំទូលាយខ្វាត់ខ្វែង ងាយស្រួលធ្វើដំណើរ និងតភ្ជាប់ទៅកាន់ ផ្លូវធំៗជុំវិញគម្រោង ដែលការណ៍នេះកាន់តែផ្តល់​ភាព​ងាយ​ស្រួល​ដល់​ការ​រស់​នៅ​បែប​ស៊ីវិល័យ​ ទាន់​សម័យ​របស់​អតិថិជន។</p>\n<p>ផ្សារទំនើប ជីប ម៉ុង ដ៏ធំនិងប្រណិតមួយក៏នឹងត្រូវបានសាងសង់ក្នុងគម្រោង&nbsp;<strong>ផាក លែន ៥០ម៉ែត្រ</strong>&nbsp;នេះផងដែរដើម្បីបម្រើតម្រូវការអតិថិជនដែលនឹងរស់នៅក្នុងគម្រោងនេះ ក៏ដូចជាប្រជាពលរដ្ឋដែល រស់នៅជុំវិញតំបន់ដ៏ពោរពេញដោយសក្តានុពលនេះផងដែរ។</p>\n<p style=\"color: #000000;\">គម្រោង&nbsp;<strong>ផាក លែន ៥០ម៉ែត្រ</strong>&nbsp;ស្ថិតនៅតាមបណ្តោយផ្លូវ ៥០ម៉ែត្រ ដែលជាផ្លូវក្រវាត់ក្រុងទី២ កែងជាមួយផ្លូវ ៣០ម៉ែត្រ (ផ្លូវ​ព្រៃស) ស្ថិតក្នុងតំបន់ចំការដូងដែលជាទីតាំងដែលមានសក្តានុពលសេដ្ឋកិច្ច និង មានការសន្ទុះអភិវឌ្ឍន៏ខ្លាំង។</p>\n<p style=\"color: #000000;\">គម្រោងនេះ​មាន​ចង្ងាយ​ត្រឹម​តែ ៣ នាទី​ប៉ុណ្ណោះពី​ផ្សារ​ចំការដូង, ១០ នាទី​ពី​ផ្សារទំនើប ជីប ម៉ុង ៦០ម៉ែត្រ និងផ្សារទំនើប AEON III និង ១៥ នាទី​ពីផ្សារទំនើប ជីប ម៉ុង &nbsp;២៧១។</p>\n<p style=\"color: #000000;\">គួររំឮកដែលថាសព្វថ្ងៃ ក្រុមហ៊ុនដ៏ធំមួយនេះមានគម្រោងសរុបចំនួន ១០ ធំៗ គឺ&nbsp;<strong>លែនម៉ាក ២៧១</strong><strong>, លែនម៉ាក ៦០ ម៉ែត្រ, ផាក លែន សែន សុខ, ផាក លែន ៥៩៨, ផាក លែន ធីខេ, ផាក លែន ៦អា, ផាក លែន ខុនដូ ធីខេ, លែន រីច ចំការដូង, ផាក លែន ៥០ម៉ែត្រ និង ហ្រ្គេនភ្នំពេញ</strong>&nbsp;ដែលសុទ្ឋស្ថិតនៅទីតាំងដែលមានសក្តានុពលខ្ពស់។</p>\n<p style=\"color: #000000;\">គួរបញ្ជាក់​ថា គម្រោង​&nbsp;<strong>ផាក លែន</strong>&nbsp;<strong>៥០ម៉ែត្រ</strong>&nbsp;នឹង​ធ្វើ​ការ​បើក​លក់​ជាផ្លូវការ​ទៅ​កាន់​អតិថិជន​របស់​ខ្លួន​ក្នុង​ពេល​ឆាប់ៗ​ខាង​មុខ​នេះ។</p>\n<p style=\"color: #000000;\">សម្រាប់ព័ត៌មានបន្ថែម 061 997 888 ​|&nbsp;<a href=\"https://www.facebook.com/chipmongland/\">https://www.facebook.com/chipmongland/</a>&nbsp;|&nbsp;<a href=\"http://www.chipmongland.com/\">www.chipmongland.com</a></p>', '2019-12-30 02:56:34', '2020-01-28 20:10:16'),
(196, 'articles', 'title', 8, 'kh', 'គម្រោងលក់រាយចុងក្រោយបំផុតរបស់ជីបម៉ុង', '2019-12-30 03:06:37', '2019-12-30 03:06:37'),
(197, 'articles', 'detail', 8, 'kh', '<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Construction work for a massive, $200-million shopping centre built by Chip Mong Retail, a subsidiary of local conglomerate Chip Mong, began yesterday.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Chip Mong 271 Mega Mall will extend over 41 hectares of land in the capital, and will feature a movie theater and a food court, among other entertainment and dining options.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Leang Khun, chairman of Chip Mong Group, said at the groundbreaking ceremony that the mall will beautify the city and, starting with its construction, create thousands of jobs.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;We guarantee that our customers will have a great experience, particularly those that enjoy modern amenities and entertainment,&rdquo; he said.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;The country is now peaceful and stable, and this keeps attracting more and more investors into the country, particularly for commercial buildings like this,&rdquo; he said.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;Chip Mong 271 Mega Mall will be managed by our board of directors who are local and foreign experts in the operation of malls throughout the region. Our goal is to provide the best service to our customers,&rdquo; he added.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Philippe Prejent, Chip Mong Retail&rsquo;s president, said that, excluding this latest project, Chip Mong Retail has invested about $252 million in Cambodia. Some of its most successful projects include Chip Mong Monivong Super Market, Baktok Chip Mong Mall, Sen Sok Chip Mong Mall and 598 Chip Mong Mall.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;The construction of this new shopping mall here, in a landmark such as street 271, demonstrates Chip Mong&rsquo;s dedication and commitment to create new lifestyle and entertainment solutions for our customers,&rdquo; he said.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Mr Prejent said the new mall, located in a three-storey building, will have a total area of 160,000 square metres, with 58,000 sqm of leasing space and more than 2,000 parking spaces for cars.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;Our different shopping centres &ndash; which include community malls, shopping malls, and mix-used buildings &ndash; and our modern retail formats &ndash; convenient stores, supermarkets and e-commerce platforms &ndash; seek to meet the specific demands of Cambodia&rsquo;s modern retail market and the needs of our customers.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;We have a clear and strong commitment to support the economic development of the country and the evolution of modern retail,&rdquo; he added.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;Presiding over the ceremony, Land Management Minister Chea Sophara, said the mall will be an important contribution to the nation&rsquo;s construction sector and the national economy.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;&ldquo;I have seen the blueprints for the project and I can tell you that it is very well designed, modern and environmentally friendly, giving our people a great place to gather, shop, and look for entertainment options,&rdquo; he added.&lt;/p&gt;</span></p>\n<p style=\"color: #000000; font-size: 10px;\"><span>&lt;p&gt;According to Chip Mong&rsquo;s Mr Khun, the mall has been designed by foreign and local experts, and will be finished by 2020.&lt;/p&gt;</span></p>', '2019-12-30 03:06:37', '2020-01-29 03:34:44'),
(198, 'wordings', 'word', 31, 'kh', '<p>អំពីយើង</p>', '2019-12-30 18:20:18', '2019-12-30 18:20:18'),
(199, 'wordings', 'word', 32, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\"> ដំណឹង និងសកម្មភាព</span></p>', '2019-12-30 18:21:13', '2019-12-30 18:21:13'),
(200, 'wordings', 'word', 33, 'kh', '<p><a href=\"https://career10.successfactors.com/career?company=chipmonggr\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ការងារ</span></a></p>', '2019-12-30 18:22:00', '2019-12-30 18:22:00'),
(201, 'wordings', 'word', 34, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\"> សេវាកម្មក្រោយការលក់</span></p>', '2019-12-30 18:22:34', '2019-12-30 18:22:34'),
(202, 'wordings', 'word', 35, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទំនាក់ទំនង</span></p>', '2019-12-30 18:23:14', '2019-12-30 18:23:14'),
(203, 'wordings', 'word', 36, 'kh', '<p>អំពីប្រទេសកម្ពុជា</p>', '2019-12-30 18:24:39', '2019-12-30 19:23:15'),
(204, 'wordings', 'word', 37, 'kh', '<p>ស្វែងរកគម្រោង</p>', '2019-12-30 20:06:02', '2019-12-30 20:06:02'),
(205, 'wordings', 'word', 38, 'kh', '<p>រកឃើញអចលនទ្រព្យ | កន្លែង</p>', '2019-12-30 20:08:44', '2019-12-30 20:08:44'),
(206, 'wordings', 'word', 39, 'kh', '<p>ចាប់ពី</p>', '2019-12-30 20:20:00', '2019-12-30 20:20:00'),
(207, 'projects', 'name', 3, 'kh', 'គម្រោង ផាក លែន ខុនដូ ធីខេ', '2019-12-31 00:47:24', '2020-01-08 21:32:19'),
(208, 'projects', 'start_price', 3, 'kh', '54000', '2019-12-31 00:47:25', '2020-01-28 19:39:09'),
(209, 'projects', 'to_price', 3, 'kh', '282000', '2019-12-31 00:47:25', '2020-01-28 19:39:09'),
(210, 'projects', 'address', 3, 'kh', 'ភ្នំពេញ', '2019-12-31 00:47:25', '2020-01-01 23:29:14'),
(211, 'wordings', 'word', 40, 'kh', '<p>កន្លែងលំហែនានា</p>', '2020-01-02 18:28:04', '2020-01-02 18:28:04'),
(212, 'facilities', 'title', 1, 'kh', 'ណាត់ពេលទស្សនាផ្ទះ', '2020-01-02 18:51:53', '2020-01-02 18:51:53'),
(213, 'facilities', 'contact', 1, 'kh', '+855(0)61 997 888', '2020-01-02 18:51:53', '2020-01-02 18:51:53'),
(214, 'facilities', 'description', 1, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ជាមួយ​ផ្សារ​ទំនើប សួនច្បារ សណ្ឋាគារ និង​កន្លែង​លំហែ​ទាន់សម័យ​ផ្សេងៗទៀត លែនម៉ាក ២៧១ ផ្តល់​ជូន​លោក​អ្នក​លើស​ពី​ជីវិត​ប្រកប​ដោយ​ផាសុខភាព​ និង​ប្រណិតភាព។ វា​ជា​គម្រោង​ដែល​អនុញ្ញាត​​ឲ្យ​លោក​អ្នក​នូវ​រស់​នៅ​ដោយ​មាន​អត្ថន័យ។</span></p>', '2020-01-02 18:51:53', '2020-01-21 00:39:26'),
(215, 'facilities', 'interest', 1, 'kh', 'មានចំណាប់អារម្មណ៍ឬទេ?', '2020-01-02 19:10:42', '2020-01-02 19:10:42'),
(216, 'facilities', 'article', 1, 'kh', '<p>តើអ្នកកំពុងរង់ចំអីទៀត? ចាប់ផ្តើមធ្វើការណាត់នៅថ្ងៃនេះ។</p>', '2020-01-02 19:10:42', '2020-01-02 19:10:42'),
(217, 'projects', 'name', 1, 'kh', 'គម្រោង លែន ម៉ាក ២៧១', '2020-01-02 19:27:51', '2020-01-02 19:27:51'),
(218, 'projects', 'start_price', 1, 'kh', '397800', '2020-01-02 19:27:51', '2020-01-21 03:22:28'),
(219, 'projects', 'to_price', 1, 'kh', '1050800', '2020-01-02 19:27:51', '2020-01-28 19:41:04'),
(220, 'projects', 'title', 1, 'kh', 'ទទួលយកបទពិសោធន៍គេហដ្ឋានដែលលើសពីកន្លែងគ្រាន់តែសម្រាប់រស់នៅ។ លែន ម៉ាក ២៧១ គឺជាសក្ខីភាពនៃបែបបទរស់នៅប្រកបដោយភាពល្អឥតខ្ចោះ និងហ៊ុំព័ទ្ធទៅដោយផ្សារទំនើបៗខ្នាតធំ និងសណ្ឋាគារថ្នាក់ខ្ពស់។', '2020-01-02 19:27:51', '2020-01-08 23:10:49'),
(221, 'projects', 'address', 1, 'kh', 'ភ្នំពេញ', '2020-01-02 19:27:51', '2020-01-08 23:10:49'),
(222, 'projects', 'detail', 1, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">គម្រោង​ លែន ម៉ាក ២៧១ គឺ​ជា​គម្រោង​អភិវឌ្ឍន៍​បែប​ចម្រុះ​មួយ ដោយ​​មាន​គម្រោង​អភិវឌ្ឍន៍​ខ្នាត​ធំ​​ជាច្រើន​​​ រួមមាន​​ផ្សារ​ទំនើប មេហ្កា​ម៉ល និង​គេហដ្ឋាន​ជា​ច្រើន​ប្រភេទ។</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">គម្រោង​មួយ​នេះ ផ្សារ​ភ្ជាប់​យ៉ាង​ល្អ​ទៅ​នឹង​ផ្លូវ​ធំៗ និង​មមារ​ញឹក​ក្នុង​ក្រុង​រួមមាន ផ្លូវ​២៧១ ផ្លូវ៣៧១ មហាវិថី​សម្តេច​ ហ៊ុន សែន​ ៦០ ម៉ែត្រ ដែល​ផ្តល់ផាសុខភាព​ដល់​ប្រជាជន​ដែល​រស់​នៅ និង​ប្រកប​អាជីវកម្ម​នៅ​ក្នុងគម្រោង​នេះ។</span></p>', '2020-01-02 19:27:51', '2020-01-21 00:36:31'),
(223, 'menu_items', 'title', 35, 'kh', 'Manage Projects', '2020-01-02 19:34:13', '2020-01-02 19:34:13'),
(224, 'properties', 'name', 1, 'kh', 'វីឡាឃ្វីន​', '2020-01-02 19:37:53', '2020-01-03 00:49:11'),
(225, 'properties', 'detail', 1, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-02 19:37:53', '2020-01-03 00:43:33'),
(226, 'wordings', 'word', 41, 'kh', '<p>គម្រោងលម្អិត</p>', '2020-01-02 20:04:27', '2020-01-02 20:04:27'),
(227, 'room_features', 'title', 1, 'kh', 'ប្រភេទលំនៅឋាន', '2020-01-02 20:26:15', '2020-01-02 20:26:15'),
(228, 'room_features', 'total', 1, 'kh', '៦', '2020-01-02 20:26:15', '2020-01-02 20:26:15'),
(229, 'room_features', 'title', 2, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-02 20:28:02', '2020-01-29 18:48:48'),
(230, 'room_features', 'total', 2, 'kh', '១', '2020-01-02 20:28:02', '2020-01-29 18:48:48'),
(231, 'data_rows', 'display_name', 114, 'kh', 'Id', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(232, 'data_rows', 'display_name', 115, 'kh', 'Layout', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(233, 'data_rows', 'display_name', 116, 'kh', 'Created At', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(234, 'data_rows', 'display_name', 117, 'kh', 'Updated At', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(235, 'data_rows', 'display_name', 118, 'kh', 'Deleted At', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(236, 'data_rows', 'display_name', 119, 'kh', 'Property Id', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(237, 'data_rows', 'display_name', 120, 'kh', 'properties', '2020-01-02 20:34:10', '2020-01-02 20:34:10'),
(240, 'menu_items', 'title', 38, 'kh', 'Property Layouts', '2020-01-02 21:01:42', '2020-01-02 21:01:42'),
(241, 'project_sizes', 'title', 1, 'kh', 'ប្រភេទលំនៅឋាន', '2020-01-02 21:17:16', '2020-01-02 21:17:16'),
(242, 'project_sizes', 'total', 1, 'kh', '៤', '2020-01-02 21:17:16', '2020-01-02 23:59:17'),
(243, 'project_sizes', 'title', 2, 'kh', 'កន្លែងលំហែ', '2020-01-02 21:18:12', '2020-01-02 21:18:12'),
(244, 'project_sizes', 'total', 2, 'kh', '៧+', '2020-01-02 21:18:12', '2020-01-02 23:59:42'),
(265, 'properties', 'name', 2, 'kh', 'វីឡាឃ្វីន​ A', '2020-01-03 00:46:54', '2020-01-03 00:46:54'),
(266, 'properties', 'detail', 2, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-03 00:46:55', '2020-01-03 00:46:55'),
(267, 'properties', 'name', 3, 'kh', 'វីឡា ភ្លោះ', '2020-01-03 00:48:18', '2020-01-29 19:38:40'),
(268, 'properties', 'detail', 3, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-03 00:48:18', '2020-01-03 00:48:18'),
(276, 'room_features', 'title', 6, 'kh', 'កន្លែងធ្វើការងារ', '2020-01-03 03:21:44', '2020-01-29 18:50:48'),
(277, 'room_features', 'total', 6, 'kh', '1', '2020-01-03 03:22:10', '2020-01-29 18:50:48'),
(278, 'room_features', 'title', 3, 'kh', 'បន្ទប់ទឹក', '2020-01-03 03:26:22', '2020-01-29 18:49:14'),
(279, 'room_features', 'total', 3, 'kh', '៨', '2020-01-03 03:26:22', '2020-01-29 18:49:14'),
(280, 'room_features', 'title', 5, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-03 03:33:54', '2020-01-29 18:50:03'),
(281, 'room_features', 'total', 5, 'kh', '១', '2020-01-03 03:33:54', '2020-01-29 18:50:03'),
(282, 'room_features', 'title', 7, 'kh', 'Maid Room', '2020-01-03 03:34:22', '2020-01-03 03:34:22'),
(283, 'room_features', 'total', 7, 'kh', '1', '2020-01-03 03:34:22', '2020-01-03 03:34:22'),
(284, 'room_features', 'title', 4, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-03 03:34:37', '2020-01-29 18:49:34'),
(285, 'room_features', 'total', 4, 'kh', '៤', '2020-01-03 03:34:37', '2020-01-29 18:49:34'),
(286, 'project_images', 'title', 6, 'kh', 'ផ្សារជីបម៉ុង ៥៩៨', '2020-01-06 02:15:02', '2020-01-21 02:16:40'),
(287, 'wordings', 'word', 42, 'kh', '<p>អំពីក្រុមហ៊ុន</p>', '2020-01-06 03:01:23', '2020-01-06 03:01:23'),
(288, 'wordings', 'word', 43, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ឧត្តមភាពប្រកបដោយភាពរមទម្យ</span></p>', '2020-01-06 03:03:31', '2020-01-06 03:03:31'),
(289, 'articles', 'detail', 9, 'kh', '<p>ជីបម៉ុង លែន ឬ CMLD គឺជាក្រុមហ៊ុនមួយក្នុងចំណោមក្រុមហ៊ុនអភិវឌ្ឍអចលនទ្រព្យឈានមុខគេនៅកម្ពុជា។ បង្កើតឡើងក្នុងឆ្នាំ ២០០៨ CMLD គឺជាក្រុមហ៊នបុត្រមួយរបស់ ក្រុមហ៊ុន ជីបម៉ុង គ្រុប ដែលជាក្រុមហ៊ុនពហុផលិតផលមួយក្នុងប្រទេសកម្ពុជា ដែលមានអាជីវកម្មចម្រុះច្រើនបែប។</p>\n<p>ទស្សនៈវិស័យរបស់យើង គឺក្លាយជាក្រុមហ៊ុនមួយក្នុងចំណោមអ្នកអភិវឌ្ឍអចលនទ្រព្យដែលនាំមុខគេនៅកម្ពុជា។ ទីតាំង សំណង់ គុណភាព ការរចនាទំនើប សេវាបម្រើអតិថិជន និងការកសាងសហគមន៍មួយដែលសាកសមនឹងរស់នៅដល់អតិថិជនរបស់យើង គឺជាអាទិភាពនានាក្នុងចំណោមអាទិភាពចំបងៗរបស់ថ្នាក់ដឹកនាំរបស់យើង ក៏ដូចជាបុគ្គលិកគ្រប់លំដាប់ទាំងអស់។</p>\n<p>ការប្តេជ្ញាចិត្តរបស់យើង ត្រូវបានឆ្លុះបញ្ចាំងតាមរយៈពាក្យស្លោករបស់ក្រុមហ៊ុនយើងគឺ &ldquo;ទំនុកចិត្តក្នុងការរស់នៅ&rdquo;។ យើងសាងសង់ និងអភិវឌ្ឍគម្រោង៣ប្រភេទ ក្រោមឈ្មោះ - លែនម៉ាក ផាកលែន និង លែនរីច - ដែលទាំងអស់នេះផ្តល់ជូនប្រភេទផ្ទះដោយឡែកៗពីគ្នា ពីវីឡាទោល និងវីឡាកូនកាត់ ដល់ហ្សបហោស៍/ហូម អូហ្វីស។</p>\n<p>គិតត្រឹមឆ្នាំ២០១៩ យើងបានអភិវឌ្ឍគម្រោងអចលនទ្រព្យនៅក្នុង ៧ តំបន់ រួមមាន ផាកលែន សែនសុខ ផាកលែន ៥៩៨ ផាកលែន ធីខេ លែនម៉ាក ២៧១ លែនរីច ចំការដូច លែនម៉ាក ៦០ ម៉ែត្រ និង ផាកលែន ៦A។</p>\n<p>ក្នុងខែឧសភាព ឆ្នាំ២០១៩ គម្រោងខុនដូដំបូងគេបង្អស់របស់យើង ដែលត្រូវបានគេស្គាល់ថា ផាកលែន ខុនដូ ធីខេ ត្រូវបានចាប់ផ្តើមឡើង។</p>', '2020-01-06 03:10:10', '2020-01-23 21:27:23'),
(290, 'articles', 'title', 9, 'kh', 'អំពីក្រុមហ៊ុន', '2020-01-06 03:11:16', '2020-01-06 03:11:16'),
(291, 'room_features', 'title', 10, 'kh', 'បន្ទប់ទឹក', '2020-01-06 19:25:07', '2020-01-29 19:25:20'),
(292, 'room_features', 'total', 10, 'kh', '៧', '2020-01-06 19:25:07', '2020-01-29 19:25:20'),
(293, 'room_features', 'title', 11, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-06 19:25:22', '2020-01-29 19:25:43'),
(294, 'room_features', 'total', 11, 'kh', '១', '2020-01-06 19:25:22', '2020-01-29 19:25:43'),
(295, 'property_layouts', 'title', 3, 'kh', 'Penthouse', '2020-01-06 20:42:00', '2020-01-06 20:42:00'),
(296, 'property_layouts', 'title', 1, 'kh', '1 Bad Room', '2020-01-06 20:58:13', '2020-01-06 20:58:13'),
(297, 'properties', 'name', 9, 'kh', 'វីឡាកូនកាត់ A', '2020-01-06 21:45:23', '2020-01-15 20:13:18'),
(298, 'properties', 'detail', 9, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ការ​រចនា​បែប​ទំនើប រួម​ផ្សំ​ជាមួយ​សម្ភារៈ​មាន​គុណភាព​ខ្ពស់ ធ្វើ​ឲ្យ​វីឡា​កូន​កាត់​យើង​ខ្ញុំ​ផ្តល់​ជូន​លោក​អ្នក​​រាល់​អ្វី​ដែល​គ្រួសារ និង​លោក​អ្នក​​ត្រូវ​ការ​សម្រាប់​បង្កើត​​ជា​ទ្រនំ​សុភមង្គល</span></p>', '2020-01-06 21:45:23', '2020-01-15 20:13:18'),
(299, 'properties', 'name', 8, 'kh', 'វីឡា ភ្លោះ', '2020-01-06 21:50:15', '2020-01-29 19:39:09'),
(300, 'properties', 'detail', 8, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​​ផាសុកភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-06 21:50:15', '2020-01-15 20:15:38'),
(301, 'properties', 'name', 6, 'kh', 'វីឡាឃ្វីន', '2020-01-06 21:50:33', '2020-01-15 20:21:40'),
(302, 'properties', 'detail', 6, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​​ផាសុកភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-06 21:50:33', '2020-01-15 20:21:40'),
(307, 'properties', 'name', 7, 'kh', 'វីឡាឃ្វីន A', '2020-01-06 21:51:29', '2020-01-15 20:19:54'),
(308, 'properties', 'detail', 7, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​​ផាសុកភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-06 21:51:29', '2020-01-15 20:19:54'),
(309, 'projects', 'name', 4, 'kh', 'Park Land Condo Tk', '2020-01-06 23:05:47', '2020-01-06 23:05:47'),
(310, 'projects', 'start_price', 4, 'kh', '49800', '2020-01-06 23:05:47', '2020-01-06 23:05:47'),
(311, 'projects', 'to_price', 4, 'kh', '49998', '2020-01-06 23:05:47', '2020-01-06 23:05:47'),
(312, 'projects', 'address', 4, 'kh', 'Toul Kork, Phnom Penh', '2020-01-06 23:05:47', '2020-01-06 23:05:47'),
(313, 'projects', 'detail', 4, 'kh', '<p>Step into a premium living arrangement that focuses on open and green spaces, community living, and high standards of construction.</p>', '2020-01-06 23:05:47', '2020-01-06 23:05:47'),
(314, 'projects', 'detail', 3, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ស្ថិត​នៅ​​ដី​ឡូត៍​ដែល​មាន​ទំហំ​ប្រមាណ​ជិត​២​ហិចតា ២៦​ជាន់ និង​មាន ២.៤១៣ យូនីត គម្រោង​ខុនដូ ផាក​លែន ធីខេ គឺ​ជា​ខុនដូ​ដែល​អស្ចារ្យ ទំនើប និង​គួរ​ឲ្យ​ស្ញប់​ស្ញែង។</span></p>', '2020-01-06 23:08:46', '2020-01-08 21:32:19'),
(315, 'properties', 'name', 11, 'kh', 'បន្ទប់គ្រែ 1', '2020-01-06 23:31:48', '2020-01-15 21:35:32'),
(316, 'properties', 'detail', 11, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រីករាយ​ជាមួយ​ភាព​ល្អប្រណិត និង​សេរីភាព​នៃ​គម្រោង ផាក​លែន ជាមួយផាសុខភាព​នៃ​​គេហដ្ឋាន​ដែល​មាន ១ ​បន្ទប់គេង។</span></p>', '2020-01-06 23:31:48', '2020-01-15 21:35:32'),
(317, 'properties', 'name', 12, 'kh', 'បន្ទប់គ្រែ 2', '2020-01-06 23:33:46', '2020-01-15 21:35:00'),
(318, 'properties', 'detail', 12, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">នាំ​យក​ក្តី​ស្រមៃ​របស់​អ្នក​ទៅ​កាន់​ជីវិត​ដែល​មានការ​រស់​នៅ​ប្រកប​ដោយ​​គុណភាព​ ជាមួយ​គេហដ្ឋាន​ដែល​មាន​២​បន្ទប់​គេង។</span></p>', '2020-01-06 23:33:46', '2020-01-15 21:35:00'),
(319, 'properties', 'name', 13, 'kh', 'Penthouse', '2020-01-06 23:34:01', '2020-01-15 21:34:20'),
(320, 'properties', 'detail', 13, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រស់​នៅ​ដោយ​មាន​ន័យ និង​ប្រកប​ដោយ​ផាសុខភាព​ខ្ពស់​ជាមួយ​ផ្ទះ​ ភែន​ហោស៍ ​ដ៏ទូលាយ និង​ទំនើប​ហើយទាន់​សម័យ។</span></p>', '2020-01-06 23:34:01', '2020-01-15 21:34:20'),
(321, 'property_layouts', 'title', 7, 'kh', '1 Bedroom', '2020-01-06 23:36:02', '2020-01-06 23:36:02'),
(322, 'facilities', 'title', 3, 'kh', 'ណាត់ពេលទស្សនាផ្ទះ', '2020-01-07 00:37:08', '2020-01-21 00:43:26'),
(323, 'facilities', 'contact', 3, 'kh', '+855(0)61 997 888', '2020-01-07 00:37:08', '2020-01-07 00:37:08'),
(324, 'facilities', 'interest', 3, 'kh', 'មានចំណាប់អារម្មណ៍រឺទេ?', '2020-01-07 00:37:08', '2020-01-21 00:43:26'),
(325, 'facilities', 'description', 3, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">គម្រោង​ខុនដូ ផាក​លែន ធីខេ មាន​កន្លែង​លំហែ​​បែប​ទំនើប​ទាន់​សម័យ សម្រាប់​លោក​អ្នក និង​អ្នក​ជាទី​ស្រឡាញ់​ប្រើប្រាស់​ដោយ​រីករាយ។ លោក​អ្នក​​អាច​ហែល​ទឹក​កំសាន្ត ឬ​រត់​ហាត់​ប្រាណ​លើ​ផ្លូវ​រត់​​នៅ​ជាន់​ខ្ពស់កប់​ពពក។​ នៅ​​ខុនដូ ធីខេ ​មាន​អ្វី​ៗ​គ្រប់​យ៉ាង​ដែល​លោក​អ្នក​ត្រូវ​ការ។</span></p>', '2020-01-07 00:37:08', '2020-01-21 00:43:26'),
(326, 'facilities', 'article', 3, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">តើ​អ្នក​កំពុង​រង់ចាំ​អ្វីទៀត? ចាប់ផ្តើមធ្វើការណាត់នៅថ្ងៃនេះ។</span></p>', '2020-01-07 00:37:08', '2020-01-21 00:43:26');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(327, 'wordings', 'word', 44, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ជីបម៉ុង លែន ឬ CMLD គឺជាក្រុមហ៊ុនមួយក្នុងចំណោមក្រុមហ៊ុនអភិវឌ្ឍអចលនទ្រព្យឈានមុខគេនៅកម្ពុជា។ បង្កើតឡើងក្នុងឆ្នាំ ២០០៨ CMLD គឺជាក្រុមហ៊នបុត្រមួយរបស់ ក្រុមហ៊ុន ជីបម៉ុង គ្រុប ដែលជាក្រុមហ៊ុនពហុផលិតផលមួយក្នុងប្រទេសកម្ពុជា ដែលមានអាជីវកម្មចម្រុះច្រើនបែប។|</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ទស្សនៈវិស័យរបស់យើង គឺក្លាយជាក្រុមហ៊ុនមួយក្នុងចំណោមអ្នកអភិវឌ្ឍអចលនទ្រព្យដែលនាំមុខគេនៅកម្ពុជា។ ទីតាំង សំណង់ គុណភាព ការរចនាទំនើប សេវាបម្រើអតិថិជន និងការកសាងសហគមន៍មួយដែលសាកសមនឹងរស់នៅដល់អតិថិជនរបស់យើង គឺជាអាទិភាពនានាក្នុងចំណោមអាទិភាពចំបងៗរបស់ថ្នាក់ដឹកនាំរបស់យើង ក៏ដូចជាបុគ្គលិកគ្រប់លំដាប់ទាំងអស់។ ការប្តេជ្ញាចិត្តរបស់យើង ត្រូវបានឆ្លុះបញ្ចាំងតាមរយៈពាក្យស្លោករបស់ក្រុមហ៊ុនយើងគឺ &ldquo;ទំនុកចិត្តក្នុងការរស់នៅ&rdquo;។|</span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">យើងសាងសង់ និងអភិវឌ្ឍគម្រោង៣ប្រភេទ ក្រោមឈ្មោះ - លែនម៉ាក ផាកលែន និង លែនរីច - ដែលទាំងអស់នេះផ្តល់ជូនប្រភេទផ្ទះដោយឡែកៗពីគ្នា ពីវីឡាទោល និងវីឡាកូនកាត់ ដល់ហ្សបហោស៍/ហូម អូហ្វីស។|</span></span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">គិតត្រឹមឆ្នាំ២០១៩ យើងបានអភិវឌ្ឍគម្រោងអចលនទ្រព្យនៅក្នុង ៧ តំបន់ រួមមាន ផាកលែន សែនសុខ ផាកលែន ៥៩៨ ផាកលែន ធីខេ លែនម៉ាក ២៧១ លែនរីច ចំការដូច លែនម៉ាក ៦០ ម៉ែត្រ និង ផាកលែន ៦A។ ក្នុងខែឧសភាព ឆ្នាំ២០១៩ គម្រោងខុនដូដំបូងគេបង្អស់របស់យើង ដែលត្រូវបានគេស្គាល់ថា ផាកលែន ខុនដូ ធីខេ ត្រូវបានចាប់ផ្តើមឡើង។</span></span></span></span></p>', '2020-01-07 02:44:31', '2020-01-07 02:44:31'),
(328, 'wordings', 'word', 45, 'kh', '<p>សារពីលោកស្រីនាយិកា</p>', '2020-01-07 02:53:19', '2020-01-07 02:53:19'),
(329, 'wordings', 'word', 46, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ស្របទៅតាមគោលនយោបាយអភិវឌ្ឍរបស់រាជធានីភ្នំពេញ ក្រុមហ៊ុន ជីបម៉ុង លែន ប្តេជ្ញាក្នុងការកសាងលំនៅដ្ឋានបែបប្រណិត និងប្រកបដោយឯកជនភាព ឲ្យបានច្រើនបែបច្រើនសណ្ឋាន ដើម្បីឆ្លើយតបទៅនឹងតម្រូវការរបស់ប្រជាជនដែលប្រាថ្នាជីវិតរស់នៅបែបទាន់សម័យ។ ភាពជោគជ័យរបស់ ផាកលែន សែនសុខ របស់ក្រុមហ៊ុន ជីបម៉ុង អាចមានទៅបាន ក៏ដោយសារតែការគាំទ្រជាបន្តបន្ទាប់ពីសំណាក់អតិថិជនរបស់យើងទាំងអស់ ក៏ដូចជាទំនុកចិត្ត និងការជឿជាក់របស់ពួកគេមកលើសមត្ថភាពសំណង់របស់យើងខ្ញុំ។|</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">ក្នុងពេលអនាគតឆាប់ៗនេះ ជីបម៉ុង លែន នឹងនាំមកជូននូវគម្រោងសំណង់លំនៅដ្ឋានថ្មីៗដែលមានអ្វីៗគ្រប់បែបយ៉ាងសម្រាប់លោកអ្នកនៅក្នុង ៣ គម្រោងបន្ថែមទៀត។ វាគឺការប្តេជ្ញាចិត្តរបស់យើងខ្ញុំ ក្នុងការបន្តសាងសង់លំនៅដ្ឋានដែលមានប្រណិតភាព មានសុវត្ថិភាព និងមានគុណភាពខ្ពស់ ប្រកបដោយការរចនាទាន់សម័យទាំងក្នុង និងក្រៅគេហដ្ឋាន។|</span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">តាំងនាមឲ្យក្រុមហ៊ុន ជីបម៉ុង លែន នាងខ្ញុំសូមថ្លែងអំណរគុណយ៉ាងជ្រាលជ្រៅចំពោះអតិថិជនថ្មីនិងចាស់ទាំងអស់ដែលតែងតែគាំទ្រយើងខ្ញុំ។|</span></span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">នាងខ្ញុំទន្ទឹងរង់ចាំការគាំទ្ររបស់លោកអ្នកបន្ថែមទៀត ក៏ដូចជាឱកាសនានាដើម្បីបន្តបម្រើជូនលោកអ្នក។|</span></span></span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">លោកជំទាវឧកញ៉ា ភាព ហៀក</span></span></span></span></span></p>', '2020-01-07 03:02:30', '2020-01-07 03:06:17'),
(330, 'wordings', 'word', 47, 'kh', '<p>ទំនាក់ទំនងជាមួយវិនិយោគិន​ / សាកសួរ</p>', '2020-01-07 03:08:03', '2020-01-07 03:08:03'),
(331, 'wordings', 'word', 48, 'kh', '<p>អុីម៉េលទីនេះ</p>', '2020-01-07 03:09:33', '2020-01-07 03:09:33'),
(332, 'projects', 'title', 3, 'kh', 'ឈានទៅរកបែបបទនៃការរស់នៅបែបស៊ីវីល័យ ដែលផ្តោតសំខាន់ទៅលើភាពធំទូលាយ និងពោរពេញទៅដោយទីខៀវស្រងាត់ ការរស់នៅបែបសហគមន៍ និងសំណង់ដែលមានស្តង់ដារខ្ពស់', '2020-01-07 04:03:23', '2020-01-08 21:32:19'),
(337, 'article_types', 'name', 1, 'kh', 'ដំណឺង', '2020-01-08 20:51:15', '2020-01-09 00:11:50'),
(338, 'article_types', 'name', 2, 'kh', 'សកម្មភាព', '2020-01-08 20:51:38', '2020-01-09 00:12:45'),
(339, 'article_types', 'name', 3, 'kh', 'ផ្សព្វផ្សាយ', '2020-01-08 20:51:56', '2020-01-09 00:13:12'),
(340, 'data_rows', 'display_name', 209, 'kh', 'Id', '2020-01-08 20:52:39', '2020-01-08 20:52:39'),
(341, 'data_rows', 'display_name', 210, 'kh', 'Name', '2020-01-08 20:52:40', '2020-01-08 20:52:40'),
(342, 'data_rows', 'display_name', 211, 'kh', 'Created At', '2020-01-08 20:52:40', '2020-01-08 20:52:40'),
(343, 'data_rows', 'display_name', 212, 'kh', 'Updated At', '2020-01-08 20:52:40', '2020-01-08 20:52:40'),
(344, 'data_rows', 'display_name', 213, 'kh', 'Deleted At', '2020-01-08 20:52:40', '2020-01-08 20:52:40'),
(345, 'data_types', 'display_name_singular', 32, 'kh', 'Article Type', '2020-01-08 20:52:40', '2020-01-08 20:52:40'),
(346, 'data_types', 'display_name_plural', 32, 'kh', 'Article Types', '2020-01-08 20:52:40', '2020-01-08 20:52:40'),
(347, 'menu_items', 'title', 44, 'kh', 'Articles', '2020-01-08 20:59:39', '2020-01-08 20:59:39'),
(348, 'menu_items', 'title', 43, 'kh', 'Article Types', '2020-01-08 21:00:03', '2020-01-08 21:00:03'),
(349, 'wordings', 'word', 49, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទំព័រដើម</span></p>', '2020-01-08 21:15:23', '2020-01-08 21:17:40'),
(350, 'wordings', 'word', 50, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\"> បញ្ជីអចលនទ្រព្យ</span></p>', '2020-01-08 21:16:24', '2020-01-08 21:18:12'),
(351, 'articles', 'title', 10, 'kh', 'សារពីលោកស្រីនាយិកា', '2020-01-08 21:17:03', '2020-01-08 21:17:03'),
(352, 'articles', 'detail', 10, 'kh', '<p>ស្របទៅតាមគោលនយោបាយអភិវឌ្ឍរបស់រាជធានីភ្នំពេញ ក្រុមហ៊ុន ជីប</p>\n<p>ម៉ុង លែន ប្តេជ្ញាក្នុងការកសាងលំនៅដ្ឋានបែបប្រណិត និងប្រកបដោយ</p>\n<p>ឯកជនភាព ឲ្យបានច្រើនបែបច្រើនសណ្ឋាន ដើម្បីឆ្លើយតបទៅនឹង</p>\n<p>តម្រូវការរបស់ប្រជាជនដែលប្រាថ្នាជីវិតរស់នៅបែបទាន់សម័យ។ ភាព</p>\n<p>ជោគជ័យរបស់ ផាកលែន សែនសុខ របស់ក្រុមហ៊ុន ជីបម៉ុង អាចមានទៅ</p>\n<p>បាន ក៏ដោយសារតែការគាំទ្រជាបន្តបន្ទាប់ពីសំណាក់អតិថិជនរបស់យើង</p>\n<p>ទាំងអស់ ក៏ដូចជាទំនុកចិត្ត និងការជឿជាក់របស់ពួកគេមកលើសមត្ថភាព</p>\n<p>សំណង់របស់យើងខ្ញុំ។</p>\n<p>ក្នុងពេលអនាគតឆាប់ៗនេះ ជីបម៉ុង លែន នឹងនាំមកជូននូវគម្រោងសំណង់</p>\n<p>លំនៅដ្ឋានថ្មីៗដែលមានអ្វីៗគ្រប់បែបយ៉ាងសម្រាប់លោកអ្នកនៅក្នុង ៣</p>\n<p>គម្រោងបន្ថែមទៀត។ វាគឺការប្តេជ្ញាចិត្តរបស់យើងខ្ញុំ ក្នុងការបន្តសាងសង់</p>\n<p>លំនៅដ្ឋានដែលមានប្រណិតភាព មានសុវត្ថិភាព និងមានគុណភាពខ្ពស់</p>\n<p>ប្រកបដោយការរចនាទាន់សម័យទាំងក្នុង និងក្រៅគេហដ្ឋាន។</p>\n<p>តាំងនាមឲ្យក្រុមហ៊ុន ជីបម៉ុង លែន នាងខ្ញុំសូមថ្លែងអំណរគុណយ៉ាងជ្រាល</p>\n<p>ជ្រៅចំពោះអតិថិជនថ្មីនិងចាស់ទាំងអស់ដែលតែងតែគាំទ្រយើងខ្ញុំ។</p>\n<p>នាងខ្ញុំទន្ទឹងរង់ចាំការគាំទ្ររបស់លោកអ្នកបន្ថែមទៀត ក៏ដូចជាឱកាសនានា</p>\n<p>ដើម្បីបន្តបម្រើជូនលោកអ្នក។&nbsp;</p>\n<p>&nbsp;</p>\n<p>លោកជំទាវឧកញ៉ា ភាព ហៀក</p>', '2020-01-08 21:17:03', '2020-01-23 23:15:35'),
(353, 'wordings', 'word', 51, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">គណនាប្រាក់កម្ចី</span></p>', '2020-01-08 21:20:01', '2020-01-08 21:20:01'),
(354, 'wordings', 'word', 52, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ផ្ចូវទៅកម្រោង</span></p>', '2020-01-08 21:21:45', '2020-01-08 21:25:43'),
(355, 'wordings', 'word', 53, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទិដ្ឋភាពផ្លូវ</span></p>', '2020-01-08 21:22:28', '2020-01-08 21:26:09'),
(356, 'wordings', 'word', 54, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទាញយកផែនទី</span></p>', '2020-01-08 21:23:22', '2020-01-08 21:26:47'),
(357, 'wordings', 'word', 55, 'kh', '<p>សកម្មភាព</p>', '2020-01-08 21:26:47', '2020-01-08 21:26:47'),
(358, 'wordings', 'word', 56, 'kh', '<p>ផ្សព្វផ្សាយ</p>', '2020-01-08 21:28:29', '2020-01-08 21:28:29'),
(359, 'project_sizes', 'title', 5, 'kh', 'ចំនួនជាន់', '2020-01-08 21:36:50', '2020-01-08 21:36:50'),
(360, 'project_sizes', 'total', 5, 'kh', '២៦', '2020-01-08 21:36:50', '2020-01-08 21:36:50'),
(361, 'project_sizes', 'title', 6, 'kh', 'សេវាកម្ម', '2020-01-08 21:37:23', '2020-01-08 21:37:23'),
(362, 'project_sizes', 'total', 6, 'kh', '៨+', '2020-01-08 21:37:23', '2020-01-08 21:37:23'),
(363, 'project_sizes', 'title', 4, 'kh', 'សេវាកម្ម', '2020-01-08 21:37:54', '2020-01-08 21:37:54'),
(364, 'project_sizes', 'total', 4, 'kh', '៥+', '2020-01-08 21:37:55', '2020-01-08 21:37:55'),
(365, 'project_sizes', 'title', 3, 'kh', 'ប្រភេទលំនៅឋាន', '2020-01-08 22:37:31', '2020-01-08 22:37:31'),
(366, 'project_sizes', 'total', 3, 'kh', '៦', '2020-01-08 22:37:31', '2020-01-08 22:37:31'),
(367, 'wordings', 'word', 57, 'kh', '<p>អត្ថបទ</p>', '2020-01-08 23:33:56', '2020-01-08 23:33:56'),
(368, 'articles', 'title', 12, 'kh', 'ក្រុមហ៊ុន ជីប ម៉ុងលែន ដាក់ឱ្យដំណើរការខុនដូថ្មីជាលើកដំបូង', '2020-01-09 00:09:18', '2020-01-09 00:09:18'),
(369, 'articles', 'detail', 12, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">&lt;p&gt;ភ្នំពេញ៖ ក្រុមហ៊ុន ជីប ម៉ុង លែន ដែលជាក្រុមហ៊ុនអភិវឌ្ឍន៏អចលនទ្រព្យដ៏ល្បីល្បាញមួយនៅក្នុងប្រទេសកម្ពុជា នឹងប្រកាសបើកលក់ ខុនដូ ដ៏ថ្មីទំនើបរបស់ខ្លួនជាមួយនឹងការបញ្ចុះតម្លៃពិសេសចាប់ពីថ្ងៃទី​ ២៤ ខែឧសភា ឆ្នាំ២០១៩ ខាងមុខនេះ វេលាម៉ោង ១០ ព្រឹកតទៅ។ &amp;nbsp;ផាក លែន ខុនដូ ធីខេ (Park Land Condo TK) ស្ថិតនៅ ក្នុងគម្រោងលំនៅដ្ឋាន Park Land TK ដែលស្ថិតនៅលើផ្លូវឧកញ៉ាម៉ុងរិទ្ឋី ជិតតំបន់ សែន សុខ ដែលកំពុងអភិវឌ្ឍន៏ខ្លាំង ជាពិសេសស្ថិតនៅជិតផ្សារ Chip Mong Sen Sok Mall, Makro, Global House, និង ផ្សារ AEON ផងដែរ។&lt;/p&gt;</span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">&lt;p&gt;​ជាមួយនឹងការប្តេជ្ញាចិត្តក្នុងការ នាំយកបទពិសោធន៏ថ្មីៗក្នុងការរស់នៅបែបទាន់សម័យ និង ជឿជាក់ក្នុងការរស់នៅ ជីប ម៉ុង លែនបានបន្ថែមគម្រោងលំនៅដ្ឋានបែបប្រណីតទាន់សម័យ ថ្មីមួយទៀតរបស់ខ្លួនគឺ គម្រោង ផាក លែន ខុនដូ ធីខេ។ ផាក លែន ខុនដូ ធីខេ មានកំពស់២៦ជាន់ រួមជាមួយនឹងកន្លែងចតយានយន្តដ៏ធំទូលាយ អាងហែលទឹក សួនលើអាកាស ក្លឹបហាត់ប្រាណ&amp;nbsp; កន្លែងធ្វើការរួម(Co-Working Space) ស្កាយបារ(Sky Pavilion)។ ផាក លែន ខុនដូ ធីខេ ជាខុនដូទីមួយនៅក្នុងប្រទេសកម្ពុជា ដែលមានផ្លូវសម្រាប់រត់ហាត់ប្រាណ (Jogging Track) លើសួនច្បារអាកាស ក៏ដូចជាលំហែកាយជាមួយនឹងធម្មជាតិបៃតងជារៀងរាល់ថ្ងៃ។&lt;/p&gt;</span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">&lt;p&gt;កាន់តែពិសេសជាងនេះទៅទៀត ជាមួយនឹងការបង់រំលោះមិនដល់$500 ក្នុងមួយខែផង លោកអ្នកនឹងអាចក្លាយជាម្ចាស់ខុនដូដ៏ស្រស់ស្អាតនេះបានភ្លាមៗ។ សម្រាប់លោកអ្នកដែលមានចំណាប់អារម្មណ៏លើគម្រោងថ្មីនេះ អាចអញ្ជើញមកសាកសួរព័ត៌មាននៅក្នុងថ្ងៃបើកលក់ផ្ទាល់ ជាមួយនឹងការបញ្ចុះតម្លៃពិសេសរហូតដល់ ៥% ក៏ដូចជាការបង់រំលស់ឥតការប្រាក់រហូតដល់ ២ ​ឆ្នាំទៀតផង។ សម្រាប់ព័ត៌មានបន្ថែម សូមទំនាក់ទំនងទៅលេខ 061 997 888 ។&lt;/p&gt;</span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, Lucida Console, Courier New, monospace;\"><span style=\"font-size: 12px; white-space: pre-wrap;\">&lt;p&gt;សូមបញ្ជាក់ផងដែរថា បច្ចុប្បន្នក្រុមហ៊ុន ជីប ម៉ុង លែន មានគម្រោងអភិវឌ្ឍន៏លំនៅឋានធំៗចំនួន៧ រួមមានLandmark 271, Landmark 60M, Park Land Sen Sok, Park Land 598, Park Land TK, Park Land 6A និង Landriche Chomkadong ដែលសុទ្ឋតែស្ថិតនៅក្នុងតំបន់ដែលមានសក្តានុពលខ្ពស់ ដែលកំពុងទទួលបានការគាំទ្រយ៉ាងខ្លាំងពីអតិថិជន។&lt;/p&gt;</span></span></p>', '2020-01-09 00:09:18', '2020-01-29 03:44:25'),
(370, 'wordings', 'word', 58, 'kh', '<p>ជីប ម៉ុងលែន អេប</p>', '2020-01-09 00:28:07', '2020-01-09 00:28:07'),
(371, 'wordings', 'word', 59, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ទិដ្ឋភាពផែនទី</span></p>', '2020-01-09 00:29:15', '2020-01-09 00:29:15'),
(372, 'wordings', 'word', 60, 'kh', '<p>ស្វែងរកអ្វីៗដែលអ្នកត្រូវការដើម្បីថែរក្សាគេហដ្ឋានរបស់លោកអ្នក។</p>', '2020-01-09 00:40:32', '2020-01-09 00:40:32'),
(373, 'wordings', 'word', 61, 'kh', '<p>ពីការថែទាំ ដល់ដំណឺងថ្មីៗ លោកអ្នកអាចរកបានទាំងអស់នៅទីនេះ។</p>', '2020-01-09 00:42:41', '2020-01-09 00:42:41'),
(374, 'wordings', 'word', 62, 'kh', '<p>ណាត់ការចុះពិនិត្យផ្ទះ</p>', '2020-01-09 00:44:12', '2020-01-09 00:44:12'),
(375, 'wordings', 'word', 63, 'kh', '<p>មើលប្រតិទិនកម្មវិធីទាក់ទងនឺងអចលនទ្រព្យនានា</p>', '2020-01-09 00:45:32', '2020-01-09 00:45:32'),
(376, 'wordings', 'word', 64, 'kh', '<p>បង់ថ្លៃទឺកភ្លើងរបស់អ្នក</p>', '2020-01-09 00:46:54', '2020-01-09 00:46:54'),
(377, 'wordings', 'word', 65, 'kh', '<p>អ្វីៗជាច្រើនទៀត</p>', '2020-01-09 00:47:27', '2020-01-09 00:47:27'),
(378, 'articles', 'title', 14, 'kh', 'សេវាកម្មក្រោយការលក់', '2020-01-09 00:55:35', '2020-01-09 00:55:35'),
(379, 'wordings', 'word', 66, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ណាត់</span></p>', '2020-01-09 01:10:14', '2020-01-09 01:22:31'),
(380, 'wordings', 'word', 67, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">បញ្ចូលឈ្មោះ</span></p>', '2020-01-09 01:16:05', '2020-01-09 01:16:05'),
(381, 'wordings', 'word', 68, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">បញ្ចូលលេខទូរស័ព្ទ</span></p>', '2020-01-09 01:16:39', '2020-01-09 01:16:39'),
(382, 'wordings', 'word', 69, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">បញ្ចូលអ៊ីម៉ែល(អាចរំលងបាន)</span></p>', '2020-01-09 01:17:03', '2020-01-09 01:17:03'),
(383, 'wordings', 'word', 70, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ថ្ងៃណាត់</span></p>', '2020-01-09 01:17:28', '2020-01-09 01:17:28'),
(384, 'wordings', 'word', 71, 'kh', '<p>ម៉ោងណាត់</p>', '2020-01-09 01:18:07', '2020-01-09 01:20:51'),
(385, 'wordings', 'word', 72, 'kh', '<p>ការរស់នៅគួរឲ្យស្ញប់ស្ញែង</p>', '2020-01-09 01:56:37', '2020-01-09 01:56:37'),
(386, 'articles', 'title', 16, 'kh', 'កម្ពុជាជាតួរលេខ', '2020-01-09 02:11:39', '2020-01-09 02:11:39'),
(387, 'articles', 'detail', 16, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ដោយសារ​កំណើន​សេដ្ឋកិច្ច​ជា​បន្ត​បន្ទាប់​ និង​ការ​កើន​ឡើង​ដោយ​កត់​សម្គាល់​នៃ​ការ​ចំណាយ​បរទេស នេះបានធ្វើឲ្យ​វិស័យ​អចលនទ្រព្យ​ក្នុង​ប្រទេស​កម្ពុជា​មាន​កំណើន​ក្នុង​កម្រិត​មួយ​ដែល​មិន​ធ្លាប់​ជួប​ពី​មុន​មក។ ដោយ​តម្លៃ​ជាមធ្យម​ក្នុង​១​ម៉ែត្រ​ការ៉េ​នៅ​តែ​បន្ត​កើន​ឡើង​ ដោយ​គ្មាន​សញ្ញា​បង្ហាញ​ថា​នឹង​ថយ​ចុះ​ក្នុង​ពេល​ណា​មួយ​ឡើយ។</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ប្រទេស​កម្ពុជា​ផ្តល់​ជូន​នូវ​ការ​រស់​នៅ​ប្រកប​ដោយ​គុណភាព ក្នុង​តម្លៃ​ដ៏​ល្អ។ ការ​ធ្វើ​វិនិយោគ​ទុនទៅ​ក្នុង​ប្រទេស​ដែលមាន​​ភាព​រស់​រវើក មិន​ត្រឹម​​តែ​នាំឲ្យលោកអ្នកទទួល​បាន​ភាគ​លាភ​ខ្ពស់​ត្រឡប់​មក​វិញ​នោះ​ទេ ថែម​ទាំង​​ទទួល​បាន​លំនៅ​ដ្ឋាន​​មួយ​ដែល​ស្ថិត​នៅ​ក្នុង​ក្រុង​គុជ​នៃ​ភាគ​ខាង​កើត​ថែម​ទៀត​ផង។ ជាមួយ​នឹង​កំណើ​ន​ GDP ៧%​​ ថេរ​ រួមនឹង​អត្រា​អតិផរណា​ទាប និង​ថេរ ការ​វិនិយោគ​របស់​លោក​អ្នក​នឹង​លូត​លាស់​ប្រកប​ដោយ​សុវត្ថិភាពក្នុង​ប្រទេស​កម្ពុជា។</span></p>', '2020-01-09 02:11:39', '2020-01-09 02:11:39'),
(388, 'articles', 'title', 17, 'kh', 'ការរស់នៅគួរឲ្យស្ញប់ស្ញែង', '2020-01-09 02:15:43', '2020-01-09 02:15:43'),
(389, 'articles', 'detail', 17, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">វាមិន​ងាយ​ស្រួល​ទេ​ក្នុង​ការ​ស្វែង​រក​ផ្ទះ​ដ៏ល្អឥតខ្ចោះ​ក្នុង​ក្តី​ស្រមៃ​​របស់​លោក​អ្នក។ CML ​ផ្តល់​ជូន​ ជម្រើស​រស់នៅ​ដ៏​សម្បូរ​បែប​នៅ​ចំកណ្តាល​បេះ​ដូង​នៃ​ព្រះ​រាជាណាចក្រ​អច្ឆរិយៈ ដែល​សាក​សម​នឹងគ្រប់​បែប​ផែន​នៃ​ការ​រស់​នៅ​។ មិន​ថា​លោក​អ្នក​ស្រឡាញ់​តំបន់​រស់​នៅ​ត្រង់​កន្លែង​ណានោះទេ កម្ពុជា​មានផ្តល់ជូនបាន​ទាំង​អស់។</span></p>', '2020-01-09 02:15:43', '2020-01-09 02:15:43'),
(390, 'articles', 'detail', 18, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">រស់នៅក្នុងទីក្រុងភ្នំពេញ អនុញ្ញាតឲ្យលោកអ្នកអាចធ្វើដំណើរទៅរាប់ពាន់ទីកន្លែងបានដោយងាយស្រួល ទាំងបែបផ្សងព្រេង ទាំងលំហែកាយ។ ហោះហើរ ឬបើកបរទៅកាន់ខេត្តសៀមរាបដើម្បីទស្សនាប្រាសាទនានា ជិះកាណូតទៅកោះរុងដើម្បីកំសាន្តដូចនៅឋានសួគ៌ ឬក៏ជិះរថយន្តក្រុងដើម្បីទស្សនាទេសភាពតាមដងផ្លូវទៅកំពតដើម្បីសម្រាកលំហែកាយ។ កម្ពុជាមានគ្រប់អ្វីទាំងអស់ដែលលោកអ្នកត្រូវការ។</span></p>', '2020-01-09 02:21:29', '2020-01-09 02:21:29'),
(391, 'articles', 'title', 19, 'kh', 'ធូរថ្លៃ ប៉ុន្តែល្អជាង    ', '2020-01-09 02:26:21', '2020-01-09 02:26:21'),
(392, 'articles', 'detail', 19, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ធូរ​ថ្លៃ​ជាង​មិន​ប្រាកដ​ថា​សុទ្ធ​តែ​ល្អ​ជាង​នោះទេ ប៉ុន្តែ​សម្រាប់ទី​ផ្សារ​អចល​នទ្រព្យ​នៅ​កម្ពុជា លោក​អ្នកនឹង​មិន​ខក​បំណង​ឡើយ។ ដោយសារកំណើន​ការ​ចំណាយ​របស់​បរទេស ក៏​ដូច​ជា​កំណើន​នៃ​អ្នក​មាន​ទ្រព្យ​កម្រិត​មធ្យម បណ្តាល​ឲ្យ​ទីផ្សារ​អចលនទ្រព្យ​កម្ពុជា​ក្លាយ​ទៅ​ជា​ទី​ផ្សារ​មួយ​ដ៏​ល្អ​ក្នុង​ចំណោម​​ទីផ្សារដទៃទៀតនៅតាមបណ្តា​ប្រទេស​នានា​ក្នុង​តំបន់​​អាស៊ីអាគ្នេយ៍។ លោកអ្នកនឹងទទួល​បាន​ផល​ច្រើន​ ដោយការចំណាយ​តិច។</span></p>', '2020-01-09 02:26:21', '2020-01-09 02:26:21'),
(393, 'wordings', 'word', 73, 'kh', '<p>អត្ថបទដែលទាក់ទង</p>', '2020-01-09 02:28:48', '2020-01-09 02:28:48'),
(394, 'wordings', 'word', 74, 'kh', '<p>៧% | អត្រាកំណើនសេដ្ឋកិច្ចប្រចាំឆ្នាំជាមធ្យម</p>', '2020-01-09 02:36:38', '2020-01-09 02:38:20'),
(395, 'wordings', 'word', 75, 'kh', '<p>៨% |​ ភាគលាភប្រចាំឆ្នាំពីការជួល</p>', '2020-01-09 02:37:51', '2020-01-09 02:37:51'),
(396, 'wordings', 'word', 76, 'kh', '<p>២,៥​% | អត្រាអតិផរណា</p>', '2020-01-09 02:40:24', '2020-01-09 02:40:24'),
(397, 'wordings', 'word', 77, 'kh', '<p>$៣.០០០ | តម្លៃជាមធ្យមក្នុង១ម៉ែត្រការ៉េ</p>', '2020-01-09 02:42:14', '2020-01-09 02:42:14'),
(398, 'wordings', 'word', 78, 'kh', '<p>ជំនួយការស្វែងរកអចលនទ្រព្យ</p>', '2020-01-12 19:40:09', '2020-01-12 19:40:09'),
(399, 'wordings', 'word', 79, 'kh', '<p>ខ្ញុំចង់ទិញសម្រាប់</p>', '2020-01-12 19:45:00', '2020-01-12 19:45:00'),
(400, 'wordings', 'word', 80, 'kh', '<p>ការរស់នៅ</p>', '2020-01-12 19:46:37', '2020-01-12 19:46:37'),
(401, 'wordings', 'word', 81, 'kh', '<p>អនុវត្តអាជីវកម្ម​</p>', '2020-01-12 19:47:27', '2020-01-12 19:47:27'),
(402, 'wordings', 'word', 82, 'kh', '<p>វិនិយោគសម្រាប់លក់</p>', '2020-01-12 19:48:47', '2020-01-12 19:48:47'),
(403, 'wordings', 'word', 83, 'kh', '<p>បន្ទាប់</p>', '2020-01-12 19:50:02', '2020-01-12 19:50:02'),
(405, 'wordings', 'word', 84, 'kh', '<p>ខ្ញុំមានឆន្ទះក្នុងការបង់</p>', '2020-01-12 20:55:03', '2020-01-12 20:55:03'),
(406, 'wordings', 'word', 85, 'kh', '<p>ខ្ញុំចង់រស់នៅជុំវិញ</p>', '2020-01-12 21:11:56', '2020-01-12 21:11:56'),
(407, 'wordings', 'word', 86, 'kh', '<p>មុន</p>', '2020-01-12 21:17:23', '2020-01-12 21:17:23'),
(408, 'wordings', 'word', 87, 'kh', '<p>បន្ទាប់</p>', '2020-01-12 21:18:34', '2020-01-12 21:18:34'),
(409, 'wordings', 'word', 89, 'kh', '<p>ការគណនាប្រាក់កម្ចី</p>', '2020-01-13 21:23:24', '2020-01-14 20:54:43'),
(411, 'data_rows', 'display_name', 196, 'kh', 'Id', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(412, 'data_rows', 'display_name', 197, 'kh', 'Title', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(413, 'data_rows', 'display_name', 198, 'kh', 'Total', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(414, 'data_rows', 'display_name', 199, 'kh', 'Created At', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(415, 'data_rows', 'display_name', 200, 'kh', 'Updated At', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(416, 'data_rows', 'display_name', 201, 'kh', 'Property Id', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(417, 'data_rows', 'display_name', 202, 'kh', 'Deleted At', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(418, 'data_rows', 'display_name', 203, 'kh', 'Icon', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(419, 'data_rows', 'display_name', 204, 'kh', 'properties', '2020-01-14 20:56:06', '2020-01-14 20:56:06'),
(422, 'wordings', 'word', 90, 'kh', '<p>ចំនួនប្រាក់កម្ចី</p>', '2020-01-14 20:59:37', '2020-01-14 20:59:37'),
(423, 'wordings', 'word', 91, 'kh', '<p>រយះពេលកម្ចី</p>', '2020-01-14 21:00:33', '2020-01-14 21:00:33'),
(424, 'wordings', 'word', 92, 'kh', '<p>អត្រាធនាគារ</p>', '2020-01-14 21:01:53', '2020-01-29 03:33:13'),
(425, 'wordings', 'word', 93, 'kh', '<p>លទ្ធផលការគណនា</p>', '2020-01-14 21:21:39', '2020-01-14 21:21:39'),
(426, 'wordings', 'word', 94, 'kh', '<p>ខែ</p>', '2020-01-14 21:22:51', '2020-01-14 21:22:51'),
(427, 'wordings', 'word', 95, 'kh', '<p>លោកអ្នកនឹងដឹងច្បាស់ពីអ្វីដែលលោកអ្នកត្រូវការ ដើម្បីរស់នៅក្នុងគេហដ្ឋាននៃក្តីស្រមៃ របស់លោកអ្នក ។ ចាប់ពីអត្រាការប្រាក់ រហូតដល់ការបង់ប្រាក់ប្រចាំខែ ជីបម៉ុង លែន អាចជួយលោកអ្នកបានទាំងអស់។</p>', '2020-01-14 21:28:33', '2020-01-14 21:28:33'),
(428, 'wordings', 'word', 96, 'kh', '<p>ព័ត៏មានបន្ថែមអំពីប្រាក់កម្ចី</p>', '2020-01-14 21:31:33', '2020-01-14 21:31:33'),
(431, 'menu_items', 'title', 47, 'kh', 'Properties', '2020-01-15 19:45:56', '2020-01-15 19:45:56'),
(432, 'data_rows', 'display_name', 225, 'kh', 'Id', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(433, 'data_rows', 'display_name', 226, 'kh', 'Name', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(434, 'data_rows', 'display_name', 227, 'kh', 'Start Price', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(435, 'data_rows', 'display_name', 228, 'kh', 'To Price', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(436, 'data_rows', 'display_name', 229, 'kh', 'Detail', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(437, 'data_rows', 'display_name', 230, 'kh', 'Created At', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(438, 'data_rows', 'display_name', 231, 'kh', 'Updated At', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(439, 'data_rows', 'display_name', 232, 'kh', 'Project Id', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(440, 'data_rows', 'display_name', 233, 'kh', 'Layout', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(441, 'data_rows', 'display_name', 234, 'kh', 'projects', '2020-01-15 19:47:15', '2020-01-15 19:47:15'),
(444, 'properties', 'name', 10, 'kh', 'វីឡាកូនកាត់ B', '2020-01-15 20:00:15', '2020-01-15 20:09:39'),
(445, 'properties', 'detail', 10, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">ការ​រចនា​បែប​ទំនើប រួម​ផ្សំ​ជាមួយ​សម្ភារៈ​មាន​គុណភាព​ខ្ពស់ ធ្វើ​ឲ្យ​វីឡា​កូន​កាត់​យើង​ខ្ញុំ​ផ្តល់​ជូន​លោក​អ្នក​​រាល់​អ្វី​ដែល​គ្រួសារ និង​លោក​អ្នក​​ត្រូវ​ការ​សម្រាប់​បង្កើត​​ជា​ទ្រនំ​សុភមង្គល</span></p>', '2020-01-15 20:00:15', '2020-01-15 20:09:39'),
(446, 'data_rows', 'display_name', 214, 'kh', 'Id', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(447, 'data_rows', 'display_name', 215, 'kh', 'Title', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(448, 'data_rows', 'display_name', 216, 'kh', 'Slug', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(449, 'data_rows', 'display_name', 217, 'kh', 'Attachment', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(450, 'data_rows', 'display_name', 218, 'kh', 'Detail', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(451, 'data_rows', 'display_name', 219, 'kh', 'Created At', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(452, 'data_rows', 'display_name', 220, 'kh', 'Updated At', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(453, 'data_rows', 'display_name', 221, 'kh', 'Deleted At', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(454, 'data_rows', 'display_name', 222, 'kh', 'Logo', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(455, 'data_rows', 'display_name', 223, 'kh', 'Article Type Id', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(456, 'data_rows', 'display_name', 224, 'kh', 'article_types', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(457, 'data_types', 'display_name_singular', 33, 'kh', 'Article', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(458, 'data_types', 'display_name_plural', 33, 'kh', 'Articles', '2020-01-16 18:35:03', '2020-01-16 18:35:03'),
(459, 'data_rows', 'display_name', 137, 'kh', 'Id', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(460, 'data_rows', 'display_name', 138, 'kh', 'Title', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(461, 'data_rows', 'display_name', 139, 'kh', 'Total', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(462, 'data_rows', 'display_name', 140, 'kh', 'Created At', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(463, 'data_rows', 'display_name', 141, 'kh', 'Updated At', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(464, 'data_rows', 'display_name', 142, 'kh', 'Project Id', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(465, 'data_rows', 'display_name', 143, 'kh', 'projects', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(466, 'data_types', 'display_name_singular', 22, 'kh', 'Project Size', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(467, 'data_types', 'display_name_plural', 22, 'kh', 'Project Sizes', '2020-01-16 18:37:29', '2020-01-16 18:37:29'),
(468, 'data_rows', 'display_name', 121, 'kh', 'Id', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(469, 'data_rows', 'display_name', 122, 'kh', 'Title', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(470, 'data_rows', 'display_name', 123, 'kh', 'Image', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(471, 'data_rows', 'display_name', 124, 'kh', 'Created At', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(472, 'data_rows', 'display_name', 125, 'kh', 'Updated At', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(473, 'data_rows', 'display_name', 126, 'kh', 'Deleted At', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(474, 'data_rows', 'display_name', 127, 'kh', 'Project Id', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(475, 'data_rows', 'display_name', 128, 'kh', 'projects', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(476, 'data_types', 'display_name_singular', 20, 'kh', 'Project Image', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(477, 'data_types', 'display_name_plural', 20, 'kh', 'Project Images', '2020-01-16 21:36:46', '2020-01-16 21:36:46'),
(478, 'project_images', 'title', 12, 'kh', 'កន្លែងហាត់ប្រាណ', '2020-01-20 23:08:55', '2020-01-21 00:44:51'),
(479, 'room_features', 'title', 36, 'kh', 'បន្ទប់ទឹក', '2020-01-20 23:56:53', '2020-01-21 01:59:49'),
(480, 'room_features', 'total', 36, 'kh', '1', '2020-01-20 23:56:53', '2020-01-20 23:56:53'),
(485, 'facilities', 'title', 2, 'kh', 'ណាត់ពេលទស្សនាផ្ទះ', '2020-01-21 00:26:29', '2020-01-21 00:26:29'),
(486, 'facilities', 'contact', 2, 'kh', '+855(0)61 997 888', '2020-01-21 00:26:29', '2020-01-21 00:26:29'),
(487, 'facilities', 'interest', 2, 'kh', 'មានចំណាប់អារម្មណ៏រឺទេ?', '2020-01-21 00:26:29', '2020-01-21 00:26:29'),
(488, 'facilities', 'description', 2, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">លោក​អ្នក​អាច​ដើរ​កំសាន្ត​តាម​សួនច្បារ ឬ​សម្រាក​នៅអគារ​លម្ហែ​ប្រចាំបុរី និង​តាម​អាង​ហែល​ទឹក។ ផាក​លែន ៥៩៨ ផ្តល់​ជូន​កន្លែង​លំហែ​ទាំង​នេះ ហើយ​កន្លែង​ផ្សេងៗ​ជា​ច្រើន​ទៀត ដល់​ក្រុម​គ្រួសារ និង​លោក​អ្នក​ ដើម្បី​កំសាន្ត​បាន​ដោយ​រីក​រាយ​បំផុត។</span></p>', '2020-01-21 00:26:29', '2020-01-21 00:26:29'),
(489, 'facilities', 'article', 2, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">តើ​អ្នក​កំពុង​រង់ចាំ​អ្វីទៀត? ចាប់ផ្តើមធ្វើការណាត់នៅថ្ងៃនេះ។</span></p>', '2020-01-21 00:26:29', '2020-01-21 00:28:23'),
(490, 'project_images', 'title', 9, 'kh', 'អាងហែលទឹក', '2020-01-21 00:45:09', '2020-01-21 00:45:34'),
(491, 'project_images', 'title', 10, 'kh', 'សួនច្បារលើអាកាស', '2020-01-21 00:45:49', '2020-01-21 02:08:40'),
(492, 'project_images', 'title', 11, 'kh', 'កន្លែងធ្វើការរួម', '2020-01-21 00:46:13', '2020-01-21 00:46:54'),
(493, 'data_rows', 'display_name', 235, 'kh', 'Id', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(494, 'data_rows', 'display_name', 236, 'kh', 'Name', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(495, 'data_rows', 'display_name', 237, 'kh', 'Start Price', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(496, 'data_rows', 'display_name', 238, 'kh', 'To Price', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(497, 'data_rows', 'display_name', 239, 'kh', 'Title', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(498, 'data_rows', 'display_name', 240, 'kh', 'Logo', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(499, 'data_rows', 'display_name', 241, 'kh', 'Background', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(500, 'data_rows', 'display_name', 242, 'kh', 'Address', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(501, 'data_rows', 'display_name', 243, 'kh', 'Location', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(502, 'data_rows', 'display_name', 244, 'kh', 'Detail', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(503, 'data_rows', 'display_name', 245, 'kh', 'Created At', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(504, 'data_rows', 'display_name', 246, 'kh', 'Updated At', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(505, 'data_rows', 'display_name', 247, 'kh', 'Location Id', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(506, 'data_rows', 'display_name', 248, 'kh', 'Status', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(507, 'data_rows', 'display_name', 249, 'kh', 'locations', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(508, 'data_rows', 'display_name', 250, 'kh', 'property_types', '2020-01-21 00:51:45', '2020-01-21 00:51:45'),
(511, 'project_images', 'title', 8, 'kh', 'អាងហែលទឹក', '2020-01-21 00:58:53', '2020-01-21 00:58:53'),
(512, 'project_images', 'title', 7, 'kh', 'សួនច្បារ', '2020-01-21 01:00:21', '2020-01-21 02:15:22'),
(513, 'project_sizes', 'title', 7, 'kh', 'ទំហំដី', '2020-01-21 01:57:53', '2020-01-21 01:58:46'),
(514, 'project_sizes', 'total', 7, 'kh', '៤​ ហិចតា', '2020-01-21 01:57:53', '2020-01-21 01:58:46'),
(515, 'room_features', 'title', 35, 'kh', 'បន្ទប់ងូតទឹក', '2020-01-21 02:00:22', '2020-01-21 02:00:22'),
(516, 'room_features', 'total', 35, 'kh', '1', '2020-01-21 02:00:22', '2020-01-21 02:00:22'),
(517, 'room_features', 'title', 34, 'kh', 'ផ្ទះបាយ', '2020-01-21 02:00:37', '2020-01-21 02:00:37'),
(518, 'room_features', 'total', 34, 'kh', '1', '2020-01-21 02:00:37', '2020-01-21 02:00:37'),
(519, 'room_features', 'title', 33, 'kh', 'កន្លែងទទួលទានអាហារ', '2020-01-21 02:01:03', '2020-01-21 02:01:26'),
(520, 'room_features', 'total', 33, 'kh', '1', '2020-01-21 02:01:03', '2020-01-21 02:01:03'),
(521, 'room_features', 'title', 32, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 02:01:49', '2020-01-21 02:02:32'),
(522, 'room_features', 'total', 32, 'kh', '1', '2020-01-21 02:01:49', '2020-01-21 02:01:49'),
(523, 'room_features', 'title', 37, 'kh', 'ទំហំបន្ទប់', '2020-01-21 02:04:08', '2020-01-21 02:04:43'),
(524, 'room_features', 'total', 37, 'kh', '52.6sqm', '2020-01-21 02:04:08', '2020-01-21 02:04:43'),
(525, 'room_features', 'title', 39, 'kh', 'កន្លែងទទួលទានអាហារ', '2020-01-21 02:05:24', '2020-01-21 02:05:24'),
(526, 'room_features', 'total', 39, 'kh', '1', '2020-01-21 02:05:24', '2020-01-21 02:05:24'),
(527, 'room_features', 'title', 41, 'kh', 'បន្ទប់ងូតទឹក', '2020-01-21 02:05:48', '2020-01-21 02:05:48'),
(528, 'room_features', 'total', 41, 'kh', '1', '2020-01-21 02:05:48', '2020-01-21 02:05:48'),
(529, 'room_features', 'title', 38, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 02:06:09', '2020-01-21 02:06:09'),
(530, 'room_features', 'total', 38, 'kh', '1', '2020-01-21 02:06:09', '2020-01-21 02:06:09'),
(531, 'room_features', 'title', 40, 'kh', 'ផ្ទះបាយ', '2020-01-21 02:06:27', '2020-01-21 02:06:27'),
(532, 'room_features', 'total', 40, 'kh', '1', '2020-01-21 02:06:27', '2020-01-21 02:06:27'),
(533, 'room_features', 'title', 42, 'kh', 'បន្ទប់ទឹក', '2020-01-21 02:06:45', '2020-01-21 02:07:09'),
(534, 'room_features', 'total', 42, 'kh', '2', '2020-01-21 02:06:45', '2020-01-21 02:06:45'),
(535, 'project_images', 'title', 5, 'kh', 'ផ្ទះក្លឹប', '2020-01-21 02:17:16', '2020-01-21 02:17:16'),
(536, 'room_features', 'title', 45, 'kh', 'បន្ទប់គេង', '2020-01-21 02:54:35', '2020-01-21 02:54:35'),
(537, 'room_features', 'total', 45, 'kh', '៥', '2020-01-21 02:54:35', '2020-01-21 02:54:35'),
(538, 'room_features', 'title', 46, 'kh', 'បន្ទប់គេង', '2020-01-21 02:57:07', '2020-01-21 02:57:07'),
(539, 'room_features', 'total', 46, 'kh', '៦', '2020-01-21 02:57:07', '2020-01-29 19:19:17'),
(540, 'room_features', 'title', 47, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 02:58:07', '2020-01-21 02:58:07'),
(541, 'room_features', 'total', 47, 'kh', '១', '2020-01-21 02:58:07', '2020-01-21 02:58:07'),
(542, 'room_features', 'title', 48, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-21 02:59:03', '2020-01-29 18:56:19'),
(543, 'room_features', 'total', 48, 'kh', '១', '2020-01-21 02:59:03', '2020-01-21 02:59:03'),
(544, 'room_features', 'title', 49, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-21 02:59:54', '2020-01-29 18:56:34'),
(545, 'room_features', 'total', 49, 'kh', '១', '2020-01-21 02:59:54', '2020-01-21 02:59:54'),
(546, 'room_features', 'title', 50, 'kh', 'បន្ទប់ទឹក', '2020-01-21 03:00:33', '2020-01-21 03:00:33'),
(547, 'room_features', 'total', 50, 'kh', '៨', '2020-01-21 03:00:33', '2020-01-29 18:57:12'),
(548, 'room_features', 'title', 51, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-21 03:01:13', '2020-01-29 18:57:32'),
(549, 'room_features', 'total', 51, 'kh', '៤', '2020-01-21 03:01:13', '2020-01-29 18:57:32'),
(550, 'room_features', 'title', 52, 'kh', 'បន្ទប់គេង', '2020-01-21 03:02:31', '2020-01-21 03:02:31'),
(551, 'room_features', 'total', 52, 'kh', '៥', '2020-01-21 03:02:31', '2020-01-21 03:02:31'),
(552, 'room_features', 'title', 53, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 03:02:59', '2020-01-21 03:02:59'),
(553, 'room_features', 'total', 53, 'kh', '១', '2020-01-21 03:02:59', '2020-01-21 03:02:59'),
(554, 'room_features', 'title', 54, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-21 03:03:38', '2020-01-29 19:20:55'),
(555, 'room_features', 'total', 54, 'kh', '១', '2020-01-21 03:03:38', '2020-01-21 03:03:38'),
(556, 'room_features', 'title', 55, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-21 03:04:17', '2020-01-29 19:22:43'),
(557, 'room_features', 'total', 55, 'kh', '១', '2020-01-21 03:04:17', '2020-01-21 03:04:17'),
(558, 'room_features', 'title', 56, 'kh', 'បន្ទប់ទឹក', '2020-01-21 03:04:43', '2020-01-21 03:04:43'),
(559, 'room_features', 'total', 56, 'kh', '7', '2020-01-21 03:04:43', '2020-01-29 19:21:32'),
(560, 'room_features', 'title', 57, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-21 03:05:28', '2020-01-29 19:21:51'),
(561, 'room_features', 'total', 57, 'kh', '២', '2020-01-21 03:05:28', '2020-01-21 03:05:28'),
(562, 'room_features', 'title', 58, 'kh', 'បន្ទប់គេង', '2020-01-21 03:06:30', '2020-01-21 03:06:30'),
(563, 'room_features', 'total', 58, 'kh', '៤', '2020-01-21 03:06:30', '2020-01-21 03:06:30'),
(564, 'room_features', 'title', 59, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 03:07:18', '2020-01-21 03:07:18'),
(565, 'room_features', 'total', 59, 'kh', '1', '2020-01-21 03:07:18', '2020-01-21 03:07:18'),
(566, 'room_features', 'title', 60, 'kh', 'បន្ទប់ទឹក', '2020-01-21 03:08:04', '2020-01-21 03:08:04'),
(567, 'room_features', 'total', 60, 'kh', '៥', '2020-01-21 03:08:04', '2020-01-21 03:08:04'),
(568, 'room_features', 'title', 61, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-21 03:08:46', '2020-01-29 19:42:43'),
(569, 'room_features', 'total', 61, 'kh', '២', '2020-01-21 03:08:46', '2020-01-21 03:08:46'),
(570, 'room_features', 'title', 19, 'kh', 'បន្ទប់គេង', '2020-01-21 03:10:02', '2020-01-21 03:10:02'),
(571, 'room_features', 'total', 19, 'kh', '៤', '2020-01-21 03:10:02', '2020-01-21 03:10:02'),
(572, 'room_features', 'title', 20, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 03:10:38', '2020-01-21 03:10:38'),
(573, 'room_features', 'total', 20, 'kh', '១', '2020-01-21 03:10:38', '2020-01-21 03:10:38'),
(574, 'room_features', 'title', 23, 'kh', 'បន្ទប់ទឹក', '2020-01-21 03:11:20', '2020-01-21 03:11:20'),
(575, 'room_features', 'total', 23, 'kh', '៥', '2020-01-21 03:11:20', '2020-01-21 03:11:20'),
(576, 'room_features', 'title', 24, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-21 03:11:58', '2020-01-29 19:53:23'),
(577, 'room_features', 'total', 24, 'kh', '១', '2020-01-21 03:11:58', '2020-01-21 03:11:58'),
(578, 'room_features', 'title', 22, 'kh', 'ចំនួនជាន់', '2020-01-21 03:13:07', '2020-01-21 03:13:07'),
(579, 'room_features', 'total', 22, 'kh', '៣', '2020-01-21 03:13:07', '2020-01-21 03:13:07'),
(580, 'room_features', 'title', 25, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-21 03:14:41', '2020-01-21 03:14:41'),
(581, 'room_features', 'total', 25, 'kh', '១', '2020-01-21 03:14:41', '2020-01-21 03:14:41'),
(582, 'room_features', 'title', 29, 'kh', 'បន្ទប់ទឹក', '2020-01-21 03:15:12', '2020-01-21 03:15:12'),
(583, 'room_features', 'total', 29, 'kh', '៤', '2020-01-21 03:15:12', '2020-01-21 03:15:12'),
(584, 'room_features', 'title', 31, 'kh', 'ចំណត', '2020-01-21 03:15:28', '2020-01-21 03:15:28'),
(585, 'room_features', 'total', 31, 'kh', '១', '2020-01-21 03:15:28', '2020-01-21 03:15:28'),
(586, 'room_features', 'title', 30, 'kh', 'ចំនួនជាន់', '2020-01-21 03:16:07', '2020-01-21 03:16:07'),
(587, 'room_features', 'total', 30, 'kh', '៣', '2020-01-21 03:16:07', '2020-01-21 03:16:07'),
(588, 'room_features', 'title', 26, 'kh', 'បន្ទប់គេង', '2020-01-21 03:16:49', '2020-01-21 03:16:49'),
(589, 'room_features', 'total', 26, 'kh', '៣', '2020-01-21 03:16:49', '2020-01-21 03:16:49'),
(590, 'data_rows', 'display_name', 251, 'kh', 'Id', '2020-01-21 21:22:44', '2020-01-21 21:22:44');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(591, 'data_rows', 'display_name', 252, 'kh', 'Name', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(592, 'data_rows', 'display_name', 253, 'kh', 'Phone', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(593, 'data_rows', 'display_name', 254, 'kh', 'Email', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(594, 'data_rows', 'display_name', 255, 'kh', 'Visit Date', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(595, 'data_rows', 'display_name', 256, 'kh', 'Visit Time', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(596, 'data_rows', 'display_name', 257, 'kh', 'Created At', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(597, 'data_rows', 'display_name', 258, 'kh', 'Updated At', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(598, 'data_rows', 'display_name', 259, 'kh', 'Project Id', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(599, 'data_rows', 'display_name', 260, 'kh', 'projects', '2020-01-21 21:22:44', '2020-01-21 21:22:44'),
(602, 'data_rows', 'display_name', 261, 'kh', 'Id', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(603, 'data_rows', 'display_name', 262, 'kh', 'Name', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(604, 'data_rows', 'display_name', 263, 'kh', 'Phone', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(605, 'data_rows', 'display_name', 264, 'kh', 'Email', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(606, 'data_rows', 'display_name', 265, 'kh', 'Visit Date', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(607, 'data_rows', 'display_name', 266, 'kh', 'Visit Time', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(608, 'data_rows', 'display_name', 267, 'kh', 'Created At', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(609, 'data_rows', 'display_name', 268, 'kh', 'Updated At', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(610, 'data_rows', 'display_name', 269, 'kh', 'Project Id', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(611, 'data_rows', 'display_name', 270, 'kh', 'projects', '2020-01-21 21:51:37', '2020-01-21 21:51:37'),
(614, 'data_rows', 'display_name', 271, 'kh', 'Id', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(615, 'data_rows', 'display_name', 272, 'kh', 'Name', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(616, 'data_rows', 'display_name', 273, 'kh', 'Phone', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(617, 'data_rows', 'display_name', 274, 'kh', 'Email', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(618, 'data_rows', 'display_name', 275, 'kh', 'Visit Date', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(619, 'data_rows', 'display_name', 276, 'kh', 'Visit Time', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(620, 'data_rows', 'display_name', 277, 'kh', 'Created At', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(621, 'data_rows', 'display_name', 278, 'kh', 'Updated At', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(622, 'data_rows', 'display_name', 279, 'kh', 'Project Id', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(623, 'data_rows', 'display_name', 280, 'kh', 'projects', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(624, 'data_types', 'display_name_singular', 38, 'kh', 'Book Visit', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(625, 'data_types', 'display_name_plural', 38, 'kh', 'Book Visits', '2020-01-22 00:47:15', '2020-01-22 00:47:15'),
(626, 'menu_items', 'title', 51, 'kh', 'Book Visits', '2020-01-23 03:26:50', '2020-01-23 03:26:50'),
(627, 'menu_items', 'title', 52, 'kh', 'Audits', '2020-01-23 03:30:17', '2020-01-23 03:30:17'),
(628, 'data_rows', 'display_name', 281, 'kh', 'Id', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(629, 'data_rows', 'display_name', 282, 'kh', 'User Type', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(630, 'data_rows', 'display_name', 283, 'kh', 'User Id', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(631, 'data_rows', 'display_name', 284, 'kh', 'Event', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(632, 'data_rows', 'display_name', 285, 'kh', 'Auditable Type', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(633, 'data_rows', 'display_name', 286, 'kh', 'Auditable Id', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(634, 'data_rows', 'display_name', 287, 'kh', 'Old Values', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(635, 'data_rows', 'display_name', 288, 'kh', 'New Values', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(636, 'data_rows', 'display_name', 289, 'kh', 'Url', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(637, 'data_rows', 'display_name', 290, 'kh', 'Ip Address', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(638, 'data_rows', 'display_name', 291, 'kh', 'User Agent', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(639, 'data_rows', 'display_name', 292, 'kh', 'Tags', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(640, 'data_rows', 'display_name', 293, 'kh', 'Created At', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(641, 'data_rows', 'display_name', 294, 'kh', 'Updated At', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(642, 'data_types', 'display_name_singular', 39, 'kh', 'Audit', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(643, 'data_types', 'display_name_plural', 39, 'kh', 'Audits', '2020-01-23 03:31:29', '2020-01-23 03:31:29'),
(644, 'articles', 'title', 30, 'kh', 'Privacy Policy', '2020-01-23 18:34:50', '2020-02-03 20:06:06'),
(645, 'articles', 'detail', 30, 'kh', '<p>Chip Mong Land built the Chip Mong Land app as a Free app. This SERVICE is provided by Chip Mong Land at no cost and is intended for use as is.</p>\n<p>This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.</p>\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Chip Mong Land unless otherwise defined in this Privacy Policy.</p>\n<p><strong>Information Collection and Use</strong></p>\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to name, phone number, email address. The information that we request will be retained by us and used as described in this privacy policy.</p>\n<p>The app does use third party services that may collect information used to identify you.</p>\n<p>Link to privacy policy of third party service providers used by the app</p>\n<p>-&nbsp;<a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noopener\">Google Play Services</a></p>\n<p>-&nbsp;<a href=\"https://www.facebook.com/about/privacy\" target=\"_blank\" rel=\"noopener\">Facebook</a></p>\n<p>&nbsp;</p>\n<p><strong>Log Data</strong></p>\n<p>We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.</p>\n<p><strong>Cookies</strong></p>\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.</p>\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\n<p><strong>Service Providers</strong></p>\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\n<p>- To facilitate our Service;</p>\n<p>- To provide the Service on our behalf;</p>\n<p>- To perform Service-related services; or</p>\n<p>- To assist us in analyzing how our Service is used.&lt;/p&gt;</p>\n<p>We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<p><strong>Security</strong></p>\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<p><strong>Links to Other Sites</strong></p>\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<p><strong>Children&rsquo;s Privacy</strong></p>\n<p>These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<p><strong>Changes to This Privacy Policy</strong></p>\n<p>We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.</p>\n<p><strong>Contact Us</strong></p>\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at sokunpisith.taing@chipmong.com, 13b Mao Tse Tung Blvd, Phnom Penh, Cambodia.</p>\n<p>This privacy policy page was created at&nbsp;<a href=\"https://privacypolicytemplate.net/\" target=\"_blank\" rel=\"noopener\">privacypolicytemplate.net&nbsp;</a>and modified/generated by&nbsp;<a href=\"href=&quot;https://app-privacy-policy-generator.firebaseapp.com/\" target=\"_blank\" rel=\"noopener\">App Privacy Policy Generator</a></p>', '2020-01-23 18:34:50', '2020-02-03 20:06:06'),
(646, 'data_rows', 'display_name', 16, 'kh', 'ID', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(647, 'data_rows', 'display_name', 17, 'kh', 'Name', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(648, 'data_rows', 'display_name', 20, 'kh', 'Display Name', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(649, 'data_rows', 'display_name', 18, 'kh', 'Created At', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(650, 'data_rows', 'display_name', 19, 'kh', 'Updated At', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(651, 'data_types', 'display_name_singular', 3, 'kh', 'Role', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(652, 'data_types', 'display_name_plural', 3, 'kh', 'Roles', '2020-01-23 20:59:40', '2020-01-23 20:59:40'),
(653, 'data_rows', 'display_name', 300, 'kh', 'Id', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(654, 'data_rows', 'display_name', 301, 'kh', 'Name', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(655, 'data_rows', 'display_name', 302, 'kh', 'Start Price', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(656, 'data_rows', 'display_name', 303, 'kh', 'To Price', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(657, 'data_rows', 'display_name', 304, 'kh', 'Title', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(658, 'data_rows', 'display_name', 305, 'kh', 'Logo', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(659, 'data_rows', 'display_name', 306, 'kh', 'Background', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(660, 'data_rows', 'display_name', 307, 'kh', 'Address', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(661, 'data_rows', 'display_name', 308, 'kh', 'Location', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(662, 'data_rows', 'display_name', 309, 'kh', 'Detail', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(663, 'data_rows', 'display_name', 310, 'kh', 'Created At', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(664, 'data_rows', 'display_name', 311, 'kh', 'Updated At', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(665, 'data_rows', 'display_name', 312, 'kh', 'Location Id', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(666, 'data_rows', 'display_name', 313, 'kh', 'Status', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(667, 'data_types', 'display_name_singular', 43, 'kh', 'Project', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(668, 'data_types', 'display_name_plural', 43, 'kh', 'Projects', '2020-01-23 21:56:20', '2020-01-23 21:56:20'),
(669, 'data_rows', 'display_name', 314, 'kh', 'locations', '2020-01-23 21:58:22', '2020-01-23 21:58:22'),
(670, 'data_rows', 'display_name', 315, 'kh', 'property_types', '2020-01-23 21:58:22', '2020-01-23 21:58:22'),
(671, 'projects', 'name', 5, 'kh', 'គម្រោង លែនម៉ាក ៦០ម៉ែត្រ', '2020-01-28 19:43:45', '2020-01-28 19:43:45'),
(672, 'projects', 'start_price', 5, 'kh', '288800', '2020-01-28 19:43:45', '2020-01-28 19:43:45'),
(673, 'projects', 'to_price', 5, 'kh', '1000800', '2020-01-28 19:43:45', '2020-01-28 19:43:45'),
(674, 'projects', 'title', 5, 'kh', 'អចលនទ្រព្យគុណភាពខ្ពស់ អមជាមួយភាពស្រស់បំព្រងដ៏មិនគួរឲ្យជឿ។ លែន ម៉ាក ៦០ ម៉ែត្រ មិនត្រឹមតែមានហាងទំនិញខ្នាតយក្សប៉ុណ្ណោះទេ ថែមទាំងមានផ្សារលក់ទំនិញបោះដុំ សម្រាប់ផ្តល់ផាសុកភាពដល់អ្នករស់នៅក្នុងបុរីផ្ទាល់តែម្តង។', '2020-01-28 19:43:45', '2020-01-28 19:43:45'),
(675, 'projects', 'detail', 5, 'kh', '<p style=\"color: #000000; font-size: 10px;\">គម្រោង​ លែន ម៉ាក ៦០ ម៉ែត្រ ស្ថិត​នៅ​លើដង​មហា​វិថី​ធំ​ជាង​គេក្នុង​​រាជធានី​ភ្នំពេញ គឺ​មហាវិថី ​សម្តេច​ ហ៊ុន សែន​ ៦០ ម៉ែត្រ។</p>\n<p style=\"color: #000000; font-size: 10px;\">គម្រោង​មួយ​នេះ ផ្តោត​សំខាន់​ទៅ​លើ​អគារ​រស់នៅ និង​ពាណិជ្ជកម្ម។ មួយ​វិញ​ទៀត អ្វី​ដែល​ស្ថិត​នៅ​​ក្នុង​គម្រោង​នេះ​ដែរ​នោះ​គឺ ផ្សារ​ទំនើបខ្នាត​ធំ ជីបម៉ុង ដែល​រចនា​ឡើង​ដើម្បី​ផ្តល់​ផាសុកភាព​ដល់​ប្រជាជន​ដែល​រស់​នៅ​ក្នុង និង​ក្បែរ​​គម្រោង ដឹ លែន ម៉ាក ៦០ ម៉ែត្រ​មួយ​នេះ។</p>', '2020-01-28 19:43:45', '2020-01-28 19:43:45'),
(676, 'facilities', 'title', 4, 'kh', 'ណាត់ពេលទស្សនាផ្ទះ', '2020-01-28 19:52:14', '2020-01-28 19:52:14'),
(677, 'facilities', 'contact', 4, 'kh', '+855(0)61 997 888', '2020-01-28 19:52:14', '2020-01-28 19:52:14'),
(678, 'facilities', 'interest', 4, 'kh', 'មានចំណាប់អារម្មណ៍រឺទេ?', '2020-01-28 19:52:14', '2020-01-28 19:52:14'),
(679, 'facilities', 'description', 4, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">លោក​អ្នក​អាច​ដើរ​លំហែ​តាម​សួនច្បារ​ ឬ​ផ្សារ​ទំនើប ចូល​ទៅ​សាកអគារ​លម្ហែ​ប្រចាំបុរី និង​សណ្ឋាគារដែល​នៅ​ជិត​លោក​​អ្នក។ លែន​ម៉ាក ៦០ ម៉ែត្រ​ផ្តល់​ជូន​លោក​អ្នក​រាល់​អ្វី​ដែល​អ្នក​ត្រូវ​ការ​ដើម្បី​រស់នៅ​ក្នុង​ជីវិត​មួយ​ដ៏​មាន​ន័យ។</span></p>', '2020-01-28 19:52:14', '2020-01-28 19:52:14'),
(680, 'facilities', 'article', 4, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">តើ​អ្នក​កំពុង​រង់ចាំ​អ្វីទៀត? ចាប់ផ្តើមធ្វើការណាត់នៅថ្ងៃនេះ។</span></p>', '2020-01-28 19:52:14', '2020-01-28 19:52:14'),
(681, 'project_images', 'title', 13, 'kh', 'អាងហែលទឹក', '2020-01-28 20:01:17', '2020-01-28 20:01:17'),
(682, 'project_images', 'title', 14, 'kh', '​សួនច្បារ', '2020-01-28 20:01:40', '2020-01-28 20:01:40'),
(683, 'project_images', 'title', 15, 'kh', 'ក្លឹបហាត់ប្រាណ', '2020-01-28 20:02:14', '2020-01-28 20:02:14'),
(684, 'project_images', 'title', 16, 'kh', 'សណ្ឋារគារ', '2020-01-28 20:02:58', '2020-01-28 20:02:58'),
(685, 'project_sizes', 'title', 8, 'kh', 'ប្រភេទលំនៅឋាន', '2020-01-28 20:16:31', '2020-01-28 20:16:31'),
(686, 'project_sizes', 'total', 8, 'kh', '5', '2020-01-28 20:16:31', '2020-01-28 20:16:31'),
(687, 'project_sizes', 'title', 9, 'kh', '​កន្លែងលំហែ', '2020-01-28 20:17:11', '2020-01-28 20:17:11'),
(688, 'project_sizes', 'total', 9, 'kh', '5', '2020-01-28 20:17:11', '2020-01-28 20:17:11'),
(689, 'properties', 'name', 14, 'kh', '​វីឡា ឃ្វីន', '2020-01-28 20:21:15', '2020-01-28 20:21:15'),
(690, 'properties', 'detail', 14, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-28 20:21:15', '2020-01-28 20:21:15'),
(691, 'properties', 'name', 15, 'kh', '​វីឡាឃ្វីន A', '2020-01-28 20:24:23', '2020-01-28 20:24:23'),
(692, 'properties', 'detail', 15, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-28 20:24:23', '2020-01-28 20:24:23'),
(693, 'properties', 'name', 16, 'kh', 'វីឡា ភ្លោះ', '2020-01-28 20:33:13', '2020-01-28 20:33:13'),
(694, 'properties', 'detail', 16, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-28 20:33:13', '2020-01-28 20:33:13'),
(695, 'properties', 'name', 17, 'kh', 'វីឡាកូនកាត់ A', '2020-01-28 20:34:12', '2020-01-28 20:34:12'),
(696, 'properties', 'detail', 17, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-28 20:34:12', '2020-01-28 20:34:12'),
(697, 'properties', 'name', 18, 'kh', 'ហ្សប ហៅស៍', '2020-01-28 20:38:39', '2020-01-28 20:38:39'),
(698, 'properties', 'detail', 18, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">ហ្សបហោស៍​ដែល​មាន​ផាសុខភាព និង​តម្លៃ​សមរម្យ​ផ្តល់​ជូន​លោក​អ្នក​រាល់​អ្វី​ដែល​គ្រួសារ និង​លោក​អ្នក​​ត្រូវ​ការ សម្រាប់​បង្កើត​ជា​ទ្រនំ​សុភមង្គល</span></p>', '2020-01-28 20:38:39', '2020-01-28 20:38:39'),
(699, 'room_features', 'title', 62, 'kh', 'ជាន់', '2020-01-28 20:46:08', '2020-01-28 21:09:24'),
(700, 'room_features', 'total', 62, 'kh', '៣', '2020-01-28 20:46:08', '2020-01-28 21:09:24'),
(701, 'room_features', 'title', 63, 'kh', 'បន្ទប់គេង', '2020-01-28 20:46:54', '2020-01-28 21:08:56'),
(702, 'room_features', 'total', 63, 'kh', '៦', '2020-01-28 20:46:54', '2020-01-28 21:08:56'),
(703, 'room_features', 'title', 64, 'kh', 'ចំណត', '2020-01-28 20:47:29', '2020-01-28 21:10:46'),
(704, 'room_features', 'total', 64, 'kh', '១', '2020-01-28 20:47:29', '2020-01-28 21:08:36'),
(705, 'room_features', 'title', 65, 'kh', 'កន្លែងធ្វើអាជីវកម្ម', '2020-01-28 20:48:04', '2020-01-28 21:08:14'),
(706, 'room_features', 'total', 65, 'kh', '១', '2020-01-28 20:48:04', '2020-01-28 21:08:14'),
(707, 'room_features', 'title', 66, 'kh', 'បន្ទប់ទឹក', '2020-01-28 20:48:45', '2020-01-28 21:06:19'),
(708, 'room_features', 'total', 66, 'kh', '៧', '2020-01-28 20:48:45', '2020-01-28 21:06:19'),
(709, 'room_features', 'title', 67, 'kh', 'បន្ទប់គេង', '2020-01-28 21:13:49', '2020-01-28 21:13:49'),
(710, 'room_features', 'total', 67, 'kh', '៦', '2020-01-28 21:13:49', '2020-01-29 18:41:34'),
(711, 'room_features', 'title', 68, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-28 21:14:58', '2020-01-29 18:42:39'),
(712, 'room_features', 'total', 68, 'kh', '១', '2020-01-28 21:14:58', '2020-01-28 21:14:58'),
(713, 'room_features', 'title', 69, 'kh', 'បន្ទប់ទឹក', '2020-01-28 21:16:05', '2020-01-28 21:16:05'),
(714, 'room_features', 'total', 69, 'kh', '៨', '2020-01-28 21:16:05', '2020-01-29 18:43:05'),
(715, 'room_features', 'title', 70, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-28 21:16:51', '2020-01-28 21:16:51'),
(716, 'room_features', 'total', 70, 'kh', '១', '2020-01-28 21:16:51', '2020-01-28 21:16:51'),
(717, 'room_features', 'title', 71, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-28 21:21:04', '2020-01-29 18:45:33'),
(718, 'room_features', 'total', 71, 'kh', '១', '2020-01-28 21:21:04', '2020-01-28 21:21:04'),
(719, 'room_features', 'title', 72, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-28 21:22:00', '2020-01-29 18:46:19'),
(720, 'room_features', 'total', 72, 'kh', '៤', '2020-01-28 21:22:00', '2020-01-28 21:35:49'),
(721, 'room_features', 'title', 73, 'kh', 'បន្ទប់គេង', '2020-01-28 21:28:29', '2020-01-28 21:28:29'),
(722, 'room_features', 'total', 73, 'kh', '៥', '2020-01-28 21:28:29', '2020-01-28 21:28:29'),
(723, 'room_features', 'title', 74, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-28 21:32:19', '2020-01-29 19:14:50'),
(724, 'room_features', 'total', 74, 'kh', '១', '2020-01-28 21:32:19', '2020-01-28 21:32:19'),
(725, 'room_features', 'title', 75, 'kh', 'បន្ទប់ទឹក', '2020-01-28 21:32:33', '2020-01-28 21:32:33'),
(726, 'room_features', 'total', 75, 'kh', '៧', '2020-01-28 21:32:33', '2020-01-29 19:14:35'),
(727, 'room_features', 'title', 76, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-28 21:32:55', '2020-01-28 21:32:55'),
(728, 'room_features', 'total', 76, 'kh', '១', '2020-01-28 21:32:55', '2020-01-28 21:32:55'),
(729, 'room_features', 'title', 77, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-28 21:33:18', '2020-01-29 19:15:27'),
(730, 'room_features', 'total', 77, 'kh', '១', '2020-01-28 21:33:18', '2020-01-28 21:33:18'),
(731, 'room_features', 'title', 78, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-28 21:33:33', '2020-01-29 19:15:44'),
(732, 'room_features', 'total', 78, 'kh', '២', '2020-01-28 21:33:33', '2020-01-28 21:33:33'),
(733, 'room_features', 'title', 79, 'kh', 'បន្ទប់គេង', '2020-01-28 21:37:32', '2020-01-28 21:37:32'),
(734, 'room_features', 'total', 79, 'kh', '៤', '2020-01-28 21:37:32', '2020-01-28 21:37:32'),
(735, 'room_features', 'title', 80, 'kh', 'បន្ទប់ទឹក', '2020-01-28 21:38:01', '2020-01-28 21:38:01'),
(736, 'room_features', 'total', 80, 'kh', '៥', '2020-01-28 21:38:01', '2020-01-28 21:38:01'),
(737, 'room_features', 'title', 81, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-28 21:38:29', '2020-01-28 21:38:29'),
(738, 'room_features', 'total', 81, 'kh', '១', '2020-01-28 21:38:29', '2020-01-28 21:38:29'),
(739, 'room_features', 'title', 82, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-28 21:39:02', '2020-01-29 19:41:08'),
(740, 'room_features', 'total', 82, 'kh', '២', '2020-01-28 21:39:02', '2020-01-29 19:41:08'),
(741, 'room_features', 'title', 83, 'kh', 'បន្ទប់គេង', '2020-01-28 21:40:10', '2020-01-28 21:40:10'),
(742, 'room_features', 'total', 83, 'kh', '៤', '2020-01-28 21:40:10', '2020-01-28 21:40:10'),
(743, 'room_features', 'title', 84, 'kh', 'ជាន់', '2020-01-28 21:41:05', '2020-01-28 21:41:05'),
(744, 'room_features', 'total', 84, 'kh', '៣', '2020-01-28 21:41:05', '2020-01-28 21:41:05'),
(745, 'room_features', 'title', 85, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-28 21:41:28', '2020-01-29 19:50:13'),
(746, 'room_features', 'total', 85, 'kh', '១', '2020-01-28 21:41:28', '2020-01-28 21:41:28'),
(747, 'room_features', 'title', 86, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-28 21:42:30', '2020-01-28 21:42:30'),
(748, 'room_features', 'total', 86, 'kh', '១', '2020-01-28 21:42:30', '2020-01-28 21:42:30'),
(749, 'room_features', 'title', 87, 'kh', 'បន្ទប់ទឹក', '2020-01-28 21:43:09', '2020-01-28 21:43:09'),
(750, 'room_features', 'total', 87, 'kh', '៥', '2020-01-28 21:43:09', '2020-01-28 21:43:09'),
(751, 'projects', 'name', 6, 'kh', 'គម្រោង ផាក លែន ៥០ម៉ែត្រ', '2020-01-29 00:06:54', '2020-01-29 00:14:21'),
(752, 'projects', 'start_price', 6, 'kh', '168899', '2020-01-29 00:06:54', '2020-01-29 00:06:54'),
(753, 'projects', 'to_price', 6, 'kh', '588898', '2020-01-29 00:06:54', '2020-01-29 00:06:54'),
(754, 'projects', 'title', 6, 'kh', 'ផ្តល់ជូនគេហដ្ឋានជាច្រើនប្រភេទដ៏សម្បូរបែបក្នុងការរស់នៅ រួមជាមួយផ្សារទំនើបប្រកបដោយផាសុកភាព គម្រោង ផាកលែន ៥០ម៉ែត្រ ផ្តល់ជូនអ្វីៗគ្រប់យ៉ាងក្នុងកន្លែងតែ១។', '2020-01-29 00:06:54', '2020-01-29 00:14:21'),
(755, 'projects', 'detail', 6, 'kh', '<p>ស្ថិតនៅតាមបណ្តោយផ្លូវ ៥០ម៉ែត្រ កែងជាមួយផ្លូវ ៣០ម៉ែត្រ(ផ្លូវព្រៃស) ដែលផ្តល់ជូននៅលំនៅឋានជាច្រើនប្រភេទដូចជា វីឡាឃ្វីន វីឡាឃ្វីន A វីឡាឃ្វីន B វីឡាភ្លោះ វីឡាកូនកាត់ A និង ហ្សប ហៅស៍ A​។ ក្នុងគម្រោងក៏មានផ្លូវពាណិជ្ជកម្មដ៏ធំ ជាមួយផ្សារទំនើប ជីប ម៉ុង ក្លឹបហាត់ប្រាណ សួនកុមារ និង សួនច្បារពណ៌បៃតង។ គម្រោងនេះក៏មានផ្លូវភ្ចាប់ទៅផ្លូវជាតិសំខាន់ៗ ដែលបើកឲ្យចរាចរជាសាធារណៈ ដើម្បីឲ្យកាន់តែមានភាពមម៉ាញឹក ដើម្បីជួយអតិថិជនដែលធ្វើជំនួញផ្សេងៗក្នុងគម្រោងផងដែរ។</p>', '2020-01-29 00:06:54', '2020-01-29 00:14:21'),
(756, 'project_images', 'title', 17, 'kh', 'កន្លែងហាត់ប្រាណ', '2020-01-29 00:29:53', '2020-01-29 00:30:23'),
(757, 'project_images', 'title', 18, 'kh', 'សួនច្បារ', '2020-01-29 00:30:58', '2020-01-29 00:30:58'),
(758, 'project_images', 'title', 19, 'kh', 'អាងហែលទឹក', '2020-01-29 00:31:27', '2020-01-29 00:31:27'),
(759, 'project_images', 'title', 20, 'kh', 'ក្លឹបហាត់ប្រាណ', '2020-01-29 00:31:48', '2020-01-29 00:31:48'),
(760, 'facilities', 'title', 5, 'kh', 'ណាត់ពេលទស្សនាផ្ទះ', '2020-01-29 00:38:13', '2020-01-29 00:38:13'),
(761, 'facilities', 'contact', 5, 'kh', '+855(0)61 997 888', '2020-01-29 00:38:13', '2020-01-29 00:38:13'),
(762, 'facilities', 'interest', 5, 'kh', 'មានចំណាប់អារម្មណ៍រឺទេ?', '2020-01-29 00:38:13', '2020-01-29 00:38:13'),
(763, 'facilities', 'description', 5, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">លោក​អ្នក​អាច​ដើរ​លំហែ​តាម​សួនច្បារ​ ​សួនកុមារ ​ផ្សារ​ទំនើបជីប ម៉ុង ឬ ក៏ហាត់ប្រាណក្នុងក្លឹបហៅស៍។ គម្រោង ផាក លែន ៥០ ម៉ែត្រ​ផ្តល់​ជូន​លោក​អ្នក​រាល់​អ្វី​ដែល​អ្នក​ត្រូវ​ការ​ដើម្បី​រស់នៅ​ក្នុង​ជីវិត​មួយ​ដ៏​មាន​ន័យ។</span></p>', '2020-01-29 00:38:13', '2020-01-29 00:38:13'),
(764, 'facilities', 'article', 5, 'kh', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">តើ​អ្នក​កំពុង​រង់ចាំ​អ្វីទៀត? ចាប់ផ្តើមធ្វើការណាត់នៅថ្ងៃនេះ។</span></p>', '2020-01-29 00:38:13', '2020-01-29 00:38:13'),
(765, 'properties', 'name', 19, 'kh', 'វីឡា ឃ្វីន', '2020-01-29 01:56:48', '2020-01-29 01:56:48'),
(766, 'properties', 'detail', 19, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-29 01:56:48', '2020-01-29 01:56:48'),
(767, 'properties', 'name', 20, 'kh', '​វីឡាឃ្វីន A', '2020-01-29 01:57:51', '2020-01-29 01:57:51'),
(768, 'properties', 'detail', 20, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-29 01:57:51', '2020-01-29 01:57:51'),
(769, 'properties', 'name', 21, 'kh', 'វីឡា ឃ្វីន B', '2020-01-29 01:59:30', '2020-01-29 01:59:30'),
(770, 'properties', 'detail', 21, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-29 01:59:30', '2020-01-29 01:59:30'),
(771, 'properties', 'name', 22, 'kh', 'វីឡា ភ្លោះ', '2020-01-29 02:01:17', '2020-01-29 02:01:17'),
(772, 'properties', 'detail', 22, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-29 02:01:17', '2020-01-29 02:01:17'),
(773, 'properties', 'name', 23, 'kh', 'វីឡាកូនកាត់ A', '2020-01-29 02:02:26', '2020-01-29 02:02:26'),
(774, 'properties', 'detail', 23, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">រីករាយ​ជាមួយ​​ផាសុខភាព និងភាព​ប្រណិតនៃ​វីឡា ក៏​ដូច​ជា​​អត្ថប្រយោជន៍នានា​​ដែល​អាច​​ឲ្យ​លោក​អ្នក​រស់នៅ​ជា​លក្ខណៈ​គ្រួសារ​ដោយ​សុភមង្គល</span></p>', '2020-01-29 02:02:26', '2020-01-29 02:02:26'),
(775, 'properties', 'name', 24, 'kh', 'ហ្សប ហៅស៍', '2020-01-29 02:08:51', '2020-01-29 02:08:51'),
(776, 'properties', 'detail', 24, 'kh', '<p><span style=\"color: #000000; font-size: 10px;\">ហ្សបហោស៍​ដែល​មាន​ផាសុខភាព និង​តម្លៃ​សមរម្យ​ផ្តល់​ជូន​លោក​អ្នក​រាល់​អ្វី​ដែល​គ្រួសារ និង​លោក​អ្នក​​ត្រូវ​ការ សម្រាប់​បង្កើត​ជា​ទ្រនំ​សុភមង្គល</span></p>', '2020-01-29 02:08:51', '2020-01-29 02:08:51'),
(777, 'room_features', 'title', 88, 'kh', 'បន្ទប់គេង', '2020-01-29 02:27:37', '2020-01-29 02:27:37'),
(778, 'room_features', 'total', 88, 'kh', '៦', '2020-01-29 02:27:37', '2020-01-29 18:36:59'),
(779, 'room_features', 'title', 89, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-29 02:28:10', '2020-01-29 18:37:50'),
(780, 'room_features', 'total', 89, 'kh', '១', '2020-01-29 02:28:10', '2020-01-29 02:28:10'),
(781, 'room_features', 'title', 90, 'kh', 'បន្ទប់ទឹក', '2020-01-29 02:28:49', '2020-01-29 02:28:49'),
(782, 'room_features', 'total', 90, 'kh', '៨', '2020-01-29 02:28:49', '2020-01-29 18:38:47'),
(783, 'room_features', 'title', 91, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 02:29:23', '2020-01-29 02:29:23'),
(784, 'room_features', 'total', 91, 'kh', '១', '2020-01-29 02:29:23', '2020-01-29 02:29:23'),
(785, 'room_features', 'title', 92, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-29 02:30:00', '2020-01-29 18:39:36'),
(786, 'room_features', 'total', 92, 'kh', '១', '2020-01-29 02:30:00', '2020-01-29 02:30:00'),
(787, 'room_features', 'title', 93, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 02:30:31', '2020-01-29 18:40:17'),
(788, 'room_features', 'total', 93, 'kh', '៤', '2020-01-29 02:30:31', '2020-01-29 02:30:31'),
(789, 'room_features', 'title', 94, 'kh', 'បន្ទប់គេង', '2020-01-29 02:37:30', '2020-01-29 02:37:30'),
(790, 'room_features', 'total', 94, 'kh', '៥', '2020-01-29 02:37:30', '2020-01-29 02:37:30'),
(791, 'room_features', 'title', 95, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-29 02:38:02', '2020-01-29 19:07:52'),
(792, 'room_features', 'total', 95, 'kh', '១', '2020-01-29 02:38:02', '2020-01-29 02:38:02'),
(793, 'room_features', 'title', 96, 'kh', 'បន្ទប់ទឹក', '2020-01-29 02:38:47', '2020-01-29 02:38:47'),
(794, 'room_features', 'total', 96, 'kh', '៧', '2020-01-29 02:38:47', '2020-01-29 19:09:36'),
(795, 'room_features', 'title', 97, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 02:39:10', '2020-01-29 02:39:10'),
(796, 'room_features', 'total', 97, 'kh', '១', '2020-01-29 02:39:10', '2020-01-29 02:39:10'),
(797, 'room_features', 'title', 98, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-29 02:39:37', '2020-01-29 19:10:43'),
(798, 'room_features', 'total', 98, 'kh', '១', '2020-01-29 02:39:37', '2020-01-29 02:39:37'),
(799, 'room_features', 'title', 99, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 02:40:01', '2020-01-29 19:10:21'),
(800, 'room_features', 'total', 99, 'kh', '២', '2020-01-29 02:40:01', '2020-01-29 02:40:01'),
(801, 'room_features', 'title', 100, 'kh', 'បន្ទប់គេង', '2020-01-29 02:41:47', '2020-01-29 02:41:47'),
(802, 'room_features', 'total', 100, 'kh', '៥', '2020-01-29 02:41:47', '2020-01-29 02:41:47'),
(803, 'room_features', 'title', 101, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 02:42:33', '2020-01-29 02:42:33'),
(804, 'room_features', 'total', 101, 'kh', '១', '2020-01-29 02:42:33', '2020-01-29 02:42:33'),
(805, 'room_features', 'title', 102, 'kh', 'បន្ទប់ទឹក', '2020-01-29 02:43:09', '2020-01-29 02:43:09'),
(806, 'room_features', 'total', 102, 'kh', '៧', '2020-01-29 02:43:09', '2020-01-29 02:43:09'),
(807, 'room_features', 'title', 103, 'kh', 'កន្លែងសិក្សា', '2020-01-29 02:43:54', '2020-01-29 02:43:54'),
(808, 'room_features', 'total', 103, 'kh', '១', '2020-01-29 02:43:54', '2020-01-29 02:43:54'),
(809, 'room_features', 'title', 104, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-29 02:44:20', '2020-01-29 19:02:52'),
(810, 'room_features', 'total', 104, 'kh', '១', '2020-01-29 02:44:20', '2020-01-29 02:44:20'),
(811, 'room_features', 'title', 105, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 02:45:05', '2020-01-29 19:03:07'),
(812, 'room_features', 'total', 105, 'kh', '២', '2020-01-29 02:45:05', '2020-01-29 02:45:05'),
(813, 'room_features', 'title', 106, 'kh', 'បន្ទប់គេង', '2020-01-29 02:52:21', '2020-01-29 02:52:21'),
(814, 'room_features', 'total', 106, 'kh', '៤', '2020-01-29 02:52:21', '2020-01-29 02:52:21'),
(815, 'room_features', 'title', 107, 'kh', 'បន្ទប់ទឹក', '2020-01-29 02:52:43', '2020-01-29 02:52:43'),
(816, 'room_features', 'total', 107, 'kh', '៥', '2020-01-29 02:52:43', '2020-01-29 02:52:43'),
(817, 'room_features', 'title', 108, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 02:59:49', '2020-01-29 02:59:49'),
(818, 'room_features', 'total', 108, 'kh', '១', '2020-01-29 02:59:49', '2020-01-29 02:59:49'),
(819, 'room_features', 'title', 109, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 03:00:09', '2020-01-29 19:40:37'),
(820, 'room_features', 'total', 109, 'kh', '២', '2020-01-29 03:00:09', '2020-01-29 03:00:09'),
(821, 'room_features', 'title', 110, 'kh', 'បន្ទប់គេង', '2020-01-29 03:02:45', '2020-01-29 03:02:45'),
(822, 'room_features', 'total', 110, 'kh', '៤', '2020-01-29 03:02:45', '2020-01-29 03:02:45'),
(823, 'room_features', 'title', 111, 'kh', 'ជាន់', '2020-01-29 03:03:57', '2020-01-29 03:03:57'),
(824, 'room_features', 'total', 111, 'kh', '៣', '2020-01-29 03:03:57', '2020-01-29 03:03:57'),
(825, 'room_features', 'title', 112, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 03:04:35', '2020-01-29 03:04:35'),
(826, 'room_features', 'total', 112, 'kh', '១', '2020-01-29 03:04:35', '2020-01-29 03:04:35'),
(827, 'room_features', 'title', 113, 'kh', 'បន្ទប់ទឹក', '2020-01-29 03:04:54', '2020-01-29 03:04:54'),
(828, 'room_features', 'total', 113, 'kh', '៥', '2020-01-29 03:04:54', '2020-01-29 03:04:54'),
(829, 'room_features', 'title', 114, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 03:05:53', '2020-01-29 19:49:04'),
(830, 'room_features', 'total', 114, 'kh', '១', '2020-01-29 03:05:53', '2020-01-29 03:05:53'),
(831, 'room_features', 'title', 115, 'kh', 'បន្ទប់គេង', '2020-01-29 03:09:11', '2020-01-29 03:09:11'),
(832, 'room_features', 'total', 115, 'kh', '៤', '2020-01-29 03:09:11', '2020-01-29 03:09:11'),
(835, 'room_features', 'title', 117, 'kh', 'កន្លែងប្រកបអាជីវកម្ម', '2020-01-29 03:11:22', '2020-01-29 19:56:05'),
(836, 'room_features', 'total', 117, 'kh', '១', '2020-01-29 03:11:22', '2020-01-29 03:11:22'),
(839, 'room_features', 'title', 119, 'kh', 'បន្ទប់ទឹក', '2020-01-29 03:12:50', '2020-01-29 03:12:50'),
(840, 'room_features', 'total', 119, 'kh', '៥', '2020-01-29 03:12:50', '2020-01-29 03:12:50'),
(841, 'room_features', 'title', 120, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 03:13:12', '2020-01-29 19:56:34'),
(842, 'room_features', 'total', 120, 'kh', '១', '2020-01-29 03:13:12', '2020-01-29 03:13:12'),
(843, 'room_features', 'title', 121, 'kh', 'កន្លែងធ្វើការងារ', '2020-01-29 18:38:27', '2020-01-29 18:38:27'),
(844, 'room_features', 'total', 121, 'kh', '១', '2020-01-29 18:38:27', '2020-01-29 18:38:27'),
(845, 'room_features', 'title', 122, 'kh', 'កន្លែងធ្វើការងារ', '2020-01-29 18:46:55', '2020-01-29 18:46:55'),
(846, 'room_features', 'total', 122, 'kh', '១', '2020-01-29 18:46:55', '2020-01-29 18:46:55'),
(847, 'room_features', 'title', 123, 'kh', 'កន្លែងធ្វើការងារ', '2020-01-29 18:58:44', '2020-01-29 18:58:44'),
(848, 'room_features', 'total', 123, 'kh', '១', '2020-01-29 18:58:44', '2020-01-29 18:58:44'),
(849, 'room_features', 'title', 124, 'kh', 'បន្ទ​ប់ជួបជុំគ្រួសារ', '2020-01-29 19:04:02', '2020-01-29 19:04:02'),
(850, 'room_features', 'total', 124, 'kh', '១', '2020-01-29 19:04:02', '2020-01-29 19:04:02'),
(851, 'room_features', 'title', 9, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-01-29 19:24:27', '2020-01-29 19:24:27'),
(852, 'room_features', 'total', 9, 'kh', '១', '2020-01-29 19:24:27', '2020-01-29 19:24:27'),
(853, 'room_features', 'title', 8, 'kh', 'បន្ទប់គេង', '2020-01-29 19:24:46', '2020-01-29 19:24:46'),
(854, 'room_features', 'total', 8, 'kh', '៥', '2020-01-29 19:24:46', '2020-01-29 19:24:46'),
(855, 'room_features', 'title', 12, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-01-29 19:26:04', '2020-01-29 19:26:04'),
(856, 'room_features', 'total', 12, 'kh', '១', '2020-01-29 19:26:04', '2020-01-29 19:26:04'),
(857, 'room_features', 'title', 13, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 19:26:19', '2020-01-29 19:26:19'),
(858, 'room_features', 'total', 13, 'kh', '២', '2020-01-29 19:26:19', '2020-01-29 19:26:19'),
(859, 'room_features', 'title', 14, 'kh', 'បន្ទប់គេង', '2020-01-29 19:44:21', '2020-01-29 19:44:21'),
(860, 'room_features', 'total', 14, 'kh', '៤', '2020-01-29 19:44:21', '2020-01-29 19:44:21'),
(861, 'room_features', 'title', 15, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 19:44:42', '2020-01-29 19:44:42'),
(862, 'room_features', 'total', 15, 'kh', '១', '2020-01-29 19:44:42', '2020-01-29 19:44:42'),
(863, 'room_features', 'title', 16, 'kh', 'បន្ទប់ទឹក', '2020-01-29 19:45:54', '2020-01-29 19:45:54'),
(864, 'room_features', 'total', 16, 'kh', '៥', '2020-01-29 19:45:54', '2020-01-29 19:45:54'),
(865, 'room_features', 'title', 17, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 19:46:16', '2020-01-29 19:46:16'),
(866, 'room_features', 'total', 17, 'kh', '២', '2020-01-29 19:46:16', '2020-01-29 19:46:16'),
(867, 'article_types', 'name', 4, 'kh', 'All', '2020-01-29 21:07:28', '2020-01-29 21:07:28'),
(868, 'projects', 'address', 6, 'kh', 'ភ្នំពេញ', '2020-01-29 21:27:55', '2020-01-29 21:27:55'),
(869, 'projects', 'address', 5, 'kh', 'ភ្នំពេញ', '2020-01-29 21:28:40', '2020-01-29 21:28:40'),
(870, 'properties', 'name', 25, 'kh', 'ហូម អហ្វហ្វីស៍', '2020-01-29 23:36:51', '2020-01-29 23:36:51'),
(871, 'properties', 'detail', 25, 'kh', '<p>អាចឲ្យលោកអ្នកបើកជាការិយាល័យ ឬ ប្រកបអាជីវកម្ម បានដោយផាសុកភាព និង ងាយស្រួលពីផ្ទះលោកអ្នកដោយផ្ទាល់។</p>', '2020-01-29 23:36:51', '2020-01-29 23:36:51'),
(872, 'room_features', 'title', 125, 'kh', 'ប្រអប់ជណ្តើរយន្តប្រអប់', '2020-01-29 23:54:27', '2020-01-29 23:54:27'),
(873, 'room_features', 'total', 125, 'kh', '១', '2020-01-29 23:54:28', '2020-01-29 23:54:28'),
(874, 'room_features', 'title', 126, 'kh', 'បន្ទប់គេង', '2020-01-29 23:55:35', '2020-01-29 23:55:35'),
(875, 'room_features', 'total', 126, 'kh', '៤', '2020-01-29 23:55:35', '2020-01-29 23:55:35'),
(876, 'room_features', 'title', 127, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-01-29 23:56:01', '2020-01-29 23:56:01'),
(877, 'room_features', 'total', 127, 'kh', '១', '2020-01-29 23:56:01', '2020-01-29 23:56:01'),
(878, 'room_features', 'title', 128, 'kh', 'កន្លែងធ្វើការងារ', '2020-01-29 23:56:37', '2020-01-29 23:56:37'),
(879, 'room_features', 'total', 128, 'kh', '១', '2020-01-29 23:56:37', '2020-01-29 23:56:37'),
(880, 'room_features', 'title', 129, 'kh', 'កន្លែងរង់ចាំ', '2020-01-29 23:56:59', '2020-01-29 23:56:59'),
(881, 'room_features', 'total', 129, 'kh', '១', '2020-01-29 23:56:59', '2020-01-29 23:56:59'),
(882, 'room_features', 'title', 130, 'kh', 'បន្ទប់ទឹក', '2020-01-29 23:57:22', '2020-01-29 23:57:22'),
(883, 'room_features', 'total', 130, 'kh', '៧', '2020-01-29 23:57:22', '2020-01-29 23:57:22'),
(884, 'room_features', 'title', 131, 'kh', 'ទីធ្លាចតរថយន្ត', '2020-01-29 23:57:56', '2020-01-29 23:57:56'),
(885, 'room_features', 'total', 131, 'kh', '២', '2020-01-29 23:57:56', '2020-01-29 23:57:56'),
(886, 'data_rows', 'display_name', 317, 'kh', 'Id', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(887, 'data_rows', 'display_name', 318, 'kh', 'Name', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(888, 'data_rows', 'display_name', 319, 'kh', 'Start Price', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(889, 'data_rows', 'display_name', 320, 'kh', 'To Price', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(890, 'data_rows', 'display_name', 321, 'kh', 'Detail', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(891, 'data_rows', 'display_name', 322, 'kh', 'Created At', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(892, 'data_rows', 'display_name', 323, 'kh', 'Updated At', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(893, 'data_rows', 'display_name', 324, 'kh', 'Project Id', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(894, 'data_rows', 'display_name', 325, 'kh', 'Layout', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(895, 'data_rows', 'display_name', 326, 'kh', 'Property Type Id', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(896, 'data_rows', 'display_name', 327, 'kh', 'projects', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(897, 'data_rows', 'display_name', 328, 'kh', 'property_types', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(898, 'data_types', 'display_name_singular', 44, 'kh', 'Property', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(899, 'data_types', 'display_name_plural', 44, 'kh', 'Properties', '2020-01-30 23:29:01', '2020-01-30 23:29:01'),
(900, 'data_rows', 'display_name', 334, 'kh', 'Id', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(901, 'data_rows', 'display_name', 335, 'kh', 'Title', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(902, 'data_rows', 'display_name', 336, 'kh', 'Total', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(903, 'data_rows', 'display_name', 337, 'kh', 'Created At', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(904, 'data_rows', 'display_name', 338, 'kh', 'Updated At', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(905, 'data_rows', 'display_name', 339, 'kh', 'Property Id', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(906, 'data_rows', 'display_name', 340, 'kh', 'Deleted At', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(907, 'data_rows', 'display_name', 341, 'kh', 'Icon', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(908, 'data_rows', 'display_name', 342, 'kh', 'Amenity Id', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(909, 'data_rows', 'display_name', 343, 'kh', 'properties', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(910, 'data_rows', 'display_name', 344, 'kh', 'amenities', '2020-02-03 23:07:52', '2020-02-03 23:07:52'),
(913, 'data_rows', 'display_name', 345, 'kh', 'Id', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(914, 'data_rows', 'display_name', 346, 'kh', 'Title', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(915, 'data_rows', 'display_name', 347, 'kh', 'Total', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(916, 'data_rows', 'display_name', 348, 'kh', 'Created At', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(917, 'data_rows', 'display_name', 349, 'kh', 'Updated At', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(918, 'data_rows', 'display_name', 350, 'kh', 'Property Id', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(919, 'data_rows', 'display_name', 351, 'kh', 'Deleted At', '2020-02-03 23:41:51', '2020-02-03 23:41:51'),
(922, 'data_rows', 'display_name', 352, 'kh', 'amenities', '2020-02-03 23:45:52', '2020-02-03 23:45:52'),
(923, 'data_rows', 'display_name', 329, 'kh', 'Id', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(924, 'data_rows', 'display_name', 330, 'kh', 'Name', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(925, 'data_rows', 'display_name', 331, 'kh', 'Image', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(926, 'data_rows', 'display_name', 332, 'kh', 'Created At', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(927, 'data_rows', 'display_name', 333, 'kh', 'Updated At', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(928, 'data_rows', 'display_name', 353, 'kh', 'room_features', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(929, 'data_types', 'display_name_singular', 45, 'kh', 'Amenity', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(930, 'data_types', 'display_name_plural', 45, 'kh', 'Amenities', '2020-02-03 23:48:45', '2020-02-03 23:48:45'),
(931, 'data_rows', 'display_name', 354, 'kh', 'amenities', '2020-02-03 23:53:43', '2020-02-03 23:53:43'),
(932, 'data_rows', 'display_name', 356, 'kh', 'Id', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(933, 'data_rows', 'display_name', 357, 'kh', 'Amenity Id', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(934, 'data_rows', 'display_name', 358, 'kh', 'Total', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(935, 'data_rows', 'display_name', 359, 'kh', 'Created At', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(936, 'data_rows', 'display_name', 360, 'kh', 'Updated At', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(937, 'data_rows', 'display_name', 361, 'kh', 'Property Id', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(938, 'data_rows', 'display_name', 362, 'kh', 'Deleted At', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(939, 'data_types', 'display_name_singular', 48, 'kh', 'Room Feature', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(940, 'data_types', 'display_name_plural', 48, 'kh', 'Room Features', '2020-02-04 00:10:51', '2020-02-04 00:10:51'),
(941, 'data_rows', 'display_name', 368, 'kh', 'Id', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(942, 'data_rows', 'display_name', 369, 'kh', 'Amenity Id', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(943, 'data_rows', 'display_name', 370, 'kh', 'Total', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(944, 'data_rows', 'display_name', 371, 'kh', 'Property Id', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(945, 'data_rows', 'display_name', 372, 'kh', 'Created At', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(946, 'data_rows', 'display_name', 373, 'kh', 'Updated At', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(947, 'data_rows', 'display_name', 374, 'kh', 'Deleted At', '2020-02-04 18:47:44', '2020-02-04 18:47:44'),
(950, 'data_rows', 'display_name', 376, 'kh', 'amenities', '2020-02-04 18:51:31', '2020-02-04 18:51:31'),
(951, 'data_rows', 'display_name', 377, 'kh', 'properties', '2020-02-04 18:51:31', '2020-02-04 18:51:31'),
(952, 'data_rows', 'display_name', 378, 'kh', 'amenities', '2020-02-04 20:01:37', '2020-02-04 20:01:37'),
(953, 'data_rows', 'display_name', 379, 'kh', 'amenities', '2020-02-05 18:57:16', '2020-02-05 18:57:16'),
(954, 'room_features', 'total', 134, 'kh', '៦', '2020-02-05 19:04:33', '2020-02-05 19:04:33'),
(955, 'room_features', 'total', 132, 'kh', '៦', '2020-02-05 19:04:42', '2020-02-05 19:04:42'),
(956, 'data_rows', 'display_name', 380, 'kh', 'properties', '2020-02-05 19:10:28', '2020-02-05 19:10:28'),
(957, 'data_rows', 'display_name', 381, 'kh', 'properties', '2020-02-05 19:27:23', '2020-02-05 19:27:23'),
(958, 'data_rows', 'display_name', 382, 'kh', 'amenities', '2020-02-05 21:59:07', '2020-02-05 21:59:07'),
(959, 'data_rows', 'display_name', 383, 'kh', 'amenities', '2020-02-06 18:55:33', '2020-02-06 18:55:33'),
(960, 'room_features', 'total', 141, 'kh', '៥+', '2020-02-06 21:33:06', '2020-02-06 21:33:06'),
(961, 'room_features', 'total', 140, 'kh', '២', '2020-02-06 23:19:16', '2020-02-06 23:19:16'),
(962, 'room_features', 'total', 173, 'kh', '១', '2020-02-10 20:20:07', '2020-02-10 23:57:28'),
(963, 'room_features', 'total', 185, 'kh', '៥', '2020-02-10 20:30:45', '2020-02-10 23:28:04'),
(964, 'room_features', 'total', 187, 'kh', '៧', '2020-02-10 20:31:32', '2020-02-10 23:27:36'),
(965, 'room_features', 'total', 190, 'kh', '២', '2020-02-10 20:31:52', '2020-02-10 23:26:57'),
(966, 'room_features', 'total', 220, 'kh', '១', '2020-02-10 20:49:30', '2020-02-10 23:35:43'),
(967, 'room_features', 'total', 219, 'kh', '៥', '2020-02-10 20:49:44', '2020-02-10 23:35:54'),
(968, 'room_features', 'total', 218, 'kh', '៣', '2020-02-10 20:50:08', '2020-02-10 23:36:10'),
(969, 'room_features', 'total', 215, 'kh', '៤', '2020-02-10 20:50:24', '2020-02-10 23:36:50'),
(970, 'room_features', 'total', 144, 'kh', '៥+', '2020-02-10 21:46:12', '2020-02-10 22:48:43'),
(971, 'amenities', 'name', 13, 'kh', 'ជណ្តើរយន្តប្រអប់', '2020-02-10 21:57:14', '2020-02-11 18:18:22'),
(972, 'amenities', 'name', 2, 'kh', 'បន្ទប់គេង', '2020-02-10 22:02:02', '2020-02-10 22:02:02'),
(973, 'amenities', 'name', 4, 'kh', 'បន្ទប់ទឹក', '2020-02-10 22:02:39', '2020-02-10 22:02:39'),
(974, 'amenities', 'name', 16, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-02-10 22:04:41', '2020-02-10 22:04:41'),
(975, 'amenities', 'name', 20, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-02-10 22:08:15', '2020-02-10 22:08:15'),
(976, 'amenities', 'name', 17, 'kh', 'បន្ទប់សិក្សា', '2020-02-10 22:08:38', '2020-02-10 22:08:38'),
(977, 'amenities', 'name', 14, 'kh', 'បន្ទប់រងចាំ', '2020-02-10 22:09:08', '2020-02-10 22:09:08'),
(978, 'amenities', 'name', 11, 'kh', 'បន្ទប់ទឹក', '2020-02-10 22:09:23', '2020-02-10 22:09:23'),
(979, 'amenities', 'name', 10, 'kh', 'បន្ទប់ទឹក', '2020-02-10 22:09:39', '2020-02-10 22:09:39'),
(980, 'amenities', 'name', 9, 'kh', 'ផ្ទះបាយ', '2020-02-10 22:10:02', '2020-02-10 22:10:02'),
(981, 'amenities', 'name', 19, 'kh', 'បន្ទប់ជួបជុំគ្រួសារ', '2020-02-10 22:12:02', '2020-02-10 22:12:02'),
(982, 'amenities', 'name', 8, 'kh', 'បន្ទប់ទទួលទានអាហារ', '2020-02-10 22:12:55', '2020-02-10 22:12:55'),
(983, 'amenities', 'name', 7, 'kh', 'ចំណតរថយន្ត', '2020-02-10 22:13:19', '2020-02-10 22:13:19'),
(984, 'amenities', 'name', 3, 'kh', 'បន្ទប់ទទួលភ្ញៀវ', '2020-02-10 22:13:41', '2020-02-10 22:13:41'),
(985, 'amenities', 'name', 1, 'kh', 'បន្ទប់ធ្វើការងារ', '2020-02-10 22:14:07', '2020-02-10 22:14:07'),
(986, 'amenities', 'name', 6, 'kh', 'កន្លែងលក់អីវ៉ាន់', '2020-02-10 22:14:41', '2020-02-10 22:14:41'),
(987, 'amenities', 'name', 18, 'kh', 'ចំនួនជាន់ (ផ្ទះ)', '2020-02-10 22:15:14', '2020-02-10 22:15:14'),
(988, 'room_features', 'total', 258, 'kh', '២', '2020-02-10 22:46:17', '2020-02-10 22:46:17'),
(989, 'room_features', 'total', 257, 'kh', '៧', '2020-02-10 22:46:31', '2020-02-10 22:46:31'),
(990, 'room_features', 'total', 256, 'kh', '១', '2020-02-10 22:46:45', '2020-02-10 22:46:45'),
(991, 'room_features', 'total', 255, 'kh', '១', '2020-02-10 22:46:58', '2020-02-10 22:46:58'),
(992, 'room_features', 'total', 254, 'kh', '១', '2020-02-10 22:47:09', '2020-02-10 22:47:09'),
(993, 'room_features', 'total', 253, 'kh', '៤', '2020-02-10 22:47:22', '2020-02-10 22:47:22'),
(994, 'room_features', 'total', 184, 'kh', '១', '2020-02-10 22:50:07', '2020-02-10 22:50:07'),
(995, 'room_features', 'total', 183, 'kh', '៥', '2020-02-10 22:50:31', '2020-02-10 22:50:31'),
(996, 'room_features', 'total', 182, 'kh', '១', '2020-02-10 22:50:48', '2020-02-10 22:50:48'),
(997, 'room_features', 'total', 181, 'kh', '៤', '2020-02-10 22:51:03', '2020-02-10 22:51:03'),
(998, 'room_features', 'total', 180, 'kh', '៤', '2020-02-10 22:51:17', '2020-02-10 22:51:17'),
(999, 'room_features', 'total', 179, 'kh', '២', '2020-02-10 22:52:51', '2020-02-10 22:52:51'),
(1000, 'room_features', 'total', 178, 'kh', '១', '2020-02-10 22:53:03', '2020-02-10 22:53:03'),
(1001, 'room_features', 'total', 177, 'kh', '៥', '2020-02-10 22:53:14', '2020-02-10 22:53:14'),
(1002, 'room_features', 'total', 176, 'kh', '៤', '2020-02-10 22:53:25', '2020-02-10 22:53:25'),
(1003, 'room_features', 'total', 168, 'kh', '២', '2020-02-10 22:53:46', '2020-02-10 22:53:46');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1004, 'room_features', 'total', 167, 'kh', '១', '2020-02-10 22:53:56', '2020-02-10 22:53:56'),
(1005, 'room_features', 'total', 166, 'kh', '១', '2020-02-10 22:54:05', '2020-02-10 22:54:05'),
(1006, 'room_features', 'total', 165, 'kh', '៧', '2020-02-10 22:54:19', '2020-02-10 22:54:19'),
(1007, 'room_features', 'total', 164, 'kh', '១', '2020-02-10 22:54:32', '2020-02-10 22:54:32'),
(1008, 'room_features', 'total', 163, 'kh', '៥', '2020-02-10 22:54:42', '2020-02-10 22:54:42'),
(1009, 'room_features', 'total', 162, 'kh', '១', '2020-02-10 22:55:07', '2020-02-10 22:55:07'),
(1010, 'room_features', 'total', 161, 'kh', '៤', '2020-02-10 22:55:17', '2020-02-10 22:55:17'),
(1011, 'room_features', 'total', 160, 'kh', '១', '2020-02-10 22:55:27', '2020-02-10 22:55:27'),
(1012, 'room_features', 'total', 159, 'kh', '១', '2020-02-10 22:55:40', '2020-02-10 22:55:40'),
(1013, 'room_features', 'total', 158, 'kh', '៨', '2020-02-10 22:56:10', '2020-02-10 22:56:10'),
(1014, 'room_features', 'total', 157, 'kh', '១', '2020-02-10 22:56:23', '2020-02-10 22:56:23'),
(1015, 'room_features', 'total', 145, 'kh', '៦', '2020-02-10 22:56:35', '2020-02-10 22:56:35'),
(1016, 'amenities', 'name', 15, 'kh', 'បន្ទប់អ្នកថែផ្ទះ', '2020-02-10 23:23:18', '2020-02-10 23:23:18'),
(1017, 'room_features', 'total', 207, 'kh', '៥', '2020-02-10 23:24:18', '2020-02-10 23:24:18'),
(1018, 'room_features', 'total', 206, 'kh', '១', '2020-02-10 23:24:29', '2020-02-10 23:24:29'),
(1019, 'room_features', 'total', 205, 'kh', '១', '2020-02-10 23:24:39', '2020-02-10 23:24:39'),
(1020, 'room_features', 'total', 204, 'kh', '៣', '2020-02-10 23:24:53', '2020-02-10 23:24:53'),
(1021, 'room_features', 'total', 203, 'kh', '៤', '2020-02-10 23:25:05', '2020-02-10 23:25:05'),
(1022, 'room_features', 'total', 202, 'kh', '២', '2020-02-10 23:25:25', '2020-02-10 23:25:25'),
(1023, 'room_features', 'total', 201, 'kh', '១', '2020-02-10 23:25:38', '2020-02-10 23:25:38'),
(1024, 'room_features', 'total', 200, 'kh', '៥', '2020-02-10 23:25:54', '2020-02-10 23:25:54'),
(1025, 'room_features', 'total', 199, 'kh', '៤', '2020-02-10 23:26:06', '2020-02-10 23:26:28'),
(1026, 'room_features', 'total', 189, 'kh', '១', '2020-02-10 23:27:06', '2020-02-10 23:27:06'),
(1027, 'room_features', 'total', 188, 'kh', '១', '2020-02-10 23:27:17', '2020-02-10 23:27:17'),
(1028, 'room_features', 'total', 186, 'kh', '១', '2020-02-10 23:27:48', '2020-02-10 23:27:48'),
(1029, 'room_features', 'total', 198, 'kh', '១', '2020-02-10 23:29:13', '2020-02-10 23:29:13'),
(1030, 'room_features', 'total', 197, 'kh', '៤', '2020-02-10 23:29:24', '2020-02-10 23:29:24'),
(1031, 'room_features', 'total', 196, 'kh', '១', '2020-02-10 23:29:37', '2020-02-10 23:29:37'),
(1032, 'room_features', 'total', 195, 'kh', '១', '2020-02-10 23:29:49', '2020-02-10 23:29:49'),
(1033, 'room_features', 'total', 194, 'kh', '៨', '2020-02-10 23:30:03', '2020-02-10 23:30:03'),
(1034, 'room_features', 'total', 193, 'kh', '១', '2020-02-10 23:30:17', '2020-02-10 23:30:17'),
(1035, 'room_features', 'total', 192, 'kh', '៦', '2020-02-10 23:30:31', '2020-02-10 23:30:31'),
(1036, 'room_features', 'total', 156, 'kh', '២', '2020-02-10 23:31:07', '2020-02-10 23:31:07'),
(1037, 'room_features', 'total', 155, 'kh', '១', '2020-02-10 23:31:19', '2020-02-10 23:31:19'),
(1038, 'room_features', 'total', 154, 'kh', '១', '2020-02-10 23:31:34', '2020-02-10 23:31:34'),
(1039, 'room_features', 'total', 153, 'kh', '១', '2020-02-10 23:31:47', '2020-02-10 23:31:47'),
(1040, 'room_features', 'total', 152, 'kh', '១', '2020-02-10 23:31:59', '2020-02-10 23:31:59'),
(1041, 'room_features', 'total', 150, 'kh', '១', '2020-02-10 23:32:30', '2020-02-10 23:32:30'),
(1042, 'room_features', 'total', 149, 'kh', '១', '2020-02-10 23:32:40', '2020-02-10 23:32:57'),
(1043, 'room_features', 'total', 148, 'kh', '១', '2020-02-10 23:33:08', '2020-02-10 23:33:08'),
(1044, 'room_features', 'total', 147, 'kh', '១', '2020-02-10 23:33:24', '2020-02-10 23:33:24'),
(1045, 'room_features', 'total', 146, 'kh', '១', '2020-02-10 23:33:36', '2020-02-10 23:33:36'),
(1046, 'room_features', 'total', 235, 'kh', '១', '2020-02-10 23:34:01', '2020-02-10 23:34:01'),
(1047, 'room_features', 'total', 234, 'kh', '៣', '2020-02-10 23:34:10', '2020-02-10 23:34:10'),
(1048, 'room_features', 'total', 233, 'kh', '៤', '2020-02-10 23:34:32', '2020-02-10 23:34:32'),
(1049, 'room_features', 'total', 232, 'kh', '៣', '2020-02-10 23:34:50', '2020-02-10 23:34:50'),
(1050, 'room_features', 'total', 231, 'kh', '១', '2020-02-10 23:35:19', '2020-02-10 23:35:19'),
(1051, 'room_features', 'total', 216, 'kh', '១', '2020-02-10 23:36:24', '2020-02-10 23:36:24'),
(1052, 'room_features', 'total', 214, 'kh', '១', '2020-02-10 23:37:12', '2020-02-10 23:37:12'),
(1053, 'room_features', 'total', 213, 'kh', '៤', '2020-02-10 23:37:25', '2020-02-10 23:37:25'),
(1054, 'room_features', 'total', 212, 'kh', '៨', '2020-02-10 23:37:55', '2020-02-10 23:37:55'),
(1055, 'room_features', 'total', 211, 'kh', '១', '2020-02-10 23:38:05', '2020-02-10 23:38:05'),
(1056, 'room_features', 'total', 210, 'kh', '១', '2020-02-10 23:38:23', '2020-02-10 23:38:23'),
(1057, 'room_features', 'total', 209, 'kh', '១', '2020-02-10 23:38:39', '2020-02-10 23:38:39'),
(1058, 'room_features', 'total', 208, 'kh', '៦', '2020-02-10 23:38:58', '2020-02-10 23:38:58'),
(1059, 'room_features', 'total', 226, 'kh', '២', '2020-02-10 23:39:41', '2020-02-10 23:39:41'),
(1060, 'room_features', 'total', 225, 'kh', '៧', '2020-02-10 23:39:51', '2020-02-10 23:39:51'),
(1061, 'room_features', 'total', 224, 'kh', '១', '2020-02-10 23:40:04', '2020-02-10 23:40:04'),
(1062, 'room_features', 'total', 223, 'kh', '១', '2020-02-10 23:40:36', '2020-02-10 23:40:36'),
(1063, 'room_features', 'total', 222, 'kh', '១', '2020-02-10 23:40:48', '2020-02-10 23:40:48'),
(1064, 'room_features', 'total', 221, 'kh', '៥', '2020-02-10 23:50:05', '2020-02-10 23:50:05'),
(1065, 'room_features', 'total', 230, 'kh', '២', '2020-02-10 23:50:36', '2020-02-10 23:50:36'),
(1066, 'room_features', 'total', 229, 'kh', '៥', '2020-02-10 23:50:46', '2020-02-10 23:50:46'),
(1067, 'room_features', 'total', 228, 'kh', '១', '2020-02-10 23:51:00', '2020-02-10 23:51:10'),
(1068, 'room_features', 'total', 227, 'kh', '៤', '2020-02-10 23:51:21', '2020-02-10 23:51:21'),
(1069, 'room_features', 'total', 252, 'kh', '២', '2020-02-10 23:51:47', '2020-02-10 23:51:47'),
(1070, 'room_features', 'total', 251, 'kh', '៥', '2020-02-10 23:51:57', '2020-02-10 23:51:57'),
(1071, 'room_features', 'total', 250, 'kh', '១', '2020-02-10 23:52:06', '2020-02-10 23:52:06'),
(1072, 'room_features', 'total', 249, 'kh', '៤', '2020-02-10 23:52:20', '2020-02-10 23:52:20'),
(1073, 'room_features', 'total', 248, 'kh', '២', '2020-02-10 23:52:57', '2020-02-10 23:52:57'),
(1074, 'room_features', 'total', 247, 'kh', '១', '2020-02-10 23:53:07', '2020-02-10 23:53:07'),
(1075, 'room_features', 'total', 246, 'kh', '១', '2020-02-10 23:53:17', '2020-02-10 23:53:17'),
(1076, 'room_features', 'total', 245, 'kh', '៧', '2020-02-10 23:53:32', '2020-02-10 23:53:32'),
(1077, 'room_features', 'total', 244, 'kh', '១', '2020-02-10 23:53:46', '2020-02-10 23:53:46'),
(1078, 'room_features', 'total', 243, 'kh', '៥', '2020-02-10 23:54:02', '2020-02-10 23:54:02'),
(1079, 'room_features', 'total', 242, 'kh', '១', '2020-02-10 23:54:25', '2020-02-10 23:54:25'),
(1080, 'room_features', 'total', 241, 'kh', '១', '2020-02-10 23:54:34', '2020-02-10 23:54:34'),
(1081, 'room_features', 'total', 240, 'kh', '១', '2020-02-10 23:54:46', '2020-02-10 23:54:46'),
(1082, 'room_features', 'total', 239, 'kh', '៤', '2020-02-10 23:55:01', '2020-02-10 23:55:01'),
(1083, 'room_features', 'total', 238, 'kh', '៨', '2020-02-10 23:55:15', '2020-02-10 23:55:15'),
(1084, 'room_features', 'total', 237, 'kh', '១', '2020-02-10 23:55:30', '2020-02-10 23:55:30'),
(1085, 'room_features', 'total', 236, 'kh', '៦', '2020-02-10 23:55:44', '2020-02-10 23:55:44'),
(1086, 'room_features', 'total', 175, 'kh', '១', '2020-02-10 23:57:08', '2020-02-10 23:57:08'),
(1087, 'room_features', 'total', 174, 'kh', '២', '2020-02-10 23:57:19', '2020-02-10 23:57:19'),
(1088, 'room_features', 'total', 172, 'kh', '១', '2020-02-10 23:57:41', '2020-02-10 23:57:41'),
(1089, 'room_features', 'total', 171, 'kh', '៧', '2020-02-10 23:57:54', '2020-02-10 23:57:54'),
(1090, 'room_features', 'total', 170, 'kh', '១', '2020-02-10 23:58:06', '2020-02-10 23:58:06'),
(1091, 'room_features', 'total', 169, 'kh', '៥', '2020-02-10 23:58:15', '2020-02-10 23:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$fiI5tLaxyS3py0rvMzcCsOwIm0RGvr6uWbJu9Cwn1BcteLODWzy1O', 'v5Vlo1SgpE6JvDFSWSyI96t4yXxpYJIOZNbZyVuSNkn2Yln7IvFwszGr3jH4', NULL, '2019-12-20 01:43:23', '2019-12-20 01:43:23'),
(2, 10, 'User', 'user@user.com', 'users/default.png', NULL, '$2y$10$b22GLYkogPklZQFj2sMKHe6haREWZN1rtSNWVmpf0gj9eoEF5CsFu', NULL, '{\"locale\":\"en\"}', '2020-01-02 19:50:18', '2020-01-23 22:03:00'),
(3, 10, 'Youhy', 'youhy.tang@chipmong.com', 'users/default.png', NULL, '$2y$10$fre1/xnNKMRVTowZm9WtJORy.vsICqB.bMVMpTohduij7uoPYXP0K', NULL, '{\"locale\":\"en\"}', '2020-01-23 22:07:28', '2020-01-23 22:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `wordings`
--

CREATE TABLE `wordings` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wordings`
--

INSERT INTO `wordings` (`id`, `word`, `created_at`, `updated_at`) VALUES
(1, 'Chip Mong Land In Number', '2019-12-29 19:36:06', '2019-12-29 19:36:06'),
(2, 'Chip Mong Land has brought quality and trust in living to Cambodia.', '2019-12-29 19:36:39', '2019-12-29 19:36:39'),
(3, '<p>+11|Years of operations</p>', '2019-12-29 19:37:17', '2019-12-30 01:52:46'),
(4, '<p>8+|IN DEVELOPMENT PROJECTS</p>', '2019-12-29 19:38:03', '2019-12-30 01:46:11'),
(5, '<p>50+|years of long term goal</p>', '2019-12-29 19:38:25', '2019-12-30 01:48:33'),
(6, 'Start Now', '2019-12-29 19:39:58', '2019-12-29 19:39:58'),
(7, 'CHIP MONG LAND', '2019-12-29 19:41:11', '2019-12-29 19:41:11'),
(8, 'PROPERTY TYPE', '2019-12-29 19:41:44', '2019-12-29 19:41:44'),
(9, 'CONTACT', '2019-12-29 19:42:04', '2019-12-29 19:42:04'),
(10, '<p>137B, Mao Tse Tung Blvd, Phnom Penh |</p>\n<p>(855) 61 997 888/68 997 888/81 997 888 |</p>\n<p><a href=\"mailto:sales.cmld@chipmong.com\">sales.cmld@chipmong.com</a> |</p>\n<p><a href=\"http://www.chipmongland.com\">www.chipmongland.com</a></p>', '2019-12-29 19:45:13', '2019-12-30 18:59:39'),
(11, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Chip Mong Land 2019 - Copyright</span></p>', '2019-12-29 19:48:38', '2019-12-29 19:48:38'),
(12, '<p>Terms & Conditions</p>', '2019-12-29 19:50:10', '2020-01-02 01:36:29'),
(13, '<p><a href=\"https://chipmongland.com/termscondition\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Privacy Policy</span></a></p>', '2019-12-29 19:51:07', '2019-12-29 19:51:07'),
(14, '<p><a href=\"https://www.facebook.com/chipmongland\">Facebook</a></p>', '2019-12-29 19:52:25', '2019-12-29 19:52:25'),
(15, '<p><a href=\"https://www.instagram.com/chipmongland/\">Instagram</a></p>', '2019-12-29 19:52:57', '2019-12-29 19:52:57'),
(16, '<p><a href=\"https://www.youtube.com/chipmongland\">Youtube</a></p>', '2019-12-29 19:53:14', '2019-12-29 19:53:14'),
(17, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Choose Project Name</span></p>', '2019-12-29 19:56:17', '2019-12-29 19:56:17'),
(18, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Choose Location</span></p>', '2019-12-29 19:56:31', '2019-12-29 19:56:31'),
(19, '<p>Choose Type</p>', '2019-12-29 19:56:42', '2019-12-29 19:56:42'),
(20, '<p>Choose Price</p>', '2019-12-29 19:56:52', '2019-12-29 19:56:52'),
(21, '<p>All</p>', '2019-12-29 19:57:08', '2019-12-29 19:57:08'),
(22, '<p><a href=\"tel:061997888\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">+855(0)61 997 888</span></a></p>', '2019-12-29 20:00:43', '2019-12-29 20:00:43'),
(23, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">RECENT ACTIVITY</span></p>', '2019-12-29 20:02:54', '2019-12-29 20:02:54'),
(24, '<p><a href=\"https://chipmongland.com/listnews\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">SEE ALL</span></a></p>', '2019-12-29 20:04:08', '2019-12-29 20:04:08'),
(25, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">$40K - $100K</span></p>', '2019-12-30 00:06:35', '2019-12-30 00:06:35'),
(26, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">$101K - $250K</span></p>', '2019-12-30 00:06:52', '2019-12-30 00:06:52'),
(27, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">$251K - $400K</span></p>', '2019-12-30 00:07:15', '2019-12-30 00:07:15'),
(28, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">$400K - $700K</span></p>', '2019-12-30 00:07:29', '2019-12-30 00:07:29'),
(29, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">$700K and above</span></p>', '2019-12-30 00:08:24', '2019-12-30 00:08:24'),
(30, '<p>NEWS</p>', '2019-12-30 02:00:28', '2020-01-08 21:25:37'),
(31, '<p>About Us</p>', '2019-12-30 18:20:18', '2019-12-30 18:20:18'),
(32, '<p>News & Activity</p>', '2019-12-30 18:21:13', '2019-12-30 18:21:13'),
(33, '<p><a href=\"https://career10.successfactors.com/career?company=chipmonggr\">Careers</a></p>', '2019-12-30 18:22:00', '2019-12-30 18:22:00'),
(34, '<p>After Sale Services</p>', '2019-12-30 18:22:34', '2019-12-30 18:22:34'),
(35, '<p>Contact Us</p>', '2019-12-30 18:23:14', '2019-12-30 18:23:14'),
(36, '<p>Cambodia</p>', '2019-12-30 18:24:39', '2019-12-30 18:24:39'),
(37, '<p>Properties Finder</p>', '2019-12-30 20:06:02', '2019-12-30 20:06:02'),
(38, '<p>|Properties Found</p>', '2019-12-30 20:08:44', '2020-01-08 21:02:53'),
(39, '<p>From</p>', '2019-12-30 20:20:00', '2019-12-30 20:20:00'),
(40, '<p>Facilities</p>', '2020-01-02 18:28:04', '2020-01-02 18:28:04'),
(41, '<p>Project Details</p>', '2020-01-02 20:04:27', '2020-01-02 20:04:27'),
(42, '<p>About The Group</p>', '2020-01-06 03:01:23', '2020-01-06 03:01:23'),
(43, '<p>Excellence Worn Lightly</p>', '2020-01-06 03:03:31', '2020-01-06 03:03:31'),
(44, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Chip Mong Land (CMLD) is one of the leading property developers in Cambodia. Established in 2008, CMLD is one of the subsidiaries of Chip Mong Group, a conglomerate in Cambodia with diversified business portfolio.|</span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Our vision is to be one of the leading property developers in Cambodia. Location, construction quality, modern design, customer service, and building a livable community for our customers are among the top priorities of the top management and all levels of employees alike. Our commitment is reflected in our corporate tagline &ldquo;Trust in Living&rdquo;.|</span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">We build and develop 3 categories of brands &ndash; Landmark, Park Land, and Land Riche &ndash; offering various types of houses ranging from single villas and link houses, to shop houses/home offices.|</span></span></span></p>\n<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">As of 2019, we have developed 7 landed property projects, namely Park Land Sen Sok, Park Land 598, Park Land TK, Landmark 271, Land Riche Chamkardoung, Landmark 60M, Park Land 6A. In May 2019, our first condominium project, known as Park Land Condo TK, started.</span></span></span></span></p>', '2020-01-07 02:44:31', '2020-01-07 02:44:31'),
(45, '<p>Message From The Chairlady</p>', '2020-01-07 02:53:19', '2020-01-07 02:53:19'),
(46, '<p>In line with the development policy of Phnom Penh municipality, Chip Mong Land is committed to constructing many kinds of private luxurious houes to meet the needs of the people with modern lifestyles. The Park Land Sen Sok is the first project of Chip Mong Land whose success will be made a reality only thanks to our customer\'s supports as well as their turst and confidence in our construction capability.|</p>\n<p>In the near future, Chip Mong Land will bring three new comprehensive residence construction projects to our customers. It is our commitment to continue building luxurious, safe and high-quality residences with fashionable designs in both the exterior and interior.|</p>\n<p>On behalf of Chip Mong Land, I would like to express my profound thanks to all current and prospective customers for your support.|</p>\n<p>I am looking forward to your further supports and having the opportunity to serve you.</p>\n<p>Oknha Madam Pheap Heak</p>\n<p>&nbsp;</p>', '2020-01-07 03:02:30', '2020-01-07 03:02:30'),
(47, '<p>Investor Relationship / Media Enquiry</p>', '2020-01-07 03:08:03', '2020-01-07 03:08:03'),
(48, '<p>Email Here</p>', '2020-01-07 03:09:33', '2020-01-07 03:09:33'),
(49, '<p>HOME</p>', '2020-01-08 21:15:22', '2020-01-08 21:15:22'),
(50, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\"> Property Listing</span></p>', '2020-01-08 21:16:23', '2020-01-08 21:16:23'),
(51, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">CALCULATE LOAN</span></p>', '2020-01-08 21:20:01', '2020-01-08 21:20:01'),
(52, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">GET DIRECTION</span></p>', '2020-01-08 21:21:44', '2020-01-08 21:21:44'),
(53, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">STREET VIEW</span></p>', '2020-01-08 21:22:28', '2020-01-08 21:22:28'),
(54, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">DOWNLOAD MAP</span></p>', '2020-01-08 21:23:22', '2020-01-08 21:23:22'),
(55, '<p>ACTIVITIES</p>', '2020-01-08 21:26:47', '2020-01-08 21:26:47'),
(56, '<p>PROMOTIONS</p>', '2020-01-08 21:28:28', '2020-01-08 21:28:28'),
(57, '<p>ARTICLE</p>', '2020-01-08 23:33:56', '2020-01-08 23:33:56'),
(58, '<p>Chip Mong Land App</p>', '2020-01-09 00:28:07', '2020-01-09 00:28:07'),
(59, '<p>MAP VIEW</p>', '2020-01-09 00:29:15', '2020-01-09 00:29:15'),
(60, '<p>Find all you need to look after your property.&nbsp;</p>', '2020-01-09 00:40:32', '2020-01-09 00:40:32'),
(61, '<p>From maintenance to news, see it all.</p>', '2020-01-09 00:42:41', '2020-01-09 00:42:41'),
(62, '<p>Schedule a maintenance visit</p>', '2020-01-09 00:44:12', '2020-01-09 00:44:12'),
(63, '<p>See The Property Events Schedule</p>', '2020-01-09 00:45:32', '2020-01-09 00:45:32'),
(64, '<p>Pay your utillity Bills</p>', '2020-01-09 00:46:54', '2020-01-09 00:46:54'),
(65, '<p>Much, More</p>', '2020-01-09 00:47:27', '2020-01-09 00:47:27'),
(66, '<p>BOOK NOW</p>', '2020-01-09 01:10:14', '2020-01-09 01:10:14'),
(67, '<p>Enter name</p>', '2020-01-09 01:16:05', '2020-01-09 01:16:05'),
(68, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Enter phone number</span></p>', '2020-01-09 01:16:39', '2020-01-09 01:16:39'),
(69, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Enter email address (optional)</span></p>', '2020-01-09 01:17:03', '2020-01-09 01:17:03'),
(70, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Visit Date</span></p>', '2020-01-09 01:17:28', '2020-01-09 01:17:28'),
(71, '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Visit Time</span></p>', '2020-01-09 01:18:07', '2020-01-09 01:18:07'),
(72, '<p>Impressive Lifestyle</p>', '2020-01-09 01:56:37', '2020-01-09 01:56:37'),
(73, '<p>Related Article</p>', '2020-01-09 02:28:48', '2020-01-09 02:28:48'),
(74, '<p>+30% | Yearly Economic Growth</p>', '2020-01-09 02:36:38', '2020-01-09 02:36:38'),
(75, '<p>150K+ | Expat Community</p>', '2020-01-09 02:37:51', '2020-01-09 02:37:51'),
(76, '<p>+50% | Real Estate Growth</p>', '2020-01-09 02:40:24', '2020-01-09 02:40:24'),
(77, '<p>80% | Property Ownership</p>', '2020-01-09 02:42:14', '2020-01-09 02:42:14'),
(78, '<p>Property Finding Assistance</p>', '2020-01-12 19:40:09', '2020-01-12 19:40:09'),
(79, '<p>I want to buy property for</p>', '2020-01-12 19:45:00', '2020-01-12 19:45:00'),
(80, '<p>Living</p>', '2020-01-12 19:46:37', '2020-01-12 19:46:37'),
(81, '<p>Practice Business</p>', '2020-01-12 19:47:26', '2020-01-12 19:47:26'),
(82, '<p>Invest for Resale</p>', '2020-01-12 19:48:47', '2020-01-12 19:48:47'),
(83, '<p>Next</p>', '2020-01-12 19:50:02', '2020-01-12 19:50:02'),
(84, '<p>I\'m Willing to Pay</p>', '2020-01-12 20:55:03', '2020-01-12 20:55:03'),
(85, '<p>I want to live around</p>', '2020-01-12 21:11:56', '2020-01-12 21:11:56'),
(86, '<p>Previous</p>', '2020-01-12 21:17:23', '2020-01-12 21:17:23'),
(87, '<p>Next</p>', '2020-01-12 21:18:34', '2020-01-12 21:18:34'),
(88, '<p>Privacy Policy</p>', '2020-01-13 20:42:20', '2020-01-13 20:42:20'),
(89, '<p>Loan Calculator</p>', '2020-01-13 21:23:10', '2020-01-14 20:54:43'),
(90, '<p>Loan Amount</p>', '2020-01-14 20:59:37', '2020-01-14 20:59:37'),
(91, '<p>Loan Duration</p>', '2020-01-14 21:00:33', '2020-01-14 21:00:33'),
(92, '<p>Apply Rate</p>', '2020-01-14 21:01:53', '2020-01-29 03:38:22'),
(93, '<p>Calculator Result</p>', '2020-01-14 21:21:39', '2020-01-14 21:21:39'),
(94, '<p>Month</p>', '2020-01-14 21:22:51', '2020-01-14 21:22:51'),
(95, '<p>A makeover can add new life to your home as well as adding value. Get your upgrade underway sooner rather than later.</p>', '2020-01-14 21:28:33', '2020-01-14 21:28:33'),
(96, '<p>More info about loan</p>', '2020-01-14 21:31:33', '2020-01-23 03:25:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_slug_unique` (`slug`);

--
-- Indexes for table `article_types`
--
ALTER TABLE `article_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `book_visits`
--
ALTER TABLE `book_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location_name_unique` (`name`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_name_unique` (`name`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_image_image_unique` (`image`);

--
-- Indexes for table `project_property_type`
--
ALTER TABLE `project_property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sizes`
--
ALTER TABLE `project_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `wordings`
--
ALTER TABLE `wordings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `article_types`
--
ALTER TABLE `article_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `book_visits`
--
ALTER TABLE `book_visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project_property_type`
--
ALTER TABLE `project_property_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `project_sizes`
--
ALTER TABLE `project_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1092;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wordings`
--
ALTER TABLE `wordings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
