-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2018 at 12:04 PM
-- Server version: 5.6.40
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharatbe_bharatbenz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `type` enum('UA','SA','NA') NOT NULL DEFAULT 'NA',
  `session_id` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `added_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `department`, `type`, `session_id`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'admin', 'e6e061838856bf47e1de730719fb2609', '1,2', 'SA', '', '1', '1', '2015-07-15 03:53:09', '0000-00-00 00:00:00', '', ''),
(2, 'asfasd', 'ef3efc883935571f210c33aac44f6bc9', 'Manage consumer,manage admin', 'NA', '', '1', '0', '2018-07-12 13:23:58', '0000-00-00 00:00:00', '', ''),
(6, 'farheen', 'fc0bb62441aee60c4206529e16734a6e', '1,2,3,4', 'NA', '', '1', '1', '2018-07-17 10:30:47', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminmenu`
--

CREATE TABLE `tbl_adminmenu` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `submenu_count` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `inser_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adminmenu`
--

INSERT INTO `tbl_adminmenu` (`menu_id`, `title`, `function`, `icon`, `submenu_count`, `sort_order`, `is_active`, `is_delete`, `inser_date`) VALUES
(2, 'Manage Categories', '', 'i-admin-user', 1, 5, '1', '1', '2014-10-26 21:04:11'),
(1, 'Manage Home', '', 'i-admin-user', 2, 0, '1', '1', '2014-09-22 20:39:27'),
(3, 'Manage Bus', '', 'i-rake-and-scoop', 4, 1, '1', '1', '2014-09-26 02:06:31'),
(4, 'Manage Trucks', '', 'i-list', 2, 2, '1', '1', '2014-10-26 21:04:11'),
(12, 'Manage Used Trucks', '', '', 0, 0, '1', '1', '2018-07-17 11:41:27'),
(13, 'Manage Application', '', '', 0, 0, '1', '1', '2018-07-17 11:41:43'),
(14, 'Manage Media', '', '', 0, 0, '1', '1', '2018-07-17 11:42:13'),
(15, 'Manage About US', '', '', 0, 0, '1', '1', '2018-07-17 11:42:23'),
(16, 'Manage Blog', '', '', 0, 0, '1', '1', '2018-07-17 11:42:48'),
(17, 'Manage Testimonials', '', '', 0, 0, '1', '1', '2018-07-17 11:43:03'),
(18, 'Manage Content', '', '', 0, 0, '1', '1', '2018-07-17 11:43:22'),
(19, 'Change Password', '', '', 0, 0, '1', '1', '2018-07-17 11:43:36'),
(20, 'Sign Out', '', '', 0, 0, '1', '1', '2018-07-17 11:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminsubmenu`
--

CREATE TABLE `tbl_adminsubmenu` (
  `submenu_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `inser_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adminsubmenu`
--

INSERT INTO `tbl_adminsubmenu` (`submenu_id`, `menu_id`, `title`, `file_name`, `function`, `sort_order`, `is_active`, `is_delete`, `inser_date`) VALUES
(1, 1, 'List Home Banner', 'list_homebanner', '', 0, '1', '1', '2018-07-17 11:01:44'),
(2, 1, 'Add Home Banner', 'add_homebanner', '', 0, '1', '1', '2018-07-17 11:01:58'),
(3, 2, 'Listing', 'list_categories', '', 0, '1', '1', '2018-07-17 11:02:41'),
(4, 3, 'Products', 'list_products', '', 0, '1', '1', '2018-07-17 11:03:10'),
(5, 3, 'Product Type', 'list_bus_product_types', '', 0, '1', '1', '2018-07-17 11:03:25'),
(6, 3, 'Safety', 'list_bus_safety', '', 0, '1', '1', '2018-07-17 11:03:37'),
(7, 3, 'Comfort', 'list_bus_comfort', '', 0, '1', '1', '2018-07-17 11:03:54'),
(8, 3, 'Fuel Efficiency', 'list_bus_fuel_efficiency', '', 0, '1', '1', '2018-07-17 11:22:08'),
(9, 3, 'Key Buying Factors', 'list_bus_key_buying_factors', '', 0, '1', '1', '2018-07-17 11:22:41'),
(10, 3, 'Low Maintenance', 'list_bus_low_maintenance', '', 0, '1', '1', '2018-07-17 11:23:06'),
(11, 3, 'Specifications', 'list_bus_specifications', '', 0, '1', '1', '2018-07-17 11:34:43'),
(12, 4, 'Truck Products', 'list_truck_products', '', 0, '1', '1', '2018-07-17 11:35:49'),
(13, 4, 'Truck Product Types', 'list_truck_product_types', '', 0, '1', '1', '2018-07-17 11:36:09'),
(14, 4, 'Key Buying Factors', 'list_truck_key_buying_factors', '', 0, '1', '1', '2018-07-17 11:38:51'),
(15, 4, 'Specifications', 'list_truck_specifications', '', 0, '1', '1', '2018-07-17 11:39:14'),
(16, 4, 'Features', 'list_truck_features', '', 0, '1', '1', '2018-07-17 11:39:38'),
(17, 4, 'Features 2', 'list_truck_features2', '', 0, '1', '1', '2018-07-17 11:39:53'),
(18, 4, 'Technology', 'list_truck_technology', '', 0, '1', '1', '2018-07-17 11:40:11'),
(19, 4, 'Wallpapers', 'list_truck_wallpapers', '', 0, '1', '1', '2018-07-17 11:40:29'),
(20, 12, 'Listing', 'list_used_trucks', '', 0, '1', '1', '2018-07-17 11:55:47'),
(21, 13, 'Application', 'list_application', '', 0, '1', '1', '2018-07-17 11:56:06'),
(22, 13, 'Sub Application', 'list_sub_application', '', 0, '1', '1', '2018-07-17 11:56:46'),
(23, 13, 'Models', 'list_model', '', 0, '1', '1', '2018-07-17 11:57:04'),
(24, 14, 'Press Release', 'list_pressrelease', '', 0, '1', '1', '2018-07-17 11:57:32'),
(25, 14, 'Highlights', 'list_highlights', '', 0, '1', '1', '2018-07-17 11:57:48'),
(26, 15, 'History', 'list_history', '', 0, '1', '1', '2018-07-17 11:58:16'),
(27, 15, 'Awards & Certification', 'list_certification', '', 0, '1', '1', '2018-07-17 11:58:45'),
(28, 16, 'Listing', 'list_blog', '', 0, '1', '1', '2018-07-17 11:59:41'),
(29, 16, 'Author', 'list_blog_author', '', 0, '1', '1', '2018-07-17 11:59:57'),
(30, 16, 'Comments', 'list_blog_comments', '', 0, '1', '1', '2018-07-17 12:00:18'),
(31, 17, 'List Testimonials', 'list_testimonial', '', 0, '1', '1', '2018-07-17 12:00:45'),
(32, 17, 'Add Testimonials', 'add_testimonial', '', 0, '1', '1', '2018-07-17 12:00:57'),
(33, 18, 'List Pages', 'list_pages', '', 0, '1', '1', '2018-07-17 12:02:01'),
(34, 18, 'Add Page', 'add_page', '', 0, '1', '1', '2018-07-17 12:02:41'),
(35, 14, 'Press release Media', 'list_pressrelease_media', '', 0, '1', '1', '2018-07-25 11:21:50'),
(36, 14, 'Highlights Media', 'list_highlight_media', '', 0, '1', '1', '2018-07-25 11:22:15'),
(37, 14, 'Downloads', 'list_downloads', '', 0, '1', '1', '2018-07-25 11:23:13'),
(38, 14, 'Downloads Media', 'list_downloads_media', '', 0, '1', '1', '2018-07-25 11:23:29'),
(39, 14, 'Wallpapers', 'list_downloads_wallpapers', '', 0, '1', '1', '2018-07-25 11:23:50'),
(40, 14, 'Wallpapers Images', 'list_downloads_wallpapers_images', '', 0, '1', '1', '2018-07-25 11:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application`
--

CREATE TABLE `tbl_application` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_application`
--

INSERT INTO `tbl_application` (`id`, `title`, `description`, `short_description`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Perishable goods', '', 'Perishable goods like fruits veg etc..', '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-09 10:50:37', '2018-07-10 07:50:15', 'admin', 'admin'),
(3, 'Poultry', '', 'Poultry', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 10:56:27', NULL, 'admin', NULL),
(4, 'Milk', '', 'Milk', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 10:56:45', NULL, 'admin', NULL),
(5, 'Liquid/Gas Transport', '', 'Liquid/Gas Transport', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 10:56:59', NULL, 'admin', NULL),
(6, 'Fish', '', 'Fish', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 11:25:42', NULL, 'admin', NULL),
(7, 'Parcel/FMCG/FMCD', '', 'Parcel/FMCG/FMCD', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 11:25:54', NULL, 'admin', NULL),
(8, 'Port movement', '', 'Port movement', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 11:32:56', NULL, 'admin', NULL),
(9, 'Auto carriers', '', 'Auto carriers', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 11:33:20', NULL, 'admin', NULL),
(10, 'Cement transportation', '', 'Cement transportation', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 13:18:32', NULL, 'admin', NULL),
(11, 'Cold chain – Dairy, Meat, Pharma', '', 'Cold chain – Dairy, Meat, Pharma', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 13:30:07', NULL, 'admin', NULL),
(12, 'Construction', '', 'Construction', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 13:38:58', NULL, 'admin', NULL),
(13, 'Ores & Minerals mining', '', 'Ores & Minerals mining', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-26 05:43:46', NULL, 'admin', NULL),
(14, 'Textile transportation', '', 'Textile transportation', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-26 05:43:59', NULL, 'admin', NULL),
(15, 'Market Load', '', 'Market Load', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-26 06:03:09', NULL, 'admin', NULL),
(16, 'Steel/Industrial goods/Auto ancillaries', '', 'Steel/Industrial goods/Auto ancillaries', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-26 06:08:50', NULL, 'admin', NULL),
(17, 'Agricultural produce', '', 'Agricultural produce', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-26 06:14:40', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_author_name` varchar(100) NOT NULL,
  `blog_short_desc` text NOT NULL,
  `blog_desc` text NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_video` varchar(255) NOT NULL,
  `prod_seo_title` varchar(255) NOT NULL,
  `prod_seo_keyword` text NOT NULL,
  `prod_seo_desc` text NOT NULL,
  `blog_add_date` date NOT NULL,
  `blog_timestamp` datetime NOT NULL,
  `agent` text NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_date` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `fldCntid` int(11) NOT NULL,
  `ip` varchar(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_delete` enum('1','0') NOT NULL,
  `fldUserid` int(11) NOT NULL,
  `fld_add_time` varchar(100) NOT NULL,
  `fldyear` int(11) NOT NULL,
  `fldmonth` int(11) NOT NULL,
  `blog_tag` varchar(255) NOT NULL,
  `home_blog` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_title`, `blog_author_name`, `blog_short_desc`, `blog_desc`, `blog_image`, `blog_video`, `prod_seo_title`, `prod_seo_keyword`, `prod_seo_desc`, `blog_add_date`, `blog_timestamp`, `agent`, `updated_by`, `updated_date`, `added_by`, `display_order`, `fldCntid`, `ip`, `is_active`, `is_delete`, `fldUserid`, `fld_add_time`, `fldyear`, `fldmonth`, `blog_tag`, `home_blog`) VALUES
(3, 'How Driving a BharatBenz Is Similar to Driving a Car?', '1', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads.', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads.<br />\r\nBy tailoring superior German technology to suit the needs of the Indian roads,&nbsp;<br />\r\nthe BharatBenz trucks can deliver seamlessly on all types of roads and terrains for long hours. This is made possible by constantly innovating and updating the available technology to ensure complete comfort and road safety.<br />\r\nThis in turn helps enhance personnel productivity while increasing ROI and revenue. What Makes BharatBenz Trucks a Superior Drive? With premium wooden-textured dashboards, washable trims, majestic exteriors complete with an ergonomic design,<br />\r\nBharatBenz Heavy Duty Haulage trucks are guaranteed to give a premium driving experience. Since trucking journeys can be long and tedious, a lot of thought is put into designing the BharatBenz Heavy Duty Haulage truck cabins.<br />\r\nThe driver-friendly design ensures that the truck driver remains fresh and alert throughout the trip, enabling smoother commutes with fewer stoppages, ultimately boosting productivity.', 'main_1533627548.jpg', '', '', '', '', '2018-08-07', '2018-08-07 13:09:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'admin', '2018-08-07', 'admin', 0, 0, '10.10.10.10', 1, '1', 0, '1533627548', 2018, 8, '', '0'),
(4, 'How Driving a BharatBenz Is Similar to Driving a Car?', '1', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads.', '<p>BharatBenz prides itself on the premium trucking experience it promises on Indian roads. By tailoring superior German technology to suit the needs of the Indian roads, the BharatBenz trucks can deliver seamlessly on all types of roads and terrains for long hours. This is made possible by constantly innovating and updating the available technology to ensure complete comfort and road safety. This, in turn, helps enhance personnel productivity while increasing ROI and revenue.</p>\r\n\r\n<p><strong>What Makes BharatBenz Trucks a Superior Drive?</strong></p>\r\n\r\n<p>With premium wooden-textured dashboards, washable trims, majestic exteriors complete with an ergonomic design, BharatBenz Heavy Duty Haulage trucks are guaranteed to give a premium driving experience.</p>\r\n\r\n<p>Since trucking journeys can be long and tedious, a lot of thought is put into designing the BharatBenz Heavy Duty Haulage truck cabins. The driver-friendly design ensures that the truck driver remains fresh and alert throughout the trip, enabling smoother commutes with fewer stoppages, ultimately boosting productivity.</p>\r\n\r\n<p><strong>Ergonomically Designed Truck Cabins</strong></p>\r\n\r\n<p>Not only is the truck cabin ergonomically designed to enable driving for longer durations but is also designed to ensure comfort while the driver is resting. The driver&rsquo;s cabin has the option of air-conditioning and is complete with a sleeper cab, guaranteeing maximum comfort so that the driver gets some well-deserved rest during overnight trips.</p>\r\n\r\n<p>To provide additional comfort while driving, the 25, 31 and 37 tonne trucks are equipped with 3-way adjustable seats; while the 16 tonne trucks comes with a 2-way adjustable seat. The cabin is also equipped with twin co-driver seat for comfortable seating. Being a completely sealed cabin, outside vehicle noises are cut-off, making for a peaceful ride that reduces driver fatigue. As the cabins are totally sealed, special attention was placed on the ventilation within the cabin, which can also be enhanced with the help of optional air-conditioning in all trucks. Apart from this, the rear sliding windows were made bigger to enable better cross ventilation inside the cabin. Lastly, the wide cabin doors allow for easy and hassle-free entry and exit.</p>\r\n\r\n<p><strong>Smooth and Seamless Control</strong></p>\r\n\r\n<p>The cabin is also equipped with LED lighting which makes driving in inclement weather and light conditions safe. Moreover, the truck allows for precision cruise control with the flick of a button, thus enabling fatigue less drives. To enhance the driving experience further, the truck is fitted with a ball joint mechanism and double synchro cone to make gear shifting a simple task so that minimum manual effort is required while driving.</p>\r\n\r\n<p>The trucks are fitted with a parabolic front suspension to enhance the quality of the drive and improve the trucking experience. This also helps ensure that the contents of the truck aren&rsquo;t affected in any way during the journey, especially in case of unfavourable terrains. In addition to this, the BharatBenz truck is also equipped with a reverse camera and display to aid safe reversing. &nbsp;</p>\r\n\r\n<p>All in all, every BharatBenz truck is equipped to deliver a safe and comfortable driving experience. Not only does this help in improving productivity but also reduces the maintenance costs associated with owning a truck, helping you lower your Total Cost of Operations.</p>\r\n&nbsp;\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'main_1533092410.jpg', '', '', '', '', '2018-08-13', '2018-08-13 18:08:02', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'admin', '2018-08-13', 'admin', 0, 0, '110.173.177', 1, '1', 0, '1534183682', 2018, 8, 'BharatBenz', '1'),
(16, 'Test blog', '1', 'test', 'vtest', 'main_1533908383.jpg', '', '', '', '', '2018-08-10', '2018-08-10 13:39:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'admin', '0000-00-00', 'admin', 0, 0, '110.173.177', 1, '0', 0, '1533908383', 2018, 8, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_author`
--

CREATE TABLE `tbl_blog_author` (
  `blog_author_id` int(11) NOT NULL,
  `blog_author_name` text NOT NULL,
  `blog_author_email` varchar(255) NOT NULL,
  `blog_author_short_desc` text NOT NULL,
  `blog_author_desc` text NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_video` varchar(255) NOT NULL,
  `added_date` date NOT NULL,
  `blog_timestamp` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_date` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `agent` text NOT NULL,
  `ip` varchar(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_delete` enum('1','0') NOT NULL,
  `fldUserid` int(11) NOT NULL,
  `fld_add_time` varchar(100) NOT NULL,
  `fldyear` int(11) NOT NULL,
  `fldmonth` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog_author`
--

INSERT INTO `tbl_blog_author` (`blog_author_id`, `blog_author_name`, `blog_author_email`, `blog_author_short_desc`, `blog_author_desc`, `blog_image`, `blog_video`, `added_date`, `blog_timestamp`, `updated_by`, `updated_date`, `added_by`, `display_order`, `agent`, `ip`, `is_active`, `is_delete`, `fldUserid`, `fld_add_time`, `fldyear`, `fldmonth`) VALUES
(1, 'BharatBenz', 'farheen.parkar@bcwebwise.com', 'PHP Developer at bcweb', '', 'main_1531554881.jpg', '', '2018-07-14', '2018-07-14 13:24:41', 'admin', '2018-07-14', 'admin', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '10.10.10.78', 1, '1', 0, '1531554881', 2018, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_comments`
--

CREATE TABLE `tbl_blog_comments` (
  `id` int(11) NOT NULL,
  `blogs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `blog_comments` text NOT NULL,
  `user_ip` varchar(200) NOT NULL,
  `added_date` date NOT NULL,
  `comments_time` datetime NOT NULL,
  `c_time` varchar(100) NOT NULL,
  `comment_for` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `level_order` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `is_user_approved` enum('1','0') NOT NULL DEFAULT '0',
  `is_admin_approved` enum('1','0') DEFAULT '0',
  `publish` tinyint(1) NOT NULL,
  `user_email_id` varchar(255) NOT NULL,
  `is_delete` enum('1','0') NOT NULL,
  `is_active` enum('1','0') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_comfort`
--

CREATE TABLE `tbl_bus_comfort` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_comfort`
--

INSERT INTO `tbl_bus_comfort` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Comfortable Seats', 'The wider bus body provides enough space for wider seats and gangways. These wider and deeper seats let children experience a cosy ride.', 'main_1532246172.jpg', 'thumb_1532246172.jpg', 0, '', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 05:31:47', '2018-08-13 02:16:28', 'admin', 'admin'),
(2, 1, 'Comfortable Seats', 'The wider bus body provides ample space for a comfortable ride.', 'main_1531508902.jpg', 'thumb_1531508902.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-06-19 12:34:52', '2018-07-14 02:55:31', 'admin', 'admin'),
(3, 1, 'Suspension', 'All BharatBenz School Buses are fitted with parabolic leaf spring suspension and finely tuned shock absorbers for a smoother ride.', 'main_1532432056.jpg', 'thumb_1532432056.jpg', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-28 11:38:52', '2018-08-13 02:18:54', 'admin', 'admin'),
(4, 1, 'Suspension', 'Features such as parabolic suspension, double-acting shock absorbers, etc offers a smoother ride', 'main_1531508943.jpg', 'thumb_1531508943.jpg', 0, NULL, '', NULL, NULL, '10.10.10.253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-13 19:09:03', NULL, 'admin', NULL),
(5, 3, 'Seat Belt', 'BharatBenz Staff Buse seats can also be fitted with seatbelts for added road safety.', 'main_1532421987.jpg', 'thumb_1532421987.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 16:36:51', '2018-07-24 08:46:27', 'admin', 'admin'),
(6, 3, 'Suspension', 'The parabolic suspension decreases the transfer of road undulations, while the optimally tuned shock absorbers ensure additional comfort.', 'main_1532246264.jpg', 'thumb_1532246264.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:37:17', '2018-07-22 07:57:44', 'admin', 'admin'),
(7, 4, 'Comfortable Seats', 'Passengers can say goodbye to commuting woes as the BharatBenz Tourist Bus is designed exclusively to make the journey a relaxing one. With wide seating and a large bus body to accommodate ample space for gangways, there is no room for any distress.', 'main_1532246204.jpg', 'thumb_1532246204.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 16:38:57', '2018-08-08 10:33:34', 'admin', 'admin'),
(8, 4, 'Suspension', 'All BharatBenz Tourist Buses are fitted with parabolic leaf spring suspension and finely tuned shock absorbers for a smoother ride.', 'main_1532432074.jpg', 'thumb_1532432074.jpg', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-15 16:39:49', '2018-08-13 02:18:34', 'admin', 'admin'),
(9, 3, 'CCTV', 'The BharatBenz Staff Buses also come with the provision to install CCTV cameras for enhanced security.', 'main_1532422018.jpg', 'thumb_1532422018.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-24 08:46:58', NULL, 'admin', NULL),
(10, 3, 'Roll Over Strength', 'The patented aluminique alloy structure of the BharatBenz Staff Bus provides better rollover strength.', 'main_1532422187.png', 'thumb_1532422187.png', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-24 08:49:47', NULL, 'admin', NULL),
(11, 3, 'Emergency Exit', 'Staff Buses are equipped with a strategically placed emergency exit for quicker evacuation in case of emergencies.', 'main_1532422221.jpg', 'thumb_1532422221.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-24 08:50:21', NULL, 'admin', NULL),
(12, 3, 'Comfortable seats', 'Passengers can say goodbye to commuting woes as the BharatBenz Staff Bus is designed exclusively to make the journey a relaxing one. With wide seating and a large bus body to accommodate ample space for gangways, there is no room for any distress.', 'main_1533916853.png', 'thumb_1533916853.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:25:21', '2018-08-10 10:30:53', 'admin', 'admin'),
(13, 3, 'Suspension', 'All BharatBenz Staff Buses are fitted with parabolic leaf spring suspension and finely tuned shock absorbers for a smoother ride.', 'main_1533917303.jpg', 'thumb_1533917303.jpg', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:26:04', '2018-08-13 02:19:14', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_fuel_efficiency`
--

CREATE TABLE `tbl_bus_fuel_efficiency` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_fuel_efficiency`
--

INSERT INTO `tbl_bus_fuel_efficiency` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Sturdy Framework', 'BharatBenz School Buses feature a patented aluminique structure which enables better fuel efficiency.', 'main_1532246412.jpg', 'thumb_1532246412.jpg', 0, '', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '0', '1', '2018-06-19 05:33:28', '2018-08-13 02:26:56', 'admin', 'admin'),
(2, 1, 'Engine', 'All BharatBenz School Buses are fitted with a turbo-charged, inter-cooled engine for optimum efficiency.', 'main_1532246342.jpg', 'thumb_1532246342.jpg', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '0', '1', '2018-07-13 19:16:10', '2018-08-13 02:24:39', 'admin', 'admin'),
(3, 2, 'Fuel Efficiency & Low TCO', 'With high uptime, extended service intervals and superior durability, the BharatBenz 1623 Chassis enhances performance efficiency, lowering the Total Cost of Ownership.', 'main_1532246393.jpg', 'thumb_1532246393.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:01:09', '2018-07-22 07:59:53', 'admin', 'admin'),
(4, 2, 'Customization', 'Drive your success story with the BharatBenz 1623 Chassis, which is completely customisable to meet your business needs.', 'main_1532328280.jpg', 'thumb_1532328280.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:01:54', '2018-07-23 06:44:40', 'admin', 'admin'),
(5, 3, 'Sturdy Framework', 'The unique design of the BharatBenz Staff Buses feature reduces the drag resistance, enabling better fuel efficiency.', 'main_1532422283.jpg', 'thumb_1532422283.jpg', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '0', '1', '2018-07-15 16:17:06', '2018-08-13 02:27:00', 'admin', 'admin'),
(6, 3, 'Engine', 'All BharatBenz Staff Buses are fitted with a turbo-charged, inter-cooled engine for optimum efficiency.', 'main_1532422309.jpg', 'thumb_1532422309.jpg', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '0', '1', '2018-07-15 16:20:03', '2018-08-13 02:24:21', 'admin', 'admin'),
(7, 4, 'Sturdy Framework', 'The lightweight aluminique structure of the BharatBenz Tourist Bus reduces the GVW of the vehicle, resulting in higher efficiency.', 'main_1532246440.jpg', 'thumb_1532246440.jpg', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '0', '1', '2018-07-15 16:44:27', '2018-08-13 02:27:05', 'admin', 'admin'),
(8, 4, 'Engine', 'All BharatBenz Tourist Buses are fitted with a turbo-charged, inter-cooled engine for optimum efficiency.', 'main_1532246366.jpg', 'thumb_1532246366.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 16:45:11', '2018-07-22 07:59:26', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_key_buying_factors`
--

CREATE TABLE `tbl_bus_key_buying_factors` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_key_buying_factors`
--

INSERT INTO `tbl_bus_key_buying_factors` (`id`, `title`, `short_description`, `image`, `thumbnail`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Safety That Inspires', 'Each BharatBenz bus includes a host of advanced safety features, such as seat belts, fire-retardant interiors, anti-skid vinyl flooring, rigid aluminique body construction, high roll-over strength, strategically located emergency exit and anti-lock braking system', 'main_1533915932.jpg', 'thumb_1533915932.jpg', NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-16 06:26:00', '2018-08-13 01:47:17', 'admin', 'admin'),
(2, 'Technology', 'BharatBenz Buses are manufactured using superior technology to ensure optimal performance through a powerful engine and enhanced fuel efficiency.', 'main_1532423747.jpg', 'thumb_1532423747.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-16 06:29:21', '2018-07-24 09:15:47', 'admin', 'admin'),
(3, 'Comfort That Delights', 'World-class German engineering coupled with premium interiors ensure that every passenger that uses BharatBenz Buses feels as comfortable throughout their commute as they would at home.', 'main_1532431941.jpg', 'thumb_1532431941.jpg', NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 09:16:56', '2018-08-13 01:49:23', 'admin', 'admin'),
(4, 'Unique Design', 'The BharatBenz buses have striking aesthetics inside out. While the interiors are thoughtfully curated to provide best-in-class ride quality, the exteriors have a unique design, ensuring they stand out from the rest!', 'main_1532431927.jpg', 'thumb_1532431927.jpg', NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 09:18:33', '2018-08-13 01:49:52', 'admin', 'admin'),
(5, 'Low Total Cost of Operation', 'BharatBenz buses are manufactured using superior technology to drive you towards higher profits. Our world-renowned German engineering provides an incomparable performance at low operating costs.', 'main_1534224525.jpg', 'thumb_1534224525.jpg', NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-13 07:21:13', '2018-08-13 23:58:45', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_low_maintenance`
--

CREATE TABLE `tbl_bus_low_maintenance` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_low_maintenance`
--

INSERT INTO `tbl_bus_low_maintenance` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Brakes', 'Brakesss', 'main_1529386438.jpg', 'thumb_1529386438.jpg', 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 05:33:58', '2018-06-19 05:46:28', 'admin', 'admin'),
(2, 1, 'Clutches', 'Clutches of 16T Chassis', 'main_1529386465.jpg', 'thumb_1529386465.jpg', 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 05:34:25', '2018-06-19 10:54:28', 'admin', 'admin'),
(3, 2, 'test1', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:47:36', NULL, 'admin', NULL),
(4, 1, 'fff', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:47:46', NULL, 'admin', NULL),
(5, 2, 'fds', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:47:53', NULL, 'admin', NULL),
(6, 2, 'aaaa', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '0', '2018-06-19 11:48:05', NULL, 'admin', NULL),
(7, 1, 'Long-lasting Brakes', 'BharatBenz School Buses are equipped with a thick brake-lining to enhance the life of the brakes.', 'main_1532246757.jpg', 'thumb_1532246757.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-19 11:48:13', '2018-07-22 08:05:57', 'admin', 'admin'),
(8, 3, 'Longer Service Interval', 'The BharatBenz Staff Buses are thoughtfully designed and carefully engineered for less maintenance and repairs.', 'main_1532246678.jpg', 'thumb_1532246678.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-19 11:48:21', '2018-07-22 08:04:37', 'admin', 'admin'),
(9, 3, 'Long-life Brake & Clutch Lining', 'The brake and clutch lining of the BharatBenz Staff Buses are made using best-in-class components to ensure longevity.', 'main_1532246643.jpg', 'thumb_1532246643.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-19 11:48:32', '2018-07-22 08:04:03', 'admin', 'admin'),
(10, 2, 'eeee', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:48:44', NULL, 'admin', NULL),
(11, 2, 'fff', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:48:51', NULL, 'admin', NULL),
(12, 1, 'gggg', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:49:45', NULL, 'admin', NULL),
(13, 3, 'hhhh', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '0', '2018-06-19 11:49:57', NULL, 'admin', NULL),
(14, 2, 'iii', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 11:50:07', NULL, 'admin', NULL),
(15, 3, 'jjj', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '0', '2018-06-19 11:50:14', NULL, 'admin', NULL),
(16, 3, 'kkk', '', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '0', '2018-06-19 11:50:23', NULL, 'admin', NULL),
(17, 1, 'Longer Service Intervals', 'Each BharatBenz School Bus is engineered with best-in-class components to ensure maximum uptime and minimal maintenance.', 'main_1532246707.jpg', 'thumb_1532246707.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-19 11:50:49', '2018-07-22 08:05:07', 'admin', 'admin'),
(18, 1, 'alert(\\\'hii\\\'); ', 'alert(\\\'testii\\\'); ', NULL, NULL, 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-19 12:16:19', NULL, 'admin', NULL),
(19, 2, 'test', '', 'main_1529582930.jpg', 'thumb_1529582930.jpg', 0, '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '0', '2018-06-21 12:08:50', NULL, 'admin', NULL),
(20, 1, 'Clutch Lining', 'The clutch lining of the BharatBenz School Buses is made with special organic material which improves its longevity.', 'main_1532246602.jpg', 'thumb_1532246602.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-28 11:41:19', '2018-07-22 08:03:21', 'admin', 'admin'),
(21, 4, 'Longer Service Interval', 'The BharatBenz Tourist Bus is manufactured using state-of-the-art components to reduce its overall maintenance requirements.', 'main_1532246695.jpg', 'thumb_1532246695.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 16:46:10', '2018-07-22 08:04:55', 'admin', 'admin'),
(22, 4, 'Long-life Brake & Clutch Lining', 'The brake and clutch lining of the BharatBenz Tourist Bus is made with special organic materials to minimize wear and tear.', 'main_1532246656.jpg', 'thumb_1532246656.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 16:46:55', '2018-07-22 08:04:16', 'admin', 'admin'),
(23, 3, 'Long-lasting Brakes', 'BharatBenz Staff Buses are equipped with a thick brake-lining to enhance the life of the brakes.', 'main_1533724138.jpg', 'thumb_1533724138.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-08 10:28:58', NULL, 'admin', NULL),
(24, 4, 'Long-lasting Brakes', 'BharatBenz Tourist Buses are equipped with a thick brake-lining to enhance the life of the brakes.', 'main_1533724615.jpg', 'thumb_1533724615.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-08 10:36:55', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_safety`
--

CREATE TABLE `tbl_bus_safety` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_safety`
--

INSERT INTO `tbl_bus_safety` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Roll Over Strength', 'The unique structure of BharatBenz School Bus comes with high roll-over strength. The roll over angle of BharatBenz buses is 42 degree as against the standard norm of ARAI of 28 degree.', 'main_1532246026.png', 'thumb_1532246026.png', 3, '', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 05:29:53', '2018-08-13 02:09:20', 'admin', 'admin'),
(2, 1, 'Seat belts', 'To assure maximum safety, the BharatBenz School Bus is provided with individual seat belts to protect children during emergency braking.', 'main_1532246087.jpg', 'thumb_1532246087.jpg', 1, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-19 05:31:17', '2018-08-08 09:49:42', 'admin', 'admin'),
(3, 4, 'SeatBelt', 'Every seat in the BharatBenz School Bus is equipped with a seat belt to ensure the child’s safety', 'main_1531536708.jpg', 'thumb_1531536708.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-06-19 05:55:25', '2018-07-14 02:51:47', 'admin', 'admin'),
(4, 4, 'SeatBelt', 'Every seat in the BharatBenz School Bus is equipped with a seat belt to ensure the child’s safety', 'main_1531536739.jpg', 'thumb_1531536739.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-06-21 11:08:24', '2018-07-14 02:52:19', 'admin', 'admin'),
(5, 1, 'CCTV', 'BharatBenz School Buses come with the option of CCTV cameras for additional security.', 'main_1532245890.jpg', 'thumb_1532245890.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-06-28 11:37:44', '2018-07-22 07:51:30', 'admin', 'admin'),
(6, 4, 'SeatBelt', 'Every seat in the BharatBenz School Bus is equipped with a seat belt to ensure the child’s safety', 'main_1531536758.jpg', 'thumb_1531536758.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-14 02:52:38', NULL, 'admin', NULL),
(7, 2, 'Ride that glides', 'The BharatBenz 16T/12-metre Chassis delivers a smooth ride for both its driver and passengers. The chassis is equipped with front and rear glide air suspensions.', 'main_1533916257.png', 'thumb_1533916257.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-15 15:55:52', '2018-08-10 10:20:57', 'admin', 'admin'),
(8, 3, 'Seat Belt', 'BharatBenz Staff Bus seats can also be fitted with seatbelts for added road safety.', 'main_1532246118.jpg', 'thumb_1532246118.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:09:46', '2018-07-22 07:55:17', 'admin', 'admin'),
(9, 3, 'Comfortable Seats', 'Passengers can say goodbye to commuting woes as the BharatBenz Staff Bus is designed exclusively to make the journey a relaxing one. With wide seating and a large bus body to accommodate ample space for gangways, there is no room for any distress.', 'main_1532421716.jpg', 'thumb_1532421716.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:10:42', '2018-08-08 10:07:57', 'admin', 'admin'),
(10, 3, 'Suspension', 'The parabolic suspension decreases the transfer of road undulations, while the optimally tuned shock absorbers ensure additional comfort.', 'main_1532421930.jpg', 'thumb_1532421930.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:11:22', '2018-07-24 08:45:30', 'admin', 'admin'),
(11, 3, 'Suspension', 'The parabolic suspension decreases the transfer of road undulations, while the optimally tuned shock absorbers ensure additional comfort.', 'main_1532421762.jpg', 'thumb_1532421762.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-15 16:12:21', '2018-07-24 08:42:42', 'admin', 'admin'),
(12, 4, 'Seat Belt', 'BharatBenz Tourist Bus seats can be equipped with seatbelts for enhanced passenger safety.', 'main_1532422766.jpg', 'thumb_1532422766.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 16:40:43', '2018-07-24 08:59:26', 'admin', 'admin'),
(13, 4, 'CCTV', 'To ensure maximum security,  BharatBenz Tourist Buses also come with the provision to install CCTV cameras.', 'main_1532245922.jpg', 'thumb_1532245922.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 16:41:57', '2018-07-22 07:52:02', 'admin', 'admin'),
(14, 4, 'Roll Over Strength', 'The patented aluminique alloy structure of the BharatBenz Tourist Bus ensures better rollover strength.', 'main_1532246064.png', 'thumb_1532246064.png', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 16:42:44', '2018-07-22 07:54:24', 'admin', 'admin'),
(15, 4, 'Emergency Exit', 'The Tourist Bus is also fitted with a strategically placed emergency exit for easy evacuation in case of emergencies.', 'main_1532422840.jpg', 'thumb_1532422840.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 16:43:32', '2018-07-24 09:00:40', 'admin', 'admin'),
(16, 2, 'Effective braking', 'The chassis has wider brakes with 24 percent higher braking surface area. High system pressure (10 bar) and bigger brake chambers ensure effective braking. \r\nElctromagnetic retarder utilizing CAN (Controller Area Network) can be operated with the help of a lever and brake pedal. Combined with iRCS technology, the retarder helps in improving the life of brake pads and driveline components.', 'main_1533916206.png', 'thumb_1533916206.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 09:02:25', '2018-08-10 10:21:30', 'admin', 'admin'),
(17, 2, 'Unmatched fuel economy and performance', 'With an intelligent ECU controlling the engine and low and flat torque, the BharatBenz 16T/12-metre Chassis delivers unmatched fel efficiency. The engine brake, exhaust braje, waste gate turbocharger, electronic unit pumps and ECY controlled injectors further enhance the fuel efficient characteristics of the chassis.', 'main_1533916164.png', 'thumb_1533916164.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 09:03:19', '2018-08-10 10:19:24', 'admin', 'admin'),
(18, 1, 'Safe Interiors', 'The interiors of the bus are made of fire-retardant plastic and fabric that helps in effective prevention of fire. As the vinyl flooring is furnished with an anti-skid top layer, children can walk through safely and easily. Furthermore, the emergency exit is strategically located to allow quick evacuations.', 'main_1533728582.jpg', 'thumb_1533728582.jpg', 2, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 09:51:32', '2018-08-13 02:11:28', 'admin', 'admin'),
(19, 3, 'Sturdy framework', 'The BharatBenz Staff Bus is perfectly stable, especially during high-speed cornering, thanks to its high frame width and tubless radial tyres.', 'main_1533782419.jpg', 'thumb_1533782419.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-08-08 10:15:28', '2018-08-09 02:40:18', 'admin', 'admin'),
(20, 3, 'Unmatched braking', 'Wearing of brake pads will never be a concern, thanks to the exhaust brakes. This also enables safer braking on the steep gradients. Also, with the Anti-lock braking system, the driver has easy control over the vehicle in case of an emergency stop.', 'main_1533916691.png', 'thumb_1533916691.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:23:41', '2018-08-10 10:28:11', 'admin', 'admin'),
(21, 3, 'Robust body', 'With its unique structure, the staff bus has been proven to have immense rollover strength. The low centre of gravity of the aluminique body makes for a topple angle of 42 degrees. Passengers can walk through comfortably on the anti-skid vinyl flooring.', 'main_1534148314.png', 'thumb_1534148314.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:24:00', '2018-08-13 02:48:34', 'admin', 'admin'),
(22, 4, 'Sturdy framework', 'The BharatBenz Staff Bus is perfectly stable, especially during high-speed cornering, thanks to its high frame width and tubless radial tyres.', 'main_1533782431.jpg', 'thumb_1533782431.jpg', 0, NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-08-08 10:34:26', '2018-08-09 02:40:31', 'admin', 'admin'),
(23, 4, 'Unmatched braking', 'Wearing of brake pads will never be a concern, thanks to the exhaust brakes. This also enables safer braking on the steep gradients. Also, with the Anti-lock braking system, the driber has easy control over the vehicle in case of an emergency stop.', 'main_1533916735.png', 'thumb_1533916735.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:34:58', '2018-08-10 10:28:55', 'admin', 'admin'),
(24, 4, 'Robust body', 'With its unique structure, the tourist bus has been proven to have immense rollover strength. The low centre of gravity of the aluminique body makes for a topple angle of 42 degrees. Passengers can walk through comfortably on the anti-skid vinyl flooring.', 'main_1533889500.png', 'thumb_1533889500.png', 0, NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:35:19', '2018-08-13 02:46:34', 'admin', 'admin'),
(25, 11, 'Unmatched fuel economy and performance', 'The BharatBenz 9T/9.8-metre Chassis enables you to save on fuel costs, thanks to the highly fuel-efficient engine. The engine also comes loaded with a high-pressure common rail for better fuel mixing and a viscous fan for improved fuel efficiency.', 'main_1533917073.jpg', 'thumb_1533917073.jpg', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:54:36', '2018-08-10 10:34:33', 'admin', 'admin'),
(26, 11, 'Best-in-class suspension', 'The parabolic supension decreases the transfer of road undulations, while the optimally tuned shock absorbers provide more ride comfort.', 'main_1533917272.jpg', 'thumb_1533917272.jpg', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:54:57', '2018-08-10 10:37:52', 'admin', 'admin'),
(27, 11, 'Unmatched Braking', 'Wearing of brake pads will never be a concern, thanks to the exhaust brakes. This also enables safer braking on the steep gradients. Also, with the Anti-lock braking system, the driver has easy control over the vehicle in case of an emergency stop.', 'main_1533917371.png', 'thumb_1533917371.png', 0, NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:55:18', '2018-08-10 10:39:31', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_specifications`
--

CREATE TABLE `tbl_bus_specifications` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `engine_model` varchar(100) NOT NULL,
  `engine_max_power` varchar(100) NOT NULL,
  `engine_max_torque` varchar(100) NOT NULL,
  `engine_cylinders` varchar(100) NOT NULL,
  `engine_compliance` varchar(100) NOT NULL,
  `gear_box_model` varchar(100) NOT NULL,
  `gear_box_clutch_type` varchar(100) NOT NULL,
  `auxi_brake` text NOT NULL,
  `brakes` text NOT NULL,
  `axle_front_model` varchar(100) NOT NULL,
  `axle_rear_model` varchar(100) NOT NULL,
  `axile_diff_ratio` varchar(100) NOT NULL,
  `dimensions_wheel_base` varchar(100) NOT NULL,
  `dimensions_length` varchar(100) NOT NULL,
  `dimensions_width` varchar(100) NOT NULL,
  `dimensions_height` varchar(100) NOT NULL,
  `dimensions_front_overhang` varchar(100) NOT NULL,
  `dimensions_rear_overhang` varchar(100) NOT NULL,
  `dimensions_min_clearance` varchar(100) NOT NULL,
  `wt_gross_vehicle` varchar(100) NOT NULL,
  `chassis_type` varchar(100) NOT NULL,
  `chassis_depth` varchar(100) NOT NULL,
  `chassis_front` varchar(100) NOT NULL,
  `chassis_rear` varchar(100) NOT NULL,
  `chassis_anti_roll` varchar(100) NOT NULL,
  `chassis_wheel` varchar(100) NOT NULL,
  `brake_service` varchar(100) NOT NULL,
  `brake_parking` varchar(100) NOT NULL,
  `battery` varchar(100) NOT NULL,
  `alternator` varchar(100) NOT NULL,
  `fuel_tank` varchar(100) NOT NULL,
  `ad_blue_tank` varchar(100) NOT NULL,
  `engine_oil_change` varchar(100) NOT NULL,
  `axle_oil_change` varchar(100) NOT NULL,
  `max_permissible` text NOT NULL,
  `performance_max_grade` varchar(100) NOT NULL,
  `performance_max_gear` varchar(100) NOT NULL,
  `performance_min_diameter` varchar(100) NOT NULL,
  `tyre_type` varchar(100) NOT NULL,
  `tyre_size` varchar(100) NOT NULL,
  `rear_axle_hub` varchar(255) NOT NULL,
  `body_desc` text NOT NULL,
  `no_gear` varchar(255) NOT NULL,
  `engine_type` varchar(255) NOT NULL,
  `system_output` varchar(255) NOT NULL,
  `font_axle_hub_greasing` varchar(255) NOT NULL,
  `configuration_cabin` varchar(255) NOT NULL,
  `configuration_fully_build` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_specifications`
--

INSERT INTO `tbl_bus_specifications` (`id`, `product_id`, `product_type_id`, `title`, `short_description`, `image`, `thumbnail`, `engine_model`, `engine_max_power`, `engine_max_torque`, `engine_cylinders`, `engine_compliance`, `gear_box_model`, `gear_box_clutch_type`, `auxi_brake`, `brakes`, `axle_front_model`, `axle_rear_model`, `axile_diff_ratio`, `dimensions_wheel_base`, `dimensions_length`, `dimensions_width`, `dimensions_height`, `dimensions_front_overhang`, `dimensions_rear_overhang`, `dimensions_min_clearance`, `wt_gross_vehicle`, `chassis_type`, `chassis_depth`, `chassis_front`, `chassis_rear`, `chassis_anti_roll`, `chassis_wheel`, `brake_service`, `brake_parking`, `battery`, `alternator`, `fuel_tank`, `ad_blue_tank`, `engine_oil_change`, `axle_oil_change`, `max_permissible`, `performance_max_grade`, `performance_max_gear`, `performance_min_diameter`, `tyre_type`, `tyre_size`, `rear_axle_hub`, `body_desc`, `no_gear`, `engine_type`, `system_output`, `font_axle_hub_greasing`, `configuration_cabin`, `configuration_fully_build`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 2, 0, 'BHARATBENZ 12M COACH - CHASSIS', NULL, 'main_1531489000.jpg', 'thumb_1531489000.jpg', 'OM906', '235 hp (175kW) @ 2200 rpm', '850Nm @ 1200-1600 rpm', '6373 cc', 'ECU controlled, Unit Pumps', 'G85, 6 speed', '395 mm dia, Single plate type', 'Engine brack + Exhast brake + Retarder   (Optional)', 'Pneumatic, with automatic slack adjuster', 'IF6.6, Reverse elliot type', 'IR440, Single Speed, Hypoid drive', '', '5950 mm', '11765 mm', '2530 mm', '', '2305 mm', '3610 mm', '255 mm x 73.5 mm x 7 mm', '', '', '', 'Air suspension with 2 air bellows', 'Air suspension with 4 air bellows', 'Both in front & rear', '8.25\\\" x 22.5\\\"', '', '', '2x 12V, 200Ah', '100 Amps (2 nos.)', '355 litres', '50 litres', '100,000 km', '150,000 km', '162000 kg', '20 percent', '239 mm', '19.6 mm', 'vbbvbv', '295/80 R22.5', '100,000 km', '<div class=\"thepet\">\r\n  <table cellpadding=\"2\" cellspacing=\"0\" style=\"font-size:smaller;\">\r\n    <tbody>\r\n    <tr>\r\n        <td>&nbsp;  </td>\r\n        <td><strong>16T/12-metre Chassis</strong></td>\r\n      </tr>\r\n      <tr>\r\n        <td>Engine:</td>\r\n        <td>OM906</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Power:</td>\r\n        <td>235 hp @2200 rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Torque: </td>\r\n        <td>850 Nm @ 1200-1600 rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Gearbox:</td>\r\n        <td>G85, 6 speed</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Suspension: </td>\r\n        <td>Air suspension on both front and rear with air bellows  2 at front and 4 at rear</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Overall length: </td>\r\n        <td>11.765 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Overall width: </td>\r\n        <td>2.53 m</td>\r\n      </tr>\r\n       \r\n    </tbody>\r\n  </table>\r\n</div>', '', '', '', '1000,000 km', '', '', '10.10.10.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-13 13:36:40', '2018-08-08 12:46:29', 'admin', 'admin'),
(2, 4, 0, 'BHARATBENZ TOURIST BUS', NULL, NULL, NULL, '4D34i', '170P (125Kw) @2500 rpm', '520Nm @ 1500 rpm', '3907 cc', '', 'M036 S6, Synchromesh', 'Special organic, single disc, 330 mm', 'Anti-lock Braking System (ABS)', 'Dual circuit, full air, S-cam type drum', 'Heavy-duty reverse elliot \\\'I\\\' beam', 'Fully floating type', '', '', '', '', '', '', '', '', '', '', '', 'Parabolic Suspension', 'Parabolic Suspension', '', '', '', '', '2x 12V, 120Ah', '120 Amps', '160 litres', '', '', '', '', '', '', '', 'Power steering, adjustable and tiltable', '235 / 75 R 17.5 tubeless radials', '', '<div class=\"thepet\">\r\n  <table cellpadding=\"2\" cellspacing=\"0\" style=\"font-size:smaller;\">\r\n    <tbody>\r\n    <tr>\r\n        <td>&nbsp;  </td>\r\n        <td><strong>917 Tourist Bus</strong></td>\r\n      </tr>\r\n      <tr>\r\n        <td>Engine:</td>\r\n        <td>4D34i Fuso Platform</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Power:</td>\r\n        <td>170hp@2500rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Torque: </td>\r\n        <td>520Nm@1500rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Gearbox:</td>\r\n        <td>MO36S6 (6F + 1R)</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Suspension: </td>\r\n        <td>Parabolic Suspension at front and rear</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Overall length: </td>\r\n        <td>9.8 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Overall width: </td>\r\n        <td>2.35 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Structure: </td>\r\n        <td>Mild steel understructure with aluminium alloy extrusion subframe</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Seat model: </td>\r\n        <td>Harita - Mega Magnum</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Seat capacity: </td>\r\n        <td>26 + 1 + 1D/ 35 + 1 + 1D</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Seat layout: </td>\r\n        <td>2x1/ 2x2</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Seat type: </td>\r\n        <td>Pushback without calf support/ High Head Rest</td>\r\n      </tr> \r\n      <tr>\r\n        <td>AC: </td>\r\n        <td>Yes</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>', '6 forward with overdrive & 1 reverse', '4 cylinders, vertical in-line, BS III/IV, inter-cooled, turbo-charged', '24V', '', '', '', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 11:11:13', '2018-08-08 12:43:55', 'admin', 'admin'),
(3, 3, 0, 'BHARATBENZ STAFF BUS', NULL, NULL, NULL, '4D34i', '170P (125Kw) @2500 rpm', '520Nm @ 1500 rpm', '3907 cc', '', 'M036 S6, Synchromesh', 'Special organic, single disc, 330 mm', 'Anti-lock Braking System (ABS)', 'Dual circuit, full air, S-cam type drum', 'Heavy-duty reverse elliot \\\'I\\\' beam', 'Fully floating type', '', '', '', '', '', '', '', '', '', '', '', 'Parabolic Suspension', 'Parabolic Suspension', 'Both in front & rear', '', '', '', '2x 12V, 120Ah', '160 Amps (twin alternator)', '160 litres', '', '', '', '', '', '', '', 'Power steering, adjustable and tiltable', '235 / 75 R 17.5 tubeless radials', '', '<div class=\"thepet\">\r\n  <table cellpadding=\"2\" cellspacing=\"0\" style=\"font-size:smaller;\">\r\n    <tbody>\r\n    <tr>\r\n        <td>&nbsp;  </td>\r\n        <td><strong>914 Staff Bus	</strong></td>\r\n        <td><strong>917 Staff Bus	</strong></td>\r\n      </tr>\r\n      <tr>\r\n        <td>Engine:</td>\r\n        <td>4D34i Fuso Platform</td>\r\n        <td>4D34i Fuso Platform</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Power:</td>\r\n        <td>140hp@2500rpm</td>\r\n        <td>170hp@2500rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Torque: </td>\r\n        <td>420Nm@1500rpm</td>\r\n        <td>520Nm@1500rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Gearbox:</td>\r\n        <td>MO36S6 (6F + 1R)</td>\r\n        <td>MO36S6 (6F + 1R)</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Suspension: </td>\r\n        <td>Parabolic Suspension at front and rear</td>\r\n        <td> Parabolic Suspension at front and rear</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Overall length: </td>\r\n        <td>9.8 m</td>\r\n        <td>9.8 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Overall width: </td>\r\n        <td>2.35 m</td>\r\n        <td>2.35 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Structure: </td>\r\n        <td>Mild steel understructure with aluminium alloy extrusion subframe</td>\r\n        <td>Mild steel understructure with aluminium alloy extrusion subframe</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Seat model: </td>\r\n        <td>Harita/Pinnacle</td>\r\n        <td>Harita/Pinnacle</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Seat capacity: </td>\r\n        <td>26 + 1 + 1D/ 35 + 1 + 1D/39 + 1 + 1D</td>\r\n        <td>26 + 1 + 1D/ 35 + 1 + 1D/39 + 1 + 1D</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Seat layout: </td>\r\n        <td>2x1/ 2x2</td>\r\n        <td>2x1/ 2x2</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Seat type: </td>\r\n        <td>Pushback without calf support/ High Head Rest</td>\r\n        <td>Pushback without calf support/ High Head Rest</td>\r\n      </tr> \r\n      <tr>\r\n        <td>AC: </td>\r\n        <td>No</td>\r\n        <td>Yes</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>', '6 forward with overdrive & 1 reverse', '4 cylinders, vertical in-line, BS III/IV, inter-cooled, turbo-charged', '24V', '', '', '', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 11:27:13', '2018-08-08 12:31:06', 'admin', 'admin'),
(4, 1, 0, 'BHARATBENZ SCHOOL BUS', NULL, NULL, NULL, '4D34i', '170P (125Kw) @2500 rpm', '520Nm @ 1500 rpm', '3907 cc', '', 'M036 S6, Synchromesh', 'Special organic, single disc, 330 mm', 'Anti-lock Braking System (ABS)', 'Dual circuit, full air, S-cam type drum', 'Heavy-duty reverse elliot \\\'I\\\' beam', 'Fully floating type', '', '', '', '', '', '', '', '', '', '', '', 'Parabolic Suspension', 'Parabolic Suspension', 'Double-acting telescopic shock absorbers and anti-roll bars at front and rear with stabilisers', '', '', '', '2x 12V, 120Ah', '160 Amps (twin alternator)', '160 litres', '', '', '', '', '', '', '', 'Power steering, adjustable and tiltable', '235 / 75 R 17.5 tubeless radials', '', '<div class=\"thepet\">\r\n  <table cellpadding=\"2\" cellspacing=\"0\" style=\"font-size:smaller;\">\r\n    <tbody>\r\n    <tr>\r\n        <td>&nbsp;  </td>\r\n        <td><strong>914 School Bus</strong></td>\r\n        <td><strong>917 School Bus</strong></td>\r\n      </tr>\r\n      <tr>\r\n        <td>Engine:</td>\r\n        <td>4D34i Fuso Platform</td>\r\n        <td>4D34i Fuso Platform</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Power:</td>\r\n        <td>140hp@2500rpm</td>\r\n        <td>170hp@2500rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Torque: </td>\r\n        <td>420Nm@1500rpm</td>\r\n        <td>520Nm@1500rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Gearbox:</td>\r\n        <td>MO36S6 (6F + 1R)</td>\r\n        <td>MO36S6 (6F + 1R)</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Suspension: </td>\r\n        <td>Parabolic Suspension at front and rear</td>\r\n        <td> Parabolic Suspension at front and rear</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Overall length: </td>\r\n        <td>9.8 m</td>\r\n        <td>9.8 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Overall width: </td>\r\n        <td>2.35 m</td>\r\n        <td>2.35 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Structure: </td>\r\n        <td>Mild steel understructure with aluminium alloy extrusion subframe</td>\r\n        <td>Mild steel understructure with aluminium alloy extrusion subframe</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Seat model: </td>\r\n        <td>Harita</td>\r\n        <td>Harita</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Seat capacity: </td>\r\n        <td>49 + 1 + 1D/ 39 + 1 + 1D</td>\r\n        <td>49 + 1 + 1D/ 39 + 1 + 1D</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Seat layout: </td>\r\n        <td>3x2/ 2x2</td>\r\n        <td>3x2/ 2x2</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Seat type: </td>\r\n        <td>Bench Type/ High Head Rest</td>\r\n        <td>Bench Type/ High Head Rest</td>\r\n      </tr> \r\n      <tr>\r\n        <td>AC: </td>\r\n        <td>No</td>\r\n        <td>Yes</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>', '6 forward with overdrive & 1 reverse', '4 cylinders, vertical in-line, BS III/IV, inter-cooled, turbo-charged', '24V', '', '', '', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 12:00:11', '2018-08-08 11:51:55', 'admin', 'admin'),
(5, 11, 0, 'BHARATBENZ 9T/9.8-METRE CHASSIS', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<div class=\"thepet\">\r\n  <table cellpadding=\"2\" cellspacing=\"0\" style=\"font-size:smaller;\">\r\n    <tbody>\r\n    <tr>\r\n        <td>&nbsp;  </td>\r\n        <td><strong>9T/9.8-metre Chassis</strong></td>\r\n      </tr>\r\n      <tr>\r\n        <td>Engine:</td>\r\n        <td>4D34i</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Power:</td>\r\n        <td>170 hp@ 2500 rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Torque: </td>\r\n        <td>520 Nm @ 1500 rpm</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Gearbox:</td>\r\n        <td>MO36S6 (6F + 1R)</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Suspension: </td>\r\n        <td>Parabolic Suspension at front and rear</td>\r\n      </tr>\r\n      <tr>\r\n        <td> Overall length: </td>\r\n        <td>8.566 m</td>\r\n      </tr>\r\n       <tr>\r\n        <td> Overall width: </td>\r\n        <td>2.199 m</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>', '', '', '', '', '', '', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-08 12:50:06', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `best_in_class_safety_img` varchar(255) NOT NULL,
  `best_in_class_safety_thumb` varchar(255) NOT NULL,
  `best_in_class_safety_desc` text NOT NULL,
  `unmatched_reliability_img` varchar(255) NOT NULL,
  `unmatched_reliability_thumb` varchar(255) NOT NULL,
  `unmatched_reliability_desc` text NOT NULL,
  `superior_technology_img` varchar(255) NOT NULL,
  `superior_technology_thumb` varchar(255) NOT NULL,
  `superior_technology_desc` text NOT NULL,
  `engineered_for_img` varchar(255) NOT NULL,
  `engineered_for_thumb` varchar(255) NOT NULL,
  `engineered_for_desc` text NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `title`, `description`, `short_description`, `image`, `thumbnail`, `best_in_class_safety_img`, `best_in_class_safety_thumb`, `best_in_class_safety_desc`, `unmatched_reliability_img`, `unmatched_reliability_thumb`, `unmatched_reliability_desc`, `superior_technology_img`, `superior_technology_thumb`, `superior_technology_desc`, `engineered_for_img`, `engineered_for_thumb`, `engineered_for_desc`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(7, 'Buses', 'With the new range of modern buses, BharatBenz offers&nbsp;a complete range of &lsquo;Made in India&rsquo; buses with best-in-class fuel economy, comfort levels, and safety standards. BharatBenz is determined to make buses the preferred mode of transportation in India.', 'Redefining Travel In India', 'main_1532430093.jpg', 'thumb_1532430093.jpg', 'main_31531500621.jpg', 'thumb_31531500621.jpg', 'Each BharatBenz bus is designed with a special aluminique body to provide high rollover strength and also includes a host of advanced safety features such as seatbelts, CCTV cameras and strategically located emergency exits.', 'main_61531673731.jpg', 'thumb_61531673731.jpg', '', 'main_1531500622.jpg', 'thumb_1531500622.jpg', 'BharatBenz Buses are manufactured using superior technology to ensure optimal performance through a powerful engine and enhanced fuel efficiency.', 'main_1531673980.jpg', 'thumb_1531673980.jpg', 'The BharatBenz buses have striking aesthetics inside out. While the interiors are thoughtfully curated to provide best-in-class ride quality, the exteriors have a unique design, ensuring they stand out from the rest!', 'Looking for the Best Bus manufacturers in India? BharatBenz is the leading bus maker in India. Explore the range of commercial buses and tourist buses here.', '', 'Commercial Buses, Tourist Bus, Bharat Benz Bus Manufacturers India, Best Bus manufacturers in India, Bus makers in India, Heay duty bus manufacturers in India', 'Commercial Buses, Tourist Bus, Bharat Benz Bus Manufacturers India - BharatBenz', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-06-19 05:24:29', '2018-08-09 19:16:46', 'admin', 'admin'),
(8, 'Trucks', 'BharatBenz is committed to be an integral part of the advancement of the Indian economy by providing commercial mobility solutions that will accelerate the progress of business in India. Each BharatBenz truck is designed to provide the highest level of productivity with optimal total cost of ownership, thereby providing the best in Truck-o-nomics.', 'Best-In-Class Trucks That Power You Ahead', 'main_1533045386.jpg', 'thumb_1533045386.jpg', 'main_21531486325.jpg', 'thumb_21531486325.jpg', 'BharatBenz Trucks are designed and tested to ensure optimal performance and complete safety in the varied terrains and weather conditions without stoppage.', 'main_1529480697.jpg', 'thumb_1529480697.jpg', 'BharatBenz trucking technology is a benchmark for fuel-efficiency. Additionally, the Selective Catalytic Reduction (SCR) technology used in the BharatBenz Trucks help reduce its harmful emissions, making the trucks environmentally friendly.', 'main_1531486325.jpg', 'thumb_1531486325.jpg', 'Built using superior technology, BharatBenz trucks are well-equipped with a host of advanced features that ensure durability and efficiency, thus guaranteeing fuel efficiency and a better user experience overall.', 'main_1529485060.jpg', 'thumb_1529485060.jpg', 'Higher service intervals and the rugged built of BharatBenz trucks ensure maximum asset utilization while optimizing the total cost of ownership. This means more uptime for your truck with fewer hassles, leading to greater profits for your business.', 'Looking for the best trucks in India? BharatBenz is one of the leading Indian truck manufacturers of heavy commercial trucks, which are designed to provide high fuel efficiency & engine performance.', '', 'Heavy Commericial Trucks, Best Bharatbenz Indian Truck Manufacturers, commercial truck manufacturers, best trucks in india, Best truck making company', 'Heavy Commericial Trucks, Best Bharatbenz Indian Truck Manufacturers -  BharatBenz', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-19 05:25:06', '2018-08-09 15:31:28', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certification`
--

CREATE TABLE `tbl_certification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `event_date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_certification`
--

INSERT INTO `tbl_certification` (`id`, `title`, `description`, `event_date`, `image`, `thumbnail`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(3, 'BharatBenz 1617R won the MCV cargo carrier of the Year award', 'BharatBenz 1617R won the MCV cargo carrier of the Year award', '2018-07-20', 'main_1532617760.jpg', 'thumb_1532617760.jpg', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-11 11:19:55', '2018-07-26 15:09:20', 'admin', 'admin'),
(4, 'tet  terrere', 'vbgff gffggf', '2018-07-24', 'main_1531822857.jpg', 'thumb_1531822857.jpg', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-11 11:48:10', '2018-07-17 10:20:57', 'admin', 'admin'),
(5, 'test certification', 'test certification', '2017-06-14', 'main_1531543430.png', 'thumb_1531543430.png', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 04:43:50', NULL, 'admin', NULL),
(6, 'Flywheel Commercial Vehicles Manufacturers of the Year 2018', 'DICV has won the “Flywheel Commercial Vehicles Manufacturers of the Year 2018”', '2018-07-11', 'main_1532617838.jpg', 'thumb_1532617838.jpg', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 14:00:55', '2018-07-26 15:10:37', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_list`
--

CREATE TABLE `tbl_comment_list` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `session_token` varchar(255) NOT NULL,
  `is_admin_approved` enum('1','0') NOT NULL,
  `ip` varchar(255) NOT NULL,
  `agent` text NOT NULL,
  `is_delete` enum('1','0') NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_reply`
--

CREATE TABLE `tbl_comment_reply` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `replied_comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment_reply`
--

INSERT INTO `tbl_comment_reply` (`id`, `comment_id`, `replied_comment_id`) VALUES
(1, 0, 1),
(2, 1, 2),
(3, 2, 3),
(4, 0, 4),
(5, 4, 5),
(6, 5, 6),
(7, 0, 7),
(8, 0, 8),
(9, 0, 9),
(10, 0, 10),
(11, 0, 11),
(12, 7, 12),
(13, 12, 13),
(14, 5, 14),
(15, 2, 15),
(16, 12, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 18, 20),
(21, 20, 21),
(22, 0, 1),
(23, 1, 2),
(24, 1, 3),
(25, 0, 1),
(26, 1, 2),
(27, 2, 3),
(28, 0, 4),
(29, 0, 1),
(30, 1, 2),
(31, 1, 3),
(32, 2, 4),
(33, 2, 5),
(34, 0, 6),
(35, 1, 7),
(36, 6, 8),
(37, 3, 9),
(38, 0, 1),
(39, 0, 2),
(40, 1, 3),
(41, 0, 4),
(42, 1, 5),
(43, 3, 6),
(44, 0, 1),
(45, 1, 2),
(46, 2, 3),
(47, 0, 1),
(48, 0, 2),
(49, 0, 3),
(50, 0, 1),
(51, 1, 2),
(52, 0, 1),
(53, 1, 2),
(54, 2, 3),
(55, 3, 4),
(56, 0, 5),
(57, 0, 1),
(58, 1, 2),
(59, 1, 3),
(60, 0, 1),
(61, 0, 2),
(62, 1, 3),
(63, 3, 4),
(64, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enquiry_type` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `mobile`, `email`, `enquiry_type`, `state`, `location`, `message`, `is_delete`, `ip`, `agent`, `insert_date`) VALUES
(1, 'farhee parkar', '9989898989', 'fari@yopmail.com', 'Sales & Marketing', 'andaman & nicobar', 'Mumbai, Maharashtra, India', 'testt', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 16:42:57'),
(2, 'Mitul Jagushte', '9503969858', 'assadasda@asdasd.com', 'Sales & Marketing', 'maharashtra', 'Maharashtra, India', 'adsddsa', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-13 17:39:00'),
(3, 'far parkar', '1111111111', 'fp@yopmail.com', 'Sales & Marketing', 'andaman & nicobar', 'Mumbai, Maharashtra, India', 'fdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfdfdfsdfdsfdsfdfdfsdfdsfdsfsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdfsdfdsfdsfdfdf', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:08:08'),
(4, 'farheen parkar', '9989898989', 'farheen.parkar@bcwebwise.com', 'Sales & Marketing', 'andaman & nicobar', 'Mumbai Central, Mumbai, Maharashtra, India', 'tes test', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:42:12'),
(5, 'YGHGGH', '9989898989', 'farheen.parkar@bcwebwise.com', 'Sales & Marketing', 'haryana', 'Mumbai, Maharashtra, India', 'test', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:50:06'),
(6, 'YGHGGH', '9989898989', 'farheen.parkar@bcwebwise.com', 'Sales & Marketing', 'goa', 'fdsfdfsdfdsfsd, sector 20 A, 20C, Sector 20, Chandigarh, India', 'fdsf', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:51:16'),
(7, 'YGHGGH', '9555714567', 'fp@yopmail.com', 'Dealership Enquiries', 'goa', 'Aurangabad, Maharashtra, India', 'test', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_downloads`
--

CREATE TABLE `tbl_downloads` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `release_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_downloads`
--

INSERT INTO `tbl_downloads` (`id`, `title`, `description`, `short_description`, `release_date`, `image`, `thumbnail`, `banner`, `mobile_banner`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Logos', 'tetet', 'tet', '2018-07-03', 'main_1533967783.jpg', 'thumb_1533967783.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 07:17:15', '2018-08-11 00:39:43', 'admin', 'admin'),
(2, 'Brand product communication', NULL, NULL, '0000-00-00', 'main_1532430452.jpg', 'thumb_1532430452.jpg', '', '', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-24 11:07:31', NULL, 'admin', NULL),
(3, 'Wallpapers', NULL, NULL, '0000-00-00', 'main_1532430522.jpg', 'thumb_1532430522.jpg', '', '', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-24 11:08:42', NULL, 'admin', NULL),
(4, 'Product Brochures', NULL, NULL, '0000-00-00', 'main_1532430548.jpg', 'thumb_1532430548.jpg', 'thumb_banner_1533300099.jpg', 'thumb_banner_1533300100.jpg', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-24 11:09:08', '2018-08-03 12:41:39', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_downloads_brand_images`
--

CREATE TABLE `tbl_downloads_brand_images` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_downloads_brand_images`
--

INSERT INTO `tbl_downloads_brand_images` (`id`, `brand_id`, `product_id`, `image`, `uploaded_image`, `thumbnail`, `is_active`, `insert_date`) VALUES
(7, 0, 1, '', '1_1534161687.jpg', 'thumb_1_1534161687.jpg', '1', '2018-08-13 12:01:27'),
(8, 0, 1, '', '1_1534162019.jpg', 'thumb_1_1534162019.jpg', '1', '2018-08-13 12:07:00'),
(9, 0, 1, '', '1_1534162020.jpg', 'thumb_1_1534162020.jpg', '1', '2018-08-13 12:07:00'),
(10, 0, 1, '', '1_1534162020.jpg', 'thumb_1_1534162020.jpg', '1', '2018-08-13 12:07:00'),
(11, 0, 1, '', '1_1534162020.jpg', 'thumb_1_1534162020.jpg', '1', '2018-08-13 12:07:00'),
(12, 0, 1, '', '1_1534162020.jpg', 'thumb_1_1534162020.jpg', '1', '2018-08-13 12:07:00'),
(13, 0, 1, '', '1_1534162020.jpg', 'thumb_1_1534162020.jpg', '1', '2018-08-13 12:07:00'),
(14, 0, 1, '', '1_1534162020.jpg', 'thumb_1_1534162020.jpg', '1', '2018-08-13 12:07:01'),
(15, 0, 1, '', '1_1534162021.jpg', 'thumb_1_1534162021.jpg', '1', '2018-08-13 12:07:01'),
(16, 0, 1, '', '1_1534162021.jpg', 'thumb_1_1534162021.jpg', '1', '2018-08-13 12:07:01'),
(17, 0, 1, '', '1_1534162021.jpg', 'thumb_1_1534162021.jpg', '1', '2018-08-13 12:07:01'),
(18, 0, 1, '', '1_1534162021.jpg', 'thumb_1_1534162021.jpg', '1', '2018-08-13 12:07:01'),
(19, 0, 1, '', '1_1534162021.jpg', 'thumb_1_1534162021.jpg', '1', '2018-08-13 12:07:01'),
(20, 0, 1, '', '1_1534162021.jpg', 'thumb_1_1534162021.jpg', '1', '2018-08-13 12:07:02'),
(21, 0, 1, '', '1_1534162022.jpg', 'thumb_1_1534162022.jpg', '1', '2018-08-13 12:07:02'),
(22, 0, 1, '', '1_1534162022.jpg', 'thumb_1_1534162022.jpg', '1', '2018-08-13 12:07:02'),
(23, 0, 1, '', '1_1534162022.jpg', 'thumb_1_1534162022.jpg', '1', '2018-08-13 12:07:02'),
(24, 0, 1, '', '1_1534162022.jpg', 'thumb_1_1534162022.jpg', '1', '2018-08-13 12:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_downloads_media`
--

CREATE TABLE `tbl_downloads_media` (
  `id` int(11) NOT NULL,
  `downloads_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(75) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `is_home` int(2) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_downloads_media`
--

INSERT INTO `tbl_downloads_media` (`id`, `downloads_id`, `title`, `type`, `image`, `thumbnail`, `is_home`, `youtube`, `name`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Logoss', 'image', 'main_1533968266.jpg', 'thumb_1533968266.jpg', 0, '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 07:30:34', '2018-08-11 00:47:46', 'admin', 'admin'),
(2, 1, 'test', 'image', 'main_1533968472.jpg', 'thumb_1533968472.jpg', 0, '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 07:34:55', '2018-08-11 00:51:12', 'admin', 'admin'),
(3, 1, 'BB Logos', 'image', 'main_1533968095.jpg', 'thumb_1533968095.jpg', 0, '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-24 07:35:17', '2018-08-11 00:44:55', 'admin', 'admin'),
(4, 1, 'Diamler', 'image', 'main_1533968566.jpg', 'thumb_1533968566.jpg', 0, '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 06:22:46', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_downloads_wallpapers`
--

CREATE TABLE `tbl_downloads_wallpapers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_downloads_wallpapers`
--

INSERT INTO `tbl_downloads_wallpapers` (`id`, `title`, `image`, `thumbnail`, `banner`, `mobile_banner`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Wallpapers 1', 'main_1532522427.jpg', 'thumb_1532522427.jpg', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-24 12:47:26', '2018-07-25 12:40:27', 'admin', 'admin'),
(2, 'Wallpapers 2', 'main_1532508783.jpg', 'thumb_1532508783.jpg', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-24 12:47:54', '2018-07-25 08:53:03', 'admin', 'admin'),
(3, 'Wallpaper 3', 'main_1532514216.jpg', 'thumb_1532514216.jpg', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 10:23:36', NULL, 'admin', NULL),
(4, 'Wallpaper4', 'main_1532516029.jpg', 'thumb_1532516029.jpg', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 10:53:49', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_downloads_wallpapers_images`
--

CREATE TABLE `tbl_downloads_wallpapers_images` (
  `id` int(11) NOT NULL,
  `wallpaper_id` int(11) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `dimension` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_downloads_wallpapers_images`
--

INSERT INTO `tbl_downloads_wallpapers_images` (`id`, `wallpaper_id`, `uploaded_image`, `dimension`, `is_active`, `insert_date`) VALUES
(11, 3, '3_480x640.jpg', '480x640', '1', '2018-07-25 10:26:47'),
(12, 3, '3_480x800.jpg', '480x800', '1', '2018-07-25 10:26:47'),
(13, 3, '3_1024x1024.jpg', '1024x1024', '1', '2018-07-25 10:26:47'),
(14, 3, '3_1280x960.jpg', '1280x960', '1', '2018-07-25 10:26:47'),
(15, 3, '3_1280x1280.jpg', '1280x1280', '1', '2018-07-25 10:26:47'),
(16, 3, '3_1366x768.jpg', '1366x768', '1', '2018-07-25 10:26:47'),
(17, 3, '3_1902x1080.jpg', '1902x1080', '1', '2018-07-25 10:26:47'),
(18, 3, '3_2048x1152.jpg', '2048x1152', '1', '2018-07-25 10:26:47'),
(19, 3, '3_2048x2048.jpg', '2048x2048', '1', '2018-07-25 10:26:47'),
(20, 4, '4_480x640.jpg', '480x640', '1', '2018-07-25 10:54:14'),
(21, 4, '4_480x800.jpg', '480x800', '1', '2018-07-25 10:54:14'),
(22, 4, '4_1024x1024.jpg', '1024x1024', '1', '2018-07-25 10:54:14'),
(23, 4, '4_1280x960.jpg', '1280x960', '1', '2018-07-25 10:54:14'),
(24, 4, '4_1280x1280.jpg', '1280x1280', '1', '2018-07-25 10:54:14'),
(25, 4, '4_1366x768.jpg', '1366x768', '1', '2018-07-25 10:54:14'),
(26, 4, '4_1902x1080.jpg', '1902x1080', '1', '2018-07-25 10:54:14'),
(27, 4, '4_2048x1152.jpg', '2048x1152', '1', '2018-07-25 10:54:14'),
(28, 4, '4_2048x2048.jpg', '2048x2048', '1', '2018-07-25 10:54:14'),
(29, 1, '1_480x640.jpg', '480x640', '1', '2018-07-25 12:40:47'),
(30, 1, '1_480x800.jpg', '480x800', '1', '2018-07-25 12:40:48'),
(31, 1, '1_1024x1024.jpg', '1024x1024', '1', '2018-07-25 12:40:48'),
(32, 1, '1_1280x960.jpg', '1280x960', '1', '2018-07-25 12:40:48'),
(33, 1, '1_1280x1280.jpg', '1280x1280', '1', '2018-07-25 12:40:48'),
(34, 1, '1_1366x768.jpg', '1366x768', '1', '2018-07-25 12:40:48'),
(35, 1, '1_1902x1080.jpg', '1902x1080', '1', '2018-07-25 12:40:48'),
(36, 1, '1_2048x1152.jpg', '2048x1152', '1', '2018-07-25 12:40:48'),
(37, 1, '1_2048x2048.jpg', '2048x2048', '1', '2018-07-25 12:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `name`, `address`, `mobile`, `email`, `message`, `is_delete`, `ip`, `agent`, `insert_date`) VALUES
(1, 'Farheen Parkar', 'Mumbai', '9865965633', 'fp@yopmail.com', 'fdfdfd', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 18:57:03'),
(2, 'Farheen Parkar', 'Mumbai', '9865965633', 'fp@yopmail.com', 'fdfdfs', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 18:57:40'),
(3, 'Farheen Parkar', 'Mumbai', '9865965633', 'fp@yopmail.com', 'dfdf', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 18:58:25'),
(4, 'Farheen Parkar', 'Mumbai', '9865965633', 'fp@yopmail.com', 'fsd', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 18:59:49'),
(5, 'Farheen Parkar', 'Mumbai', '9865965633', 'fp@yopmail.com', 'fsd', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 19:00:19'),
(6, 'faripakrar', 'Mumbai', '9989898989', 'farheen.parkar@bcwebwise.com', 'test test', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 13:22:07'),
(7, 'farheepa parkar', 'mumbai (wes)', '7987987498', 'farheen.parkar@bcwebwise.com', 'jflkdjl', '1', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 15:03:50'),
(8, 'YGHGGH', 'Mahim', '9989898989', 'fp@yopmail.com', 'fdsfs', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 16:13:14'),
(9, 'YGHGGH', 'HHHHG', '9989898989', 'fp@yopmail.com', 'trtr', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_highlights`
--

CREATE TABLE `tbl_highlights` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `release_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_highlights`
--

INSERT INTO `tbl_highlights` (`id`, `title`, `description`, `short_description`, `release_date`, `image`, `thumbnail`, `banner`, `mobile_banner`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'BharatBenz expands product portfolio with launch of all-new 16-tonne intercity coach', '', 'Daimler India Commercial Vehicles continues its product offensive to further expand the product portfolio of its BharatBenz brand. As per plan and as announced in 2015 with the start of the company\\\\\\\'s bus business, the all-new BharatBenz intercity coach completes the brand\\\\\\\'s bus line-up. Targeted at the growing segment of inter-city travel, the 16-tonne, 238 hp (175 kW) front-engine coach complements BharatBenz\\\\\\\' successful portfolio of school, staff and tourist buses in the 9-tonne category, which have been available since the end of 2015.', '2017-04-19', 'main_1533965286.jpg', 'thumb_1533965286.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-11 12:41:30', '2018-08-11 00:02:09', 'admin', 'admin'),
(2, 'BharatBenz \\\'High Five\\\' campaign marks count-down to fifth anniversary of brand\\\'s market launch', '', 'Running up to celebrate the fifth anniversary of its market launch, BharatBenz has embarked on its \\\\\\\\\\\\\\\"High Five with BharatBenz\\\\\\\\\\\\\\\" campaign that has a convoy of BharatBenz trucks from across the brand\\\\\\\\\\\\\\\'s portfolio travelling across the country for more than a month. On this journey of more than 8,000 km, the campaign will make more than 50 stops across19 major cities. It will reach out to thousands of stakeholders at dealership touchpoints, Dhabas and Transport nagar and allow them to gather a first-hand experience of best-in-class BharatBenz trucks.', '2017-08-22', 'main_1533965043.jpg', 'thumb_1533965043.jpg', 'thumb_banner_1533299513.jpg', 'thumb_banner_1533299513.jpg', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-11 12:48:28', '2018-08-10 23:59:48', 'admin', 'admin'),
(3, 'BharatBenz Launches New Generation of BS-IV Heavy Duty Trucks', '', 'Daimler India Commercial Vehicles celebrated the premiere of its all-new BharatBenz range of heavy-duty trucks. The new models are equipped with proven technology to meet the new BS-IV emission standards, and deliver significantly better fuel economy as well as lower maintenance costs. Thanks to a host of further innovative features, the all-new range takes productivity, efficiency and safety to the next level. It includes the three product families of haulage trucks, construction trucks, and tractors.', '2017-04-07', 'main_1533965599.jpg', 'thumb_1533965599.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:33:19', NULL, 'admin', NULL),
(4, 'Daimler Buses premiered at Busworld India exhibition, Bengaluru', '', 'Daimler Buses India celebrated a powerful premiere at the 7th Busworld India, the Indian edition of the world\\\'s leading exhibition for bus and coach. Busworld was held in Bengaluru from November 10th to 12th, 2016. Highlights of the first-time presence were the successful BharatBenz School Bus and BharatBenz Staff Bus. The multimedia installations provided visitors with insights into the global business of Daimler Buses including the visionary Mercedes-Benz Future Bus. A numerous examples of Daimler\\\'s technology and innovation leadership in todays\\\' buses and coaches were also displayed.', '2016-11-12', 'main_1533965722.jpg', 'thumb_1533965722.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:35:22', NULL, 'admin', NULL),
(5, 'BharatBenz brings festive cheer to truck drivers on Diwali', '', 'When the entire nation is in a festive mood on Diwali these drivers are still on roads, far away from their home and family, to bring smiles on others\\\' faces. Celebrating their contribution to everyday life, the BharatBenz connect campaign expressed gratitude towards the truck driver community on Diwali. Over 100 drivers were pleasantly surprised with BharatBenz goodie bags and sweets across Manesar (Haryana), Pune (Maharashtra), Gandhidham (Gujarat) and Oragadam (Tamil Nadu). Bringing Diwali to their cabins (home on road) the exteriors and the interiors of the truck were adorned with a festive look. The mobile phones of the drivers were recharged for INR 500 and calls were made to their families to make the moment memorable.', '2016-11-01', 'main_1533965799.jpg', 'thumb_1533965799.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:36:39', NULL, 'admin', NULL),
(6, 'BharatBenz sponsors Ice Road Truckers - India\\\'s Deadliest Roads on The History Channel', '', 'Gear up to see three celebrities driving BharatBenz 1214 medium duty trucks on the deadliest roads of the country from Manali to Kargil. The famous TV actress and anchor, Mandira Bedi, Indian wrestler and former Big Boss contestant, Sangram Singh and Fukrey actor, Varun Sharma will participate to deliver crucial army supplies to Siachin. The show will air on History TV18 from October 21, 2016. Watch and see the smoothness of BharatBenz trucks on the most challenging roads of India.', '2016-10-15', 'main_1533965905.jpg', 'thumb_1533965905.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:38:25', NULL, 'admin', NULL),
(7, 'BharatBenz sponsors Chennaiyin FC team in the Indian Super League', '', 'BharatBenz supports Chennaiyin FC team, the winner of Indian Super League season 2, to acknowledge the love and trust of its home customers. ISL is the most sought after football championship of the country. Watch how the Chennaiyin FC warriors rule out the other seven teams and win ISL once again.', '2016-09-26', 'main_1533965958.jpg', 'thumb_1533965958.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:39:18', NULL, 'admin', NULL),
(8, 'BharatBenz expands reach in northern India with Ghaziabad dealership', '', 'Ghaziabad - Daimler India Commercial Vehicles (DICV) in association with Espirit Trucking today inaugurated a new state-of-the-art BharatBenz dealership for its commercial vehicle brands in National Capital Region (NCR), Ghaziabad. The latest addition to DICV\\\'s domestic sales and service network will cater to BharatBenz trucks and buses as well as to Mercedes-Benz luxury buses. The opening of this new dealership which is owned and run by Espirit Trucking is an example of how DICV\\\'s dealer network continues to proliferate deeper into domestic market regions including tier II and tier III cities.', '2016-06-22', 'main_1533966018.jpg', 'thumb_1533966018.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:40:18', NULL, 'admin', NULL),
(9, 'Daimler India Commercial Vehicles celebrates partnership with BharatBenz vehicle financiers', '', 'Celebrating its partnerships with leading players from the financial sector, Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a wholly-owned subsidiary of Daimler AG, held its BharatBenz Financier Conclave in the financial hub of the country, Mumbai on April 20, 2016', '2016-04-21', 'main_1533966060.jpg', 'thumb_1533966060.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:41:00', NULL, 'admin', NULL),
(10, 'BharatBenz Launches MD IN-POWER, New Generation of Modern Medium Duty Trucks', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the wholly-owned subsidiary of Daimler AG, today launched its new generation of BharatBenz medium duty trucks dubbed MD IN-POWER. Featuring four new generation medium duty BharatBenz models (914R, 1214R, 1214RE and 1217C), the new trucks are launched each in a base and a premium variant and will now be commercially available starting today at BharatBenz dealerships across India.', '2016-02-02', 'main_1533966135.jpg', 'thumb_1533966135.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:42:15', NULL, 'admin', NULL),
(11, 'BharatBenz debuts at Excon with the broadest range of tippers', '', 'For the first time, Daimler India Commercial Vehicles Pvt. Ltd. (DICV) with its exclusive brand - BharatBenz debuted at the Excon exhibition 2015 in Bengaluru. Excon is the largest construction equipment exhibition in South Asia. BharatBenz displayed 11 trucks from its construction & mining range of products including India\\\'s first indigenized mining truck 3143 making an indelible mark at its first public fair in the country.', '2015-11-25', 'main_1533966206.jpg', 'thumb_1533966206.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:43:26', NULL, 'admin', NULL),
(12, 'Dhingra Trucking reaches sales milestone of 2000 BharatBenz trucks', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced the delivery milestone of 2,000 BharatBenz trucks by its Gurgaon based Dealership - Dhingra Trucking in less than 24 months from inception. The 3S (Sales, Service & Spare) dealership caters to Delhi NCR and Haryana region offering customers a holistic trucking experience. The increasing customer base in the region and growing sales is testimony to the overall efficiency, safety and low Total-cost of ownership of BharatBenz trucks.', '2015-09-15', 'main_1533966279.jpg', 'thumb_1533966279.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:44:39', NULL, 'admin', NULL),
(13, 'BharatBenz gets its whole range ready with Bharat Stage IV', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced that its entire range of above 9 to 49 tonne trucks in current portfolio will now be available in Bharat Stage IV variant across the country. With its new range of buses set for market launch in September 2015, DICV is also offering the Bharat Stage IV variant for the school and staff applications in the front engine 9T bus product range.', '2015-08-24', 'main_1533966329.jpg', 'thumb_1533966329.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:45:29', NULL, 'admin', NULL),
(14, 'Production milestone at Daimler India Commercial Vehicles: 20,000 trucks produced at Oragadam plant', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today crossed the milestone of the 20,000th locally produced trucks from its plant at Oragadam.\r\n\r\nOnly two and a half years after start of production of the first BharatBenz heavy-duty truck, the 20,000th locally produced truck, a BharatBenz 2523C tipper, has rolled off the production lines at DICVs plant in Oragadam. About half of these 20,000 trucks have been manufactured just within 2014, highlighting the rapid growth that the production site has recently experienced.', '2014-12-18', 'main_1533966445.jpg', 'thumb_1533966445.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:47:25', NULL, 'admin', NULL),
(15, 'BharatBenz inaugurates \\\"Arvind Trucking\\\" - a state-of-the-art trucking experience in Agra', '', '\\\'Arvind Trucking\\\' as the dealership is named will provide the customer a holistic trucking experience. Strategically located at NH-2, Tehsil - Etmadpur, Agra, Uttar Pradesh, the 3S facility is equipped with state-of-the-art service bays workshop and is spread over an area of 63000sq.ft. With highly trained manpower, sophisticated tools and advanced guided diagnostic systems, the facility will provide customers focused Sales consulting to ensure that BharatBenz customers receive all the attention under one roof.', '2014-07-16', 'main_1533966513.jpg', 'thumb_1533966513.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:48:33', NULL, 'admin', NULL),
(16, 'BharatBenz trucks ride on high gear; cross 10,000 units sale', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading commercial vehicle manufacturer Daimler AG, today, announced that it has crossed the sale of its 10,000th truck, since its market launch. Adding to this milestone, the company has also sold 1,000 units in a month, for the first time in March 2014. Sale of BharatBenz trucks grew over 67% in the 1st quarter of 2014 (2,203 units) as compared to the same period in 2013 (1,316 units) with a significant market share of 5.3% in addressable markets above 9T segment, while the overall truck market >9T decreased by another 22% in the same period, clearly indicating that BharatBenz is steadily becoming the brand of aspiration for many Indian truckers.', '2014-04-10', 'main_1533966605.jpg', 'thumb_1533966605.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:50:05', NULL, 'admin', NULL),
(17, 'Daimler India Commercial Vehicles lays foundation stone for its new Bus Plant in India', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading commercial vehicle manufacturer Daimler AG, today celebrated the foundation stone laying ceremony of its new Bus plant at the DICV\\\'s manufacturing facility located in Oragadam, near Chennai. Dr. Wolfgang Bernhard, Daimler AG Board member, responsible for Daimler Trucks & Buses, laid the foundation stone for the new bus plant in the presence of Mr. Hartmut Schick, Head of Daimler Buses and CEO EvoBus GmbH, Mr. Marc Llistosella, Managing Director & CEO, DICV, Mr. Markus Villinger, Head, Daimler Buses, India, a host of Indian and International media, Dealers, Suppliers and DICV personnel.', '2014-03-06', 'main_1533966754.jpg', 'thumb_1533966754.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:52:34', NULL, 'admin', NULL),
(18, 'Daimler India Commercial Vehicles receives ISO/TS 16949 : 2009 certification for Quality Management System', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading truck manufacturer Daimler AG, received the coveted TS16949:2009 certification for implementation and maintenance of Quality Management System in the area of Design & Development and Manufacture of commercial vehicles. Dr. K Murugan, Managing Director & CEO, ULDQS India, a wholly owned subsidiary of DQS Holding, GmbH, presented the certificate to Mr. Marc Llistosella, Managing Director and CEO, DICV at Daimler India\\\'s corporate office in Chennai.\r\n\r\nAffiliated to the International Automotive Task Force (IATF), the ISO/TS 16949 is one of the very important accreditations, globally recognized, specifically intended for the Automobile industry. The certification also covers critical parameters such as optimization of cost, time and resources.', '2014-02-17', 'main_1533966836.jpg', 'thumb_1533966836.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:53:56', NULL, 'admin', NULL),
(19, 'Daimler India Commercial Vehicles continues its planned approach by launching 3 Tractor-models and 1 Construction Mining model', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading truck manufacturer Daimler AG, today launched 4 new BharatBenz models (3 Tractor and 1 Construction-Mining) at an exclusive event conducted for Media in Mumbai.', '2014-02-10', 'main_1533966959.jpg', 'thumb_1533966959.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:55:59', NULL, 'admin', NULL),
(20, 'Daimler India Commercial Vehicles is the \\\'CV Maker of the Year\\\'', '', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading truck manufacturer Daimler AG, has been awarded the \\\'CV Maker of the Year\\\' award by Apollo-CV awards. It also won for its BharatBenz trucks 3128 & 1217 the \\\'HCV Cargo Carrier (above 25 tonnes GVW)\\\' & \\\'CV Innovation of the Year\\\' awards respectively.', '2014-02-03', 'main_1533967020.jpg', 'thumb_1533967020.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:57:00', NULL, 'admin', NULL),
(21, 'BharatBenz triggers a powerful change in Indian Trucking', '', 'Daimler India Commercial Vehicles Pvt. Ltd (DICV), a wholly owned subsidiary of Daimler AG, today celebrates the completion of 1 year on Indian roads of its BharatBenz trucks. DICV launched the BharatBenz range of Heavy-duty trucks on 26 September 2012, at Mumbai.\r\n\r\nEver since the launch of its trucks, the promise of superior value to customers has been constantly delivered and BharatBenz has introduced \\\"industry-first value offers\\\" along with its trucks. This has not only led to renew the belief in Indian Trucking by our customers but has actually driven other players to follow us in offering new features and services than ever before. The end beneficiary of this change is the Indian trucker. BharatBenz is proud to have triggered such a positive change and will continue to do so in future.As on date there are more than 5000 Medium & Heavy-duty BharatBenz trucks on Indian roads delivering superior value which customers have longed for over a long time.', '2013-09-26', 'main_1533967098.jpg', 'thumb_1533967098.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-11 05:58:18', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_highlight_media`
--

CREATE TABLE `tbl_highlight_media` (
  `id` int(11) NOT NULL,
  `highlight_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(75) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `is_home` int(2) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_highlight_media`
--

INSERT INTO `tbl_highlight_media` (`id`, `highlight_id`, `title`, `type`, `image`, `thumbnail`, `is_home`, `youtube`, `name`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'test', 'image', 'main_1532349753.jpg', 'thumb_1532349753.jpg', 0, '', '', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 12:42:33', '2018-07-24 06:02:57', 'admin', 'admin'),
(2, 1, 'test2', 'video', '', '', 0, 'https://www.youtube.com/watch?v=X-vfFovN5Dw', '', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 12:43:40', '2018-07-24 06:03:31', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_history`
--

INSERT INTO `tbl_history` (`id`, `title`, `description`, `short_description`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'A Unique Heritage', 'A Unique Heritage &nbsp; A Unique Heritage &nbsp; &nbsp; &nbsp; dfs fds fds f', 'A Unique Heritage', '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '1', '1', '2018-06-21 09:59:36', '2018-06-21 13:14:29', 'admin', 'admin'),
(2, 'test', 'VCXVCX', 'VXV', '', '', '', '', '10.10.10.198', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-06 09:33:38', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history_images`
--

CREATE TABLE `tbl_history_images` (
  `id` int(11) NOT NULL,
  `history_id` int(11) NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_history_images`
--

INSERT INTO `tbl_history_images` (`id`, `history_id`, `category_type`, `uploaded_image`, `image`, `thumb_image`, `insert_date`) VALUES
(1, 1, '', '11529586869.jpg', 'main_11529586869.jpg', 'thumb_11529586869.jpg', '2018-06-21 13:14:29'),
(2, 1, '', '21529586869.jpg', 'main_21529586869.jpg', 'thumb_21529586869.jpg', '2018-06-21 13:14:29'),
(3, 1, '', '31529586869.jpg', 'main_31529586869.jpg', 'thumb_31529586869.jpg', '2018-06-21 13:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homebanner`
--

CREATE TABLE `tbl_homebanner` (
  `id` int(11) NOT NULL,
  `title1` text,
  `title2` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `image1` text NOT NULL,
  `thumbnail1` text NOT NULL,
  `image2` text NOT NULL,
  `thumbnail2` text NOT NULL,
  `externalurl` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_homebanner`
--

INSERT INTO `tbl_homebanner` (`id`, `title1`, `title2`, `description`, `image`, `thumbnail`, `image1`, `thumbnail1`, `image2`, `thumbnail2`, `externalurl`, `sortorder`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Caring for Bharat.', 'Powered by Benz', '<p>Bharat Benz Trucks</p>\r\n', 'main_1534159408.jpg', 'thumb_1534159408.jpg', 'main_1534159408.jpg', 'thumb_1534159408.jpg', 'main_1534159408.jpg', 'thumb_1534159408.jpg', '', 0, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-06 08:45:01', '2018-08-13 23:53:53', 'admin', 'admin'),
(2, 'The service', 'That looks ahead for you', '<p>Bus&nbsp;</p>\r\n', 'main_1534159380.jpg', 'thumb_1534159380.jpg', 'main_1534159381.jpg', 'thumb_1534159381.jpg', 'main_1534159381.jpg', 'thumb_1534159381.jpg', 'https://bharatbenz.com/beta/buses', 0, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-06 08:53:03', '2018-08-13 06:00:45', 'admin', 'admin'),
(3, 'BEST IN CLASS BS-IV TRUCKS', 'Bharat Benz Genuine Parts', '', 'main_1531214127.jpg', 'thumb_1531214127.jpg', 'main_1531214128.jpg', 'thumb_1531214128.jpg', 'main_1531214128.jpg', 'thumb_1531214128.jpg', '', 0, '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-10 09:15:27', NULL, 'admin', NULL),
(4, 'Caring For Bharat', 'Powered By Benz', '', 'main_1534159245.jpg', 'thumb_1534159245.jpg', 'main_1534159245.jpg', 'thumb_1534159245.jpg', 'main_1534159245.jpg', 'thumb_1534159245.jpg', 'https://bharatbenz.com/beta/buses', 0, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 13:57:47', '2018-08-13 13:08:40', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media_query`
--

CREATE TABLE `tbl_media_query` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enquiry_type` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE `tbl_models` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `sub_app_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `is_delete` enum('1','0') NOT NULL,
  `ip` varchar(255) NOT NULL,
  `agent` text NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `added_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`id`, `app_id`, `sub_app_id`, `product_id`, `image`, `thumbnail`, `is_active`, `is_delete`, `ip`, `agent`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 1, 1, 'main_1531204663.jpg', 'thumb_1531204663.jpg', '1', '0', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-10 07:27:49', '0000-00-00 00:00:00', 'admin', ''),
(2, 1, 1, 2, 'main_1531207217.jpg', 'thumb_1531207217.jpg', '1', '0', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-10 07:29:40', '2018-07-10 07:20:17', 'admin', 'admin'),
(3, 1, 1, 2, 'main_1531286836.jpg', 'thumb_1531286836.jpg', '1', '1', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-11 05:27:16', '2018-07-11 05:27:16', 'admin', 'admin'),
(4, 1, 2, 2, 'main_1531286824.jpg', 'thumb_1531286824.jpg', '1', '1', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-11 05:27:04', '2018-07-11 05:27:04', 'admin', 'admin'),
(5, 2, 4, 2, 'main_1531286811.jpg', 'thumb_1531286811.jpg', '1', '1', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-11 05:26:52', '2018-07-11 05:26:51', 'admin', 'admin'),
(6, 1, 3, 2, 'main_1531286513.jpg', 'thumb_1531286513.jpg', '1', '1', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-11 05:21:53', '2018-07-11 05:21:53', 'admin', 'admin'),
(8, 3, 5, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 10:59:44', '0000-00-00 00:00:00', 'admin', ''),
(9, 3, 5, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:00:10', '0000-00-00 00:00:00', 'admin', ''),
(10, 3, 5, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:00:28', '0000-00-00 00:00:00', 'admin', ''),
(11, 3, 5, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:00:45', '0000-00-00 00:00:00', 'admin', ''),
(12, 3, 6, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:01:03', '0000-00-00 00:00:00', 'admin', ''),
(13, 3, 6, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:01:24', '0000-00-00 00:00:00', 'admin', ''),
(14, 3, 6, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:01:44', '0000-00-00 00:00:00', 'admin', ''),
(15, 4, 7, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:04:33', '0000-00-00 00:00:00', 'admin', ''),
(16, 4, 7, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:04:46', '0000-00-00 00:00:00', 'admin', ''),
(17, 4, 8, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:05:01', '0000-00-00 00:00:00', 'admin', ''),
(18, 4, 8, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:05:31', '0000-00-00 00:00:00', 'admin', ''),
(19, 4, 8, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:05:43', '0000-00-00 00:00:00', 'admin', ''),
(20, 4, 9, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:06:34', '0000-00-00 00:00:00', 'admin', ''),
(21, 4, 9, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:06:47', '0000-00-00 00:00:00', 'admin', ''),
(22, 4, 9, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:07:00', '0000-00-00 00:00:00', 'admin', ''),
(23, 4, 9, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:07:09', '0000-00-00 00:00:00', 'admin', ''),
(24, 4, 10, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:07:22', '0000-00-00 00:00:00', 'admin', ''),
(25, 4, 10, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:07:40', '0000-00-00 00:00:00', 'admin', ''),
(26, 4, 10, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:07:53', '0000-00-00 00:00:00', 'admin', ''),
(27, 5, 11, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:16:49', '0000-00-00 00:00:00', 'admin', ''),
(28, 5, 11, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:17:12', '0000-00-00 00:00:00', 'admin', ''),
(29, 5, 11, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:17:41', '0000-00-00 00:00:00', 'admin', ''),
(30, 5, 11, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:17:52', '0000-00-00 00:00:00', 'admin', ''),
(31, 5, 12, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:18:49', '0000-00-00 00:00:00', 'admin', ''),
(32, 5, 12, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:19:55', '0000-00-00 00:00:00', 'admin', ''),
(33, 5, 12, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:20:18', '0000-00-00 00:00:00', 'admin', ''),
(34, 5, 12, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:20:32', '0000-00-00 00:00:00', 'admin', ''),
(35, 5, 12, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:20:44', '0000-00-00 00:00:00', 'admin', ''),
(36, 5, 13, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:21:15', '0000-00-00 00:00:00', 'admin', ''),
(37, 5, 13, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:21:20', '0000-00-00 00:00:00', 'admin', ''),
(38, 5, 13, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:21:33', '0000-00-00 00:00:00', 'admin', ''),
(39, 5, 13, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:21:43', '0000-00-00 00:00:00', 'admin', ''),
(40, 5, 13, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:22:03', '0000-00-00 00:00:00', 'admin', ''),
(41, 5, 14, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:22:18', '0000-00-00 00:00:00', 'admin', ''),
(42, 5, 14, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:22:32', '0000-00-00 00:00:00', 'admin', ''),
(43, 5, 14, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:22:46', '0000-00-00 00:00:00', 'admin', ''),
(44, 5, 14, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:23:05', '0000-00-00 00:00:00', 'admin', ''),
(45, 5, 15, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:23:19', '0000-00-00 00:00:00', 'admin', ''),
(46, 5, 15, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:23:31', '0000-00-00 00:00:00', 'admin', ''),
(47, 5, 15, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:23:47', '0000-00-00 00:00:00', 'admin', ''),
(48, 5, 15, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:23:58', '0000-00-00 00:00:00', 'admin', ''),
(49, 5, 15, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:24:11', '0000-00-00 00:00:00', 'admin', ''),
(50, 5, 16, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:24:41', '0000-00-00 00:00:00', 'admin', ''),
(51, 5, 16, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:24:51', '0000-00-00 00:00:00', 'admin', ''),
(52, 5, 16, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:25:09', '0000-00-00 00:00:00', 'admin', ''),
(53, 5, 16, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:25:20', '0000-00-00 00:00:00', 'admin', ''),
(54, 6, 17, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:27:57', '0000-00-00 00:00:00', 'admin', ''),
(55, 6, 17, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:28:07', '0000-00-00 00:00:00', 'admin', ''),
(56, 6, 17, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:28:17', '0000-00-00 00:00:00', 'admin', ''),
(57, 6, 18, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:28:30', '0000-00-00 00:00:00', 'admin', ''),
(58, 6, 18, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:28:48', '0000-00-00 00:00:00', 'admin', ''),
(59, 6, 18, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:28:59', '0000-00-00 00:00:00', 'admin', ''),
(60, 7, 19, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:29:21', '0000-00-00 00:00:00', 'admin', ''),
(61, 7, 19, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:29:30', '0000-00-00 00:00:00', 'admin', ''),
(62, 7, 19, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:29:44', '0000-00-00 00:00:00', 'admin', ''),
(63, 7, 20, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:29:55', '0000-00-00 00:00:00', 'admin', ''),
(64, 7, 20, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:30:09', '0000-00-00 00:00:00', 'admin', ''),
(65, 7, 20, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:30:29', '0000-00-00 00:00:00', 'admin', ''),
(66, 8, 25, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:37:39', '0000-00-00 00:00:00', 'admin', ''),
(67, 8, 25, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:37:49', '0000-00-00 00:00:00', 'admin', ''),
(68, 8, 25, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:38:03', '0000-00-00 00:00:00', 'admin', ''),
(69, 8, 25, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:38:15', '0000-00-00 00:00:00', 'admin', ''),
(70, 8, 25, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:38:26', '0000-00-00 00:00:00', 'admin', ''),
(71, 9, 21, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:38:41', '0000-00-00 00:00:00', 'admin', ''),
(72, 9, 22, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:39:01', '0000-00-00 00:00:00', 'admin', ''),
(73, 9, 22, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:39:09', '0000-00-00 00:00:00', 'admin', ''),
(74, 9, 23, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:39:26', '0000-00-00 00:00:00', 'admin', ''),
(75, 9, 23, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:39:40', '0000-00-00 00:00:00', 'admin', ''),
(76, 9, 23, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:39:53', '0000-00-00 00:00:00', 'admin', ''),
(77, 9, 24, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 11:40:08', '0000-00-00 00:00:00', 'admin', ''),
(78, 10, 26, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:19:56', '0000-00-00 00:00:00', 'admin', ''),
(79, 10, 26, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:21:06', '0000-00-00 00:00:00', 'admin', ''),
(80, 10, 26, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:21:31', '0000-00-00 00:00:00', 'admin', ''),
(81, 10, 26, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:22:14', '0000-00-00 00:00:00', 'admin', ''),
(82, 10, 26, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:23:01', '0000-00-00 00:00:00', 'admin', ''),
(83, 10, 27, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:25:34', '0000-00-00 00:00:00', 'admin', ''),
(84, 10, 27, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:26:20', '0000-00-00 00:00:00', 'admin', ''),
(85, 10, 28, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:27:37', '0000-00-00 00:00:00', 'admin', ''),
(86, 10, 28, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:28:06', '0000-00-00 00:00:00', 'admin', ''),
(87, 10, 28, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:28:33', '0000-00-00 00:00:00', 'admin', ''),
(88, 10, 28, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:29:06', '0000-00-00 00:00:00', 'admin', ''),
(89, 10, 28, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:29:36', '0000-00-00 00:00:00', 'admin', ''),
(90, 11, 29, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:31:26', '0000-00-00 00:00:00', 'admin', ''),
(91, 11, 29, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:32:03', '0000-00-00 00:00:00', 'admin', ''),
(92, 11, 29, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:32:22', '0000-00-00 00:00:00', 'admin', ''),
(93, 11, 29, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:32:57', '0000-00-00 00:00:00', 'admin', ''),
(94, 11, 29, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:33:23', '0000-00-00 00:00:00', 'admin', ''),
(95, 11, 30, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:36:49', '0000-00-00 00:00:00', 'admin', ''),
(96, 11, 30, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:41:50', '2018-07-25 13:41:50', 'admin', 'admin'),
(97, 11, 30, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:38:09', '0000-00-00 00:00:00', 'admin', ''),
(98, 12, 31, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:40:17', '0000-00-00 00:00:00', 'admin', ''),
(99, 12, 31, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:41:03', '0000-00-00 00:00:00', 'admin', ''),
(100, 12, 31, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:43:56', '0000-00-00 00:00:00', 'admin', ''),
(101, 12, 32, 1, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:49:35', '2018-07-25 13:49:35', 'admin', 'admin'),
(102, 12, 32, 16, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:49:10', '2018-07-25 13:49:10', 'admin', 'admin'),
(103, 12, 32, 19, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:48:46', '0000-00-00 00:00:00', 'admin', ''),
(104, 12, 33, 1, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:50:08', '0000-00-00 00:00:00', 'admin', ''),
(105, 12, 33, 15, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:50:24', '0000-00-00 00:00:00', 'admin', ''),
(106, 12, 33, 16, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:50:42', '0000-00-00 00:00:00', 'admin', ''),
(107, 12, 33, 17, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:51:28', '0000-00-00 00:00:00', 'admin', ''),
(108, 12, 33, 19, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:51:55', '0000-00-00 00:00:00', 'admin', ''),
(109, 12, 34, 18, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:53:40', '0000-00-00 00:00:00', 'admin', ''),
(110, 12, 34, 24, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:06:41', '2018-07-26 06:06:41', 'admin', 'admin'),
(111, 12, 35, 16, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:54:44', '0000-00-00 00:00:00', 'admin', ''),
(112, 12, 35, 17, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:55:30', '0000-00-00 00:00:00', 'admin', ''),
(113, 12, 35, 19, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 13:56:22', '0000-00-00 00:00:00', 'admin', ''),
(114, 13, 36, 18, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:52:36', '0000-00-00 00:00:00', 'admin', ''),
(115, 13, 36, 24, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:06:24', '2018-07-26 06:06:24', 'admin', 'admin'),
(116, 13, 37, 17, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:53:39', '0000-00-00 00:00:00', 'admin', ''),
(117, 13, 37, 18, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:53:54', '0000-00-00 00:00:00', 'admin', ''),
(118, 13, 37, 19, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:54:07', '0000-00-00 00:00:00', 'admin', ''),
(119, 13, 38, 16, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:54:27', '0000-00-00 00:00:00', 'admin', ''),
(120, 13, 37, 17, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:54:44', '0000-00-00 00:00:00', 'admin', ''),
(121, 13, 37, 24, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:05:51', '2018-07-26 06:05:51', 'admin', 'admin'),
(122, 13, 37, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:55:14', '0000-00-00 00:00:00', 'admin', ''),
(123, 13, 37, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:55:25', '0000-00-00 00:00:00', 'admin', ''),
(124, 13, 39, 19, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:56:02', '0000-00-00 00:00:00', 'admin', ''),
(125, 13, 40, 18, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:56:25', '0000-00-00 00:00:00', 'admin', ''),
(126, 13, 40, 24, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:05:22', '2018-07-26 06:05:22', 'admin', 'admin'),
(127, 13, 41, 24, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:05:08', '2018-07-26 06:05:08', 'admin', 'admin'),
(128, 14, 42, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:57:59', '0000-00-00 00:00:00', 'admin', ''),
(129, 14, 42, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:58:10', '0000-00-00 00:00:00', 'admin', ''),
(130, 14, 42, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:58:22', '0000-00-00 00:00:00', 'admin', ''),
(131, 14, 43, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:58:39', '0000-00-00 00:00:00', 'admin', ''),
(132, 14, 44, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:01:13', '2018-07-26 06:01:13', 'admin', 'admin'),
(133, 14, 44, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:01:04', '2018-07-26 06:01:04', 'admin', 'admin'),
(134, 14, 45, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 05:59:30', '0000-00-00 00:00:00', 'admin', ''),
(135, 14, 44, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:01:54', '0000-00-00 00:00:00', 'admin', ''),
(136, 15, 46, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:03:47', '0000-00-00 00:00:00', 'admin', ''),
(137, 15, 46, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:03:54', '0000-00-00 00:00:00', 'admin', ''),
(138, 15, 46, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:04:46', '0000-00-00 00:00:00', 'admin', ''),
(139, 15, 46, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:07:26', '0000-00-00 00:00:00', 'admin', ''),
(140, 15, 46, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:07:44', '0000-00-00 00:00:00', 'admin', ''),
(141, 15, 46, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:07:54', '0000-00-00 00:00:00', 'admin', ''),
(142, 15, 46, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:08:12', '0000-00-00 00:00:00', 'admin', ''),
(143, 15, 46, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:08:28', '0000-00-00 00:00:00', 'admin', ''),
(144, 16, 47, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:10:38', '0000-00-00 00:00:00', 'admin', ''),
(145, 16, 47, 23, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:10:51', '0000-00-00 00:00:00', 'admin', ''),
(146, 16, 47, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:11:00', '0000-00-00 00:00:00', 'admin', ''),
(147, 16, 47, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:11:09', '0000-00-00 00:00:00', 'admin', ''),
(148, 16, 48, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:11:21', '0000-00-00 00:00:00', 'admin', ''),
(149, 16, 48, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:11:40', '0000-00-00 00:00:00', 'admin', ''),
(150, 16, 48, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:11:58', '0000-00-00 00:00:00', 'admin', ''),
(151, 16, 48, 13, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:12:14', '0000-00-00 00:00:00', 'admin', ''),
(152, 16, 48, 14, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:12:27', '0000-00-00 00:00:00', 'admin', ''),
(153, 16, 49, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:12:44', '0000-00-00 00:00:00', 'admin', ''),
(154, 16, 49, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:13:02', '0000-00-00 00:00:00', 'admin', ''),
(155, 16, 49, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:13:15', '0000-00-00 00:00:00', 'admin', ''),
(156, 16, 49, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:13:35', '0000-00-00 00:00:00', 'admin', ''),
(157, 16, 50, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:13:50', '0000-00-00 00:00:00', 'admin', ''),
(158, 16, 50, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:14:00', '0000-00-00 00:00:00', 'admin', ''),
(159, 16, 50, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:14:13', '0000-00-00 00:00:00', 'admin', ''),
(160, 17, 51, 12, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:16:09', '0000-00-00 00:00:00', 'admin', ''),
(161, 17, 51, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:16:25', '0000-00-00 00:00:00', 'admin', ''),
(162, 17, 51, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:16:37', '0000-00-00 00:00:00', 'admin', ''),
(163, 17, 51, 22, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:16:46', '0000-00-00 00:00:00', 'admin', ''),
(164, 17, 52, 8, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:17:01', '0000-00-00 00:00:00', 'admin', ''),
(165, 17, 52, 21, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:17:16', '0000-00-00 00:00:00', 'admin', ''),
(166, 17, 52, 4, '', '', '1', '1', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 06:17:27', '0000-00-00 00:00:00', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page_type` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `mobile_banner` varchar(255) NOT NULL,
  `short_description` text,
  `description` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `ip` varchar(255) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `title`, `page_type`, `banner`, `mobile_banner`, `short_description`, `description`, `is_active`, `is_delete`, `meta_title`, `meta_keywords`, `meta_description`, `ip`, `agent`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Finance And Insurance', '', 'thumb_banner_1533912955.jpg', 'thumb_banner_1533912955.jpg', 'An integral part of the BharatBenz trucking experience', '<section id=\\\"fn_holder\\\">\r\n				\r\n			  <div class=\\\"container\\\">\r\n				  <div class=\\\"fn_blurb_det\\\">\r\n					<h2>BharatBenz Financial - financing that works for you!</h2>\r\n					<p>BharatBenz Financial is a partner who will be with you throughout your lifetime of your vehicle and beyond. Our unparalleled experience in the trucking industry, combined with our position as an exclusive commercial finance provider makes BharatBenz financial the smart choice for anyone looking to run their business more efficiently and profitably!\r\n</p>\r\n					<p>We established BharatBenz Financial to serve as one of the specialized brands, serving both dealers and customers of the Daimler Group. As the only dedicated financier for BharatBenz vehicles, BharatBenz Financial specializes in providing a range of tailored finance and insurance options for all BharatBenz customers. Along with our industry knowledge, this means we are able to offer some of the most flexible and competitive solutions around.\r\n</p>\r\n<br>				  </div>\r\n			  </div>\r\n		\r\n			\r\n      </section>\r\n      <section id=\\\"insurance_hld\\\" class=\\\"bg_black\\\">\r\n        <div class=\\\"container\\\">\r\n            <div class=\\\"fn_blurb_con clearfix\\\">\r\n              <div class=\\\"fn_blurb_pic right_pic f-right\\\">\r\n                <img src=\\\"assets/images/insurance-banner.png\\\" alt=\\\"\\\" />\r\n              </div>\r\n  \r\n              <div class=\\\"fn_blurb_det\\\">\r\n                <h2>BharatBenz Insurance – Adding assurance to insurance!</h2>\r\n                <p>BharatBenz Insurance is India’s 1st branded commercial vehicle insurance programme and it has been at the forefront of developing unique offerings that come with the highest standard of quality to every BharatBenz vehicle owner. </p>\r\n                <p>Our insurance covers not only give your BharatBenz vehicle the protection it deserves, but also let you enjoy customized and comprehensive benefits. Covers such as ‘depreciation shield’ and ‘additional towing’ in addition to the comprehensive motor insurance cover as our standard product. We strive to deliver superior services and have added specific value additions to further our mission. This includes:\r\n</p>\r\n             <ul style=\\\"\r\n    color: white;\r\n    font-size: 19px;\r\n\\\"><li>Guaranteed servicing of vehicles at all BharatBenz dealerships and ‘Cashless’ claim settlement</li>\r\n<li>Assured quality of repair\r\n\r\n</li>\r\n<li>Transparency in claims servicing\r\n\r\n</li>\r\n<li>24X7 access to BharatBenz Financial Call Centre\r\n</li></ul>\r\n                <a href=\\\"contact-us\\\" class=\\\"sim-button button_effect\\\"><span>Know More</span></a>\r\n              </div>\r\n            </div>\r\n        </div>\r\n      </section>\r\n\r\n      <section class=\\\"btn_strip\\\">\r\n        <div class=\\\"container\\\">\r\n            <p>Contact us for additional details about the BharatBenz Financing and Insurance options.</p>\r\n            <a href=\\\"contact-us\\\" class=\\\"sim-button button_effect\\\"><span>Contact Us</span></a>\r\n        </div>\r\n        \r\n       \r\n      </section>\r\n\r\n<style>li {\r\n    line-height: 29px;\r\n}</style>', '1', '1', 'Commerical Vehicle Finance, Loan and Insurance - BharatBenz Finance & Insurance - BharatBenz', 'Commerical Vehicle Finance, Loan and Insurance - BharatBenz Finance & Insurance', 'Looking for Commerical Vehicle Finance, Loan and Insurance options? Bharatbenz Financial & Insurance provides specially tailored financing & insurance options as well as leasing solutions to all BharatBenz customers', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-07-16 06:29:09', '2018-08-10 09:25:55', 'admin', 'admin'),
(2, 'ProServ', '', 'thumb_banner_1533913025.jpg', 'thumb_banner_1533913025.jpg', 'Service That Looks Ahead For You', '<section id=\\\"gp_holder\\\">\r\n        <div class=\\\"container\\\">\r\n           <p>\r\nProServ is designed to suit the specific needs of your business. Its speedy, effective, reliable, ensuring that you only need to manage your business & concentrate on expanding it, leaving everything else about the truck to us.\r\n</p>\r\n\r\n         \r\n<div>\r\n\r\n         \r\n       \r\n          \r\n            <h2 id=\\\"gp_availability\\\" class=\\\"myPet\\\">Network Reach\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right gp_availability_open clearfix\\\">\r\n              <div class=\\\"imgPan f-left marg_right \\\">\r\n                  <img src=\\\"images/network_reach.jpg\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Network Reach</h2>\r\n                <p>To ensure that all our services and facilities are easily available to you, we have created a wide network of dealerships, set up across 141 strategic locations, across India. So no matter where you are, we will reach you in less than 4 hours.</p>\r\n               \r\n                \r\n  \r\n              </div>\r\n            </div>\r\n\r\n            <h2 id=\\\"gp_affordability\\\" class=\\\"myPet\\\">Well-Trained Service Staff\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n          <div class=\\\"gp_det_blurb gp_affordability_open clearfix\\\">\r\n                <div class=\\\"imgPan f-right marg_left\\\">\r\n                    <img src=\\\"assets/images/ProServ-Page.png\\\" alt=\\\"\\\">\r\n                </div>\r\n                <div class=\\\"gp_content\\\">\r\n                  <h2>Well-Trained Service Staff</h2>\r\n                  <p>We are extremely particular about the quality of service we offer to our customers. Our fully trained technicians are here to offer all round scheduled services to complex aggregate repairs with ease. </p>\r\n    \r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n<h2 id=\\\"special_toolsEquip\\\" class=\\\"myPet\\\">Digital Technical Information Platform\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right special_toolsEquip_open clearfix\\\">\r\n              <div class=\\\"imgPan f-left marg_right \\\">\r\n                   <img src=\\\"assets/images/ProServ-Page-2.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Digital Technical Information Platform</h2>\r\n                <p>After Sales Central (ASCENT) is a touch-enabled, animated multilingual single interface system available at our workshops across India which provides details about the functioning of every aggregate used in a BharatBenz truck. This is to ensure that our service technicians always have ready access to the necessary information and can rectify issues accurately.</p>\r\n               \r\n                \r\n  \r\n              </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n<h2 id=\\\"advance_diagnsystem\\\" class=\\\"myPet\\\">Special Tools & Equipment\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right advance_diagnsystem_open clearfix\\\">\r\n              <div class=\\\"imgPan f-right marg_left \\\">\r\n                  <img src=\\\"assets/images/ProServ-Page-4.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Special Tools & Equipment</h2>\r\n                <p>We use specialized tools for tricky repairs and special equipment to carry aggregates repair across all BharatBenz dealerships. All this, just to ensure your trucks are handled with the best of care and the latest in auto repair technology.</p>\r\n               \r\n                \r\n  \r\n              </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n<h2 id=\\\"comprehensive_cussuport\\\" class=\\\"myPet\\\">High Productive Express Bays & Speed fix\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n          <div class=\\\"gp_det_blurb comprehensive_cussuport_open clearfix\\\">\r\n                <div class=\\\"imgPan f-left marg_right\\\">\r\n                     <img src=\\\"assets/images/ProServ-Page-5.png\\\" alt=\\\"\\\">\r\n                </div>\r\n                <div class=\\\"gp_content\\\">\r\n                  <h2>High Productive Express Bays & Speed fix</h2>\r\n                  <p>Since your trucks are almost always on the move and have little time to spare, our exclusive express bays are there for their immediate servicing needs. These bays are equipped with specialized tools & equipment’s allowing us to service vehicle faster, so that your driver along with your truck will face no delays & is back on road in no time. Speed fix further enhances turnaround time for minor repairs.</p>\r\n    \r\n                </div>\r\n            </div>\r\n\r\n\r\n<h2 id=\\\"advance_diagnsystem\\\" class=\\\"myPet\\\">Onsite Services\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right advance_diagnsystem_open clearfix\\\">\r\n              <div class=\\\"imgPan f-right marg_left \\\">\r\n                  <img src=\\\"assets/images/ProServ-Page-6.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Onsite Services</h2>\r\n                <p>To enable Higher uptime we offer you Customizable service options at your doorstep based on your application ie. Container workshops, Dial – a – Service, Pool Service.</p>\r\n               \r\n                \r\n  \r\n              </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n<h2 id=\\\"comprehensive_cussuport\\\" class=\\\"myPet\\\">Maintenance Pack\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n          <div class=\\\"gp_det_blurb comprehensive_cussuport_open clearfix\\\">\r\n                <div class=\\\"imgPan f-left marg_right\\\">\r\n                     <img src=\\\"assets/images/ProServ-Page-7.png\\\" alt=\\\"\\\">\r\n                </div>\r\n                <div class=\\\"gp_content\\\">\r\n                  <h2>Maintenance Pack</h2>\r\n                  <p>BharatBenz offers a widest choice of service packages for your vehicles to ensure all maintenance related needs and hassles are well-taken care of. These can be availed at any of our authorized dealerships.  This is customizable for all models across applications for longest duration with exclusive financing facility and flexible payment options.</p>\r\n    \r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n<h2 id=\\\"advance_diagnsystem\\\" class=\\\"myPet\\\">Extended Warranty\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right advance_diagnsystem_open clearfix\\\">\r\n              <div class=\\\"imgPan f-right marg_left \\\">\r\n                  <img src=\\\"assets/images/ProServ-Page-8.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Extended Warranty</h2>\r\n                <p>Extended Warranty is a highly cost effective and powerful product to further reinforce the Standard Warranty. It covers your entire *Drive line i.e. Engine, Transmission & Rear Axle for a longer duration and enhances the unmatched durability of BharatBenz vehicle.</p>\r\n               \r\n                \r\n  \r\n              </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n<h2 id=\\\"comprehensive_cussuport\\\" class=\\\"myPet\\\">Advanced Diagnostic System\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n          <div class=\\\"gp_det_blurb comprehensive_cussuport_open clearfix\\\">\r\n                <div class=\\\"imgPan f-left marg_right\\\">\r\n                     <img src=\\\"assets/images/ProServ-Page-9.png\\\" alt=\\\"\\\">\r\n                </div>\r\n                <div class=\\\"gp_content\\\">\r\n                  <h2>Advanced Diagnostic System</h2>\r\n                  <p>SDiagnosis is the heart and soul of any repair process. Our engineers at BharatBenz have developed an advance diagnostic system aided with troubleshooting which enables us to address problems quickly and effectively, also provides information on problems that may arise in the future. As a customer you will be able to eliminate unforeseen problems and are ensured complete ease of operations.</p>\r\n    \r\n                </div>\r\n            </div>\r\n\r\n\r\n<h2 id=\\\"advance_diagnsystem\\\" class=\\\"myPet\\\">ProServ App\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right advance_diagnsystem_open clearfix\\\">\r\n              <div class=\\\"imgPan f-right marg_left \\\">\r\n                  <img src=\\\"assets/images/ProServ-Page-10.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>ProServ App</h2>\r\n                <p>ProServ now in the palm of your hand at your ease and convenience which provides you all Comprehensive products specification & service support information at the tip of your finger.</p>\r\n               \r\n                \r\n  \r\n              </div>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n<h2 id=\\\"comprehensive_cussuport\\\" class=\\\"myPet\\\">Comprehensive Customer Support\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n          <div class=\\\"gp_det_blurb comprehensive_cussuport_open clearfix\\\">\r\n                <div class=\\\"imgPan f-right marg_left\\\">\r\n                     <img src=\\\"assets/images/ProServ-Page-11..png\\\" alt=\\\"\\\">\r\n                </div>\r\n                <div class=\\\"gp_content\\\">\r\n                  <h2>Comprehensive Customer Support</h2>\r\n                  <p>Our comprehensive customer care set-up ensures all your service needs are taken care of his includes a state-of-the-art Mobile Service Workshop equipped with BharatBenz genuine parts, genuine lubes and tools that can handle almost all kinds of breakdowns as well as a multilingual toll-free number to ensure 24x7 on-road assistance or technical support.</p>\r\n    \r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n          </div>\r\n\r\n        </div>\r\n      </section>', '1', '1', 'Commerical Truck & Bus Service, Benz Maintenance Service in India - BharatBenz', 'Commerical Truck & Bus Service, Benz Maintenance Service in India', 'Need more information on the BharatBenz maintenance service in India? BharatBenz ProServ is designed to provide an instant solution for all your Commercial Truck & Bus Service related requirements.', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-07-16 13:18:05', '2018-08-14 00:03:58', 'admin', 'admin'),
(3, 'Genuine Parts', '', 'thumb_banner_1533912994.jpg', 'thumb_banner_1533912995.jpg', 'Save More. Drive More.', '  <section id=\\\"gp_holder\\\">\r\n        <div class=\\\"container\\\">\r\n          <p class=\\\"padd_left\\\">To provide a delightful experience to every BharatBenz customer which is predominantly characterized by our persistent focus on delivering high quality products, increasing our reach and ensuring low cost of ownership.</p>\r\n\r\n          <div>\r\n            <h2 id=\\\"gp_quality\\\" class=\\\"myPet\\\">Reliable Quality\r\n              <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_left gp_quality_open clearfix\\\">\r\n              <div class=\\\"imgPan f-right marg_left\\\">\r\n                  <img src=\\\"assets/images/genuine_quility.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Reliable Quality</h2>\r\n                <p>Every BharatBenz genuine part undergoes stringent quality checks to ensure they meet the BharatBenz global quality standards before it reaches to our customers. </p>\r\n              \r\n               \r\n              </div>\r\n            </div>\r\n          \r\n            <h2 id=\\\"gp_availability\\\" class=\\\"myPet\\\">Available Closer To You\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_right gp_availability_open clearfix\\\">\r\n              <div class=\\\"imgPan f-left marg_right \\\">\r\n                  <img src=\\\"assets/images/genuine_ability.png\\\" alt=\\\"\\\">\r\n              </div>\r\n              <div class=\\\"gp_content\\\">\r\n                <h2>Available Closer To You</h2>\r\n                <p>BharatBenz Genuine Parts made available to all our customers across PAN India at your convenience.</p>\r\n<ul><li>1. At all our Dealership Outlets</li><br>\r\n<li>2. Dial – a – Part\r\nBharatBenz Genuine Parts is just a phone call away.</li><br>\r\n<li>3. Online Digital experience of buying BharatBenz Genuine Parts (Upcoming shortly)</li>\r\n</ul>\r\n  \r\n              </div>\r\n            </div>\r\n\r\n            <h2 id=\\\"gp_affordability\\\" class=\\\"myPet\\\">Affordability\r\n                <div class=\\\"accArrow\\\"><img src=\\\"assets/images/ft-down-arrow.png\\\" alt=\\\"\\\" /></div>\r\n            </h2>\r\n            <div class=\\\"gp_det_blurb padd_left gp_affordability_open clearfix\\\">\r\n                <div class=\\\"imgPan f-right marg_left\\\">\r\n                    <img src=\\\"assets/images/genuine_afforability.png\\\" alt=\\\"\\\">\r\n                </div>\r\n                <div class=\\\"gp_content\\\">\r\n                  <h2>Affordability</h2>\r\n                  <p>Usage of BharatBenz Genuine Parts ensures longer aggregate life which translates to minimum maintenance & repair cost, improved vehicle performance and hence maximum profitability.\r\n </p>\r\n    \r\n                </div>\r\n            </div>\r\n\r\n          </div>\r\n\r\n        </div>\r\n      </section>', '1', '1', 'Genuine Parts', 'Genuine Parts', 'Genuine Parts', '49.35.33.21', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '2018-07-16 13:59:54', '2018-08-11 03:36:42', 'admin', 'admin'),
(4, 'History', '', 'thumb_banner_1532606183.jpg', 'thumb_banner_1532606183.jpg', 'A Unique Heritage', '		<section id=\\\"HistorySection\\\">\r\n			 <div class=\\\"container\\\">\r\n			<div class=\\\"contentinfoH borderNone\\\"><p>The names of the founding fathers of Daimler AG, <strong>Gottlieb Daimler and Carl Benz,</strong> are inextricably linked with the creation of the automobile. The history of the automobile <strong>began in 1886</strong> with Daimler’s first motor carriage and Carl Benz’s three-wheeled vehicle. From the very beginning, Daimler’s automobiles have been positioned as the leading vehicles for <strong>quality, safety and comfort.</strong>\r\n			</p></div>\r\n			</div>\r\n		</section>\r\n\r\n\r\n		<section id=\\\"truckinginfoH\\\">\r\n		  \r\n		<div class=\\\"container\\\">\r\n		   <div class=\\\"imgbothinfoCon\\\">\r\n			 <img src=\\\"assets/images/history-slide1.jpg\\\" alt=\\\"\\\">\r\n			 <img src=\\\"assets/images/history-slide2.jpg\\\" alt=\\\"\\\">\r\n\r\n		   <h3>Transforming Indian Trucking</h3><p>\r\n		The DNA of BharatBenz dates back to 1896 when Gottlieb Daimler built the world’s first truck. Today we are the global leaders in trucking. We are proud of this fact and now bring the technology and experience of this unique heritage to India.\r\n		</p>  \r\n		   </div>\r\n\r\n\r\n		</div>\r\n\r\n		</section>\r\n\r\n\r\n\r\n\r\n      \r\n      <section id=\\\"res_bb_logo\\\">\r\n        <div class=\\\"container\\\">\r\n          <img src=\\\"assets/images/bharatbenz_power-ahead.jpg\\\" align=\\\"Bharatbenz Power Ahead\\\" />\r\n        </div>\r\n      </section>', '1', '1', 'History', 'History', 'History', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-17 06:53:11', '2018-07-17 14:01:35', 'admin', 'admin'),
(5, 'Vision and Mission', '', NULL, '', 'Innovations, safety and unmatched reliability', ' <section id=\\\"aboutusInnerpageH\\\">\r\n        <div class=\\\"container\\\">\r\n          \r\n    <div class=\\\"contentimgBlurbH\\\">\r\n     <div class=\\\"imgDatacolL\\\">\r\n       <h2>The Power of Progress</h2>\r\n       <img src=\\\"assets/images/internal/our-vission.jpg\\\">\r\n       <p>We at BharatBenz are committed to play an important role in India’s economic advancement through commercial mobility solutions that will accelerate the progress of business in India. That is why DICV invested Rs. 4,400 crores in a 400 acre, state-of-the-art manufacturing plant at Oragadam, Chennai.  </p>\r\n\r\n     </div>\r\n\r\n\r\n   <div class=\\\"imgDatacolL\\\">\r\n       <h2>The Power of Technology</h2>\r\n       <img src=\\\"assets/images/internal/our-vission-2.jpg\\\">\r\n       <p>The new markets and opportunities that we create are the result of the value we place in excellence. Our constant endeavor is to provide only the best in Truck-o-nomics. We believe in value-led globally proven technology. As a technology leader we further stand for India’s safest and most reliable trucks.</p>\r\n\r\n     </div>\r\n\r\n\r\n\r\n <div class=\\\"imgDatacolL\\\">\r\n       <h2>The Power of Commitment</h2>\r\n       <img src=\\\"assets/images/internal/our-vission.jpg\\\">\r\n       <p>At the beginning of our venture, we spent time in understanding what the Indian trucking community wanted. The meticulous research captured on road-load data has given us key insights of trucking, right from Kashmir to Kanyakumari. \r\n</p>\r\n\r\n     </div>\r\n\r\n\r\n      <div class=\\\"imgDatacolL\\\">\r\n       <h2>Test Track</h2>\r\n       <img src=\\\"assets/images/internal/test-track.jpg\\\">\r\n       <p>Our test track consists of a super elevation track that enables testing at 3 different speeds. The testing facility also includes a bump track with 40,832 cobblestones laid to precision, articulation and potholes, which together stimulate the toughest conditions that a truck may have to traverse on Indian roads. \r\n</p>\r\n\r\n     </div>\r\n\r\n\r\n     \r\n  </div>\r\n\r\n\r\n        </div>\r\n     </section>\r\n\r\n\r\n\r\n\r\n      \r\n      <section id=\\\"res_bb_logo\\\">\r\n        <div class=\\\"container\\\">\r\n          <img src=\\\"assets/images/bharatbenz_power-ahead.jpg\\\" align=\\\"Bharatbenz Power Ahead\\\" />\r\n        </div>\r\n      </section>', '1', '1', 'Vision and Mission', 'Vision and Mission', 'Vision and Mission', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-17 09:57:53', NULL, 'admin', NULL),
(6, 'Careers', '', 'thumb_banner_1533912829.jpg', 'thumb_banner_1533912830.jpg', 'Careers that redefine upwardly mobile.', ' <section id=\\\"careersPageH\\\">\r\n <div class=\\\"container\\\">\r\n     \r\n     <div class=\\\"contentinfoH\\\">\r\n       <p>Diverse cultures, multiple competencies and vast experiences come together to share a common goal and vision - to create class-leading products and services that will transform the Indian trucking industry. </p><br>\r\n<p>\r\nHailing from the world\\\'s largest truck manufacturer, Daimler; having introduced the world to the concept of mobility, the spirit of innovation runs deep in our DNA, making us extremely passionate about what we do. With a diverse array of opportunities: ranging all the way from flexible work time models, to international assignments and individual career development possibilities, we offer numerous opportunities: new insights, responsibilities, and perspectives. That is why we are looking for thought leaders that are passionate about their ideas, ideas that have the potential to drive innovation!</p><br>\r\n<p>\r\nAt BharatBenz, you will be able to find the confluence of global best practices combined with deep-rooted local market insights that facilitate an enriched learning experience and gives you the unique opportunity to explore a great career path. If this sounds like something you would like to do, please write to us at <a href=\\\"mailto:careers@bharatbenz.com\\\">careers@bharatbenz.com</a></p><br>\r\n<p><strong>We would be glad to welcome you to the world of BharatBenz and join us in shaping the future.</strong> </p>\r\n   <div class=\\\"knowmorebutton\\\"><a href=\\\"javascript:;\\\" class=\\\"sim-button button_effect\\\"><span>KNOW MORE</span></a></div>\r\n\r\n     </div>\r\n\r\n\r\n </div>\r\n </section>\r\n\r\n\r\n      <section id=\\\"res_bb_logo\\\">\r\n        <div class=\\\"container\\\">\r\n          <img src=\\\"assets/images/bharatbenz_power-ahead.jpg\\\" align=\\\"Bharatbenz Power Ahead\\\" />\r\n        </div>\r\n      </section>', '1', '1', 'Careers', 'Careers', 'Looking for jobs at BharatBenz? Visit the BharatBenz careers page to learn more about the current vacancies at BharatBenz and apply.', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-07-17 10:29:32', '2018-08-10 09:23:49', 'admin', 'admin'),
(7, 'About Us', '', 'thumb_banner_1533797230.jpg', 'thumb_banner_1533797231.jpg', 'Transforming Indian Commercial Vehicle Industry through Adaptive Mobility Solutions', ' <section id=\\\"HistorySection\\\">\r\n <div class=\\\"container\\\">\r\n<div class=\\\"aboutparaCon\\\">\r\n<p>First unveiled in February 2011, BharatBenz celebrated its market launch in September 2012. Within five years of our market entry, we delivered over 55,000 BharatBenz trucks to our customers, an unprecedented ramp-up in the Indian CV industry.</p> <p>\r\nThe BharatBenz brand offers a range of ultra-modern trucks in all weight categories from 9 to 49 tones. In addition to our portfolio of trucks, we also supply school, staff and tourist buses. These vehicles are specificallytailored for the Indian market and its demanding customer requirements by Daimler AG, the world’s leading CV manufacturer with a global reach.</p><p>\r\nBharatBenz trucks and buses are sold and serviced through a pan-Indian network of more than 130 touch points which is continuously expanded further also beyond the tier-2 and tier-3 cities.\r\n</p>\r\n\r\n</div>\r\n</div>\r\n</section>\r\n\r\n\r\n<section id=\\\"aboutusmainCon\\\">\r\n  <div class=\\\"container\\\">\r\n\r\n  <div class=\\\"imgconsectionAboutus\\\">\r\n\r\n<div class=\\\"bothcolfirstrowAbout\\\">  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<h2>A Unique Heritage</h2>\r\n</div>\r\n<div class=\\\"rightsideimgabout\\\"><img src=\\\"assets/images/unique-heritage.jpg\\\" alt=\\\"\\\"></div>  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<p>The names of the founding fathers of Daimler AG, Gottlieb Daimler and Carl Benz, are inextricably linked with the creation of the automobile which began in 1886 with Daimler’s first motor carriage and Carl Benz’s three-wheeled vehicle. The DNA of BharatBenz dates back to 1896 when Gottlieb Daimler built the world’s first truck!</p>\r\n<div class=\\\"clear\\\"></div>\r\n</div>\r\n<div class=\\\"clear\\\"></div> \r\n</div>\r\n\r\n\r\n<div class=\\\"bothcolfirstrowAbout aboutSecbBordernone\\\">  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<h2>Transforming Indian Trucking</h2>\r\n</div>\r\n<div class=\\\"clear\\\"></div>\r\n<div class=\\\"LeftsideimgeaboutH\\\"><img src=\\\"assets/images/transforming-indian.jpg\\\" alt=\\\"\\\"></div>  \r\n\r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<p>From the very beginning, Daimler’s automobiles have been positioned as the leading vehicles for quality, safety and comfort. Today, we are the global leaders in trucking which we are extremely proud of and now to bring the technology and experience of this unique heritage to India, with our four leading principles of course!</p>\r\n\r\n</div>\r\n\r\n\r\n<div class=\\\"clear\\\"></div> \r\n</div>\r\n</div>  \r\n</div>\r\n</section>\r\n\r\n\r\n<section id=\\\"progressconimgH\\\">\r\n <div class=\\\"container\\\">\r\n <div class=\\\"imgconsectionAboutus\\\">\r\n\r\n\r\n<div class=\\\"bothcolfirstrowAbout\\\">  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<h2>The Power of Progress </h2>\r\n</div>\r\n<div class=\\\"rightsideimgabout\\\"><img src=\\\"assets/images/powerof-progress.jpg\\\" alt=\\\"\\\"></div>  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<p>We at BharatBenz are committed to play an important role in India’s economic advancement through commercial mobility solutions that will accelerate the progress of business in India. </p>\r\n<div class=\\\"clear\\\"></div>\r\n</div>\r\n<div class=\\\"clear\\\"></div> \r\n</div>\r\n\r\n<div class=\\\"bothcolfirstrowAbout\\\">  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<h2>The Power of Technology</h2>\r\n</div>\r\n<div class=\\\"clear\\\"></div>\r\n<div class=\\\"LeftsideimgeaboutH\\\"><img src=\\\"assets/images/the-power-of-tech.jpg\\\" alt=\\\"\\\"></div>  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<p>The new markets and opportunities that we create are the result of the value we place in excellence. Our constant endeavour is to provide only the best in Truck-o-nomics. We believe in value-led globally proven technology. As a technology leader we further stand for India’s safest and most reliable trucks.</p>\r\n<div class=\\\"clear\\\"></div>\r\n</div>\r\n<div class=\\\"clear\\\"></div> \r\n</div>\r\n\r\n</div>\r\n</div>\r\n</section>\r\n\r\n\r\n\r\n\r\n<section id=\\\"progressconimgH\\\">\r\n <div class=\\\"container\\\">\r\n\r\n \r\n <div class=\\\"imgconsectionAboutus\\\">\r\n\r\n<div class=\\\"bothcolfirstrowAbout\\\">  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<h2>The Power of Commitment</h2>\r\n</div>\r\n<div class=\\\"rightsideimgabout\\\"><img src=\\\"assets/images/the-power-of-commitment.jpg\\\" alt=\\\"\\\"></div>  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<p>At the beginning of our venture, we spent time in understanding what the Indian trucking community wanted. The meticulous research captured on road-load data has given us key insights of trucking, right from Kashmir to Kanyakumari.</p>\r\n<div class=\\\"clear\\\"></div>\r\n</div>\r\n<div class=\\\"clear\\\"></div> \r\n</div>\r\n\r\n\r\n<div class=\\\"bothcolfirstrowAbout\\\">  \r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<h2>The Power of Reliability </h2>\r\n</div>\r\n<div class=\\\"clear\\\"></div>\r\n<div class=\\\"LeftsideimgeaboutH\\\"><img src=\\\"assets/images/the-power-of-reliablity.jpg\\\" alt=\\\"\\\"></div>  \r\n\r\n<div class=\\\"aboutluseLeftconH\\\">\r\n<p>Our trucks are being rigorously tested on our state of the art test track which has a super elevation track that enables testing at 3 different speeds. The testing facility also includes a bump track with 40,832 cobblestones laid to precision, articulation and potholes, which together stimulate the toughest conditions that a truck may have to traverse on Indian roads.</p>\r\n<div class=\\\"clear\\\"></div>\r\n</div>\r\n\r\n<div class=\\\"clear\\\"></div> \r\n</div>\r\n</div>\r\n</div>\r\n</section>', '1', '1', 'About us', 'Benz Trucks & Bus - About Bharat Benz India', 'Benz Trucks & Bus - About Bharat Benz India: BharatBenz is India\\\'s leading manufacturer of heavy-duty trucks & commercial buses.', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-23 11:07:30', '2018-08-09 15:27:22', 'admin', 'admin'),
(8, 'Privacy Policy', '', NULL, '', 'Privacy Policy', '<section id=\\\"newsHolder\\\">\r\n        <div class=\\\"container\\\">\r\n            <div class=\\\"news-container\\\">\r\n                <div class=\\\"news-tabs \\\">\r\n                    <ul>\r\n                        <li><a href=\\\"#tabPressRelease\\\" class=\\\"current\\\">Privacy Policy</a></li>\r\n                        <li><a href=\\\"#tabHighlights\\\">Disclaimer</a></li>\r\n                        <li><a href=\\\"#tabDownloads\\\">Data Protection</a></li>\r\n                       <!-- <li><a href=\\\"#tabMedia\\\">Media</a></li>-->\r\n                    </ul>\r\n                    <div class=\\\"clear\\\"></div>\r\n                </div>\r\n                <div class=\\\"news-details\\\">\r\n                    <div id=\\\"tabPressRelease\\\">\r\n                        <div class=\\\"col-100\\\">\r\n                         \r\n                          <div class=\\\"privcyPolh\\\">\r\n                                  \r\n                                <h2>Privacy Statement</h2>\r\n                                  <p>Daimler India Commercial Vehicles Pvt. Ltd. (DICV) appreciates your interest in its products and your visit to this Web site. Your privacy is important to us and we want you to feel comfortable visiting our site. The protection of your privacy in the processing of your personal data is an important concern to which we pay special attention. Personal data collected during visits to our Web site are processed by us according to the legal provisions valid in India. In addition, DICV also complies with the Daimler Policy on Data Protection. This Web site may include, however, links to other Web sites which are not covered by this privacy statement.\r\n                                </p>\r\n\r\n\r\n                                <h2>Collection and Processing of Personal Data</h2>\r\n                                  <p>DICV collects personal information on this Web site for purposes that are made clear on the page on which the information is collected, such as when you request to be sent information. <br>\r\n                                DICV does not collect and process any personal information unless the information is considered necessary for the effective functioning or activities of our business. <br>\r\n                                Generally, DICV only processes personal information for the purposes for which it was originally collected, unless required or authorised by or under law or if the individual concerned has consented to the intended use.<br>\r\n                                DICV will not pass onto others any personal information without the consent of the individual(s) concerned unless required by law. However, DICV’s third party service providers may occasionally have access to the personal information held by DICV under conditions of confidentiality.\r\n                                DICV takes steps to ensure that personal information is kept safe from misuse, loss and unauthorised access, modification and disclosure. DICV will only disclose your data in cases where it is required by law.<br>\r\n                                DICV will use your personal data for the sole purpose of technical administration of the Web site, customer administration, product surveys and marketing, only to the extent necessary in each specific case.\r\n                                </p>\r\n\r\n                                <h2>Freedom of Choice</h2>\r\n                                  <p>We would like to use your data to inform you about BharatBenz products and services and where applicable request your opinion. Naturally your participation is completely voluntary. Should you not consent, you can inform us at any time so that we can suppress your data accordingly.\r\n                                </p>\r\n\r\n                                <h2>Cookies</h2>\r\n                                  <p>ICV uses cookies to record the preferences of visitors, to enable us to optimize the design of our Web site. Cookies are small files which are stored on your hard drive. They ease navigation, and increase the user-friendliness of a Web site. Cookies also help us to identify the most popular sections of our Web site. This enables us to provide content that is more accurately suited to your needs, and in so doing improve our service. Cookies can be used to determine whether there has been any contact between us and your computer in the past. Only the cookie on your computer is identified. Personal details can be saved in cookies, provided that you have consented to this, for example, in order to facilitate secure online access so that you not need to enter your user ID and password again.</p><p>\r\n\r\n                                Most browsers automatically accept cookies. You can prevent cookies from being stored on your hard drive by setting your browser to not accept cookies. The exact instructions for this can be found in the manual for your browser. You can delete cookies already on your hard drive at any time. If you choose not to accept cookies, you can still visit our Web site, however this may result in a reduced availability of the services provided by our Web site.\r\n                                </p>\r\n\r\n                                <h2>Security</h2>\r\n                                  <p>DICV uses technical and organizational security measures in order to protect the data we have under our control against accidental or intentional manipulation, loss, destruction and against access by unauthorized persons. Our security procedures are continually enhanced as new technology becomes available.</p>\r\n\r\n                                <h2>Freedom of Information</h2>\r\n                                  <p>Upon written request, DICV or its representatives will inform you by letter without delay what personal data is stored by us as defined by applicable law. Should such data be incorrect, we will at your request correct that information for you, also as a registered user you have the option of viewing, deleting or amending your personal data yourself.</p><p>\r\n                                Should you have questions regarding the processing of your personal data you can refer to our chief corporate data protection officer, who is also available with his team for enquiries, suggestions or complaints.</p>\r\n\r\n                                <h2>Chief Officer Corporate Data Protection</h2>\r\n                                  <p>Dr. Joachim Riess <br>Daimler AG <br>HPC 096-0624 <br> 70546 Stuttgart <br>\r\n                                Germany</p>\r\n\r\n\r\n\r\n                                </div>\r\n                                                            <div class=\\\"clear\\\"></div>\r\n                                                        </div>\r\n                                                    \r\n                                                  \r\n                                                      \r\n                                                        <div class=\\\"clear\\\"></div>\r\n                                                    </div>\r\n                                                    <div id=\\\"tabHighlights\\\" class=\\\"hide\\\">\r\n                                                        <div class=\\\"col-100\\\">\r\n                                                           <div class=\\\"privcyPolh\\\">\r\n                                  \r\n                                <h2>Provider</h2>\r\n                                  <p>Provider Daimler India Commercial Vehicles Pvt. Ltd., <br>\r\n                                Unit 201, 2nd Floor, Campus 3B,<br>\r\n                                RMZ Millennia Business Park,<br>\r\n                                No. 143, Dr. M.G.R Road,<br>\r\n                                Perungudi,<br>\r\n                                Chennai - 600096, Tamil Nadu,\r\n                                India. <br>\r\n                                Phone: +91 44 45996000<br>\r\n                                Fax: +91 44 42853620\r\n                                </p>\r\n\r\n\r\n                                <h2>Copyrights</h2>\r\n                                  <p>Copyright 2011 DICV. All Rights Reserved. The text, images, graphics, sound files, animation files, video files and their arrangement on this site is subject to Copyright and other intellectual property protection. These objects may not be copied for commercial use or distribution, nor may these objects be modified or reposted to other sites.\r\n                                </p>\r\n\r\n                                <h2>Trademarks</h2>\r\n                                  <p>Unless otherwise indicated, all marks displayed on the site is subject to the trademark rights of DICV and applies to its model name plates, and its corporate logos and emblems also.\r\n                                </p>\r\n\r\n                                <h2>No Licenses</h2>\r\n                                  <p>DICV has thought to achieve an innovative and informative Internet site. We hope that you will be as enthusiastic as we are about this creative effort. However, you also need to understand that DICV must protect their Intellectual Property, including their patents, trademarks and copyrights. Accordingly, you are hereby on notice that neither this Internet site, nor any material contained therein shall in any way grant or be taken to grant any person a license to DICV’s Intellectual Property.\r\n                                </p>\r\n\r\n                                <h2>Cautions Regarding Forward-Looking Statements</h2>\r\n                                  <p>These internet pages contain forward-looking statements that reflect our current views about future events. The words “anticipate,” “assume,” “believe,” “estimate,” “expect,” “intend,” “may,” “plan,” “project,” “should” and similar expressions are used to identify forward-looking statements. These statements are subject to many risks and uncertainties. We do not intend or assume any obligation to update these forward-looking statements. Any forward-looking statement speaks only as of the date on which it is made.</p>\r\n\r\n                                <h2>No warranties or representations</h2>\r\n                                  <p>The information on this Internet site is provided by DICV \\\"as is\\\" and to the extent permitted by law, is provided without warranty of any kind, express or implied. While the information provided is believed to be accurate, it may include errors or inaccuracies. This site contains links to external sites, which are not under the control of DICV and DICV is not responsible for the contents of any linked site. DICV provides these links to you only as a convenience, and the inclusion of any link does not imply endorsement by DICV of the linked site.\r\n                                </p>\r\n\r\n\r\n\r\n\r\n\r\n                                </div>\r\n                          \r\n                            <div class=\\\"clear\\\"></div>\r\n                        </div>\r\n                       \r\n                    </div>\r\n                    <div id=\\\"tabDownloads\\\" class=\\\"hide\\\">\r\n                        <div class=\\\"col-100\\\">\r\n\r\n                            <h2>Coming Soon</h2>\r\n\r\n\r\n                        </div>\r\n                    \r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                  </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n  ', '1', '1', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', '2018-07-25 07:30:29', '2018-08-09 13:24:09', 'admin', 'admin'),
(9, 'Legal Notices and Terms', '', NULL, '', 'Legal Notices and Terms', '\r\n  <section id=\\\"privacypolicyH\\\">\r\n <div class=\\\"container\\\">\r\n<div class=\\\"privcyPolh\\\">\r\n  \r\n<h2>Provider</h2>\r\n  <p>Provider Daimler India Commercial Vehicles Pvt. Ltd., <br>\r\nUnit 201, 2nd Floor, Campus 3B,<br>\r\nRMZ Millennia Business Park,<br>\r\nNo. 143, Dr. M.G.R Road,<br>\r\nPerungudi,<br>\r\nChennai - 600096, Tamil Nadu,\r\nIndia. <br>\r\nPhone: +91 44 45996000<br>\r\nFax: +91 44 42853620\r\n</p>\r\n\r\n\r\n<h2>Copyrights</h2>\r\n  <p>Copyright 2011 DICV. All Rights Reserved. The text, images, graphics, sound files, animation files, video files and their arrangement on this site is subject to Copyright and other intellectual property protection. These objects may not be copied for commercial use or distribution, nor may these objects be modified or reposted to other sites.\r\n</p>\r\n\r\n<h2>Trademarks</h2>\r\n  <p>Unless otherwise indicated, all marks displayed on the site is subject to the trademark rights of DICV and applies to its model name plates, and its corporate logos and emblems also.\r\n</p>\r\n\r\n<h2>No Licenses</h2>\r\n  <p>DICV has thought to achieve an innovative and informative Internet site. We hope that you will be as enthusiastic as we are about this creative effort. However, you also need to understand that DICV must protect their Intellectual Property, including their patents, trademarks and copyrights. Accordingly, you are hereby on notice that neither this Internet site, nor any material contained therein shall in any way grant or be taken to grant any person a license to DICV’s Intellectual Property.\r\n</p>\r\n\r\n<h2>Cautions Regarding Forward-Looking Statements</h2>\r\n  <p>These internet pages contain forward-looking statements that reflect our current views about future events. The words “anticipate,” “assume,” “believe,” “estimate,” “expect,” “intend,” “may,” “plan,” “project,” “should” and similar expressions are used to identify forward-looking statements. These statements are subject to many risks and uncertainties. We do not intend or assume any obligation to update these forward-looking statements. Any forward-looking statement speaks only as of the date on which it is made.</p>\r\n\r\n<h2>No warranties or representations</h2>\r\n  <p>The information on this Internet site is provided by DICV \\\"as is\\\" and to the extent permitted by law, is provided without warranty of any kind, express or implied. While the information provided is believed to be accurate, it may include errors or inaccuracies. This site contains links to external sites, which are not under the control of DICV and DICV is not responsible for the contents of any linked site. DICV provides these links to you only as a convenience, and the inclusion of any link does not imply endorsement by DICV of the linked site.\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n</section>', '1', '1', 'Legal Notices and Terms', 'Legal Notices and Terms', 'Legal Notices and Terms', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-25 07:31:59', NULL, 'admin', NULL),
(10, 'Testimonials', '', 'thumb_banner_1532604174.jpg', 'thumb_banner_1532607292.jpg', 'testimonials short description', '', '1', '1', 'Testimonials', 'Testimonials', 'Testimonials', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 10:40:26', '2018-07-26 12:14:52', 'admin', 'admin'),
(11, 'Blog', '', 'thumb_banner_1533048564.jpg', 'thumb_banner_1533049588.jpg', 'Powered by Benz. Caring for India.', 'Blog', '1', '1', 'Official Website of BharatBenz | Commercial Vehicles India', 'Blog on Bus and Truck, Articles on Commercial Buses and Trucks', 'Visit the BharatBenz blog to find the latest news, updates and articles on commercial buses and trucks in India.', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 12:38:17', '2018-08-09 15:28:42', 'admin', 'admin'),
(12, 'Used Trucks', '', 'thumb_banner_1532609230.jpg', 'thumb_banner_1532609230.jpg', 'Used Trucks', 'Used Trucks', '1', '1', 'Used Trucks', 'Used Trucks', 'Used Trucks', '10.10.10.20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 12:43:15', '2018-07-26 12:47:10', 'admin', 'admin');
INSERT INTO `tbl_pages` (`id`, `title`, `page_type`, `banner`, `mobile_banner`, `short_description`, `description`, `is_active`, `is_delete`, `meta_title`, `meta_keywords`, `meta_description`, `ip`, `agent`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(13, 'News & Events', '', 'thumb_banner_1532621087.jpg', 'thumb_banner_1532621088.jpg', 'The New Milestone In Comfort And Safety', 'The new milestone in comfort and safety', '1', '1', 'News & Events', 'News & Events', 'Stay updated on the latest innovations, news and events at BharatBenz! Read now for more details.', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 12:51:18', '2018-08-09 15:49:26', 'admin', 'admin'),
(14, 'Contact us', '', 'thumb_banner_1532617213.jpg', 'thumb_banner_1532617214.jpg', 'Contact us', 'Contact us', '1', '1', 'Contact us', 'Contact us', 'To find a dealership near you, or to get in touch, visit the Contact-Us page and leave your details.', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 13:25:50', '2018-08-09 15:29:13', 'admin', 'admin'),
(15, 'Sales & Enquiry', '', 'thumb_banner_1533148153.jpg', 'thumb_banner_1533148153.jpg', 'Lorem ipsum dummy content.', 'Sales & Enquiry', '1', '1', 'Sales & Enquiry', 'Sales & Enquiry', 'Sales & Enquiry', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '2018-07-26 13:32:23', '2018-08-01 18:29:13', 'admin', 'admin'),
(16, 'Redefining travel in India', '', 'thumb_banner_1533102437.jpg', 'thumb_banner_1533102437.jpg', 'Bus Landing', 'Bus Landing', '1', '1', 'BharatBenz Buses', 'BharatBenz Buses', 'BharatBenz Buses', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '2018-08-01 05:47:17', '2018-08-09 19:15:28', 'admin', 'admin'),
(17, 'Best-In-Class Trucks That Power You Ahead', '', 'thumb_banner_1533112812.jpg', 'thumb_banner_1533112812.jpg', 'Trucks', 'Best-In-Class Trucks That Power You Ahead', '1', '1', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 05:51:00', '2018-08-01 09:13:00', 'admin', 'admin'),
(18, 'News & Events', '', 'thumb_banner_1533125993.jpg', 'thumb_banner_1533125994.jpg', 'Media Contact', '', '1', '1', 'News & Events', 'News & Events', 'Stay updated on the latest innovations, news and events at BharatBenz! Read now for more details.', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-01 12:19:53', '2018-08-09 15:52:49', 'admin', 'admin'),
(19, 'Download Wallpapers', '', 'thumb_banner_1533194040.jpg', 'thumb_banner_1533194041.jpg', 'The New Milestone In Comfort And Safety', 'The New Milestone In Comfort And Safety', '1', '1', 'The New Milestone In Comfort And Safety', 'The New Milestone In Comfort And Safety', 'The New Milestone In Comfort And Safety', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-02 07:14:00', NULL, 'admin', NULL),
(20, 'Highlights', '', 'thumb_banner_1533201043.jpg', 'thumb_banner_1533201043.jpg', 'The New Milestone In Comfort And Safety', 'The New Milestone In Comfort And Safety', '1', '1', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-02 09:10:43', '2018-08-02 09:15:36', 'admin', 'admin'),
(21, 'Downloads', '', 'thumb_banner_1533202112.jpg', 'thumb_banner_1533202112.jpg', 'The New Milestone In Comfort And Safety', 'The New Milestone In Comfort And Safety', '1', '1', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-02 09:28:32', NULL, 'admin', NULL),
(22, 'Media Contact', '', 'thumb_banner_1533202545.jpg', 'thumb_banner_1533202546.jpg', 'Media Contact', 'Media Contact', '1', '1', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-02 09:35:45', NULL, 'admin', NULL),
(23, 'Download Brands', '', 'thumb_banner_1533881041.jpg', 'thumb_banner_1533881041.jpg', 'Lorem ipsum simply dummy text', 'Lorem ipsum simply dummy text\r\n\r\n', '1', '1', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-08-10 06:04:01', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pressrelease`
--

CREATE TABLE `tbl_pressrelease` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `release_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pressrelease`
--

INSERT INTO `tbl_pressrelease` (`id`, `title`, `description`, `short_description`, `release_date`, `image`, `thumbnail`, `banner`, `mobile_banner`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Meet \\\'Profit Technology\\\': BharatBenz presents all-new heavy-duty truck range', '<ul>\r\n	<li>All-new BharatBenz range of heavy-duty trucks introduced less than five years after the market launch of the first generation.</li>\r\n	<li>New models raise the bar further in terms of productivity, efficiency, and safety; come with proven BS-IV technology at BS-III price levels.</li>\r\n	<li>Mr. Rajaram Krishnamurthy, Vice President, Marketing and Sales, Daimler India Commercial Vehicles said: &quot;The Western region remains as one of our key strategic markets for BharatBenz. With our all-new BharatBenz heavy-duty trucks, we aim to convince many additional customers in the region - thanks to our best-in-class &#39;profit technology&#39; package of productivity, efficiency and safety with BSIV emission norms.&quot;</li>\r\n</ul>\r\n\r\n<p><strong>Pune / Nagpur</strong> - BharatBenz today launched its all-new heavy-duty truck range for Western region of India. The new BharatBenz models are equipped with proven technology to meet the new BS-IV emission standards and are introduced at the price level of the brand&#39;s earlier BS-III trucks. True to the claim of &#39;profit technology&#39;, they deliver significantly better fuel economy as well as lower maintenance costs. Thanks to a host of further innovative features, the all-new range takes productivity, efficiency and safety to the next level. It includes the three product families of haulage trucks, construction trucks, and tractors.</p>\r\n\r\n<p>Speaking on the occasion, Mr. Rajaram Krishnamurthy, Vice President, Marketing and Sales said: &quot;The Western region remains as one of our key strategic markets for BharatBenz. With our all-new BharatBenz heavy-duty trucks, we aim to convince many additional customers in the region - thanks to our best-in-class &#39;profit technology&#39; package of productivity, efficiency and safety with BSIV emission norms.&quot;</p>\r\n\r\n<p><strong>BS-IV technology: proven solution for customers with SCR</strong></p>\r\n\r\n<p>The BharatBenz product range of trucks above 9 to 49 tonnes has been available as BS-IV variants since August 2015. Even before the transition to the BS-IV standard on 1st April 2017, more than 1,000 BharatBenz BS-IV trucks had been delivered to customers and clocked up more than 42,00,000 kilometres. Feedback collected from these early customers has been very positive: besides the further improved fuel economy and lower maintenance costs, customers appreciate the fact that BharatBenz BS-IV vehicles also work with BS-III fuel, if required.</p>\r\n\r\n<p>BharatBenz BS-IV vehicles meet the upgraded norms using a system based on SCR technology proven in hundreds of thousands of Daimler commercial vehicles in many markets for over a decade. DICV had tested this technology in Indian operating conditions for over a million kilometres before starting to roll it out to customers in 2015. The SCR technology uses an aqueous urea-based fluid called AdBlue, which is sprayed into the exhaust stream to break down dangerous nitrogen oxides emissions into harmless nitrogen and water. AdBlue consumption is only a fraction of fuel consumption, so refill intervals are fewer. Adblue is available nationwide at all BharatBenz dealerships and other outlets.</p>\r\n\r\n<p><strong>Productivity and efficiency: focus on customers profits</strong></p>\r\n\r\n<p>As reflected by the all-new range&#39;s launch tagline &#39;Profit Technology&#39;, the focus has been on further boosting customer value in order to help them drive their profits rather than worry about costs.</p>\r\n\r\n<p><strong>Fuel efficiency improvements</strong> in the double-digit percentage are achieved with the following:</p>\r\n\r\n<ul>\r\n	<li>In BharatBenz&#39; BS-IV solution with SCR technology, exhaust gas treatment is completely separated from the engine and taking place in the exhaust system only. This allows the BS-IV engine to run in an optimized operation window, which gives it a significant fuel efficiency advantage over a BS-III engine.</li>\r\n	<li>Multiple improvements across the entire vehicle, such as optimized auxiliaries, aerodynamic changes, and friction reductions.</li>\r\n</ul>\r\n\r\n<p><strong>Lower maintenance costs</strong> which translate into a significant benefit over the lifecycle are realized with the following features:</p>\r\n\r\n<ul>\r\n	<li>High-durability design of all aggregates including clutch and brake lining.</li>\r\n	<li>Longer, synchronized driveline oil change intervals.</li>\r\n	<li>Differential lock buzzer to warn when differential lock is active.</li>\r\n</ul>\r\n\r\n<p>In addition, significant vehicle weight reductions have been achieved which generate corresponding payload improvements of up to 400kg.</p>\r\n\r\n<p><strong>Safety: holistic approach from vehicle to driver</strong></p>\r\n\r\n<p>Safety has been one of the hallmark features of BharatBenz ever since the brand&#39;s market launch in 2012. Continuing to build on this strength, the all new heavy-duty trucks introduce even more safety features:</p>\r\n\r\n<ul>\r\n	<li>Cruise control for fatigueless driving.</li>\r\n	<li>LED accented lamp and dual chamber head lamp for better visibility.</li>\r\n	<li>Reverse camera / display to cover blind spots (standard in the premium variant).</li>\r\n	<li>Tubeless tyres for higher stability and tire life.</li>\r\n	<li>Air-conditioning to keep the driver fit and alert (optional equipment).</li>\r\n	<li>Fuel theft protection device.</li>\r\n</ul>\r\n\r\n<p>Other key safety features like crash-tested steel cabins and Anti-Lock Braking System (ABS) have been standard on BharatBenz trucks since the brand&#39;s market launch in 2012 already.</p>\r\n\r\n<p><strong>Design: bolder and more refined at the same time</strong></p>\r\n\r\n<p>The most distinguishing exterior feature of the all-new BharatBenz heavyduty trucks is their bold new front face. A larger version of the brand&#39;s hallmark grille, the new LED day running lights and, for the premium variants, a body-coloured bumper underline the family ties to the all-new range, while ensuring they are easily recognized as BharatBenz trucks.</p>\r\n\r\n<p>The interior was revamped with a new, washable seat fabric that provides even more seating comfort and allows easy maintenance. The premium variant comes with features like all-black interiors and a dashboard with a wooden look that elevates the ambience of the driver&#39;s workplace to a luxury-like look &amp; feel.</p>\r\n\r\n<p><strong>Contact:&nbsp;</strong><br />\r\nShina Satyapal, +91 44 45996039, shina.satyapal@daimler.com</p>\r\n', 'BharatBenz today launched its all-new heavy-duty truck range for Western region of India. The new BharatBenz models are equipped with proven technology to meet the new BS-IV emission standards and are introduced at the price level of the brand\\\'s earlier BS-III trucks.', '2017-06-16', 'main_1532344683.jpg', 'thumb_1532344683.jpg', '', '', '', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-11 12:17:40', '2018-08-10 09:27:50', 'admin', 'admin'),
(2, 'TechXpert 2017 celebrates best BharatBenz service technicians', '<ul>\r\n	<li>Competition of the best teams from across the pan-Indian BharatBenz sales &amp; service network</li>\r\n	<li>Program designed to further sharpen knowledge and skills of service technicians in line with ProServ, the branded customer service initiative of Daimler India Commercial Vehicles (DICV)</li>\r\n	<li>Mr. Ramesh Rajagopalan, Vice President Customer Service, DICV: &quot;For our customers, our service technicians make the difference every day - enabling them to save time, money and resources. TechXpert showcases our commitment to invest into training and continuous learning to deliver our &#39;ProServ&#39; customer experience at the BharatBenz workshops.&quot;</li>\r\n</ul>\r\n\r\n<p>Chennai - Daimler India Commercial Vehicles (DICV) held its first nationwide contest TechXpert for the best service technicians from across its BharatBenz sales &amp; service network, with more than 2,000 applicants in the initial stage. Nine teams competed in the two-day finals held at DICV&#39;s headquarters in Oragadam near Chennai, which involved theory and practical challenges alike. BharatBenz dealer representatives joined members of DICV management in the closing event on 14th December to honour the three teams that emerged as the best of the best.</p>\r\n\r\n<p>Commenting on the occasion, Mr. Ramesh Rajagopalan, Vice President Customer Service, DICV, said: &quot;For our customers, our service technicians make the difference every day - enabling them to save time, money and resources. TechXpert showcases our commitment to invest into training and continuous learning to deliver our &#39;ProServ&#39; customer experience at the BharatBenz workshops.&quot;</p>\r\n\r\n<p>DICV&#39;s branded &#39;ProServ&#39; customer service initiative is an integral part of the BharatBenz trucking experience, Speedy, effective and reliable, ProServ is designed to suit the specific needs of BharatBenz customers.</p>\r\n\r\n<p>The TechXpert contest had been kick-started in August 2017 with more than 2,000 service technicians participating in online tests on product and technical knowledge. The best participants were then clubbed into 30 teams, which completed further sessions at DICV&#39;s three regional Customer Service training centers in Nagpur, Chennai and New Delhi. This second stage included real-time case studies covering process knowledge, overall complaint resolution, usage of tools as well as adherence to safety guidelines and practices. The best-performing nine teams advanced to the TechXpert finals held now - a tough competition over two days, based on advanced case studies, technical skills deploying DICV&#39;s in-house online tech information platform ASCENT, and application of tools.</p>\r\n\r\n<p><em><strong>BharatBenz - made in India, made for India</strong></em></p>\r\n\r\n<p>The BharatBenz brand is tailored for the Indian market and its demanding customer requirements by Daimler AG, the world&#39;s leading commercial vehicle manufacturer with a global reach. Within five years after its market entry in 2012, more than 55,000 BharatBenz trucks were handed over to customers - an unprecedented ramp-up in the Indian CV industry. BharatBenz products are sold and serviced through a pan-Indian network of more than 130 touchpoints, with a fleet of mobile service vans that further extend the customer reach. This network is continuously expanded in line with the rising population of BharatBenz vehicles on the roads, also beyond the tier-2 and tier-3 cities.</p>\r\n\r\n<p><strong>Contact</strong><br />\r\nSebastian Wahle, +91 73 5879 2916, sebastian.wahle@daimler.com<br />\r\nShina Satyapal, +91 44 45996039, shina.satyapal@daimler.com<br />\r\nRitu Bagri, MSL Group, +91 98 84173290, ritu.bagri@mslgroup.com</p>\r\n', 'Daimler India Commercial Vehicles (DICV) held its first nationwide contest TechXpert for the best service technicians from across its BharatBenz sales & service network, with more than 2,000 applicants in the initial stage. Nine teams competed in the two-day finals held at DICV\\\'s headquarters in Oragadam near Chennai, which involved theory and practical challenges alike. BharatBenz dealer representatives joined members of DICV management in the closing event on 14th December to honour the three teams that emerged as the best of the best.', '2017-12-15', 'main_1532344668.jpg', 'thumb_1532344668.jpg', 'thumb_banner_1533299395.jpg', 'thumb_banner_1533299395.jpg', '', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-11 12:18:59', '2018-08-10 09:42:40', 'admin', 'admin'),
(3, 'BharatBenz \\\'High Five\\\' campaign marks count-down to fifth anniversary of brand\\\'s market launch', '<ul>\r\n	<li>Campaign to cover 19 major cities across India</li>\r\n	<li>Will cover more than 8,000 km in one month; to stop at Dhabas, Transport Nagars and BharatBenz Dealerships</li>\r\n	<li>Mr. Rajaram Krishnamurthy, Vice President, Marketing and Sales at Daimler India Commercial Vehicles: &quot;Our &#39;High Five&#39; campaign prepares the ground for us to celebrate the fifth anniversary of BharatBenz in the market. With more than 50,000 trucks on road, we want to involve as many customers, drivers and partners as possible, and thank them for their trust in our brand and our products.&quot;</li>\r\n</ul>\r\n\r\n<p>Running up to celebrate the fifth anniversary of its market launch, BharatBenz has embarked on its &quot;High Five with BharatBenz&quot; campaign that has a convoy of BharatBenz trucks from across the brand&#39;s portfolio travelling across the country for more than a month. On this journey of more than 8,000 km, the campaign will make more than 50 stops across19 major cities. It will reach out to thousands of stakeholders at dealership touchpoints, Dhabas and Transport nagar and allow them to gather a first-hand experience of best-in-class BharatBenz trucks.</p>\r\n\r\n<p>Commenting on the campaign, Mr. Rajaram Krishnamurthy, Vice President, Marketing and Sales at Daimler India Commercial Vehicles (DICV), said, &quot;Our &#39;High Five&#39; campaign prepares the ground for us to celebrate the fifth anniversary of BharatBenz in the market. With more than 50,000 trucks on road, we want to involve as many customers, drivers and partners as possible, and thank them for their trust in our brand and our products.&quot;</p>\r\n\r\n<p>The truck convoy started its route at DICV&#39;s manufacturing plant near Chennai, from where it went to Salem, Coimbatore and Kochi and is enroute Bangalore and to its other destinations.</p>\r\n\r\n<p><strong>BharatBenz-made in India, made for India</strong></p>\r\n\r\n<p>The BharatBenz brand is customer-tailored for the Indian market and its demanding customer requirements by Daimler AG, the world&#39;s leading CV manufacturer with a global reach. First unveiled in February 2011, it celebrated its market launch in September 2012. Soon featuring a full-fledged product portfolio in the medium- and heavy-duty segments, the brand crossed the first major milestone of 10,000 units in April 2014 and has further accelerated its growth from there. With the refresh of the medium-duty range in 2016 and the all-new heavy-duty range in 2017, BharatBenz updated its entire truck portfolio within a short span to give customers even more value for their money. BharatBenz products are sold and serviced through a pan-Indian network of more than 130 touchpoints which is continuously expanded further also beyond the tier-2 and tier-3 cities.</p>\r\n\r\n<p><strong>Contact&nbsp;</strong><br />\r\nSebastian Wahle, +91 73 5879 2916, sebastian.wahle@daimler.com<br />\r\nShina Satyapal, +91 44 45996039, shina.satyapal@daimler.com<br />\r\nRitu Bagri, MSL Group, +91 98 84173290, ritu.bagri@mslgroup.com</p>\r\n', 'Running up to celebrate the fifth anniversary of its market launch, BharatBenz has embarked on its \\\"High Five with BharatBenz \\\" campaign that has a convoy of BharatBenz trucks from across the brand\\\'s portfolio travelling across the country for more than a month. On this journey of more than 8,000 km, the campaign will make more than 50 stops across19 major cities. It will reach out to thousands of stakeholders at dealership touchpoints, Dhabas and Transport nagar and allow them to gather a first-hand experience of best-in-class BharatBenz trucks.', '2017-08-22', 'main_1532334203.jpg', 'thumb_1532334203.jpg', 'thumb_banner_1533298877.jpg', 'thumb_banner_1533298877.jpg', 'BharatBenz \\\'High Five\\\' campaign marks count-down to fifth anniversary of brand\\\'s market launch', '', 'BharatBenz \\\'High Five\\\' campaign marks count-down to fifth anniversary of brand\\\'s market launch', 'BharatBenz \\\'High Five\\\' campaign marks count-down to fifth anniversary of brand\\\'s market launch', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-11 12:39:45', '2018-08-10 09:12:10', 'admin', 'admin'),
(5, 'Meet \\\'Profit Technology\\\': BharatBenz presents all-new heavy-duty truck range in Hyderabad', '<ul>\r\n	<li>All-new BharatBenz range of heavy-duty trucks introduced less than five years after the market launch of the first generation.</li>\r\n	<li>New models raise the bar further in terms of productivity, efficiency, and safety; come with proven BS-IV technology at BS-III price levels.</li>\r\n	<li>Mr. Erich Nesselhauf, Managing Director and CEO, Daimler India Commercial Vehicles: &quot;Under the tagline of &#39;Profit Technology&#39;, we are introducing our all-new BharatBenz heavy-duty trucks - designed to deliver the best-in-class package of productivity, efficiency and safety. Telangana and Andhra Pradesh have been key markets for us in the South and we are convinced that the all new BharatBenz provides the best fit for truck customers in the region to drive their business.&quot;</li>\r\n</ul>\r\n\r\n<p>Hyderabad- BharatBenz today celebrated the launch of its all-new heavy-duty truck range with customers, financiers and dealers at an event held in Hyderabad. The new BharatBenz models are equipped with proven technology to meet the new BS-IV emission standards and are introduced at the price level of the brand&#39;s earlier BS-III trucks. True to the claim of &#39;profit technology&#39;, they deliver significantly better fuel economy as well as lower maintenance costs. Thanks to a host of further innovative features, the all-new range takes productivity, efficiency and safety to the next level. It includes the three product families of haulage trucks, construction trucks, and tractors.</p>\r\n\r\n<p>On the occasion of the launch, <strong>Mr. Erich Nesselhauf, Managing Director and CEO, Daimler India Commercial Vehicles</strong> said: &quot;Under the tagline of &#39;Profit Technology&#39;, we are introducing our all-new BharatBenz heavy-duty trucks - designed to deliver the best-in-class package of productivity, efficiency and safety. Telangana and Andhra Pradesh have been key markets for us in the South and we are convinced that the all new BharatBenz provides the best fit for truck customers in the region to drive their business.</p>\r\n\r\n<p><strong>BS-IV technology: proven solution for customers with SCR</strong></p>\r\n\r\n<p>The BharatBenz product range of trucks above 9 to 49 tonnes has been available as BS-IV variants since August 2015. Even before the transition to the BS-IV standard on 1st April 2017, more than 1,000 BharatBenz BS-IV trucks had been delivered to customers and clocked up more than 42,00,000 kilometres. Feedback collected from these early customers has been very positive: besides the further improved fuel economy and lower maintenance costs, customers appreciate the fact that BharatBenz BS-IV vehicles also work with BS-III fuel, if required.</p>\r\n\r\n<p>BharatBenz BS-IV vehicles meet the upgraded norms using a system based on SCR technology proven in hundreds of thousands of Daimler commercial vehicles in many markets for over a decade. DICV had tested this technology in Indian operating conditions for over a million kilometres before starting to roll it out to customers in 2015. The SCR technology uses an aqueous urea-based fluid called AdBlue, which is sprayed into the exhaust stream to break down dangerous nitrogen oxides emissions into harmless nitrogen and water. AdBlue consumption is only a fraction of fuel consumption, so refill intervals are fewer. Adblue is available nationwide at all BharatBenz dealerships and other outlets.</p>\r\n\r\n<p><strong>Productivity and efficiency: focus on customers profits</strong></p>\r\n\r\n<p>As reflected by the all-new range&#39;s launch tagline &#39;Profit Technology&#39;, the focus has been on further boosting customer value in order to help them drive their profits rather than worry about costs.</p>\r\n\r\n<p><strong>Fuel efficiency improvements</strong> in the double-digit percentage are achieved with the following:</p>\r\n\r\n<p>In BharatBenz&#39; BS-IV solution with SCR technology, exhaust gas treatment is completely separated from the engine and taking place in the exhaust system only. This allows the BS-IV engine to run in an optimized operation window, which gives it a significant fuel efficiency advantage over a BS-III engine.<br />\r\nMultiple improvements across the entire vehicle, such as optimized auxiliaries, aerodynamic changes, and friction reductions.<br />\r\n<strong>Lower maintenance costs</strong> which translate into a significant benefit over the lifecycle are realized with the following features:</p>\r\n\r\n<ul>\r\n	<li>High-durability design of all aggregates including clutch and brake lining.</li>\r\n	<li>Longer, synchronized driveline oil change intervals.</li>\r\n	<li>Differential lock buzzer to warn when differential lock is active.</li>\r\n</ul>\r\n\r\n<p>In addition, significant vehicle weight reductions have been achieved which generate corresponding payload improvements of up to 400kg.</p>\r\n\r\n<p><strong>Safety: holistic approach from vehicle to driver</strong></p>\r\n\r\n<p>Safety has been one of the hallmark features of BharatBenz ever since the brand&#39;s market launch in 2012. Continuing to build on this strength, the all new heavy-duty trucks introduce even more safety features:</p>\r\n\r\n<p>Cruise control for fatigueless driving.<br />\r\nLED accented lamp and dual chamber head lamp for better visibility.<br />\r\nReverse camera / display to cover blind spots (standard in the premium variant).<br />\r\nTubeless tyres for higher stability and tire life.<br />\r\nAir-conditioning to keep the driver fit and alert (optional equipment).<br />\r\nFuel theft protection device.<br />\r\nOther key safety features like crash-tested steel cabins and Anti-Lock Braking System (ABS) have been standard on BharatBenz trucks since the brand&#39;s market launch in 2012 already.</p>\r\n\r\n<p><strong>Design: bolder and more refined at the same time</strong></p>\r\n\r\n<p>The most distinguishing exterior feature of the all-new BharatBenz heavyduty trucks is their bold new front face. A larger version of the brand&#39;s hallmark grille, the new LED day running lights and, for the premium variants, a body-coloured bumper underline the family ties to the all-new range, while ensuring they are easily recognized as BharatBenz trucks.</p>\r\n\r\n<p>The interior was revamped with a new, washable seat fabric that provides even more seating comfort and allows easy maintenance. The premium variant comes with features like all-black interiors and a dashboard with a wooden look that elevates the ambience of the driver&#39;s workplace to a luxury-like look &amp; feel.</p>\r\n\r\n<p><strong>Contact:&nbsp;</strong><br />\r\nShina Satyapal, +91 44 45996039, shina.satyapal@daimler.com&nbsp;<br />\r\nXXXX, MSL Group</p>\r\n', 'BharatBenz today celebrated the launch of its all-new heavy-duty truck range with customers, financiers and dealers at an event held in Hyderabad.', '2017-06-06', 'main_1533964815.jpg', 'thumb_1533964815.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 14:51:42', '2018-08-10 23:50:15', 'admin', 'admin'),
(6, 'Meet \\\'Profit Technology\\\': BharatBenz presents all-new heavy-duty truck range', '<ul>\r\n	<li>All-new BharatBenz range of heavy-duty trucks introduced less than five years after the market launch of the first generation.</li>\r\n	<li>New models raise the bar further in terms of productivity, efficiency, and safety; come with proven BS-IV technology at BS-III price levels.</li>\r\n	<li>Mr. Rajaram Krishnamurthy, Vice President, Marketing and Sales, Daimler India Commercial Vehicles Pvt. Ltd. (DICV): &quot;The Eastern region remains as one of our key strategic markets for BharatBenz. With our all-new BharatBenz heavy-duty trucks, we aim to convince many additional customers in the region - thanks to our best-in-class &#39;profit technology&#39; package of productivity, efficiency and safety with BSIV emission norms.&quot;</li>\r\n</ul>\r\n\r\n<p>Kolkata- BharatBenz today celebrated the launch of its all-new heavy-duty truck range with customers, financiers and dealers from across its eastern region at an event held in Kolkata.</p>\r\n\r\n<p>The new BharatBenz models are equipped with proven technology to meet the new BS-IV emission standards and are introduced at the price level of the brand&#39;s earlier BS-III trucks. True to the claim of &#39;profit technology&#39;, they deliver significantly better fuel economy as well as lower maintenance costs. Thanks to a host of further innovative features, the all-new range takes productivity, efficiency and safety to the next level. It includes the three product families of haulage trucks, construction trucks, and tractors.</p>\r\n\r\n<p>On the occasion of the launch, Mr. Rajaram Krishnamurthy, Vice President, Marketing and Sales, Daimler India Commercial Vehicles Pvt. Ltd. (DICV) said: &quot;The Eastern region remains as one of our key strategic markets for BharatBenz. With our all-new BharatBenz heavy-duty trucks, we aim to convince many additional customers in the region - thanks to our best-in-class &#39;profit technology&#39; package of productivity, efficiency and safety with BSIV emission norms.&quot;</p>\r\n\r\n<p><strong>BS-IV technology: proven solution for customers with SCR</strong></p>\r\n\r\n<p>The BharatBenz product range of trucks above 9 to 49 tonnes has been available as BS-IV variants since August 2015. Even before the transition to the BS-IV standard on 1st April 2017, more than 1,000 BharatBenz BS-IV trucks had been delivered to customers and clocked up more than 42,00,000 kilometres. Feedback collected from these early customers has been very positive: besides the further improved fuel economy and lower maintenance costs, customers appreciate the fact that BharatBenz BS-IV vehicles also work with BS-III fuel, if required.</p>\r\n\r\n<p>BharatBenz BS-IV vehicles meet the upgraded norms using a system based on SCR technology proven in hundreds of thousands of Daimler commercial vehicles in many markets for over a decade. DICV had tested this technology in Indian operating conditions for over a million kilometres before starting to roll it out to customers in 2015.</p>\r\n\r\n<p>The SCR technology uses an aqueous urea-based fluid called AdBlue, which is sprayed into the exhaust stream to break down dangerous nitrogen oxides emissions into harmless nitrogen and water. AdBlue consumption is only a fraction of fuel consumption, so refill intervals are fewer. Adblue is available nationwide at all BharatBenz dealerships and other outlets.</p>\r\n\r\n<p><strong>Productivity and efficiency: focus on customers profits</strong></p>\r\n\r\n<p>As reflected by the all-new range&#39;s launch tagline &#39;Profit Technology&#39;, the focus has been on further boosting customer value in order to help them drive their profits rather than worry about costs.</p>\r\n\r\n<p>Fuel efficiency improvements in the double-digit percentage are achieved with the following:</p>\r\n\r\n<p>In BharatBenz&#39; BS-IV solution with SCR technology, exhaust gas treatment is completely separated from the engine and taking place in the exhaust system only. This allows the BS-IV engine to run in an optimized operation window, which gives it a significant fuel efficiency advantage over a BS-III engine.<br />\r\nMultiple improvements across the entire vehicle, such as optimized auxiliaries, aerodynamic changes, and friction reductions.<br />\r\nLower maintenance costs which translate into a significant benefit over the lifecycle are realized with the following features:</p>\r\n\r\n<ul>\r\n	<li>High-durability design of all aggregates including clutch and brake lining.</li>\r\n	<li>Longer, synchronized driveline oil change intervals.</li>\r\n	<li>Differential lock buzzer to warn when differential lock is active.</li>\r\n</ul>\r\n\r\n<p>In addition, significant vehicle weight reductions have been achieved which generate corresponding payload improvements of up to 400kg.</p>\r\n\r\n<p><strong>Safety: holistic approach from vehicle to driver</strong></p>\r\n\r\n<p>Safety has been one of the hallmark features of BharatBenz ever since the brand&#39;s market launch in 2012. Continuing to build on this strength, the all new heavy-duty trucks introduce even more safety features:</p>\r\n\r\n<ul>\r\n	<li>Cruise control for fatigueless driving.</li>\r\n	<li>LED accented lamp and dual chamber head lamp for better visibility.</li>\r\n	<li>Reverse camera / display to cover blind spots (standard in the premium variant).</li>\r\n	<li>Tubeless tyres for higher stability and tire life.</li>\r\n	<li>Air-conditioning to keep the driver fit and alert (optional equipment).</li>\r\n	<li>Fuel theft protection device.</li>\r\n</ul>\r\n\r\n<p>Other key safety features like crash-tested steel cabins and Anti-Lock Braking System (ABS) have been standard on BharatBenz trucks since the brand&#39;s market launch in 2012 already.</p>\r\n\r\n<p><strong>Design: bolder and more refined at the same time</strong></p>\r\n\r\n<p>The most distinguishing exterior feature of the all-new BharatBenz heavyduty trucks is their bold new front face. A larger version of the brand&#39;s hallmark grille, the new LED day running lights and, for the premium variants, a body-coloured bumper underline the family ties to the all-new range, while ensuring they are easily recognized as BharatBenz trucks.</p>\r\n\r\n<p>The interior was revamped with a new, washable seat fabric that provides even more seating comfort and allows easy maintenance. The premium variant comes with features like all-black interiors and a dashboard with a wooden look that elevates the ambience of the driver&#39;s workplace to a luxury-like look &amp; feel.</p>\r\n\r\n<p><strong>Contact:&nbsp;</strong><br />\r\nShina Satyapal, +91 44 45996039, shina.satyapal@daimler.com&nbsp;<br />\r\nXXXX, MSL Group</p>\r\n', 'BharatBenz today celebrated the launch of its all-new heavy-duty truck range with customers, financiers and dealers from across its eastern region at an event held in Kolkata.', '2017-06-02', 'main_1533964804.jpg', 'thumb_1533964804.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:11:20', '2018-08-10 23:50:04', 'admin', 'admin'),
(7, 'Meet \\\'Profit Technology\\\': BharatBenz presents all-new heavy-duty truck range', '<ul>\r\n	<li>Crafted for comfortable, safe inter-city travel.</li>\r\n	<li>Operators to benefit from low total-cost-of-ownership, reliable performance, proven BS-IV technology.</li>\r\n	<li>Mr. Markus Villinger, Managing Director Daimler Buses India: &quot;We designed the all-new BharatBenz intercity coach to take inter-city travel to the next level: a safer and more comfortable experience for passengers and drivers, and more value for operators at the same time. Building on our acceptance in the market and this strong product with proven BS-IV technology, we are very confident to capture opportunities in this growing segment.&quot;</li>\r\n</ul>\r\n\r\n<p>Chennai - Daimler India Commercial Vehicles (DICV), the wholly-owned subsidiary of Daimler AG, continues its product offensive to further expand the product portfolio of its BharatBenz brand. As per plan and as announced in 2015 with the start of the company&#39;s bus business, the all-new BharatBenz intercity coach completes the brand&#39;s bus line-up. Targeted at the growing segment of inter-city travel, the 16-tonne, 238 hp (175 kW) front-engine coach complements BharatBenz&#39; successful portfolio of school, staff and tourist buses in the 9-tonne category, which have been available since the end of 2015.</p>\r\n\r\n<p>Speaking at the launch event, Mr. Markus Villinger, Managing Director Daimler Buses India said: &quot;We designed the all-new BharatBenz intercity coach to take inter-city travel to the next level: a safer and more comfortable experience for passengers and drivers, and more value for operators at the same time. Building on our acceptance in the market and this strong product with proven BS-IV technology, we are very confident to capture opportunities in this growing segment.&quot;</p>\r\n\r\n<p><strong>Crafted for passenger comfort</strong><br />\r\nWith its optimized wheelbase, the 12-meter BharatBenz intercity coach ensures best-in-class cabin space distribution for easy seating, offering Press Information 19th April 2017 BharatBenz - a Daimler brand www.bharatbenz.com 790 mm of legroom for passengers. Refined interiors and wider windows provide for a relaxed journey with panoramic views. The front and rear air suspensions are calibrated with chassis performance to minimize impacts of road undulations. Overall, the vehicle also offers a more quiet ride thanks to its unique open saloon design which enhances acoustic insulation despite a front mounted engine. A powerful air conditioner with engine driven compressor assures not only a pleasant cabin environment for passengers but also a workplace for drivers that helps them to stay alert.</p>\r\n\r\n<p><strong>Built for safer travel</strong><br />\r\nThe BharatBenz intercity coach adopts a holistic approach towards safety and is fitted with a comprehensive range of seamlessly integrated active and passive safety features. The robust aluminique body meets the stringent safety standards for roll over as per the AIS-031 CMUR Bus Body Code. Fabricated without any welded parts, the lightweight structure not only gives extra strength to the vehicle but also lowers its centre of gravity, which provides extra stability to the vehicle. The wider brake lining (410 x 220 for all four tyres) guarantees effective braking leading to a better braking distance. With regard to interiors, the vinyl flooring comes with an anti-skid top layer and fire retardant materials which are carefully designed to ensure a safe walkway for passengers in case of emergency situations.</p>\r\n\r\n<p><strong>Designed to meet operators&#39; requirements</strong><br />\r\nWith a focus on higher profitability for bus operators, the BharatBenz intercity coach is designed for lower cost of ownership. The vehicle body&#39;s unique aluminique structure considerably lowers its gross vehicle weight, while the aerodynamic body design and tubeless tyres reduce drag and rolling resistance, altogether improving fuel efficiency. The coach also offers unmatched oil change and gearbox oil change intervals of 100,000 km. The extended warranty that BharatBenz offers for all its vehicles nationwide is also available. As a unique BharatBenz feature, annual maintenance packages are offered that cover both the body and chassis, ensuring optimum maintenance.</p>\r\n\r\n<p><strong>Proven BS-IV technology with SCR</strong><br />\r\nBharatBenz BS-IV vehicles meet the upgraded norms using a system based on SCR technology proven in hundreds of thousands of Daimler commercial vehicles in many markets for over a decade. Besides the further improved fuel economy and lower maintenance costs, SCR technology allows BharatBenz - a Daimler brand www.bharatbenz.com BharatBenz BS-IV vehicles to operate unhampered with BS-III fuel, if required. The SCR technology uses an aqueous urea-based fluid called AdBlue, which is sprayed into the exhaust stream to break down dangerous nitrogen oxides emissions into harmless nitrogen and water. AdBlue consumption is only a fraction of fuel consumption, so refill intervals are fewer. AdBlue is available nationwide at all BharatBenz dealerships and other outlets.</p>\r\n\r\n<p><strong>About Daimler Buses India</strong><br />\r\nResponsible for DICV&#39;s bus business, Daimler Buses India is catering to the domestic market with a twofold strategy: BharatBenz front-engine buses and coaches are designed to create a new benchmark in the volume segment, while the premium segment is addressed with Mercedes-Benz rear-engine coaches. All vehicles are produced at DICV&#39;s state-of-the-art plant in Oragadam near Chennai. Customer services for both brands are provided through the pan-Indian BharatBenz dealer network, offering tailormade service packages, 24x7 after-sales support, and advanced interactive vehicle diagnosis. Custom-tailored financing solutions are provided by Daimler Financial Services India.</p>\r\n', 'All-new BharatBenz range of heavy-duty trucks introduced less than ?five years after the market launch of the first generation.', '2017-04-07', 'main_1533964793.jpg', 'thumb_1533964793.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:15:52', '2018-08-10 23:49:53', 'admin', 'admin'),
(8, 'BharatBenz expands product portfolio with launch of all-new 16-tonne intercity coach', '<ul>\r\n	<li>Crafted for comfortable, safe inter-city travel.</li>\r\n	<li>Operators to benefit from low total-cost-of-ownership, reliable performance, proven BS-IV technology.</li>\r\n	<li>Mr. Markus Villinger, Managing Director Daimler Buses India: &quot;We designed the all-new BharatBenz intercity coach to take inter-city travel to the next level: a safer and more comfortable experience for passengers and drivers, and more value for operators at the same time. Building on our acceptance in the market and this strong product with proven BS-IV technology, we are very confident to capture opportunities in this growing segment.&quot;</li>\r\n</ul>\r\n\r\n<p>Chennai - Daimler India Commercial Vehicles (DICV), the wholly-owned subsidiary of Daimler AG, continues its product offensive to further expand the product portfolio of its BharatBenz brand. As per plan and as announced in 2015 with the start of the company&#39;s bus business, the all-new BharatBenz intercity coach completes the brand&#39;s bus line-up. Targeted at the growing segment of inter-city travel, the 16-tonne, 238 hp (175 kW) front-engine coach complements BharatBenz&#39; successful portfolio of school, staff and tourist buses in the 9-tonne category, which have been available since the end of 2015.</p>\r\n\r\n<p>Speaking at the launch event, Mr. Markus Villinger, Managing Director Daimler Buses India said: &quot;We designed the all-new BharatBenz intercity coach to take inter-city travel to the next level: a safer and more comfortable experience for passengers and drivers, and more value for operators at the same time. Building on our acceptance in the market and this strong product with proven BS-IV technology, we are very confident to capture opportunities in this growing segment.&quot;</p>\r\n\r\n<p><strong>Crafted for passenger comfort</strong><br />\r\nWith its optimized wheelbase, the 12-meter BharatBenz intercity coach ensures best-in-class cabin space distribution for easy seating, offering Press Information 19th April 2017 BharatBenz - a Daimler brand www.bharatbenz.com 790 mm of legroom for passengers. Refined interiors and wider windows provide for a relaxed journey with panoramic views. The front and rear air suspensions are calibrated with chassis performance to minimize impacts of road undulations. Overall, the vehicle also offers a more quiet ride thanks to its unique open saloon design which enhances acoustic insulation despite a front mounted engine. A powerful air conditioner with engine driven compressor assures not only a pleasant cabin environment for passengers but also a workplace for drivers that helps them to stay alert.</p>\r\n\r\n<p><strong>Built for safer travel</strong><br />\r\nThe BharatBenz intercity coach adopts a holistic approach towards safety and is fitted with a comprehensive range of seamlessly integrated active and passive safety features. The robust aluminique body meets the stringent safety standards for roll over as per the AIS-031 CMUR Bus Body Code. Fabricated without any welded parts, the lightweight structure not only gives extra strength to the vehicle but also lowers its centre of gravity, which provides extra stability to the vehicle. The wider brake lining (410 x 220 for all four tyres) guarantees effective braking leading to a better braking distance. With regard to interiors, the vinyl flooring comes with an anti-skid top layer and fire retardant materials which are carefully designed to ensure a safe walkway for passengers in case of emergency situations.</p>\r\n\r\n<p><strong>Designed to meet operators&#39; requirements</strong><br />\r\nWith a focus on higher profitability for bus operators, the BharatBenz intercity coach is designed for lower cost of ownership. The vehicle body&#39;s unique aluminique structure considerably lowers its gross vehicle weight, while the aerodynamic body design and tubeless tyres reduce drag and rolling resistance, altogether improving fuel efficiency. The coach also offers unmatched oil change and gearbox oil change intervals of 100,000 km. The extended warranty that BharatBenz offers for all its vehicles nationwide is also available. As a unique BharatBenz feature, annual maintenance packages are offered that cover both the body and chassis, ensuring optimum maintenance.</p>\r\n\r\n<p><strong>Proven BS-IV technology with SCR</strong><br />\r\nBharatBenz BS-IV vehicles meet the upgraded norms using a system based on SCR technology proven in hundreds of thousands of Daimler commercial vehicles in many markets for over a decade. Besides the further improved fuel economy and lower maintenance costs, SCR technology allows BharatBenz - a Daimler brand www.bharatbenz.com BharatBenz BS-IV vehicles to operate unhampered with BS-III fuel, if required. The SCR technology uses an aqueous urea-based fluid called AdBlue, which is sprayed into the exhaust stream to break down dangerous nitrogen oxides emissions into harmless nitrogen and water. AdBlue consumption is only a fraction of fuel consumption, so refill intervals are fewer. AdBlue is available nationwide at all BharatBenz dealerships and other outlets.</p>\r\n\r\n<p><strong>About Daimler Buses India</strong><br />\r\nResponsible for DICV&#39;s bus business, Daimler Buses India is catering to the domestic market with a twofold strategy: BharatBenz front-engine buses and coaches are designed to create a new benchmark in the volume segment, while the premium segment is addressed with Mercedes-Benz rear-engine coaches. All vehicles are produced at DICV&#39;s state-of-the-art plant in Oragadam near Chennai. Customer services for both brands are provided through the pan-Indian BharatBenz dealer network, offering tailormade service packages, 24x7 after-sales support, and advanced interactive vehicle diagnosis. Custom-tailored financing solutions are provided by Daimler Financial Services India.</p>\r\n', 'Daimler India Commercial Vehicles (DICV), the wholly-owned subsidiary of Daimler AG, continues its product offensive to further expand the product portfolio of its BharatBenz brand.', '2017-04-19', 'main_1533964782.jpg', 'thumb_1533964782.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:18:47', '2018-08-10 23:49:42', 'admin', 'admin'),
(9, 'BharatBenz widens reach in Tamil Nadu with Tuticorin dealership', '<ul>\r\n	<li>Fourth BharatBenz 3S touch point owned and operated by Jayaraj Trucking in Tamil Nadu</li>\r\n	<li>State-of-the art 3S (sales, service, spares) facility to cater to BharatBenz trucks and buses, Mercedes-Benz coaches</li>\r\n	<li>Mr. Sominder Singh, Vice President Domestic Sales, Product Management &amp; Network, Daimler India Commercial Vehicles (DICV): &quot;BharatBenz enjoys a strong following in the market with a robust &amp; reliable product portfolio. With our 12th dealership touchpoint in the state of Tamil Nadu, we are able to cater to our customer requirement in the region. Jayaraj Trucking meets BharatBenz&#39; highest standards of quality and expertise and is committed to provide a holistic ownership experience.&quot;</li>\r\n</ul>\r\n\r\n<p><strong>Tuticorin</strong>- Daimler India Commercial Vehicles (DICV) in association with Jayaraj Trucking today inaugurated a new state-of-the-art dealership touchpoint for its commercial vehicle brands in the &#39;pearl city&#39; Tuticorin. The latest addition to DICV&#39;s domestic sales and service network will cater to BharatBenz trucks and buses as well as to Mercedes-Benz luxury coaches. The opening of this new dealership touchpoint which is owned and run by Jayaraj Trucking is an illustration of BharatBenz&#39;s demand and acceptance in the market. DICV&#39;s dealer network continues to proliferate deeper into the domestic market with semi urban and rural areas.</p>\r\n\r\n<p>The Tuticorin dealership is the fourth BharatBenz touchpoint for Jayaraj Trucking, preceded by its presence in Tirunelveli, Trichy and Madurai. The new dealership is spread across 35,000 square feet, and is a one-stop service destination for trucks and buses and offers a superlative brand experience. The dealership is located at Marudai to Tuticorin National Highway, Mela Arasadi</p>\r\n\r\n<p><strong>Mr. Sominder Singh, Vice President Domestic Sales, Product Management &amp; Network, Daimler India Commercial Vehicles (DICV),</strong> said: &quot;BharatBenz enjoys a strong following in the market with a robust &amp; reliable product portfolio. With our 12th dealership touchpoint in the state of Tamil Nadu, we are able to cater to our customer requirement in the region. Jayaraj Trucking meets BharatBenz&#39; highest standards of quality and expertise and is committed to provide a holistic ownership experience.&quot;</p>\r\n\r\n<p><strong>Mr. Jeyasuresh Jayaraj, Chairman, Jayaraj Trucks &amp; Buses Private Limited</strong>, said: &quot;Our new BharatBenz dealership reflects our confidence in the brand&#39;s ability to provide comprehensive commercial vehicle solutions to this industrial belt. Customers can be assured of the best of sales advisory and aftersales services with Proserv.&quot;</p>\r\n\r\n<p><strong>Features of the Dealership:&nbsp;</strong><br />\r\nThe avant-garde 3S facility (sales, service, spares) has six mechanical bays. The dealership encompasses a unique lounge which customers/drivers can use while their vehicles are being serviced. The dealership will have trained manpower who understand the diverse needs of the customers. The 24x7 enabled workshop is manned by qualified Daimler trained engineers/technicians and comes equipped with high productivity tools, advanced guided diagnostics and mobile service vans. The dealership will provide a host of value-added services such as cashless zero-depreciation insurance, full maintenance contracts, extended warranty, 24x7 roadside assistance, vehicle tracking systems, driver training, and on-site service.</p>\r\n\r\n<p><strong>About the BharatBenz sales &amp; service network in Tamil Nadu&nbsp;</strong><br />\r\nIn Tamil Nadu BharatBenz now has 12 Network touch points with outlets in Chennai, Coimbatore, Arasur, Hosur, Salem, Madurai, Vellore, Trichy, Tirunelveli, Tirupur, Sankari and the newly added Tuticorin. All the dealerships provide sales &amp; service for the complete range of 9-49 tonne BharatBenz trucks as well as for BharatBenz 9 tonne buses and Mercedes-Benz luxury coaches.</p>\r\n', 'Fourth BharatBenz 3S touch point owned and operated by Jayaraj Trucking in Tamil Nadu. State-of-the art 3S (sales, service, spares) facility to cater to BharatBenz trucks and buses, Mercedes-Benz coaches', '2017-01-16', 'main_1533964771.jpg', 'thumb_1533964771.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:24:03', '2018-08-10 23:49:31', 'admin', 'admin');
INSERT INTO `tbl_pressrelease` (`id`, `title`, `description`, `short_description`, `release_date`, `image`, `thumbnail`, `banner`, `mobile_banner`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(10, 'BharatBenz trucks power Season I of \\\'IRT - India\\\'s Deadliest Roads\\\'', '<ul>\r\n	<li>Actress Mandira Bedi, wrestler Sangram Singh and actor Varun Sharma participate in the first expedition with the BharatBenz trucks</li>\r\n	<li>Mr. Sominder Singh, Vice President Domestic Sales, Product Management &amp; Network, Daimler India Commercial Vehicles:&nbsp;</li>\r\n	<li>&quot;We have associated with History TV18, as we found the concept of the show very challenging and fascinating. It is the perfect format to visually showcase how BharatBenz trucks are tailor-made for our customer&#39;s needs. They are robust, reliable and the ideal vehicles to handle all kinds of road and weather conditions as well as the toughest of terrains.&quot;</li>\r\n</ul>\r\n\r\n<p><strong>Mumbai/ Chennai:</strong> BharatBenz associates with History TV18 to present the first Indian edition of &#39;IRT- India&#39;s Deadliest Road&#39; featuring 10 episodes will air every Friday, starting from October 21, 2016 at 09:00pm. The show will witness actress Mandira Bedi, wrestler Sangram Singh and actor Varun Sharma maneuvering BharatBenz trucks through the roads of Leh-Ladakh, Pangong Lake and Nubra, to supply essential commodities to the remote villages in these regions, which are otherwise cut off from the world during severe winters.</p>\r\n\r\n<p>The show features the three celebrities driving BharatBenz MD IN-POWER 1214R for fifteen hundred kilometers up to 18,000 feet in the unforgiving terrain of the Himalayan region. &#39;IRT-India&#39;s Deadliest Roads&#39; documents the daring and difficult conditions that truckers face while driving at these heights. The challenging terrain threw up the rockiest of roads, slippery curves, the truly &#39;crazy nalas&#39; and many other kinds of almost unnavigable paths. The participants were trained in Chennai and Manali to drive the trucks on different terrains and also get familiar with the features of the truck, which helped them during the course of the thrilling expedition.</p>\r\n\r\n<p>Speaking on the association, Mr. Sominder Singh, DICV&#39;s Vice President responsible for Domestic Sales, Product Management &amp; Network said &quot;We have associated with History TV18, as we found the concept of the show very challenging and fascinating. It is the perfect format to visually showcase how BharatBenz trucks are tailor-made for our customers&#39; needs. They are robust, reliable and the ideal vehicles to handle all kinds of road and weather conditions as well as the toughest of terrains.&quot;</p>\r\n\r\n<p>Speaking on the show Sangeetha Aiyer, VP &amp; Head Marketing, History TV18 said &quot;I&#39;m sure its exciting news for all our viewers that local content &amp; characters are being featured in formats of global repute. The show best epitomizes what the channel stands for: excellent production values, edge of the seat entertainment with innovative never seen before formats.</p>\r\n\r\n<p>The three BharatBenz trucks on the show - 1214R MD IN-POWER models - are from the recently launched next generation of reliable medium duty trucks, which comes with an enhanced focus on payload advantage, improved fuel efficiency, higher service intervals, radial tyres and enhanced feature-loaded driving comfort. The contemporarily styled trucks also feature the Multi Drive Mode (MDM) which allows drivers to optimize engine settings either for urban traffic or highway trucking with the push of a button.</p>\r\n', 'BharatBenz associates with History TV18 to present the first Indian edition of \\\'IRT - India\\\'s Deadliest Road\\\' featuring 10 episodes will air every Friday, starting from October 21, 2016 at 09:00pm. The show will witness actress Mandira Bedi, wrestler Sangram Singh and actor Varun Sharma maneuvering BharatBenz trucks through the roads of Leh-Ladakh, Pangong Lake and Nubra, to supply essential commodities to the remote villages in these regions, which are otherwise cut off from the world during severe winters.', '2016-10-18', 'main_1533964761.jpg', 'thumb_1533964761.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:26:51', '2018-08-10 23:49:21', 'admin', 'admin'),
(11, 'BharatBenz expands reach in northern India with Ghaziabad dealership', '<ul>\r\n	<li>New touchpoint in BharatBenz&#39;s network owned and run by Espirit Trucking</li>\r\n	<li>State-of-the art 3S (sales, service, spares) facility to cater to BharatBenz trucks and buses, Mercedes-Benz buses</li>\r\n	<li>Mr. Sominder Singh, Vice President Domestic Sales, Product Management &amp; Network, Daimler</li>\r\n</ul>\r\n\r\n<p>India Commercial Vehicles: &quot;We want to get even closer to our customers - in line with our continuous growth, we are further expanding our sales and service network. Espirit Trucking is an experienced partner who will provide excellent sales and services to our customers from this new venture in Ghaziabad.&quot;</p>\r\n\r\n<p>Ghaziabad - Daimler India Commercial Vehicles (DICV) in association with Espirit Trucking today inaugurated a new state-of-the-art BharatBenz dealership for its commercial vehicle brands in National Capital Region (NCR), Ghaziabad. The latest addition to DICV&#39;s domestic sales and service network will cater to BharatBenz trucks and buses as well as to Mercedes-Benz luxury buses. The opening of this new dealership which is owned and run by Espirit Trucking is an example of how DICV&#39;s dealer network continues to proliferate deeper into domestic market regions including tier II and tier III cities.</p>\r\n\r\n<p>Speaking at the inauguration of the new dealership, Mr. Sominder Singh, DICV&#39;s Vice President responsible for Domestic Sales, Product Management &amp; Network said: &quot;We want to get even closer to our customers - in line with our continuous growth we are further expanding our sales and service network. Espirit Trucking is an experienced partner who will provide excellent sales and services to our customers from this new venture in Ghaziabad.&quot;</p>\r\n\r\n<p>Mr. Vivek Avasthi, Director, Espirit Trucking said: &quot;We are proud to grow together with DICV. Ghaziabad is the perfect location for this new full-fledged commercial vehicle dealership. Our investment here reflects our belief into the enormous growth opportunities for commercial vehicles in one of India&#39;s most vibrant regions, with the BharatBenz and Mercedes-Benz brands giving us the right products to be successful. The motto of Espirit Trucking is to provide a unique trucking experience to its valued customers on both sale and proactive after sale service.&quot;</p>\r\n\r\n<p>Espirit Trucking at Ghaziabad - &#39;the gateway of Uttar Pradesh&#39; - is strategically located on NH58, Morta Village. The dealership spread over 67,000 sqft has been designed to provide a superior experience for customers. It features an avant-garde 3S facility (sales, service, spares) that has seven mechanical bays and three accidental bays with a washing facility. The dealership encompasses a unique driver lounge and rest room which customers/drivers can use while their vehicles are being serviced. The dealership will have trained manpower who understand the diverse needs of the customers. The 24x7 enabled workshop is manned by qualified Daimler trained engineers/technicians and comes equipped with high productivity tools, advanced guided diagnostics and mobile service vans. The dealership will provide a host of value-added services such as cashless zero-depreciation insurance, full maintenance contracts, extended warranty, 24x7 roadside assistance, vehicle tracking systems, driver training, and on-site service.</p>\r\n', 'Ghaziabad - Daimler India Commercial Vehicles (DICV) in association with Espirit Trucking today inaugurated a new state-of-the-art BharatBenz dealership for its commercial vehicle brands in National Capital Region (NCR), Ghaziabad. The latest addition to DICV\\\'s domestic sales and service network will cater to BharatBenz trucks and buses as well as to Mercedes-Benz luxury buses. The opening of this new dealership which is owned and run by Espirit Trucking is an example of how DICV\\\'s dealer network continues to proliferate deeper into domestic market regions including tier II and tier III cities.', '2016-06-22', 'main_1533964749.jpg', 'thumb_1533964749.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:28:59', '2018-08-10 23:49:09', 'admin', 'admin'),
(12, 'Daimler India Commercial Vehicles celebrates partnership with BharatBenz vehicle financiers', '<ul>\r\n	<li>Tailor-made financing packages for customers of modern BharatBenz trucks and buses available through a network of preferred financers</li>\r\n	<li>BharatBenz Financiers Conclave with focus on innovative financing solutions to optimally support sales</li>\r\n	<li>Erich Nesselhauf, Managing Director and CEO, Daimler India Commercial Vehicles: &quot;BharatBenz customers do not only want the best products, they are also asking for tailor-made financing solutions. Our partnerships with leading players from the financial sector are key elements of our success.&quot;</li>\r\n</ul>\r\n\r\n<p>Mumbai / Chennai - Celebrating its partnerships with leading players from the financial sector, Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a wholly-owned subsidiary of Daimler AG, held its BharatBenz Financier Conclave in the financial hub of the country, Mumbai on April 20, 2016 at Taj land&#39;s end. Over 200 representatives of DICV&#39;s partners and Daimler executives from various areas gathered to exchange ideas on how to further innovate financing solutions to optimally support sales of modern BharatBenz trucks and buses in the Indian commercial vehicle market.</p>\r\n\r\n<p>Addressing the representatives of DICV&#39;s financiers at the event, Mr. Erich Nesselhauf, Managing Director and CEO, Daimler India Commercial Vehicles said: &quot;BharatBenz customers do not only want the best products, they are also asking for tailor-made financing solutions. Our partnerships with you as leading players from the financial sector are key elements of our success. Thank you for your contributions - we continue to count on your innovative solutions as we power ahead on our growth path. &quot;</p>\r\n\r\n<p>Added Mr. Sominder Singh, Vice President Domestic Sales, Product Management and Network, DICV: &quot;Better performance, superior uptime, lower maintenance costs - that is why more and more customers decide for BharatBenz vehicles. Another key reason is that we enable customers through fast, easy and accessible financing solutions.&quot;</p>\r\n\r\n<p>Since the market launch of BharatBenz vehicles in 2012, DICV has continuously expanded its set of partners for vehicle financing. Currently DICV has partnered with over 25 banks and NBFC (Non-banking Financing Companies) to offer tailor-made financing packages to customers across the country for modern BharatBenz trucks and buses.</p>\r\n\r\n<p>In addition to these external financial partners, BharatBenz customers also have access to the brand&#39;s financial services arm - the captive financing unit BharatBenz Financial - for financing, insurance and service packages.</p>\r\n', 'Celebrating its partnerships with leading players from the financial sector, Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a wholly-owned subsidiary of Daimler AG, held its BharatBenz Financier Conclave in the financial hub of the country, Mumbai on April 20, 2016', '2016-04-21', 'main_1533964738.jpg', 'thumb_1533964738.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:32:58', '2018-08-10 23:48:58', 'admin', 'admin'),
(13, 'Two new Regional Centers: Daimler Trucks Asia is moving closer to customers in Africa', '<ul>\r\n	<li>Daimler Trucks opens two regional centers (RC) in Africa for all brands including FUSO.</li>\r\n	<li>RC Africa manages sales and customer service for 41 markets in East, Central and West Africa.</li>\r\n	<li>RC Southern Africa responsible for nine markets.</li>\r\n</ul>\r\n\r\n<p>Daimler Trucks Asia (DTA), which has a long history in the region, will further enhances its presence in African markets.<br />\r\nKawasaki, Japan / Oragadam, Tamil Nadu, India &ndash; Daimler Trucks Asia (DTA), an organizational unit of Daimler Trucks that jointly operates Mitsubishi Fuso Truck and Bus Corporation (MFTBC) and Daimler India Commercial Vehicles India Pvt. Ltd. (DICV) will be expanding sales and services for its FUSO brand benefitting from the opening of two new Daimler Trucks regional centers.</p>\r\n\r\n<p>Just months after the opening of the first Regional Center for Commercial Vehicles in Dubai (responsible for Middle East and North Africa), Daimler Trucks has opened a second RC in Nairobi/ Kenya and a third in Pretoria/ South Africa. These regional centers will be responsible for sales and service of all Daimler brands in 41 markets in East, Central and West Africa, and will cover 9 markets of Southern Africa.</p>\r\n\r\n<p>DTA will benefit from this regional setup with its FUSO brand that has been sold in Africa for more than 45 years. Mr. Marc Llistosella, President and CEO of MFTBC and Head of Daimler Trucks Asia: &ldquo;With the opening of these two new Regional Centers, we will get closer to our FUSO customers in Africa, being able to sell and service them better. We believe that Africa has a big growth potential for robust and efficient trucks and intend to increase our sales and market share with this step.&rdquo;</p>\r\n\r\n<p>DTA has launched its all-new FUSO range in Kenya, Tanzania, Uganda, Nigeria and South Africa since 2013, with more markets to come. The vehicles range is manufactured in its state-of-the art factory in Chennai, India and exported to the African markets. Later in 2016 DTA will start to sell its new high-powered heavy-duty truck under the FUSO brand in Kenya and Tanzania in response to demand for increasing infrastructure projects.</p>\r\n\r\n<p>Marc Llistosella sees this move as another proof for the successful global Daimler Truck strategy: &ldquo;While benefitting from our access to Daimler Trucks Technology and international Sales setup, our DTA brands FUSO and BharatBenz are clearly positioned as the growth drivers in Asia, Africa and South America.&rdquo;</p>\r\n\r\n<p><strong>East, Central, and West Africa: A promising region with a population of 770 million inhabitants</strong></p>\r\n\r\n<p>The East, Central, and West Africa region, with a total population of 770 million consists of 41 markets, including Kenya, Tanzania, and Nigeria. It offers great long-term potential for growth: 68% of the population is under the age of 25 &ndash; no other region has a higher percentage. The dynamic development of the region is further supported by direct foreign investment, which has grown to six its year 2000 level. In parallel with the growing economy, it can be assumed that the transport sector will develop and thus also the demand for commercial vehicles will increase. In 2015, Daimler Trucks sold around 5,900 commercial vehicles in the region, of which 4,000 units were Fuso. This shows that DTA is already a key growth driver for the Daimler Commercial Vehicles business.</p>\r\n\r\n<p><strong>Southern Africa: Dynamic development expected in the medium term</strong></p>\r\n\r\n<p>Market observers see similar dynamics in the region of Southern Africa. The region is comprised of nine countries, including South Africa, Namibia and Botswana. Despite the currently challenging global economic situation, experts expect annual increases in average growth of more than 4.5%. Correspondingly great potential is expected for the RCSA. Last year, Daimler sold around 5,500 commercial vehicles in the region, including 1,600 Fuso unites.</p>\r\n\r\n<p><strong>Market responsibility of Each Regional Center at a glance</strong></p>\r\n\r\n<p>Regional Center East, Central, and West Africa<br />\r\nKenya, Tanzania, Rwanda, Burundi, Angola, Gabon, Chad, Nigeria, Eritrea, Benin, Mali, Togo, Ghana, Niger, Uganda, Ethiopia, Sudan, Burkina Faso, Djibouti, E. Guinea, Cameroon, Somalia, Madagascar, Seychelles, Gambia, Senegal, Guinea, Comoros, D.R. Congo, Republic of Congo, Central African Republic, South Sudan, Mauritius, Cape Verde, Ivory Coast, Sierra Leone, Guinea Bissau, Liberia, Western Sahara, and Sao Tome &amp; Principe.</p>\r\n\r\n<p>Regional Center Southern Africa<br />\r\nSouth Africa, Namibia, Botswana, Zimbabwe, Mozambique, Malawi, Zambia, Lesotho, and Swaziland.</p>\r\n', 'Kawasaki, Japan / Oragadam, Tamil Nadu, India – Daimler Trucks Asia (DTA), an organizational unit of Daimler Trucks that jointly operates Mitsubishi Fuso Truck and Bus Corporation (MFTBC) and Daimler India Commercial Vehicles India Pvt. Ltd. (DICV) will be expanding sales and services for its FUSO brand benefitting from the opening of two new Daimler Trucks regional centers.', '2016-02-16', 'main_1533964722.jpg', 'thumb_1533964722.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:34:56', '2018-08-10 23:48:42', 'admin', 'admin'),
(14, 'Successful Year 2015 for Daimler India Commercial Vehicles', '<ul>\r\n	<li>Announcement follows disclosure of full-year 2015 figures by parent company Daimler AG on 4 February.</li>\r\n	<li>Domestic sales increased by 37 percent to 14,000 units on strength of product lineup, export business continued to grow favorably.</li>\r\n	<li>Powerful new products tailored for the mining and the construction segments exemplify strategic direction.</li>\r\n	<li>Erich Nesselhauf, Managing Director and CEO Daimler India Commercial Vehicles: &ldquo;2015 has been another successful year for us. With our portfolio of modern trucks, we have powered ahead on our growth course domestically in India and in our export business. With important new BharatBenz product generations hitting the market in 2016, we are committed to sustainably grow our business as part of Daimler Trucks Asia.&rdquo;</li>\r\n</ul>\r\n\r\n<p>Oragadam, Tamil Nadu &ndash; Daimler India Commercial Vehicles (DICV), the wholly-owned subsidiary of Daimler AG, looks back on a successful year 2015. Domestic sales increased by 37 percent to 14,000 units on the strength of the BharatBenz brand&rsquo;s powerful product lineup. Following its market launch in September 2012, Daimler&rsquo;s Indian truck and bus brand has introduced 20 products so far in its mission to transform the country&rsquo;s Commercial Vehicle segment, with more to follow. Far more than 30,000 BharatBenz vehicles with the hallmark value-for-money proposition have since been delivered to customers, an unprecedented volume-ramp up in the industry.</p>\r\n\r\n<p>Mr. Erich Nesselhauf, Managing Director and CEO of Daimler India Commercial Vehicles, said: &ldquo;2015 has been another successful year for us. With our portfolio of modern trucks, we have powered ahead on our growth course domestically in India and in our export business. This success was made possible thanks to the excellent contributions of the entire team and our partners.&rdquo;</p>\r\n\r\n<p>Demand for BharatBenz products in 2015 rose especially in the heavy-duty segment. New tailored applications for the mining and the construction segments, such as the highly recognized BharatBenz 3143 CM, resonated well with customers. This exemplifies the strategic direction to introduce an entire family of special purpose vehicles in order to take on other parts of this segment. At the same time, the company&rsquo;s FUSO-branded export business - as part of Daimler Trucks Asia - continued to grow favorably.</p>\r\n\r\n<p>The year 2015 was remarkable for Daimler India Commercial Vehicles due to various milestones that were achieved:</p>\r\n\r\n<ul>\r\n	<li>Start of bus production in the 425-crores expansion of the company&rsquo;s manufacturing operations in Oragadam, entry into the bus segment with BharatBenz staff buses and Mercedes-Benz Super-High-Deck (SHD) luxury coach.</li>\r\n	<li>Launch of second wave of truck products &ndash; including BharatBenz high-powered engine trucks, BharatBenz heavy duty tractors.</li>\r\n	<li>Launch of the BharatBenz 3143 CM, the first Super-Heavy-Duty truck localized in India.</li>\r\n	<li>Display of the widest range of mining and construction vehicles at the 2015 EXCON in Bengaluru, South East Asia&rsquo;s largest construction equipment and technology trade fair.</li>\r\n	<li>Crossing of the 4-million exports mark of Indian-made parts to other Daimler Trucks entities across the globe.</li>\r\n</ul>\r\n\r\n<p>Commenting on the company&rsquo;s outlook for 2016, Mr. Nesselhauf continued: &ldquo;With important new BharatBenz product generations hitting the market in 2016, we are committed to sustainably grow our business as part of Daimler Trucks Asia. Both in the medium and heavy-duty segment we will once more raise standards and customer value. At the same time, Indian-made FUSO trucks will play a key role in opening up important growth markets in Asia, Africa, and Latin America.&rdquo;</p>\r\n', 'Oragadam, Tamil Nadu – Daimler India Commercial Vehicles (DICV), the wholly-owned subsidiary of Daimler AG, looks back on a successful year 2015. Domestic sales increased by 37 percent to 14,000 units on the strength of the BharatBenz brand’s powerful product lineup.', '2016-02-12', 'main_1533964710.jpg', 'thumb_1533964710.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:37:50', '2018-08-10 23:48:30', 'admin', 'admin'),
(15, 'BharatBenz Launches MD IN-POWER, New Generation of Modern Medium Duty Trucks', '<ul>\r\n	<li>Four models 914R, 1214R, 1214RE and 1217C launched in two variants</li>\r\n	<li>Key features: Multi Drive Mode, payload advantage, improved fuel efficiency, higher service intervals, radial tyres and enhanced feature-loaded driving comfort</li>\r\n	<li>Erich Nesselhauf, Managing Director &amp; CEO, Daimler India Commercial Vehicles: &ldquo;Only three years after having introduced our first BharatBenz product line of medium-duty trucks, we are again raising standards in the segment with our new generation MD IN-POWER.&rdquo;</li>\r\n</ul>\r\n\r\n<p><strong>Chennai:</strong> Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the wholly-owned subsidiary of Daimler AG, today launched its new generation of BharatBenz medium duty trucks dubbed MD IN-POWER. Featuring four new generation medium duty BharatBenz models (914R, 1214R, 1214RE and 1217C), the new trucks are launched each in a base and a premium variant and will now be commercially available starting today at BharatBenz dealerships across India.</p>\r\n\r\n<p>Speaking on the occasion, Mr. Erich Nesselhauf, Managing Director &amp; CEO, Daimler India Commercial Vehicles said: &ldquo;Only three years after having introduced our first BharatBenz product line of medium-duty trucks, we are again raising standards in the segment with our new generation MD IN-POWER. As demand for medium-duty trucks is expected to surge nationwide in India, we are in an excellent position to participate in the MDT segment&rsquo;s growth with the superior value our MD IN-POWER trucks offer to customers.&rdquo;</p>\r\n\r\n<p>The new MD IN-POWER range underlines the BharatBenz brand&rsquo;s strong focus on customer requirements and its emphasis on R&amp;D and innovation to further boost its hallmark value-for-money proposition. The most prominent example &ndash; and an industry-first in India&rsquo;s MDT segment - is the Multi Drive Mode (MDM) which allows drivers to optimize engine settings either for urban traffic or highway trucking with the push of a button. Furthermore, the MD-INPOWER range comes with an enhanced focus on payload advantage, improved fuel efficiency, higher service intervals, radial tyres and enhanced feature-loaded driving comfort. The radial tyres offer better traction, longer life and greater returns. Further new key features include better low-end torque, longer service intervals, and contemporary styling. Keeping its commitment to a clean environment, the new BharatBenz range of MDTs is available in BS-III, BS-IV and Euro-V ready.</p>\r\n\r\n<p>Backed by the financial power and expertise of Daimler&rsquo;s financial arm - Daimler Financial Services &ndash; customers can benefit from the captive financier under the name of &lsquo;BharatBenz Financial&rsquo;. BharatBenz Insurance, India&#39;s first Branded Commercial Vehicle Insurance, offers cashless facility, including zero depreciation and a host of other value-adds. This integrated approach offers customers the combined benefit of products and financial services under one roof, making ownership a hassle-free experience. BharatBenz has also tied up with several leading Indian financial institutions &ndash; currently including ICICI, HDFC, Karur Vyasa Bank, Canara Bank and others, who offer tailored financing solutions for BharatBenz customers.&nbsp;</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the wholly-owned subsidiary of Daimler AG, today launched its new generation of BharatBenz medium duty trucks dubbed MD IN-POWER. Featuring four new generation medium duty BharatBenz models (914R, 1214R, 1214RE and 1217C), the new trucks are launched each in a base and a premium variant and will now be commercially available starting today at BharatBenz dealerships across India.', '2016-02-02', 'main_1533964698.jpg', 'thumb_1533964698.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:46:25', '2018-08-10 23:48:18', 'admin', 'admin'),
(16, 'Daimler launches Mercedez-Benz SHD 2436: Super High Deck coach', '<ul>\r\n	<li>15 meter coach built to offer a safe and luxurious travel experience</li>\r\n</ul>\r\n\r\n<p>Chennai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% Indian subsidiary of the world&#39;s leading truck manufacturer Daimler AG, today announced the start of sales of the Mercedes-Benz coach - the Super High Deck SHD 2436 with the handing over of the first set of buses to a customer in Chennai. The luxury coach is manufactured out of its plant in Oragadam and offers a high seating capacity of upto 61 pushback seats and 14 cubic meters of luggage space. Built with a unique aluminique body, this coach is the lightest in its class offering ultra -fuel efficiency.</p>\r\n\r\n<p>Mr. Erich Nesselhauf, Managing Director and CEO, Daimler India Commercial Vehicles, Mr. Markus Villinger, Managing Director, Daimler Buses India handed over the keys to Mr. KPN Raajesh, Owner of KPN Travels at the DICV Bus plant in Chennai. KPN Travels is one of the largest luxury coach operators in South India with a fleet size of over 330 intercity buses.</p>\r\n\r\n<p>Commenting on the occasion, Mr. Markus Villinger, Managing Director, Daimler Buses India said, &quot;This product, being the longest coach in the country built with strong features, is sure to set benchmarks in ultra-luxury travel. We are excited to be offering a state-of-the-art vehicle concept to the Indian market. Inter-city travel becomes more safe, comfortable and modern.&quot;</p>\r\n\r\n<p>The Mercedes-Benz SHD 2436 has an active steerable tag axle that results in low turning circle diameter to effortlessly navigate sharp turns and bends. It also has an advanced braking system and a strategically positioned fuel tank for added safety.</p>\r\n\r\n<p>With an investment of INR 425 crore, the bus plant at Oragadam, near Chennai produces BharatBenz and Mercedes-Benz buses and houses Wrightbus, an Ireland based body manufacturer within its premises. Catering to diverse needs of the market with a twofold strategy; BharatBenz front-engine buses meets the needs of school, staff and tourist transportation for intra-city travel. In parallel, the premium segment is addressed by Mercedes-Benz rear-engine buses for inter-city transportation. The bus plant manufactures buses with gross vehicle weight of 9, 16 and above 16 ton range. The plant has a capacity of 1,500 units per year scalable to 4,000 units.</p>\r\n\r\n<p>The BharatBenz network of over 80 dealerships - ramped up to offer tailor-made service packages and 24X7 after- sales support with advanced interactive vehicle diagnosis for the new Mercedes-Benz coach. BharatBenz sales is backed by BharatBenz Financial, a captive financing unit that offers full coverage vehicle Insurance, offers cashless facility including zero depreciation and full maintenance contracts. Daimler India Commercial Vehicles also has tie-ups with leading Indian banks to provide comprehensive financing solutions.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% Indian subsidiary of the world\\\'s leading truck manufacturer Daimler AG, today announced the start of sales of the Mercedes-Benz coach - the Super High Deck SHD 2436 with the handing over of the first set of buses to a customer in Chennai. The luxury coach is manufactured out of its plant in Oragadam and offers a high seating capacity of upto 61 pushback seats and 14 cubic meters of luggage space. Built with a unique aluminique...', '2015-12-21', 'main_1533964685.jpg', 'thumb_1533964685.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:47:49', '2018-08-10 23:48:05', 'admin', 'admin'),
(17, 'BharatBenz debuts at Excon with the broadest range of tippers', '<ul>\r\n	<li>Displays 11 trucks from its construction and mining range</li>\r\n	<li>Brand has put more than 30,000 vehicles on Indian roads, fastest ever in the truck industry</li>\r\n	<li>More than one million parts being exported from its India hub to Daimler entities worldwide</li>\r\n</ul>\r\n\r\n<p>Bengaluru, India: For the first time, Daimler India Commercial Vehicles Pvt. Ltd. (DICV) with its exclusive brand &ndash;BharatBenz debuted at the Excon exhibition 2015 in Bengaluru. Excon is the largest construction equipment exhibition in South Asia. BharatBenz displayed 11 trucks from its construction &amp; mining range of products including India&rsquo;s first indigenized mining truck 3143 making an indelible mark at its first public fair in the country.</p>\r\n\r\n<p><strong>BharatBenz product offensive</strong></p>\r\n\r\n<p>With the impetus on infrastructure projects, BharatBenz is set to transform the way of work in the construction and mining industry. BharatBenz 3143 is a natural progression towards high powered, cost efficient mining trucks that will bridge the gap in the industry that currently offers premium trucks and trucks that are underpowered. The truck is capable of operating in challenging terrains and can efficiently operate in deep mining conditions, making it an unbeatable value proposition. It comes with the trusted and proven OM 457 Mercedes-Benz engine, with a 12 litre capacity and six-cylinders delivering 430hp. The BharatBenz 3143 is available in two variants 19.5Cu.M rock body and 32Cu.M coal carrier. The key differentiator that BharatBenz offers in this segment is higher payload, better fuel efficiency and lower maintenance costs. In addition, the high localisation of the parts translates into a very high availability of spare parts.</p>\r\n\r\n<p><strong>India a Global production Hub</strong></p>\r\n\r\n<p>India will increasingly play an important role in the global operations of Daimler. Not only is DICV exporting India-made trucks under the FUSO brand to 21 countries, &nbsp;it will also increase its market presence in 30 countries within the next two years. It has also already exported more than one million parts from its plant in Oragadam to Daimler entities in the world.</p>\r\n\r\n<p>Commenting on the development, Mr. Erich Nesselhauf, Managing Director and CEO of Daimler India Commercial Vehicles said, &ldquo;With top quality products from our world class factory in Oragadam, we have not only made a mark with our Indian and International customers, but also convinced other Daimler brands and entities to source parts from us and our supplier network. Our Indian operations will become more and more important for Daimler Trucks, with regards to sales volumes as well as parts and knowledge-transfer.</p>\r\n\r\n<p>Addressing the media, Mr. Sominder Singh, Vice President, Domestic Sales, Product Management &amp; Network of Daimler India Commercial Vehicles, said &ldquo;Since its market launch in September 2012, BharatBenz has sold over 30,000 trucks .This shows the great acceptance that the brand BharatBenz has received in the market. We will continue to strengthen our presence and expand into northern market. Our tailor- made products will modernize the Indian trucking industry. With our participation at Excon, we demonstrate superior lineup for Construction and Mining, offering the widest range that cater to every requirement in the industry. &rdquo;</p>\r\n\r\n<p>Under the umbrella of Daimler Trucks Asia, DICV and MFTBC (Mitsubishi Fuso Truck and Bus Corporation) have combined their strength to tap its sales potential further. Currently, DICV exports to 21 countries. While DICV focuses on the Indian market with its brand BharatBenz and caters to countries such as Nepal, that are similar to the Indian market conditions, MFTBC will service the rising demand in the Asian and African regions with its existing portfolio of Mitsubishi-Fuso trucks from its plant in Kawasaki and the robust Fuso trucks produced in Oragadam. Fuso today is a leader in Asia and the Middle East, with business in over 150 countries around the world.</p>\r\n', 'For the first time, Daimler India Commercial Vehicles Pvt. Ltd. (DICV) with its exclusive brand –BharatBenz debuted at the Excon exhibition 2015 in Bengaluru. Excon is the largest construction equipment exhibition in South Asia. BharatBenz displayed 11 trucks from its construction & mining range of products including India’s first indigenized mining truck 3143 making an indelible mark at its first public fair in the country.', '2015-11-25', 'main_1533964673.jpg', 'thumb_1533964673.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:56:43', '2018-08-10 23:47:53', 'admin', 'admin'),
(18, 'BharatBenz buses hits Indian roads', '<ul>\r\n	<li>BharatBenz staff Buses available in BS III and BSIV variants</li>\r\n	<li>Built for safety, comfort and ultra- fuel efficiency</li>\r\n</ul>\r\n\r\n<p>Mumbai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% Indian subsidiary of the world&rsquo;s leading truck manufacturer Daimler AG, today announced the start of sales of the BharatBenz staff buses with the handing over of the first set of buses to customers in Mumbai. The staff bus is the first of a range of ultra-fuel efficient BharatBenz buses that is being offered commercially after its introduction at a grand launch event held earlier this year. The 9 tonne, 39 seater BharatBenz staff bus is an ultra- fuel efficient and cost effective mode for staff travel and offers unprecedented level of safety standards. Mr. Markus Villinger, Managing Director, Daimler Buses India handed over the keys to Mr. &nbsp;Manohar Sakpal, Bhagirathi Transport, Mr. Rylan Buthello, Buthello Travels and Mr. Aldrin Lewis, Aaron Tours, marking the start of sales of BharatBenz buses in India.</p>\r\n\r\n<p>Commenting on the occasion, Mr. Markus Villinger, Managing Director Daimler Buses India said, &ldquo;We see great potential in the Indian market especially with the impetus of infrastructure and smart city projects. With the growing traffic in urban cities, employees spend a fair amount of time commuting to work. We want to provide a ride that is safe and comfortable for passengers and the driver. We have tested our products under severe conditions at our state-of-the-art test track and the Indian roads to ensure reliability and comfort. With our already established after-sales network and financing solutions in place, we are set to make a mark in the Indian Bus segment.&rdquo;</p>\r\n\r\n<p>The BharatBenz staff bus with a unique patented &lsquo;Aluminique&rsquo; profiles and aerodynamic design offers enhanced fuel efficiency and strong structural stability. Safety being of prime concern on road, the front-engine bus features anti-lock braking system (ABS), front and rear anti-roll bars, fire retardant materials and strategically placed exits.</p>\r\n\r\n<p>&ldquo;We are on track with our progress and will strategically infuse the other products from our range into the market,&rdquo; added, Mr. Villinger.</p>\r\n\r\n<p>With an investment of INR 425 crore, the bus plant at Oragadam, near Chennai produces BharatBenz and Mercedes-Benz buses and houses Wrightbus, an Ireland based body manufacturer within its premises. Catering to the diverse need of the market with a twofold strategy; BharatBenz front-engine buses will meet the needs of school, staff and tourist transportation for intra-city travel. In parallel, the premium segment will continue to be addressed by Mercedes-Benz rear-engine buses for inter-city transportation. The bus plant manufactures buses with gross vehicle weight of 9, 16 and above 16 ton range. The plant has a capacity of 1,500 units per year scalable to 4,000 units.</p>\r\n\r\n<p>Available through a network of over 80 dealerships, customers can experience tailor-made service packages and 24X7 after sales support with advanced interactive vehicle diagnosis. BharatBenz sales is backed by BharatBenz Financial, a captive financing unit that offers full coverage vehicle Insurance, offers cashless facility including zero depreciation and full maintenance contracts. Daimler India Commercial Vehicles also has tie-ups with leading Indian banks to provide comprehensive financing solutions.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% Indian subsidiary of the world’s leading truck manufacturer Daimler AG, today announced the start of sales of the BharatBenz staff buses with the handing over of the first set of buses to customers in Mumbai. The staff bus is the first of a range of ultra-fuel efficient BharatBenz buses that is being offered commercially after its introduction at a grand launch event held earlier this year.', '2015-11-16', 'main_1533964661.jpg', 'thumb_1533964661.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 15:58:39', '2018-08-10 23:47:41', 'admin', 'admin'),
(19, 'Dhingra Trucking reaches sales milestone of 2000 BharatBenz trucks', '<p>Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced the delivery milestone of 2,000 BharatBenz trucks by its Gurgaon based Dealership &ndash; Dhingra Trucking in less than 24 months from inception. The 3S (Sales, Service &amp; Spare) dealership caters to Delhi NCR and Haryana region offering customers a holistic trucking experience. The increasing customer base in the region and growing sales is testimony to the overall efficiency, safety and low Total-cost of ownership of BharatBenz trucks.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced the delivery milestone of 2,000 BharatBenz trucks by its Gurgaon based Dealership – Dhingra Trucking in less than 24 months from inception. The 3S (Sales, Service & Spare) dealership caters to Delhi NCR and Haryana region offering customers a holistic trucking experience. The increasing customer base in the region and growing sales is testimony to the overall efficiency, safety and low Total-cost of ownership of BharatBenz trucks.', '2015-09-15', 'main_1533964649.jpg', 'thumb_1533964649.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:00:18', '2018-08-10 23:47:29', 'admin', 'admin'),
(20, 'DICV signs MoU with Canara Bank as its preferred financier for commercial vehicles', '<p>BharatBenz customers to benefit from Canara Banks&rsquo; schemes for financing vehicles</p>\r\n\r\n<p>Bangalore, India, August 27, 2015 &ndash;: Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today signed a Memorandum of Understanding with Canara Bank to provide commercial vehicle financing packages to BharatBenz customers across the country.</p>\r\n\r\n<p>Canara Bank is one of the pioneers in the banking industry in the country, established in Mangalore in 1906. The bank is headquartered in Bangalore, and has an extensive network Pan-India with huge concentration in the urban and rural southern areas.</p>\r\n\r\n<p>Being an aggressive bank in SME lending sphere, with wide coverage, the customers have multiple schemes to choose from. Apart from Daimler&rsquo;s own captive financing brand, BharatBenz Financial, Canara Bank becomes a key financing partner for BharatBenz along with others adding substantial choice and value for customers.</p>\r\n\r\n<p>The agreement was signed by R Madhusudan, General Manager, Canara Bank and Mr. Arghadip Roy, Deputy General Manager and National Head- Retail and Channel Finance, Daimler India Commercial Vehicles Private Ltd. (DICV) and Mr. Prabudass Ealumalai, Senior Manager, Retail Finance South of DICV.</p>\r\n\r\n<p>Announcing the partnership, Mr. Erich Nesselhauf, CEO and Managing Director, DICV, said, &quot;Canara Bank as our preferred financier allows us to strengthen our presence in South India, particularly Karnataka and Kerala due to its outreach to interior markets. This partnership will help our dealers in this region to leverage on the banks support and promote BharatBenz products in these markets. We are confident that our customers will benefit from the viable finance options provided by the bank, and they can be assured of competitive financing solutions with tailor-made offerings for our BharatBenz trucks.&quot;</p>\r\n\r\n<p>R Madhusudan, General Manager, Canara Bank added, &quot;We have strong presence in Karnataka and Kerala; our wide distribution network will help in reaching out to the semi-urban and rural areas of these states. This symbiotic relationship will help to leverage ours and DICV&rsquo;s strengths, thus opening up new avenues and allowing for a collaborative association.&quot;</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today signed a Memorandum of Understanding with Canara Bank to provide commercial vehicle financing packages to BharatBenz customers across the country.', '2015-08-27', 'main_1533964493.jpg', 'thumb_1533964493.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:04:07', '2018-08-10 23:44:53', 'admin', 'admin'),
(21, 'DICV signs MoU with State Bank of Bikaner and Jaipur for financing solutions', '<p>BharatBenz customers to benefit from State Bank of Bikaner and Jaipur&rsquo;s suitable financial options</p>\r\n\r\n<p>Jaipur, India, August 26, 2015 &ndash;: Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today signed a Memorandum of Understanding with State Bank of Bikaner and Jaipur (SBBJ) to provide commercial vehicle financing packages to BharatBenz customers across the country.</p>\r\n\r\n<p>SBBJ is the largest Bank of Rajasthan having its Head Office at Jaipur and have more than 1200 branches which cover most key business centers across Pan-India. Apart from Daimler&rsquo;s own captive financing brand, BharatBenz Financial, SBBJ becomes a key financing partner for BharatBenz along with others adding substantial choice and value for customers.</p>\r\n\r\n<p>The agreement was signed by Mr. Rakesh Kaushal, Deputy General Manager (MSME), State Bank of Bikaner and Jaipur and Mr. Arghadip Roy, Deputy General Manager and National Head- Retail and Channel Finance, Daimler India Commercial Vehicles Private Ltd. (DICV) and Mr. Amit Bhatia, Senior Manager, Retail Finance North of DICV.</p>\r\n\r\n<p>Announcing the partnership, Mr. Erich Nesselhauf, CEO and Managing Director, DICV, said, &quot;State Bank of Bikaner and Jaipur as our preferred financier allows us to strengthen our presence in the state of Rajasthan, which is a significant commercial vehicle market. This partnership will help our Rajasthan dealers leverage on the bank&rsquo;s support with joint activities to promote BharatBenz products in this market. We are confident that our customers will benefit from the viable finance options provided by SBBJ, and they can be assured of competitive financing solutions with tailor-made offerings for our BharatBenz trucks.&quot;</p>\r\n\r\n<p>Mr. Ramesh Arya, General Manager (MSME), State Bank of Bikaner and Jaipur added, &quot;We have a strong hold over Rajasthan; our wide branch network will help in reaching out to the semi-urban and rural areas of the state for commercial vehicle financing. Truck customers will be keen on trying this exciting truck brand, backed by the confidence of existing financier relations. This symbiotic relationship will help to leverage SBBJ&rsquo;s and DICV&rsquo;s strengths, thus opening up new avenues and allowing for a collaborative association.&quot;</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today signed a Memorandum of Understanding with State Bank of Bikaner and Jaipur (SBBJ) to provide commercial vehicle financing packages to BharatBenz customers across the country.', '2015-08-26', 'main_1533964482.jpg', 'thumb_1533964482.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:07:07', '2018-08-10 23:44:42', 'admin', 'admin'),
(22, 'BharatBenz gets its whole range ready with Bharat Stage IV', '<p>Oragadam, India: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced that its entire range of above 9 to 49 tonne trucks in current portfolio will now be available in Bharat Stage IV variant across the country. With its new range of buses set for market launch in September 2015, DICV is also offering the Bharat Stage IV variant for the school and staff applications in the front engine 9T bus product range.</p>\r\n\r\n<p>In alignment with the governmental emission regulations, DICV will meet the norms using system derived from Bluetec technology proven in Daimler Vehicles in many markets over a decade. DICV has tested this technology in Indian operating conditions for over a million kilometers before offering to customers. Apart from meeting the stringent emission regulations by reducing toxic gas levels within the proposed Bharat Stage IV norms, &nbsp; the trucks and buses &nbsp;will also provide better fuel economy to customers.</p>\r\n\r\n<p>Speaking on the topic, Mr. Erich Nesselhauf, Managing Director and CEO, Daimler India Commercial Vehicles said, &ldquo;We are ready with our entire range of trucks adhering to Bharat Stage IV norms to capture a larger market share. In India, pollution has been a rising concern and moving to Bharat Stage IV across the country has been the need of the hour. Our access to the worldwide Daimler technology pool helped us to cut time and cost to implement this in a fast and efficient manner.&rdquo;</p>\r\n\r\n<p>Mr. Markus Villinger, Managing Director, Daimler Buses India ,said, &ldquo;As increasing number of cities are moving towards BS IV norms and with growing environmental concerns, we are committed to bringing the most eco-friendly transportation solutions to the Indian bus market going forward.&rdquo;</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced that its entire range of above 9 to 49 tonne trucks in current portfolio will now be available in Bharat Stage IV variant across the country. With its new range of buses set for market launch in September 2015, DICV is also offering the Bharat Stage IV variant for the school and staff applications in the front engine 9T bus product range.', '2015-08-24', 'main_1533964471.jpg', 'thumb_1533964471.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:08:46', '2018-08-10 23:44:31', 'admin', 'admin');
INSERT INTO `tbl_pressrelease` (`id`, `title`, `description`, `short_description`, `release_date`, `image`, `thumbnail`, `banner`, `mobile_banner`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(23, '3,000 BharatBenz Trucks sales registered by Autobahn Trucking', '<p>Kochi: Autobahn Trucking, the Calicut dealership of Daimler India Commercial Vehicles Pvt. Ltd. (DICV), today announced that it has crossed the delivery milestone of 3,000 trucks in Kerala.</p>\r\n\r\n<p>Autobahn Trucking operates the dealerships for BharatBenz trucks in Kochi and Thiruvananthapuram and Calicut provides the customer a holistic trucking experience. The dealership has achieved this landmark by catering to customer requirements in the region and continues to win new customers because of the overall efficiency, safety and Total-cost of ownership of BharatBenz trucks. BharatBenz has a market share of 33% in the state of Kerala.</p>\r\n\r\n<p>Autobahn Trucking offers a 3S facility (Sales, Service &amp; Spares). With highly trained manpower, a fully-equipped and completely covered workshop, supported with a full complement of Spares and a showroom providing focused Sales consulting, this dealership will ensure that BharatBenz customers receive all the attention under one roof.</p>\r\n\r\n<p>Mr. Sreeram. V, Vice President Domestic Sales, Product Management &amp; Network, DICV, said, &ldquo;We would like to thank all our customers in the Kerala region for trusting the BharatBenz brand and who continue to invest in our products. This delivery milestone of 3,000 trucks by Autobahn Trucking is the reflection of the customers&rsquo; acceptance that the brand has been rapidly gaining. We have been able to achieve this due to our strong commitment towards offering modernized trucking solutions and will continue to deliver products on customer requirements. BharatBenz has by far become an aspirational truck brand in the country for many truckers.&rdquo;</p>\r\n\r\n<p>Mr. Mohamad Farzad, Managing Director - Autobahn Trucking, said, &ldquo;BharatBenz products offer great return on investment. We share a symbiotic partnership with Daimler India Commercial Vehicles. Our superior sales and after-sales service experience cater to the needs of the customers&rsquo; and ensure they focus on their business, while we will take care of the trucks.&rdquo;</p>\r\n\r\n<p>At the dealerships, the customer can experience a host of primary and value-added services. On the sales front, the personnel have been trained to provide tailor-made solutions depending on the specific needs of each customer. Thus purchasing BharatBenz trucks from Autobahn Trucking ensures that every customer is able to choose the trucks most appropriately suited to his business needs.</p>\r\n\r\n<p>Customers will enjoy the benefits of a fully &lsquo;Pro-Active&rsquo; service that ensures his trucks provide maximum productivity. On the After-sales front, the dealership has a 24x7 enabled workshop. It is manned by qualified &amp; Daimler trained engineers/technicians and equipped with high productivity tools, advanced guided diagnostics &amp; Mobile Service vans. The dealership will provide a host of value-added services viz., Cashless Zero-depreciation Insurance, Full Maintenance Contracts, Extended Warranty, 24x7 Roadside Assistance, Vehicle tracking systems, Driver Training and Express &amp; On-site Service.</p>\r\n\r\n<p>Customers will also enjoy easy financing solutions. The dealership will provide financing solutions ably supported by Daimler&rsquo;s own captive financing brand &ndash; BharatBenz Financial. Key financing partners like HDFC Bank, ICICI Bank, Sundaram Finance &amp; Kotak Bank add substantial choice and value.</p>\r\n\r\n<p>This integrated approach will offer BharatBenz customers the combined benefit of Best-in-Class Products, Pro-Active after-sales service and easy financing under one roof, making ownership a powering experience.</p>\r\n', 'Autobahn Trucking, the Calicut dealership of Daimler India Commercial Vehicles Pvt. Ltd. (DICV), today announced that it has crossed the delivery milestone of 3,000 trucks in Kerala.', '2015-03-26', 'main_1533964247.jpg', 'thumb_1533964247.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:10:07', '2018-08-10 23:40:47', 'admin', 'admin'),
(24, '20,000 BharatBenz trucks: DICV reaches Sales Milestone in India', '<p><strong>Production milestone at Daimler India Commercial Vehicles: 20,000 trucks produced at Oragadam plant</strong></p>\r\n\r\n<ul>\r\n	<li>Milestone achieved only two and a half years after start of production</li>\r\n	<li>Erich Nesselhauf: &quot;With crossing the production mark of 20,000 trucks, we achieved the next milestone of our DICV success story.&quot;</li>\r\n</ul>\r\n\r\n<p>Oragadam/Chennai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today crossed the milestone of the 20,000th locally produced trucks from its plant at Oragadam.</p>\r\n\r\n<p>Only two and a half years after start of production of the first BharatBenz heavy-duty truck, the 20,000th locally produced truck, a BharatBenz 2523C tipper, has rolled off the production lines at DICVs plant in Oragadam. About half of these 20,000 trucks have been manufactured just within 2014, highlighting the rapid growth that the production site has recently experienced.</p>\r\n\r\n<p>&quot;By crossing the production mark of 20,000 trucks, we achieved the next milestone of our DICV success story&quot;, stated Erich Nesselhauf, CEO and Managing Director, Daimler India Commercial Vehicles. &quot;We have transformed the Indian truck industry with our modern trucks. That&#39;s confirmed by our customers and proven by a high acceptance in the market due to excellent Quality of our products as well as best Sales and After Sales experiences.&quot;</p>\r\n\r\n<p>&quot;20,000 trucks made at the Oragadam plant according to our Daimler top quality standards is something that our production team can rightly be proud of&quot;, added Sven Graeble, Head of Operations and Manufacturing Engineering, Daimler India Commercial Vehicles.</p>\r\n\r\n<p><strong>About DICV production in Oragadam</strong></p>\r\n\r\n<p>The DICV plant in Oragadam produces trucks and engines of the three brands BharatBenz, FUSO and Mercedes-Benz. Since the start of production of heavy-duty trucks in June 2012, DICV raised the production volume monthly. The product portfolio grew by several variants of heavy-duty trucks followed by medium-duty trucks in the last months. Along with the trucks presented in January 2014, three tractor trailers and one truck for construction-mining purposes, BharatBenz now offers vehicles in the range from 9t to 49t. In addition DICV assembles the Mercedes-Benz Actros from CKD (completely knocked down) kits in Oragadam.</p>\r\n\r\n<p>Since May 2013, DICV has also added FUSO trucks to its production portfolio in Oragadam. They are determined for the Asian and African growth markets; with Indonesia and Uganda being recently launched. Under the umbrella of Daimler Trucks Asia, the company works closely together with the Japanese subsidiary of Daimler, Mitsubishi Fuso Truck and Bus Corporation (MFTBC).</p>\r\n\r\n<p>Next to trucks, BharatBenz- and Mercedes-Benz Buses will roll off at the new bus manufacturing plant which is constructed within the existing premises of DICV. The bus plant is spread across an area of 27.91 acres and will be completed by the second quarter of 2015. An investment of INR 425 Cr has been earmarked for the bus project for an installed capacity of 1500 units in the initial phase. The capacity can be further expanded to 4000 units subsequently. The DICV plant will thus be the only Daimler Truck plant worldwide, that manufactures three brands of trucks and buses under one roof.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), a 100% wholly owned subsidiary of Daimler AG, Stuttgart, Germany, today announced that sales for BharatBenz trucks has surpassed 20,000 units since its market launch in September 2012.', '2015-03-20', 'main_1533964235.jpg', 'thumb_1533964235.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:12:04', '2018-08-10 23:40:35', 'admin', 'admin'),
(25, 'Production milestone at Daimler India Commercial Vehicles: 20,000 trucks produced at Oragadam plant', '<p><strong>Production milestone at Daimler India Commercial Vehicles: 20,000 trucks produced at Oragadam plant</strong></p>\r\n\r\n<ul>\r\n	<li>Milestone achieved only two and a half years after start of production</li>\r\n	<li>Erich Nesselhauf: &quot;With crossing the production mark of 20,000 trucks, we achieved the next milestone of our DICV success story.&quot;</li>\r\n</ul>\r\n\r\n<p>Oragadam/Chennai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today crossed the milestone of the 20,000th locally produced trucks from its plant at Oragadam.</p>\r\n\r\n<p>Only two and a half years after start of production of the first BharatBenz heavy-duty truck, the 20,000th locally produced truck, a BharatBenz 2523C tipper, has rolled off the production lines at DICVs plant in Oragadam. About half of these 20,000 trucks have been manufactured just within 2014, highlighting the rapid growth that the production site has recently experienced.</p>\r\n\r\n<p>&quot;By crossing the production mark of 20,000 trucks, we achieved the next milestone of our DICV success story&quot;, stated Erich Nesselhauf, CEO and Managing Director, Daimler India Commercial Vehicles. &quot;We have transformed the Indian truck industry with our modern trucks. That&#39;s confirmed by our customers and proven by a high acceptance in the market due to excellent Quality of our products as well as best Sales and After Sales experiences.&quot;</p>\r\n\r\n<p>&quot;20,000 trucks made at the Oragadam plant according to our Daimler top quality standards is something that our production team can rightly be proud of&quot;, added Sven Graeble, Head of Operations and Manufacturing Engineering, Daimler India Commercial Vehicles.</p>\r\n\r\n<p>About DICV production in Oragadam The DICV plant in Oragadam produces trucks and engines of the three brands BharatBenz, FUSO and Mercedes-Benz. Since the start of production of heavy-duty trucks in June 2012, DICV raised the production volume monthly. The product portfolio grew by several variants of heavy-duty trucks followed by medium-duty trucks in the last months. Along with the trucks presented in January 2014, three tractor trailers and one truck for construction-mining purposes, BharatBenz now offers vehicles in the range from 9t to 49t. In addition DICV assembles the Mercedes-Benz Actros from CKD (completely knocked down) kits in Oragadam.</p>\r\n\r\n<p>Since May 2013, DICV has also added FUSO trucks to its production portfolio in Oragadam. They are determined for the Asian and African growth markets; with Indonesia and Uganda being recently launched. Under the umbrella of Daimler Trucks Asia, the company works closely together with the Japanese subsidiary of Daimler, Mitsubishi Fuso Truck and Bus Corporation (MFTBC).</p>\r\n\r\n<p>Next to trucks, BharatBenz- and Mercedes-Benz Buses will roll off at the new bus manufacturing plant which is constructed within the existing premises of DICV. The bus plant is spread across an area of 27.91 acres and will be completed by the second quarter of 2015. An investment of INR 425 Cr has been earmarked for the bus project for an installed capacity of 1500 units in the initial phase. The capacity can be further expanded to 4000 units subsequently. The DICV plant will thus be the only Daimler Truck plant worldwide, that manufactures three brands of trucks and buses under one roof.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV) the 100% wholly-owned subsidiary of Daimler AG today crossed the milestone of the 20,000th locally produced trucks from its plant at Oragadam.', '2014-12-18', 'main_1533964182.jpg', 'thumb_1533964182.jpg', '', 'thumb_banner_1533964171.jpg', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:14:20', '2018-08-10 23:39:42', 'admin', 'admin'),
(26, 'BharatBenz inaugurates', '<ul>\r\n	<li>Designed to ensure total customer care</li>\r\n	<li>State-of-the-art 3S facilities for modern trucks &ndash; Sales, Service &amp; Spares</li>\r\n	<li>&quot;Pro-Active&quot; services to help customers &#39;Power Ahead&#39;</li>\r\n	<li>Easy financing solutions, insurance and service contracts</li>\r\n</ul>\r\n\r\n<p>Agra: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the Indian subsidiary of the world&rsquo;s leading truck manufacturer Daimler AG, unveiled its state-of-the-art BharatBenz dealership in Agra today.</p>\r\n\r\n<p>&#39;Arvind Trucking&#39; as the dealership is named will provide the customer a holistic trucking experience. Strategically located at NH-2, Tehsil &ndash; Etmadpur, Agra, Uttar Pradesh, the 3S facility is equipped with state-of-the-art service bays workshop and is spread over an area of 63000sq.ft. With highly trained manpower, sophisticated tools and advanced guided diagnostic systems, the facility will provide customers focused Sales consulting to ensure that BharatBenz customers receive all the attention under one roof.</p>\r\n\r\n<p>Mr. V. Sreeram, VP - Domestic Sales, Product Management &amp; Network, said, &quot;Our network expansion drive is strategic and gives us access to over 85% of the addressable truck market in the country. Our state-of-the-art dealership network is fully equipped with highly skilled manpower and service capabilities to fulfill the requirements of our customers. Having gained a solid traction in excess of over 10% market share in the markets where we have launched, we are quite confident of ensuring the success story in the new markets as well.&quot;</p>\r\n\r\n<p>&quot;Our philosophy is to provide the customer with state-of-the-art after-sales service that ensures not just easy reach but pro-active service. Our dealerships, while providing focused sales consultancy will ensure that the customer&#39;s trucks are delivering maximum value to his business. Our goal is to ensure that our customers feel empowered by associating with BharatBenz,&quot; he added.</p>\r\n\r\n<p>Speaking at the occasion, Mr. Mayank Bansal, Managing Director, Arvind Trucking, said, &quot;We are extremely happy to be associated with BharatBenz. We trust that the high quality products and service modules will benefit the customers at large. Our team of qualified service-oriented professionals will bring best-in-class sales and service support to the customers and gain customer confidence on us and BharatBenz brand.&quot;</p>\r\n\r\n<p>Early this year, BharatBenz launched the tractor-trailer models and a construction mining model making itself a full-range player in the commercial vehicles segment above 9T segment. The company has already reached the Nr. 3 position in the heavy-duty segment. DICV recently laid the foundation stone for its new Bus plant in India at its Oragadam plant, near Chennai, with an earmarked investment of INR 425 crores.</p>\r\n\r\n<p>At the dealerships, the customer can experience a host of primary and value-added services. On the sales front, the personnel have been trained to provide tailor-made solutions depending on the specific needs of each customer. Thus purchasing BharatBenz trucks from Arvind Trucking ensures that every customer is able to choose the trucks most appropriately suited to his business needs.</p>\r\n\r\n<p>Customers will enjoy the benefits of a fully &#39;Pro-Active&#39; service that ensures his trucks provide maximum productivity. On the After-sales front, the dealership has a 24x7 enabled workshop. It is manned by qualified &amp; Daimler trained engineers/technicians and equipped with high productivity tools, advanced guided diagnostics &amp; Mobile Service vans. The dealership will provide a host of value-added services viz., Cashless Zero-depreciation Insurance, Full Maintenance Contracts, Extended Warranty, 24x7 Roadside Assistance, Vehicle tracking systems, Driver Training and Express &amp; On-site Service.</p>\r\n\r\n<p>Customers will also enjoy easy financing solutions. The dealership will provide financing solutions ably supported by Daimler&#39;s own captive financing brand &ndash; BharatBenz Financial. Key financing partners like HDFC, IndusInd, Magma, SF, Chola, Shriram Transport, SREI Equipment Finance, L&amp;T Finance, Reliance Capital, Axis Bank, Kotak, ICICI and major nationalized banks add substantial choice and offer easy financing options that customers can avail of.</p>\r\n\r\n<p>This integrated approach will offer BharatBenz customers the combined benefit of Best-in-Class Products, Pro-Active after-sales service and easy financing under one roof, making ownership a powering experience.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the Indian subsidiary of the world\\\'s leading truck manufacturer Daimler AG, unveiled its state-of-the-art BharatBenz dealership in Agra today', '2014-07-16', 'main_1533964160.jpg', 'thumb_1533964160.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:18:03', '2018-08-10 23:39:20', 'admin', 'admin'),
(27, 'Daimler India Commercial Vehicles lays foundation stone for its new Bus Plant in India', '<ul>\r\n	<li>Investment of INR 425 Cr</li>\r\n	<li>Bus Plant to be completed by 2nd Quarter 2015</li>\r\n	<li>To roll-out Front &amp; Rear-engined buses</li>\r\n</ul>\r\n\r\n<p>Chennai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world&#39;s leading commercial vehicle manufacturer Daimler AG, today celebrated the foundation stone laying ceremony of its new Bus plant at the DICV&#39;s manufacturing facility located in Oragadam, near Chennai. Dr. Wolfgang Bernhard, Daimler AG Board member, responsible for Daimler Trucks &amp; Buses, laid the foundation stone for the new bus plant in the presence of Mr. Hartmut Schick, Head of Daimler Buses and CEO EvoBus GmbH, Mr. Marc Llistosella, Managing Director &amp; CEO, DICV, Mr. Markus Villinger, Head, Daimler Buses, India, a host of Indian and International media, Dealers, Suppliers and DICV personnel.</p>\r\n\r\n<p>Dr. Wolfgang Bernhard, Daimler AG Board member responsible for Daimler Trucks &amp; Buses, said, &quot;On the basis of our strong truck business, we are now pressing ahead on the Indian bus market. For that purpose, we are consistently using existing suppliers, our production site and our sales network in India.&quot;</p>\r\n\r\n<p>The new Bus manufacturing plant is spread across an area of 27.91 acres will be constructed within the existing premises of DICV. The bus plant will manufacture and assemble buses under the Mercedes-Benz and BharatBenz brands and will be completed by the 2nd quarter 2015. The DICV plant in Oragadam will thus be the only Daimler Truck plant worldwide, that manufactures three brands of Trucks and Buses, as well as engines under one roof. Daimler India buses will be offered in 9t, 16t and above 16t categories in both front and rear engine configurations. An investment of INR 425 Cr has been earmarked for the bus project in India for an installed capacity of 1500 units in the initial phase. The capacity can be further expanded to 4000 units subsequently.</p>\r\n\r\n<p>Mr. Hartmut Schick, Head of Daimler Buses and CEO, EvoBus GmbH, said, &quot;Our two-fold strategy with BharatBenz and Mercedes-Benz buses allows us to cater to the different needs of Indian customers in a perfect way. In terms of safety, fuel efficiency, quality, and comfort, both brands will set new standards in the Indian bus sector.&quot;</p>\r\n\r\n<p>Daimler India has partnered with M/s. Wrightbus, a leading global player in bus body building, for its front-engined buses. The state-of-the-art bus body building facility will be part of the new bus plant. The bus body will be superior in terms of technology and reliability meeting Daimler global standards of quality and efficiency.</p>\r\n\r\n<p>Mr. Marc Llistosella Managing Director and CEO, Daimler India Commercial Vehicles, said, &quot;We, at DICV, are extremely proud and confident about this new beginning. Since inception, we have delivered on all our promises for the Indian market, and we are continuously achieving new milestones. BharatBenz, having already achieved the No.4 position in trucks in India, has now become the preferred brand for most of the truck customers, thanks to its high performance products backed by best-in-class service levels. I am confident that the new bus project will continue to deliver same level of promise and experience to the customer.&quot;</p>\r\n\r\n<p>Mr. Markus Villinger, Head, Daimler Buses, India, addressed the gathering and mentioned that the new Bus plant would roll out the first buses by 2nd Quarter 2015. He also mentioned that the Bus division would have a dedicated strength of 300 personnel besides using the synergies of DICV&#39;s existing expertise.</p>\r\n\r\n<p>In April 2013, Daimler India Commercial Vehicles (DICV) consolidated commercial vehicle operations in India by integrating Mercedes-Benz Buses business into its operations. Subsequently, the Marketing, Sales &amp; Service of Mercedes-Benz buses were aligned to the marketing function of DICV in line with Daimler&#39;s global practice to ensure better synergies in business verticals.</p>\r\n\r\n<p>The existing and upcoming Dealership network of DICV which caters to the BharatBenz range of trucks will also participate in the Daimler Bus business. The well-established and state-of-the-art dealerships will enhance the confidence of Indian customers. The network will ensure that every Bus customer is treated to an international service experience</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading commercial vehicle manufacturer Daimler AG, today celebrated the foundation stone laying ceremony of its new Bus plant at the DICV\\\'s manufacturing facility located in Oragadam, near Chennai. Dr. Wolfgang Bernhard, Daimler AG Board member, responsible for Daimler Trucks & Buses, laid the foundation stone for the new bus plant in the presence of Mr. Hartmut Schick, Head of Daimler...', '2014-05-06', 'main_1533964144.jpg', 'thumb_1533964144.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:19:43', '2018-08-10 23:39:04', 'admin', 'admin'),
(28, 'BharatBenz trucks ride on high gear; cross 10,000 units sale', '<ul>\r\n	<li>Crosses sale of 1,000 units in a month in March 2014</li>\r\n	<li>Sales up by 67.4% in the first quarter of 2014</li>\r\n	<li>Gains 5.3% Market Share in the addressable market above 9T segment</li>\r\n</ul>\r\n\r\n<p>Chennai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world&rsquo;s leading commercial vehicle manufacturer Daimler AG, today, announced that it has crossed the sale of its 10,000th truck, since its market launch. Adding to this milestone, the company has also sold 1,000 units in a month, for the first time in March 2014. Sale of BharatBenz trucks grew over 67% in the 1st quarter of 2014 (2,203 units) as compared to the same period in 2013 (1,316 units) with a significant market share of 5.3% in addressable markets above 9T segment, while the overall truck market &gt;9T decreased by another 22% in the same period, clearly indicating that BharatBenz is steadily becoming the brand of aspiration for many Indian truckers.</p>\r\n\r\n<p>Mr. Marc Llistosella, Managing Director and CEO, Daimler India Commercial Vehicles (DICV), said, &quot;The year 2014 began well for us and it underlines some key developments in the company. The sale of the 10,000th truck is a remarkable achievement for us, given the fact that we have made it in just 18 months of operations in the country. Another notable aspect is that these trucks were sold with transparent pricing without any discount. This is a clear testimony of the trust we have built in our customers, dealer and supplier partners who have partnered us in this successful journey so far. The current slowdown in the industry has given us an opportunity to feed the market with highly competitive products and services, offering our customers an unbeatable value proposition for their business.&quot;</p>\r\n\r\n<p>Mr. VRV Sriprasad, Vice President, Marketing, Sales and After-sales, DICV, said: &quot;BharatBenz rolled out into the market with a highly systematic planning that focused on a clear understanding of the Indian customer. This achievement of sales of 10,000 trucks in such a short time of 18 months clearly proves that BharatBenz has acquired this understanding. Our future focus will remain to stay close to the Indian trucker to provide him products of the highest quality and reliability matched by a highly efficient service package.&quot;</p>\r\n\r\n<p>DICV launched its Heavy-duty trucks in September 2012 and followed it by the launch of its Medium-duty range in February 2013. In January 2014, it launched its Tractor and Construction Mining models, covering the entire range of trucks in the medium and heavy duty segments. DICV has gained a substantial market share in the Southern region and has been registering a steady growth in other markets of West, North and Central.</p>\r\n\r\n<p>The products have been well received by the customer and have been ably supported by a state-of-the art and customer-friendly after-sales across a robust network of 71 state-of-the-art dealer outlets in the country. Customers have also been able to experience industry-first finance and insurance packages that have made owning a BharatBenz a delightful experience.</p>\r\n\r\n<p>On the exports front, DICV along with Mitsubishi Fuso Truck and Bus Corporation (MFTBC) has made significant inroads into the African market with the launch of robust DICV-made FUSO trucks in Tanzania, besides Kenya and Zambia as part of Daimler&rsquo;s Asia Business Model.</p>\r\n\r\n<p>DICV received the coveted TS16949:2009 certification for implementation and maintenance of Quality Management System in the area of Design &amp; Development and Manufacture of commercial vehicles and has been rated &#39;Stable&#39; by CRISIL for its long term operations in the country. DICV recently laid the foundation stone for its new Bus plant in Oragadam, with an earmarked investment of INR 425 crore that will roll out front and rear engine buses under the brand BharatBenz and Mercedes-Benz, respectively.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading commercial vehicle manufacturer Daimler AG, today, announced that it has crossed the sale of its 10,000th truck, since its market launch. Adding to this milestone, the company has also sold 1,000 units in a month, for the first time in March 2014. Sale of BharatBenz trucks grew over 67% in the 1st quarter of 2014 (2,203 units) as compared to the same period in 2013 (1,316 units) with a significant market share of 5.3% in addressable markets above 9T segment, while the overall truck market >9T decreased by another 22% in the same period, clearly indicating that BharatBenz is steadily becoming the brand of aspiration for many Indian truckers.', '2014-04-10', 'main_1533964126.jpg', 'thumb_1533964126.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:21:14', '2018-08-10 23:38:46', 'admin', 'admin'),
(29, 'BharatBenz dealer, Autobahn Trucking won the Best Commercial Vehicle Dealer in India award at AEDA awards', '<ul>\r\n	<li>Awarded for its outstanding performance in the areas of Sales and After-sales</li>\r\n	<li>Also won an award for &#39;Best Safety Satisfaction in India&#39; category</li>\r\n</ul>\r\n\r\n<p>Chennai: Autobahn Trucking, one of the principal dealers of BharatBenz, the Indian truck brand of the world&#39;s leading truck manufacturer Daimler AG, won the prestigious &#39;Best CV dealer in India&#39; award for the year 2013 at a recently concluded Automotive Dealership Excellence Awards (AEDA) jointly organized by the Federation of Automobile Dealers Associations (FADA) and Auto Monitor magazine in New Delhi. The dealer was awarded for its outstanding performance in the areas of Sales and After-sales of BharatBenz trucks. The dealership also won the &#39;Best Safety Satisfaction in India&#39; award for implementing best safety practices at its outlets.</p>\r\n\r\n<p>Mr. Arun V K, Area Sales Head and Mr. Sujith Vasudeven Service Head, Autobahn Trucking received the &#39;Best CV dealer of India&#39; award from Mr. Tapan Singhel, MD &amp; CEO, Bajaj Allianz General Insurance Company &amp; Mr. D R Dogra, MD, CARE Ratings at the event.</p>\r\n\r\n<p>Speaking about the dealer winning the award, Mr. VRV Sriprasad, Vice President, Marketing, Sales and After-sales, said, &quot;It gives me great pleasure to see our dealer, Autobahn Trucking winning the prestigious AEDA awards. Autobahn Trucking has given us a solid foothold in the Kerala region, thanks to their best-in-class pre-sales, sales and after-sales services they offer complementing our high performance trucks. It is important to note that Autobahn Trucking has not only established BharatBenz as a performance product brand but also a &#39;No Discount&#39; brand in the industry. The team has strived to reach this remarkable position in the market and I wish to congratulate and thank the entire team at Autobahn and BharatBenz for the achievement.&quot;</p>\r\n\r\n<p>Autobahn Trucking is the principal dealer for BharatBenz based in Kerala, currently operating with 3 existing outlets. The state-of-the-art outlets are fully equipped with highly trained manpower and a sophisticated workshop and infrastructure. The showroom has a focused sales consulting and provides comprehensive customer-centric solutions under one roof.</p>\r\n\r\n<p>At Autobahn, like any other BharatBenz dealership, the customer can experience a host of primary and value-added services. On the sales front, the personnel have been trained to provide tailor-made solutions depending on the specific needs of each customer. Thus purchasing BharatBenz trucks from the authorized BharatBenz dealership ensures that every customer is able to choose the trucks most appropriately suited to his business needs.</p>\r\n\r\n<p>BharatBenz also provides industry-first and industry leading features in financing and insurance through its exclusive tie-ups with reputed financial institutions. BharatBenz Financial (BBF), a captive financing subsidiary of Daimler offers a one-stop-solution for BharatBenz customers at all dealerships.</p>\r\n', 'Autobahn Trucking, one of the principal dealers of BharatBenz, the Indian truck brand of the world\\\'s leading truck manufacturer Daimler AG, won the prestigious \\\'Best CV dealer in India\\\' award for the year 2013 at a recently concluded Automotive Dealership Excellence Awards (AEDA) jointly organized by the Federation of Automobile Dealers Associations (FADA) and Auto Monitor magazine in New Delhi. The dealer was awarded for its outstanding performance in the areas of Sales and After-sales of...', '2014-02-17', 'main_1533964088.jpg', 'thumb_1533964088.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:22:42', '2018-08-10 23:38:08', 'admin', 'admin'),
(30, 'Daimler India Commercial Vehicles receives ISO/TS 16949 : 2009 certification for Quality Management System', '<p>Obtains certification in a record time of 17 months from start of production<br />\r\nReceives certification from UL DQS India - A leading certification body for management systems worldwide<br />\r\nChennai: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world&#39;s leading truck manufacturer Daimler AG, received the coveted TS16949:2009 certification for implementation and maintenance of Quality Management System in the area of Design &amp; Development and Manufacture of commercial vehicles. Dr. K Murugan, Managing Director &amp; CEO, ULDQS India, a wholly owned subsidiary of DQS Holding, GmbH, presented the certificate to Mr. Marc Llistosella, Managing Director and CEO, DICV at Daimler India&#39;s corporate office in Chennai.</p>\r\n\r\n<p>Affiliated to the International Automotive Task Force (IATF), the ISO/TS 16949 is one of the very important accreditations, globally recognized, specifically intended for the Automobile industry. The certification also covers critical parameters such as optimization of cost, time and resources.</p>\r\n\r\n<p>The four models launched today will be commercially available as of today through the fast entrenching well-established dealership network across the country. The BharatBenz Tractor and the Construction-Mining trucks will now bolster the capabilities of customer who operate in this segment adding the dimension of reliability, fuel-efficiency and an overall superior TCO benefit.</p>\r\n\r\n<p>Commenting on the certification, Mr. Marc Llistosella, Managing Director &amp; CEO, DICV, said, &quot;It is indeed a significant milestone in our journey of commitment to deliver quality products and services to our customers. It is important to note that right from our inception; all our stakeholders including the suppliers and our employees across functions have strived to achieve global quality standards at every step of our operations. This ISO/TS16949 certification demonstrates our strict adherence to quality standards and is a testimony of the high standards that Daimler follows worldwide.&quot;</p>\r\n\r\n<p>Daimler India Commercial Vehicles obtained this certification meeting all requirements in a record time of 17 months from start of production, after rigorous audits conducted by the certifying body at its manufacturing plant at Oragadam, near Chennai.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading truck manufacturer Daimler AG, received the coveted TS16949:2009 certification for implementation and maintenance of Quality Management System in the area of Design & Development and Manufacture of commercial vehicles. Dr. K Murugan, Managing Director & CEO, ULDQS India, a wholly owned subsidiary of DQS Holding, GmbH, presented the certificate to Mr. Marc Llistosella, Managing...', '2014-02-10', 'main_1533963972.jpg', 'thumb_1533963972.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:24:44', '2018-08-10 23:36:12', 'admin', 'admin'),
(31, 'Daimler India Commercial Vehicles continues its planned approach by launching 3 Tractor-models and 1 Construction Mining model', '<ul>\r\n	<li>Designed to ensure total customer care</li>\r\n	<li>State-of-the-art 3S facilities for modern trucks &ndash; Sales, Service &amp; Spares</li>\r\n	<li>&quot;Pro-Active&quot; services to help customers &#39;Power Ahead&#39;</li>\r\n	<li>Easy financing solutions, insurance and service contracts</li>\r\n</ul>\r\n\r\n<p>Agra: Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the Indian subsidiary of the world&rsquo;s leading truck manufacturer Daimler AG, unveiled its state-of-the-art BharatBenz dealership in Agra today. &#39;Arvind Trucking&#39; as the dealership is named will provide the customer a holistic trucking experience. Strategically located at NH-2, Tehsil &ndash; Etmadpur, Agra, Uttar Pradesh, the 3S facility is equipped with state-of-the-art service bays workshop and is spread over an area of 63000sq.ft. With highly trained manpower, sophisticated tools and advanced guided diagnostic systems, the facility will provide customers focused Sales consulting to ensure that BharatBenz customers receive all the attention under one roof</p>\r\n\r\n<p>.<br />\r\nMr. V. Sreeram, VP - Domestic Sales, Product Management &amp; Network, said, &quot;Our network expansion drive is strategic and gives us access to over 85% of the addressable truck market in the country. Our state-of-the-art dealership network is fully equipped with highly skilled manpower and service capabilities to fulfill the requirements of our customers. Having gained a solid traction in excess of over 10% market share in the markets where we have launched, we are quite confident of ensuring the success story in the new markets as well.&quot; &quot;Our philosophy is to provide the customer with state-of-the-art after-sales service that ensures not just easy reach but pro-active service. Our dealerships, while providing focused sales consultancy will ensure that the customer&#39;s trucks are delivering maximum value to his business. Our goal is to ensure that our customers feel empowered by associating with BharatBenz,&quot; he added.</p>\r\n\r\n<p>Speaking at the occasion, Mr. Mayank Bansal, Managing Director, Arvind Trucking, said, &quot;We are extremely happy to be associated with BharatBenz. We trust that the high quality products and service modules will benefit the customers at large. Our team of qualified service-oriented professionals will bring best-in-class sales and service support to the customers and gain customer confidence on us and BharatBenz brand.&quot; Early this year, BharatBenz launched the tractor-trailer models and a construction mining model making itself a full-range player in the commercial vehicles segment above 9T segment. The company has already reached the Nr. 3 position in the heavy-duty segment. DICV recently laid the foundation stone for its new Bus plant in India at its Oragadam plant, near Chennai, with an earmarked investment of INR 425 crores.</p>\r\n\r\n<p>At the dealerships, the customer can experience a host of primary and value-added services. On the sales front, the personnel have been trained to provide tailor-made solutions depending on the specific needs of each customer. Thus purchasing BharatBenz trucks from Arvind Trucking ensures that every customer is able to choose the trucks most appropriately suited to his business needs.</p>\r\n\r\n<p>Customers will enjoy the benefits of a fully &#39;Pro-Active&#39; service that ensures his trucks provide maximum productivity. On the After-sales front, the dealership has a 24x7 enabled workshop. It is manned by qualified &amp; Daimler trained engineers/technicians and equipped with high productivity tools, advanced guided diagnostics &amp; Mobile Service vans. The dealership will provide a host of value-added services viz., Cashless Zero-depreciation Insurance, Full Maintenance Contracts, Extended Warranty, 24x7 Roadside Assistance, Vehicle tracking systems, Driver Training and Express &amp; On-site Service.</p>\r\n\r\n<p>Customers will also enjoy easy financing solutions. The dealership will provide financing solutions ably supported by Daimler&#39;s own captive financing brand &ndash; BharatBenz Financial. Key financing partners like HDFC, IndusInd, Magma, SF, Chola, Shriram Transport, SREI Equipment Finance, L&amp;T Finance, Reliance Capital, Axis Bank, Kotak, ICICI and major nationalized banks add substantial choice and offer easy financing options that customers can avail of.</p>\r\n\r\n<p>This integrated approach will offer BharatBenz customers the combined benefit of Best-in-Class Products, Pro-Active after-sales service and easy financing under one roof, making ownership a powering experience.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd. (DICV), the 100% wholly-owned subsidiary of the world\\\'s leading truck manufacturer Daimler AG, today launched 4 new BharatBenz models (3 Tractor and 1 Construction-Mining) at an exclusive event conducted for Media in Mumbai ...', '2014-02-03', 'main_1533963813.jpg', 'thumb_1533963813.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:31:43', '2018-08-10 23:33:33', 'admin', 'admin');
INSERT INTO `tbl_pressrelease` (`id`, `title`, `description`, `short_description`, `release_date`, `image`, `thumbnail`, `banner`, `mobile_banner`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(32, 'BharatBenz triggers a powerful change in Indian Trucking', '<ul>\r\n	<li>BharatBenz completes 1 year on Indian roads</li>\r\n	<li>9 models launched, 52 dealerships operational, Industry-first features offered</li>\r\n	<li>Delivers on all its commitments</li>\r\n	<li>Drives the industry to provide customers with never-before offers</li>\r\n</ul>\r\n\r\n<p>Chennai: Daimler India Commercial Vehicles Pvt. Ltd (DICV), a wholly owned subsidiary of Daimler AG, today celebrates the completion of 1 year on Indian roads of its BharatBenz trucks. DICV launched the BharatBenz range of Heavy-duty trucks on 26 September 2012, at Mumbai.</p>\r\n\r\n<p>Ever since the launch of its trucks, the promise of superior value to customers has been constantly delivered and BharatBenz has introduced &ldquo;industry-first value offers&rdquo; along with its trucks. This has not only led to renew the belief in Indian Trucking by our customers but has actually driven other players to follow us in offering new features and services than ever before. The end beneficiary of this change is the Indian trucker. BharatBenz is proud to have triggered such a positive change and will continue to do so in future.</p>\r\n\r\n<p>As on date there are more than 5000 Medium &amp; Heavy-duty BharatBenz trucks on Indian roads delivering superior value which customers have longed for over a long time</p>\r\n\r\n<p>Mr. Marc Llistosella, Managing Director &amp; CEOsaid, &ldquo;When we launched our brand and our trucks we stated clearly that we will deliver superior value to our customers and will also transform the Indian trucking industry. We are proud that we have already begun achieving this in such a short time, especially when the industry has been through one of its worst phases.</p>\r\n\r\n<p>We will continue to deliver more value to our customers. We are also confident that the change that we have triggered in the industry will ensure that the Indian trucker will realize the potential in his hands which he had been missing in the past&rdquo;.</p>\r\n\r\n<p><strong>The 4 &lsquo;Powers&rsquo; of BharatBenz makes the customer &ldquo;Power Ahead&rdquo;</strong></p>\r\n\r\n<p><strong>The &ldquo;Power of Understanding&rdquo;:</strong></p>\r\n\r\n<p>From the beginning the focus of DICV was to ensure a thorough and continuous process of &lsquo;Understanding&rsquo; the Indian customer and conditions. This philosophy is what puts BharatBenz ahead of others. BharatBenz takes lays a clear emphasis on his aspect and instills this as a culture in the entire organization. This has been the guiding light that has led to superior products and services</p>\r\n\r\n<p><strong>The &ldquo;Power of Innovation&rdquo;:</strong></p>\r\n\r\n<p>BharatBenz will constantly innovate itself, be it creating the right products, being flexible to changing customer needs in terms of products and services. BharatBenz constantly keeps the customer needs at its centre of attention while innovating newer ways of making &lsquo;Customer Experience&rsquo; a delight. DICV created its Test Track way before start of production of its trucks. The technology used in its trucks from the well-established Daimler platforms both for the Heavy &amp; Light/Medium-duty trucks. These trucks ranging from 9 &ndash; 49 tonne GVW are the Best-in-Class in performance and TCO. 9 models have been launched so far. More models including the Tractor-Trailer will be launched in the months to come.</p>\r\n\r\n<p><strong>The &ldquo;Power of Excellence&rdquo;:</strong></p>\r\n\r\n<p>BharatBenz trucks have been crafted by keeping every possible requirement of Indian truckers. Breaking many myths related to power and efficiency of trucks, BharatBenz trucks offer finely-tuned engines of higher power and reliability that have also proved clearly more efficient in terms of fuel consumption than other comparable trucks in the Indian market.</p>\r\n\r\n<p>All aggregates be it the Powertrain, Chassis, Cabin and other aspects related to Cabin ergonomics and comfort, driver-friendly features such &lsquo;Distance-to-empty&rsquo; indicators, green band, unique and industry-first safety features such &lsquo;engine-brake&rsquo;, retractable seat-belts and a high-strength passenger cell, performance enhancing aspects such as &lsquo;unitized-injection&rsquo; and &lsquo;CDI&rsquo; engines, have made BharatBenz a superior and a reliable experience</p>\r\n\r\n<p><strong>The &ldquo;Power of Commitment&rdquo;:</strong></p>\r\n\r\n<p>Along with the launch of superior trucks BharatBenz has bolstered the customer experience with a host of services.</p>\r\n\r\n<p>Industry-first features &ndash; These include Exceptional Warranty terms, Longer Service &amp; Oil change intervals. Other players are following with new schemes.</p>\r\n\r\n<p>Finance &amp; Insurance packages &ndash; Along with &lsquo;BharatBenz Financial&rsquo; the branded Finance &amp; Insurance package offered by Daimler&rsquo;s in-house financial services company (Daimler Financial Services), DICV has tied-up with several banks &amp; financial institutions making the experience of acquiring a BharatBenz a superlatively positive one.</p>\r\n\r\n<p>Dealership facilities - A dealership network that already covers over 50 locations along the most important trucking routes also provide state-of-the-art facilities for sales &amp; service. Sales Consulting provides the customer the right choice of trucks / finance / service packages. BharatBenz dealership also offers faster service with well-trained service personnel, advanced equipment and diagnostic processes. This is also strengthened by the availability of 24/7 Service Vans that ensure the reach of service to any point within a 4 hour period. The importance of the driver is clearly recognized and in a way to make the drivers comfortable while his trucks is being looked-after, there are &ldquo;Driver Relaxation Rooms&rdquo; at every dealership.</p>\r\n\r\n<p>Besides launching BharatBenz for the Indian market, DICV has also begun the export of its trucks under the brand &lsquo;FUSO&rsquo; to Asian and African markets. In alignment with Daimler Trucks&rsquo; &ldquo;Asian Business Model&rdquo;, the integration of strengths between DICV and MFTBC (Mitsubishi Fuso Truck &amp; Bus Corporation), Japan, has achieved the goal of making Daimler quality trucks for India under the brand &ldquo;BharatBenz&rdquo; and for other markets under the brand &ldquo;FUSO&rdquo;.</p>\r\n\r\n<p><strong>Export &amp; Launch in Asian &amp; African markets</strong></p>\r\n\r\n<p>The DICV manufactured &ldquo;FUSO&rdquo; trucks have already been exported and launched in SriLanka and Kenya and will be launched in Zambia, tomorrow, 27 September 2013.</p>\r\n\r\n<p>BharatBenz is the Indian truck brand of Daimler AG, the world&rsquo;s largest Commercial Vehicle manufacturer and inventor of the truck. Backed by over a century of global trucking experience and an in-depth understanding of the Indian terrain, BharatBenz is here to transform the country&rsquo;s trucking industry. BharatBenz has begun to offer Indian customers an entire truck portfolio in the 6 to 49 tonne range across various applications. The name &ndash; BharatBenz - brings out the two most defining qualities of a brand that is being built exclusively for India. &lsquo;Bharat&rsquo; carries the values, ideologies and spirit of the nation, and reinforces the brand&rsquo;s commitment to serve the Indian market. &lsquo;Benz&rsquo; upholds the lineage of innovation, technological brilliance and engineering excellence that have given unparalleled performance and great value for generations. Powered by the synergy between global leadership in technology and local deep rooted customer knowledge, BharatBenz builds robust, reliable, performance-oriented trucks to drive maximum productivity and deliver maximum value to customers across the country. With BharatBenz, a new era in Indian trucking has arrived.</p>\r\n\r\n<p><strong>Daimler India Commercial Vehicles Pvt. Ltd.</strong></p>\r\n\r\n<p>Daimler India Commercial Vehicles (DICV) is a 100% subsidiary of Daimler AG, Stuttgart, Germany. DICV will produce light, medium and heavy-duty commercial vehicles for the Indian volume market, under the brand name &ndash; BharatBenz. BharatBenz stands for Indian engineering with German DNA. The products will be customized to serve all major customer segments, from owner-drivers up to large fleet operators. The efficiency of BharatBenz trucks will be an optimal fit for customers keen on efficiency, a low Total Cost of Ownership over the life-cycle and highest profit potential for their businesses. The state-of-the-art production plant at Oragadam, near Chennai, spreads over 400 acres (160 hectares). It includes a modern test track designed to simulate Indian conditions &ndash; making it one of its kind in Asia. DICV has a total dedicated investment of over INR 4400 crs (approximately &euro;700 million).</p>\r\n\r\n<p>The Company also handles Production, Marketing, Sales and After Sales of Mercedes-Benz Actros Trucks in India. Mercedes-Benz Trucks with the Brand Promise &ldquo;Trucks you can Trust&rdquo; are renowned world-wide for their reliability and efficiency under most extreme operating conditions, as well. These trucks also offer the best that Truck Technology has to offer.</p>\r\n\r\n<p>Sustainability being a core of Daimler&rsquo;s corporate culture, DICV will focus on creating efficient, reliable and ecologically friendly products.</p>\r\n\r\n<p>This document contains forward-looking statements that reflect our current views about future events. The words &ldquo;anticipate,&rdquo; &ldquo;assume,&rdquo; &ldquo;believe,&rdquo; &ldquo;estimate,&rdquo; &ldquo;expect,&rdquo; &ldquo;intend,&rdquo; &ldquo;may,&rdquo; &ldquo;plan,&rdquo; &ldquo;project,&rdquo; &ldquo;should&rdquo; and similar expressions are used to identify forward-looking statements. These statements are subject to many risks and uncertainties, including an adverse development of global economic conditions, in particular a decline of demand in our most important markets; a deterioration of our funding possibilities on the credit and financial markets; events of force majeure including natural disasters, acts of terrorism, political unrest, industrial accidents and their effects on our sales, purchasing, production or financial services activities; changes in currency exchange rates; a shift in consumer preference towards smaller, lower margin vehicles; or a possible lack of acceptance of our products or services which limits our ability to achieve prices as well as to adequately utilize our production capacities; price increases in fuel or raw materials; disruption of production due to shortages of materials, labour strikes, or supplier insolvencies; a decline in resale prices of used vehicles; the effective implementation of cost-reduction and efficiency-optimization measures; the business outlook of companies in which we hold a significant equity interest, most notably EADS; the successful implementation of strategic cooperation&rsquo;s and joint ventures; changes in laws, regulations and government policies, particularly those relating to vehicle emissions, fuel economy and safety; the resolution of pending governmental investigations and the conclusion of pending or threatened future legal proceedings; and other risks and uncertainties, some of which we describe under the heading &ldquo;Risk Report&rdquo; in Daimler&rsquo;s most recent Annual Report. If any of these risks and uncertainties materialize, or if the assumptions underlying any of our forward-looking statements prove incorrect, then our actual results may be materially different from those we express or imply by such statements. We do not intend or assume any obligation to update these forward-looking statements. Any forward-looking statement speaks only as of the date on which it is made.</p>\r\n', 'Daimler India Commercial Vehicles Pvt. Ltd (DICV), a wholly owned subsidiary of Daimler AG, today celebrates the completion of 1 year on Indian roads ...', '2013-09-26', 'main_1533963796.jpg', 'thumb_1533963796.jpg', '', '', '', '', '', '', '182.70.20.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:33:57', '2018-08-10 23:33:16', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pressrelease_media`
--

CREATE TABLE `tbl_pressrelease_media` (
  `id` int(11) NOT NULL,
  `press_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(75) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `is_home` int(2) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pressrelease_media`
--

INSERT INTO `tbl_pressrelease_media` (`id`, `press_id`, `title`, `type`, `image`, `thumbnail`, `is_home`, `youtube`, `name`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'fgfgfgf', 'image', 'main_1532340384.jpg', 'thumb_1532340384.jpg', 0, '', '', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 10:06:24', NULL, 'admin', NULL),
(2, 1, 'bharat benz testing', 'video', '', '', 0, 'https://www.youtube.com/watch?v=X-vfFovN5Dw', '', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 10:09:03', '2018-07-24 06:05:47', 'admin', 'admin'),
(3, 2, 'ffdfd', 'image', 'main_1532340973.jpg', 'thumb_1532340973.jpg', 0, '', '', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 10:16:13', NULL, 'admin', NULL),
(4, 3, 'Testing....', 'video', '', '', 0, 'https://www.youtube.com/watch?v=VZmSoVsFfhU', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 11:07:19', NULL, 'admin', NULL),
(5, 1, 'gghhghghg', 'image', 'main_1532349405.jpg', 'thumb_1532349405.jpg', 0, '', '', '10.10.10.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-23 12:36:45', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_type` varchar(255) DEFAULT NULL,
  `label1` varchar(255) NOT NULL,
  `label2` varchar(255) NOT NULL,
  `label3` varchar(255) NOT NULL,
  `label4` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` text NOT NULL,
  `broucher` varchar(255) NOT NULL,
  `broucher_image` varchar(255) NOT NULL,
  `broucher_thumbnail` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `is_parent` varchar(50) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `title`, `short_description`, `category_id`, `category_type`, `label1`, `label2`, `label3`, `label4`, `image`, `thumbnail`, `broucher`, `broucher_image`, `broucher_thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`, `is_parent`, `parent_category_id`) VALUES
(1, 'School Bus', 'Ride Protected. Ride Happy.', 7, NULL, 'Safety That Inspires', 'Comfort That Delights', 'Unmatched Fuel Economy', 'Low Maintenance', 'main_1532432766.png', 'thumb_1532432766.png', 'broucher_1532433550.pdf', 'main_1532432899.png', 'thumb_1532432899.png', 1, 'Need a safe bus for students? BharatBenz is one of the leading School Bus Manufacturers in India. Explore our range of best school buses which are completely safe for daily commute as well as for picnics and other outings.', '', 'Best School Bus, Children Bus for Schools & Picnics, Safe bus for students, School Bus Manufacturers.', 'Best School Bus, Children Bus for Schools & Picnics, Safe bus for students - BharatBenz', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 05:25:59', '2018-08-13 09:01:18', 'admin', 'admin', NULL, NULL),
(2, '16T Chassis', 'A Reliable Partner That Enables Profit.', 7, NULL, 'Features', '', '', '', 'main_1533913779.png', 'thumb_1533913779.png', 'broucher_1532433779.pdf', 'main_1533842317.png', 'thumb_1533842317.png', 4, 'Looking for commercial buses with a high performance engine? The BharatBenz Intercity Chassis has one of the best 1623 engine chassis for buses providing high uptime & high durability, while reducing the Total Cost of Ownership.', '', 'High Performance Engine  for Buses, Best 1623 Engine Chasis for Buses', 'High Performance Engine  for Buses, Best 1623 Engine Chasis for Buses   -  BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 05:26:54', '2018-08-13 02:57:29', 'admin', 'admin', NULL, NULL),
(3, 'Staff Bus', 'The Ride That Makes You Feel At Home.', 7, NULL, 'Safety That Inspires', 'Comfort That Delights', 'Unmatched Fuel Economy', 'Low Maintenance', 'main_1532432716.png', 'thumb_1532432716.png', 'broucher_1532433730.pdf', 'main_1532432869.png', 'thumb_1532432869.png', 2, 'Looking for the most comfortable Office Staff Bus? Bharatbenz manufactures some of the best commercial buses for office commutes, which are designed for enhaced fuel efficiency and lower maintainence intervals.', '', 'Commercial Bus for Offices, Comfortable Office Staff Bus, Local Bus for Tourist', 'Commercial Bus for Offices, Comfortable Office Staff Bus, Local Bus for Staff - BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 05:28:14', '2018-08-13 02:37:41', 'admin', 'admin', NULL, NULL),
(4, 'Tourist Bus', 'Comfortable. Even On Your Wallet.', 7, NULL, 'Safety That Inspires', 'Comfort That Delights', 'Unmatched Fuel Economy', 'Low Maintenance', 'main_1532432736.png', 'thumb_1532432736.png', 'broucher_1532433676.pdf', 'main_1532433676.png', 'thumb_1532433676.png', 3, 'Looking for tourist bus manufacturers in India? BharatBenz manufactures some of the best Tourist buses, city buses, buses for picnics as well as buses for tour.', '', 'Tourist Bus, City Bus, Bus for Picnics & Outings, Buses for Tour, Tourist Bus Manufacturers in  India', 'Tourist Bus, City Bus, Bus for Picnics & Outings, Buses for Tour - BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 05:29:09', '2018-08-13 02:44:34', 'admin', 'admin', NULL, NULL),
(11, '9T Chassis', 'Comfortable On The Road. Easy On The Pocket.', 0, NULL, 'Features', '', '', '', 'main_1533842772.png', 'thumb_1533842772.png', 'broucher_1533917523.pdf', 'main_1534182213.png', 'thumb_1534182213.png', 5, 'Looking for commercial buses with a high performance engine? The BharatBenz Intercity Chassis has one of the best 1623 engine chassis for buses providing high uptime & high durability, while reducing the Total Cost of Ownership.', '', 'High Performance Engine  for Buses, Best 1623 Engine Chasis for Buses', 'High Performance Engine  for Buses, Best 1623 Engine Chasis for Buses   -  BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-08 10:51:04', '2018-08-13 12:13:33', 'admin', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_images`
--

CREATE TABLE `tbl_products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products_images`
--

INSERT INTO `tbl_products_images` (`id`, `product_id`, `category_type`, `uploaded_image`, `image`, `thumb_image`, `insert_date`) VALUES
(7, 4, '', 'bus3.jpg', 'main_bus3.jpg', 'thumb_bus3.jpg', '2018-06-19 05:29:10'),
(8, 7, '', '2P5y.gif', 'main_2P5y.gif', 'thumb_2P5y.gif', '2018-06-19 11:19:43'),
(9, 7, '', '17381215_1_220.jpg', 'main_17381215_1_220.jpg', 'thumb_17381215_1_220.jpg', '2018-06-19 11:19:44'),
(10, 8, '', 'bus1.jpg', 'main_bus1.jpg', 'thumb_bus1.jpg', '2018-06-19 13:19:12'),
(12, 8, '', 'bus2.jpg', 'main_bus2.jpg', 'thumb_bus2.jpg', '2018-06-21 06:44:44'),
(13, 9, '', '11529579068.jpg', 'main_11529579068.jpg', 'thumb_11529579068.jpg', '2018-06-21 11:04:28'),
(14, 9, '', '21529579068.jpg', 'main_21529579068.jpg', 'thumb_21529579068.jpg', '2018-06-21 11:04:29'),
(15, 9, '', '31529579069.png', 'main_31529579069.png', 'thumb_31529579069.png', '2018-06-21 11:04:29'),
(16, 10, '', '11530184359.jpg', 'main_11530184359.jpg', 'thumb_11530184359.jpg', '2018-06-28 11:12:39'),
(17, 10, '', '21530184359.jpg', 'main_21530184359.jpg', 'thumb_21530184359.jpg', '2018-06-28 11:12:39'),
(28, 1, 'mobile', 'mobile_main_11531514977.jpg', 'mobile_main_11531514977.jpg', 'mobile_thumb_11531514977.jpg', '2018-07-13 20:49:37'),
(36, 4, 'mobile', 'mobile_main_11532419887.jpg', 'mobile_main_11532419887.jpg', 'mobile_thumb_11532419887.jpg', '2018-07-24 08:11:27'),
(37, 1, '', '11532432237.jpg', 'main_11532432237.jpg', 'thumb_11532432237.jpg', '2018-07-24 11:37:18'),
(38, 3, '', '11532432294.jpg', 'main_11532432294.jpg', 'thumb_11532432294.jpg', '2018-07-24 11:38:15'),
(39, 3, 'mobile', 'mobile_main_11532432295.jpg', 'mobile_main_11532432295.jpg', 'mobile_thumb_11532432295.jpg', '2018-07-24 11:38:15'),
(42, 1, 'mobile', 'mobile_main_11532432372.jpg', 'mobile_main_11532432372.jpg', 'mobile_thumb_11532432372.jpg', '2018-07-24 11:39:32'),
(44, 2, 'mobile', 'mobile_main_11533147489.jpg', 'mobile_main_11533147489.jpg', 'mobile_thumb_11533147489.jpg', '2018-08-01 18:18:09'),
(45, 2, '', '11533147590.jpg', 'main_11533147590.jpg', 'thumb_11533147590.jpg', '2018-08-01 18:19:50'),
(47, 11, '', '11533725464.jpg', 'main_11533725464.jpg', 'thumb_11533725464.jpg', '2018-08-08 10:51:05'),
(48, 11, 'mobile', 'mobile_main_11533725465.jpg', 'mobile_main_11533725465.jpg', 'mobile_thumb_11533725465.jpg', '2018-08-08 10:51:05'),
(49, 2, '', '11533812056.jpg', 'main_11533812056.jpg', 'thumb_11533812056.jpg', '2018-08-09 10:54:16'),
(50, 2, 'mobile', 'mobile_main_11533812056.jpg', 'mobile_main_11533812056.jpg', 'mobile_thumb_11533812056.jpg', '2018-08-09 10:54:16'),
(51, 4, '', '11533815491.jpg', 'main_11533815491.jpg', 'thumb_11533815491.jpg', '2018-08-09 11:51:32'),
(52, 4, 'mobile', 'mobile_main_11533815492.jpg', 'mobile_main_11533815492.jpg', 'mobile_thumb_11533815492.jpg', '2018-08-09 11:51:32'),
(53, 11, '', '11534172122.jpg', 'main_11534172122.jpg', 'thumb_11534172122.jpg', '2018-08-13 14:55:23'),
(54, 11, 'mobile', 'mobile_main_11534172123.jpg', 'mobile_main_11534172123.jpg', 'mobile_thumb_11534172123.jpg', '2018-08-13 14:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_enquiry`
--

CREATE TABLE `tbl_sales_enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales_enquiry`
--

INSERT INTO `tbl_sales_enquiry` (`id`, `name`, `email`, `mobile`, `state`, `location`, `product`, `is_delete`, `ip`, `agent`, `insert_date`) VALUES
(1, 'farhee parkar', 'farheen.parkar@bcwebwise.com', '9989898989', 'jammu & kashmir', 'Mumbai Central, Mumbai, Maharashtra, India', 'md in-power 1014r', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_search`
--

CREATE TABLE `tbl_search` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `description` text NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `is_delete` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_search`
--

INSERT INTO `tbl_search` (`id`, `url`, `title`, `content`, `description`, `is_active`, `is_delete`) VALUES
(1, 'buses', 'Buses', 'Best-in-class buses for delightful rides', 'With the new range of modern buses, BharatBenz offers&nbsp;a complete range of &lsquo;Made in India&rsquo; buses with best-in-class fuel economy, comfort levels, and safety standards. BharatBenz is determined to make buses the preferred mode of transportation in India.', '1', '1'),
(2, 'trucks', 'Trucks', 'Best-In-Class Trucks That Power You Ahead', 'BharatBenz is committed to be an integral part of the advancement of the Indian economy by providing commercial mobility solutions that will accelerate the progress of business in India. Each BharatBenz truck is designed to provide the highest level of productivity with optimal total cost of ownership, thereby providing the best in Truck-o-nomics.', '1', '1'),
(3, 'buses/school-bus-1', 'School Bus', '', '', '1', '1'),
(4, 'buses/intercity-chassis-2', 'Intercity Chassis', '', '', '1', '1'),
(5, 'buses/staff-bus-3', 'Staff Bus', '', '', '1', '1'),
(6, 'buses/tourist-bus-4', 'Tourist Bus', '', '', '1', '1'),
(7, 'trucks/tipper-1', 'Tipper', 'Enhanced Mobility', 'The Tipper built on the world-class Mercedes-Benz platform, gives a high peak torqueeven at a low RPM. This ensures performance on all kinds of terrains.', '1', '1'),
(8, 'trucks/mdt-2', 'MDT', '', '', '1', '1'),
(9, 'trucks/haulage-3', 'Haulage', '', '', '1', '1'),
(10, 'trucks/tractors-4', 'Tractors', '', '', '1', '1'),
(11, 'select-my-truck', 'Perishable goods', 'Perishable goods like fruits veg etc..', '', '1', '1'),
(12, 'select-my-truck', 'Poultry', 'Poultry', '', '1', '1'),
(13, 'select-my-truck', 'Milk', 'Milk', '', '1', '1'),
(14, 'select-my-truck', 'Liquid/Gas Transport', 'Liquid/Gas Transport', '', '1', '1'),
(15, 'select-my-truck', 'Fish', 'Fish', '', '1', '1'),
(16, 'select-my-truck', 'Parcel/FMCG/FMCD', 'Parcel/FMCG/FMCD', '', '1', '1'),
(17, 'select-my-truck', 'Port movement', 'Port movement', '', '1', '1'),
(18, 'select-my-truck', 'Auto carriers', 'Auto carriers', '', '1', '1'),
(19, 'select-my-truck', 'Cement transportation', 'Cement transportation', '', '1', '1'),
(20, 'select-my-truck', 'Cold chain – Dairy, Meat, Pharma', 'Cold chain – Dairy, Meat, Pharma', '', '1', '1'),
(21, 'select-my-truck', 'Construction', 'Construction', '', '1', '1'),
(22, 'select-my-truck', 'Ores & Minerals mining', 'Ores & Minerals mining', '', '1', '1'),
(23, 'select-my-truck', 'Textile transportation', 'Textile transportation', '', '1', '1'),
(24, 'select-my-truck', 'Market Load', 'Market Load', '', '1', '1'),
(25, 'select-my-truck', 'Steel/Industrial goods/Auto ancillaries', 'Steel/Industrial goods/Auto ancillaries', '', '1', '1'),
(26, 'select-my-truck', 'Agricultural produce', 'Agricultural produce', '', '1', '1'),
(27, 'used-trucks', 'Truck 45C', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1', '1'),
(28, 'used-trucks', 'Truck 65T', 'fdf', 'fdf', '1', '1'),
(29, 'blog/how-driving-a-bharatbenz-is-similar-to-driving-a-car-3', 'How Driving a BharatBenz Is Similar to Driving a Car?', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads.', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads.\r\n\r\nBy tailoring superior German technology to suit the needs of the Indian roads,&nbsp;\r\n\r\nthe BharatBenz trucks can deliver seamlessly on all types of roads and terrains for long hours. This is made possible by constantly innovating and updating the available technology to ensure complete comfort and road safety.\r\n\r\nThis in turn helps enhance personnel productivity while increasing ROI and revenue. What Makes BharatBenz Trucks a Superior Drive? With premium wooden-textured dashboards, washable trims, majestic exteriors complete with an ergonomic design,\r\n\r\nBharatBenz Heavy Duty Haulage trucks are guaranteed to give a premium driving experience. Since trucking journeys can be long and tedious, a lot of thought is put into designing the BharatBenz Heavy Duty Haulage truck cabins.\r\n\r\nThe driver-friendly design ensures that the truck driver remains fresh and alert throughout the trip, enabling smoother commutes with fewer stoppages, ultimately boosting productivity.', '1', '1'),
(30, 'blog/how-driving-a-bharatbenz-is-similar-to-driving-a-car-4', 'How Driving a BharatBenz Is Similar to Driving a Car?', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads.', 'BharatBenz prides itself on the premium trucking experience it promises on Indian roads. By tailoring superior German technology to suit the needs of the Indian roads,&nbsp; the BharatBenz trucks can deliver seamlessly on all types of roads and terrains for long hours. This is made possible by constantly innovating and updating the available technology to ensure complete comfort and road safety. This in turn helps enhance personnel productivity while increasing ROI and revenue.\r\nWhat Makes BharatBenz Trucks a Superior Drive?\r\nWith premium wooden-textured dashboards, washable trims, majestic exteriors complete with an ergonomic design, BharatBenz Heavy Duty Haulage trucks are guaranteed to give a premium driving experience. Since trucking journeys can be long and tedious, a lot of thought is put into designing the BharatBenz Heavy Duty Haulage truck cabins. The driver-friendly design ensures that the truck driver remains fresh and alert throughout the trip, enabling smoother commutes with fewer stoppages, ultimately boosting productivity.', '1', '1'),
(31, 'testimonial/test-9', 'test', '', '', '1', '1'),
(32, 'testimonial/bharatbenz-truck-rd-centre-in-india-10', 'BharatBenz Truck R&D centre in India', '', '', '1', '1'),
(33, 'testimonial/bharatbenz-insurance-has-unique-features-11', 'BharatBenz Insurance has unique features.', '', '', '1', '1'),
(34, 'testimonial/customer-testimonial-7-12', 'Customer Testimonial 7', '', '', '1', '1'),
(35, 'testimonial/customer-testimonial-8-13', 'Customer Testimonial 8', '', '', '1', '1'),
(36, 'testimonial/customer-testimonial-12-14', 'Customer Testimonial 12', '', '', '1', '1'),
(37, 'testimonial/customer-testimonial-14-16', 'Customer Testimonial 14', '', '', '1', '1'),
(38, 'testimonial/finance-insurance-17', 'Finance & Insurance', '', '', '1', '1'),
(39, 'testimonial/success-stories-18', 'Success Stories', '', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specification_images`
--

CREATE TABLE `tbl_specification_images` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_specification_images`
--

INSERT INTO `tbl_specification_images` (`id`, `product_id`, `product_type`, `category_type`, `uploaded_image`, `image`, `thumb_image`, `insert_date`) VALUES
(1, '1', 'buses', '', '11531549076.jpg', 'main_11531549076.jpg', 'thumb_11531549076.jpg', '2018-07-14 06:17:56'),
(3, '1', 'buses', 'mobile', 'mobile_main_11531549077.jpg', 'mobile_main_11531549077.jpg', 'mobile_thumb_11531549077.jpg', '2018-07-14 06:17:57'),
(4, '1', 'buses', 'tab', 'mobile_main_11531549315.jpg', 'mobile_main_11531549315.jpg', 'mobile_thumb_11531549315.jpg', '2018-07-14 06:21:55'),
(7, '1', 'buses', 'mobile', 'mobile_main_11531549887.jpg', 'mobile_main_11531549887.jpg', 'mobile_thumb_11531549887.jpg', '2018-07-14 06:31:28'),
(9, '1', 'buses', 'tab', 'tab_main_11531550008.jpg', 'tab_main_11531550008.jpg', 'tab_thumb_11531550008.jpg', '2018-07-14 06:33:28'),
(10, '1', 'buses', 'mobile', 'mobile_main_11531550008.jpg', 'mobile_main_11531550008.jpg', 'mobile_thumb_11531550008.jpg', '2018-07-14 06:33:28'),
(11, '7', 'trucks', 'tab', 'tab_main_11531555771.jpg', 'tab_main_11531555771.jpg', 'tab_thumb_11531555771.jpg', '2018-07-14 08:09:31'),
(12, '7', 'trucks', 'mobile', 'mobile_main_11531555771.jpg', 'mobile_main_11531555771.jpg', 'mobile_thumb_11531555771.jpg', '2018-07-14 08:09:32'),
(14, '2', 'trucks', 'tab', 'tab_main_11531556113.jpg', 'tab_main_11531556113.jpg', 'tab_thumb_11531556113.jpg', '2018-07-14 08:15:14'),
(15, '2', 'trucks', 'mobile', 'mobile_main_11531556114.jpg', 'mobile_main_11531556114.jpg', 'mobile_thumb_11531556114.jpg', '2018-07-14 08:15:14'),
(18, '4', 'trucks', 'mobile', 'mobile_main_11531678783.png', 'mobile_main_11531678783.png', 'mobile_thumb_11531678783.png', '2018-07-15 18:19:43'),
(19, '13', 'trucks', '', '11531712346.jpg', 'main_11531712346.jpg', 'thumb_11531712346.jpg', '2018-07-16 03:39:07'),
(20, '13', 'trucks', 'tab', 'tab_main_11531712347.jpg', 'tab_main_11531712347.jpg', 'tab_thumb_11531712347.jpg', '2018-07-16 03:39:07'),
(21, '13', 'trucks', 'mobile', 'mobile_main_11531712347.jpg', 'mobile_main_11531712347.jpg', 'mobile_thumb_11531712347.jpg', '2018-07-16 03:39:07'),
(22, '6', 'trucks', '', '11531712491.jpg', 'main_11531712491.jpg', 'thumb_11531712491.jpg', '2018-07-16 03:41:31'),
(23, '6', 'trucks', 'mobile', 'mobile_main_11531712491.jpg', 'mobile_main_11531712491.jpg', 'mobile_thumb_11531712491.jpg', '2018-07-16 03:41:31'),
(24, '8', 'trucks', '', '11531712886.jpg', 'main_11531712886.jpg', 'thumb_11531712886.jpg', '2018-07-16 03:48:06'),
(25, '8', 'trucks', 'mobile', 'mobile_main_11531712886.jpg', 'mobile_main_11531712886.jpg', 'mobile_thumb_11531712886.jpg', '2018-07-16 03:48:06'),
(26, '14', 'trucks', '', '11531713102.jpg', 'main_11531713102.jpg', 'thumb_11531713102.jpg', '2018-07-16 03:51:42'),
(27, '14', 'trucks', 'tab', 'tab_main_11531713102.jpg', 'tab_main_11531713102.jpg', 'tab_thumb_11531713102.jpg', '2018-07-16 03:51:43'),
(28, '14', 'trucks', 'mobile', 'mobile_main_11531713103.jpg', 'mobile_main_11531713103.jpg', 'mobile_thumb_11531713103.jpg', '2018-07-16 03:51:43'),
(29, '9', 'trucks', '', '11531713206.jpg', 'main_11531713206.jpg', 'thumb_11531713206.jpg', '2018-07-16 03:53:26'),
(30, '9', 'trucks', 'mobile', 'mobile_main_11531713206.jpg', 'mobile_main_11531713206.jpg', 'mobile_thumb_11531713206.jpg', '2018-07-16 03:53:26'),
(31, '10', 'trucks', '', '11531713578.jpg', 'main_11531713578.jpg', 'thumb_11531713578.jpg', '2018-07-16 03:59:39'),
(32, '10', 'trucks', 'mobile', 'mobile_main_11531713579.jpg', 'mobile_main_11531713579.jpg', 'mobile_thumb_11531713579.jpg', '2018-07-16 03:59:39'),
(33, '11', 'trucks', '', '11531713900.jpg', 'main_11531713900.jpg', 'thumb_11531713900.jpg', '2018-07-16 04:05:00'),
(34, '11', 'trucks', 'mobile', 'mobile_main_11531713900.jpg', 'mobile_main_11531713900.jpg', 'mobile_thumb_11531713900.jpg', '2018-07-16 04:05:00'),
(35, '12', 'trucks', '', '11531714166.jpg', 'main_11531714166.jpg', 'thumb_11531714166.jpg', '2018-07-16 04:09:26'),
(36, '12', 'trucks', 'mobile', 'mobile_main_11531714166.jpg', 'mobile_main_11531714166.jpg', 'mobile_thumb_11531714166.jpg', '2018-07-16 04:09:26'),
(37, '15', 'trucks', '', '11531727531.jpg', 'main_11531727531.jpg', 'thumb_11531727531.jpg', '2018-07-16 07:52:11'),
(38, '15', 'trucks', 'mobile', 'mobile_main_11531727532.jpg', 'mobile_main_11531727532.jpg', 'mobile_thumb_11531727532.jpg', '2018-07-16 07:52:12'),
(39, '16', 'trucks', '', '11531727996.jpg', 'main_11531727996.jpg', 'thumb_11531727996.jpg', '2018-07-16 07:59:56'),
(40, '16', 'trucks', 'mobile', 'mobile_main_11531727996.jpg', 'mobile_main_11531727996.jpg', 'mobile_thumb_11531727996.jpg', '2018-07-16 07:59:56'),
(41, '17', 'trucks', '', '11531728840.jpg', 'main_11531728840.jpg', 'thumb_11531728840.jpg', '2018-07-16 08:14:01'),
(42, '17', 'trucks', 'mobile', 'mobile_main_11531728841.jpg', 'mobile_main_11531728841.jpg', 'mobile_thumb_11531728841.jpg', '2018-07-16 08:14:01'),
(43, '18', 'trucks', '', '11531729194.jpg', 'main_11531729194.jpg', 'thumb_11531729194.jpg', '2018-07-16 08:19:54'),
(44, '18', 'trucks', 'mobile', 'mobile_main_11531729194.jpg', 'mobile_main_11531729194.jpg', 'mobile_thumb_11531729194.jpg', '2018-07-16 08:19:54'),
(45, '19', 'trucks', '', '11531729499.jpg', 'main_11531729499.jpg', 'thumb_11531729499.jpg', '2018-07-16 08:24:59'),
(46, '19', 'trucks', 'mobile', 'mobile_main_11531729499.jpg', 'mobile_main_11531729499.jpg', 'mobile_thumb_11531729499.jpg', '2018-07-16 08:24:59'),
(47, '20', 'trucks', '', '11531729916.jpg', 'main_11531729916.jpg', 'thumb_11531729916.jpg', '2018-07-16 08:31:57'),
(48, '20', 'trucks', 'mobile', 'mobile_main_11531729917.jpg', 'mobile_main_11531729917.jpg', 'mobile_thumb_11531729917.jpg', '2018-07-16 08:31:57'),
(49, '21', 'trucks', '', '11531731249.jpg', 'main_11531731249.jpg', 'thumb_11531731249.jpg', '2018-07-16 08:54:10'),
(50, '21', 'trucks', 'mobile', 'mobile_main_11531731250.jpg', 'mobile_main_11531731250.jpg', 'mobile_thumb_11531731250.jpg', '2018-07-16 08:54:10'),
(51, '22', 'trucks', '', '11531731837.jpg', 'main_11531731837.jpg', 'thumb_11531731837.jpg', '2018-07-16 09:03:57'),
(52, '22', 'trucks', 'mobile', 'mobile_main_11531731837.jpg', 'mobile_main_11531731837.jpg', 'mobile_thumb_11531731837.jpg', '2018-07-16 09:03:58'),
(53, '22', 'trucks', '', '11531732219.jpg', 'main_11531732219.jpg', 'thumb_11531732219.jpg', '2018-07-16 09:10:20'),
(54, '22', 'trucks', 'mobile', 'mobile_main_11531732220.jpg', 'mobile_main_11531732220.jpg', 'mobile_thumb_11531732220.jpg', '2018-07-16 09:10:20'),
(55, '6', 'trucks', '', '11531732531.jpg', 'main_11531732531.jpg', 'thumb_11531732531.jpg', '2018-07-16 09:15:31'),
(57, '23', 'trucks', 'mobile', 'mobile_main_11531732565.jpg', 'mobile_main_11531732565.jpg', 'mobile_thumb_11531732565.jpg', '2018-07-16 09:16:06'),
(58, '', 'trucks', '', '11531732778.jpg', 'main_11531732778.jpg', 'thumb_11531732778.jpg', '2018-07-16 09:19:39'),
(59, '', 'trucks', '', '11531733091.jpg', 'main_11531733091.jpg', 'thumb_11531733091.jpg', '2018-07-16 09:24:52'),
(60, '', 'trucks', 'tab', 'tab_main_11531733092.jpg', 'tab_main_11531733092.jpg', 'tab_thumb_11531733092.jpg', '2018-07-16 09:24:53'),
(62, '23', 'trucks', 'tab', 'tab_main_11531733403.jpg', 'tab_main_11531733403.jpg', 'tab_thumb_11531733403.jpg', '2018-07-16 09:30:04'),
(63, '23', 'trucks', 'mobile', 'mobile_main_11531733404.jpg', 'mobile_main_11531733404.jpg', 'mobile_thumb_11531733404.jpg', '2018-07-16 09:30:04'),
(64, '6', 'trucks', '', '11531733541.jpg', 'main_11531733541.jpg', 'thumb_11531733541.jpg', '2018-07-16 09:32:21'),
(65, '6', 'trucks', 'tab', 'tab_main_11531733541.jpg', 'tab_main_11531733541.jpg', 'tab_thumb_11531733541.jpg', '2018-07-16 09:32:22'),
(66, '6', 'trucks', 'mobile', 'mobile_main_11531733542.jpg', 'mobile_main_11531733542.jpg', 'mobile_thumb_11531733542.jpg', '2018-07-16 09:32:22'),
(67, '12', 'trucks', '', '11531735621.jpg', 'main_11531735621.jpg', 'thumb_11531735621.jpg', '2018-07-16 10:07:01'),
(68, '12', 'trucks', '', '11531735661.jpg', 'main_11531735661.jpg', 'thumb_11531735661.jpg', '2018-07-16 10:07:42'),
(69, '12', 'trucks', 'tab', 'tab_main_11531735662.jpg', 'tab_main_11531735662.jpg', 'tab_thumb_11531735662.jpg', '2018-07-16 10:07:42'),
(70, '12', 'trucks', 'mobile', 'mobile_main_11531735662.jpg', 'mobile_main_11531735662.jpg', 'mobile_thumb_11531735662.jpg', '2018-07-16 10:07:43'),
(71, '2', 'trucks', 'tab', 'tab_main_11531736161.jpg', 'tab_main_11531736161.jpg', 'tab_thumb_11531736161.jpg', '2018-07-16 10:16:02'),
(72, '6', 'trucks', 'tab', 'tab_main_11531736211.jpg', 'tab_main_11531736211.jpg', 'tab_thumb_11531736211.jpg', '2018-07-16 10:16:52'),
(73, '8', 'trucks', 'tab', 'tab_main_11531736445.jpg', 'tab_main_11531736445.jpg', 'tab_thumb_11531736445.jpg', '2018-07-16 10:20:46'),
(74, '10', 'trucks', 'tab', 'tab_main_11531736538.jpg', 'tab_main_11531736538.jpg', 'tab_thumb_11531736538.jpg', '2018-07-16 10:22:19'),
(75, '2', 'trucks', '', '11531736590.jpg', 'main_11531736590.jpg', 'thumb_11531736590.jpg', '2018-07-16 10:23:11'),
(76, '11', 'trucks', 'tab', 'tab_main_11531736598.jpg', 'tab_main_11531736598.jpg', 'tab_thumb_11531736598.jpg', '2018-07-16 10:23:18'),
(77, '12', 'trucks', 'tab', 'tab_main_11531736668.jpg', 'tab_main_11531736668.jpg', 'tab_thumb_11531736668.jpg', '2018-07-16 10:24:28'),
(78, '4', 'trucks', '', '11531737647.jpg', 'main_11531737647.jpg', 'thumb_11531737647.jpg', '2018-07-16 10:40:47'),
(79, '4', 'trucks', 'tab', 'tab_main_11531737647.jpg', 'tab_main_11531737647.jpg', 'tab_thumb_11531737647.jpg', '2018-07-16 10:40:48'),
(80, '4', 'trucks', 'mobile', 'mobile_main_11531737648.jpg', 'mobile_main_11531737648.jpg', 'mobile_thumb_11531737648.jpg', '2018-07-16 10:40:48'),
(81, '4', 'trucks', 'tab', 'tab_main_11531738118.jpg', 'tab_main_11531738118.jpg', 'tab_thumb_11531738118.jpg', '2018-07-16 10:48:38'),
(82, '21', 'trucks', '', '11531738360.jpg', 'main_11531738360.jpg', 'thumb_11531738360.jpg', '2018-07-16 10:52:40'),
(83, '21', 'trucks', 'tab', 'tab_main_11531738360.jpg', 'tab_main_11531738360.jpg', 'tab_thumb_11531738360.jpg', '2018-07-16 10:52:41'),
(84, '21', 'trucks', 'mobile', 'mobile_main_11531738361.jpg', 'mobile_main_11531738361.jpg', 'mobile_thumb_11531738361.jpg', '2018-07-16 10:52:41'),
(85, '22', 'trucks', '', '11531738418.jpg', 'main_11531738418.jpg', 'thumb_11531738418.jpg', '2018-07-16 10:53:39'),
(86, '22', 'trucks', 'tab', 'tab_main_11531738419.jpg', 'tab_main_11531738419.jpg', 'tab_thumb_11531738419.jpg', '2018-07-16 10:53:39'),
(87, '22', 'trucks', 'mobile', 'mobile_main_11531738419.jpg', 'mobile_main_11531738419.jpg', 'mobile_thumb_11531738419.jpg', '2018-07-16 10:53:40'),
(89, '23', 'trucks', 'tab', 'tab_main_11531738481.jpg', 'tab_main_11531738481.jpg', 'tab_thumb_11531738481.jpg', '2018-07-16 10:54:42'),
(90, '23', 'trucks', 'mobile', 'mobile_main_11531738482.jpg', 'mobile_main_11531738482.jpg', 'mobile_thumb_11531738482.jpg', '2018-07-16 10:54:42'),
(91, '1', 'trucks', '', '11531738537.jpg', 'main_11531738537.jpg', 'thumb_11531738537.jpg', '2018-07-16 10:55:37'),
(92, '1', 'trucks', 'tab', 'tab_main_11531738537.jpg', 'tab_main_11531738537.jpg', 'tab_thumb_11531738537.jpg', '2018-07-16 10:55:38'),
(93, '1', 'trucks', 'mobile', 'mobile_main_11531738538.jpg', 'mobile_main_11531738538.jpg', 'mobile_thumb_11531738538.jpg', '2018-07-16 10:55:38'),
(94, '15', 'trucks', 'tab', 'tab_main_11531738580.jpg', 'tab_main_11531738580.jpg', 'tab_thumb_11531738580.jpg', '2018-07-16 10:56:20'),
(95, '16', 'trucks', 'tab', 'tab_main_11531738608.jpg', 'tab_main_11531738608.jpg', 'tab_thumb_11531738608.jpg', '2018-07-16 10:56:48'),
(96, '17', 'trucks', 'tab', 'tab_main_11531738637.jpg', 'tab_main_11531738637.jpg', 'tab_thumb_11531738637.jpg', '2018-07-16 10:57:17'),
(97, '19', 'trucks', '', '11533699237.png', 'main_11533699237.png', 'thumb_11533699237.png', '2018-08-08 03:33:58'),
(98, '19', 'trucks', 'tab', 'tab_main_11533699238.png', 'tab_main_11533699238.png', 'tab_thumb_11533699238.png', '2018-08-08 03:33:58'),
(99, '19', 'trucks', 'mobile', 'mobile_main_11533699238.png', 'mobile_main_11533699238.png', 'mobile_thumb_11533699238.png', '2018-08-08 03:33:59'),
(100, '19', 'trucks', '', '11533699286.png', 'main_11533699286.png', 'thumb_11533699286.png', '2018-08-08 03:34:47'),
(101, '23', 'trucks', '', '11533699452.jpg', 'main_11533699452.jpg', 'thumb_11533699452.jpg', '2018-08-08 03:37:33'),
(102, '23', 'trucks', 'tab', 'tab_main_11533699453.jpg', 'tab_main_11533699453.jpg', 'tab_thumb_11533699453.jpg', '2018-08-08 03:37:33'),
(103, '23', 'trucks', 'mobile', 'mobile_main_11533699453.jpg', 'mobile_main_11533699453.jpg', 'mobile_thumb_11533699453.jpg', '2018-08-08 03:37:34'),
(104, '23', 'trucks', 'mobile', 'mobile_main_11533699520.jpg', 'mobile_main_11533699520.jpg', 'mobile_thumb_11533699520.jpg', '2018-08-08 03:38:41'),
(105, '23', 'trucks', 'mobile', 'mobile_main_11533699582.jpg', 'mobile_main_11533699582.jpg', 'mobile_thumb_11533699582.jpg', '2018-08-08 03:39:42'),
(106, '14', 'trucks', '', '11533699734.jpg', 'main_11533699734.jpg', 'thumb_11533699734.jpg', '2018-08-08 03:42:15'),
(107, '14', 'trucks', 'tab', 'tab_main_11533699735.jpg', 'tab_main_11533699735.jpg', 'tab_thumb_11533699735.jpg', '2018-08-08 03:42:15'),
(108, '14', 'trucks', 'mobile', 'mobile_main_11533699735.jpg', 'mobile_main_11533699735.jpg', 'mobile_thumb_11533699735.jpg', '2018-08-08 03:42:16'),
(109, '13', 'trucks', '', '11533699854.jpg', 'main_11533699854.jpg', 'thumb_11533699854.jpg', '2018-08-08 03:44:15'),
(110, '13', 'trucks', 'tab', 'tab_main_11533699855.jpg', 'tab_main_11533699855.jpg', 'tab_thumb_11533699855.jpg', '2018-08-08 03:44:15'),
(111, '13', 'trucks', 'mobile', 'mobile_main_11533699855.jpg', 'mobile_main_11533699855.jpg', 'mobile_thumb_11533699855.jpg', '2018-08-08 03:44:15'),
(112, '16', 'trucks', '', '11533699944.jpg', 'main_11533699944.jpg', 'thumb_11533699944.jpg', '2018-08-08 03:45:45'),
(113, '16', 'trucks', 'tab', 'tab_main_11533699945.jpg', 'tab_main_11533699945.jpg', 'tab_thumb_11533699945.jpg', '2018-08-08 03:45:45'),
(114, '16', 'trucks', 'mobile', 'mobile_main_11533699945.jpg', 'mobile_main_11533699945.jpg', 'mobile_thumb_11533699945.jpg', '2018-08-08 03:45:46'),
(121, '25', 'trucks', 'tab', 'tab_main_1533720165.jpg', 'tab_main_1533720165.jpg', 'tab_thumb_1533720165.jpg', '2018-08-08 09:22:45'),
(122, '25', 'trucks', 'mobile', 'mobile_main_1533720165.jpg', 'mobile_main_1533720165.jpg', 'mobile_thumb_1533720165.jpg', '2018-08-08 09:22:45'),
(123, '25', 'trucks', '', '1533720386.jpg', 'main_1533720386.jpg', 'thumb_1533720386.jpg', '2018-08-08 09:26:26'),
(124, '5', 'buses', '', '11533732606.jpg', 'main_11533732606.jpg', 'thumb_11533732606.jpg', '2018-08-08 12:50:07'),
(125, '5', 'buses', 'mobile', 'mobile_main_11533732607.jpg', 'mobile_main_11533732607.jpg', 'mobile_thumb_11533732607.jpg', '2018-08-08 12:50:07'),
(126, '21', 'trucks', '', '1533800430.png', 'main_1533800430.png', 'thumb_1533800430.png', '2018-08-09 07:40:30'),
(127, '21', 'trucks', 'mobile', 'mobile_main_1533800430.png', 'mobile_main_1533800430.png', 'mobile_thumb_1533800430.png', '2018-08-09 07:40:31'),
(128, '21', 'trucks', 'mobile', 'mobile_main_1533800490.png', 'mobile_main_1533800490.png', 'mobile_thumb_1533800490.png', '2018-08-09 07:41:31'),
(129, '25', 'trucks', 'mobile', 'mobile_main_1533800635.png', 'mobile_main_1533800635.png', 'mobile_thumb_1533800635.png', '2018-08-09 07:43:56'),
(130, '21', 'trucks', 'mobile', 'mobile_main_1533801180.png', 'mobile_main_1533801180.png', 'mobile_thumb_1533801180.png', '2018-08-09 07:53:00'),
(131, '15', 'trucks', '', '1533804039.png', 'main_1533804039.png', 'thumb_1533804039.png', '2018-08-09 08:40:39'),
(132, '15', 'trucks', 'mobile', 'mobile_main_1533804039.png', 'mobile_main_1533804039.png', 'mobile_thumb_1533804039.png', '2018-08-09 08:40:40'),
(133, '24', 'trucks', '', '1533804171.png', 'main_1533804171.png', 'thumb_1533804171.png', '2018-08-09 08:42:52'),
(134, '24', 'trucks', 'mobile', 'mobile_main_1533804172.png', 'mobile_main_1533804172.png', 'mobile_thumb_1533804172.png', '2018-08-09 08:42:52'),
(135, '23', 'trucks', '', '1533804266.png', 'main_1533804266.png', 'thumb_1533804266.png', '2018-08-09 08:44:26'),
(136, '23', 'trucks', 'mobile', 'mobile_main_1533804266.png', 'mobile_main_1533804266.png', 'mobile_thumb_1533804266.png', '2018-08-09 08:44:26'),
(137, '13', 'trucks', '', '1533804341.png', 'main_1533804341.png', 'thumb_1533804341.png', '2018-08-09 08:45:41'),
(138, '13', 'trucks', 'mobile', 'mobile_main_1533804341.png', 'mobile_main_1533804341.png', 'mobile_thumb_1533804341.png', '2018-08-09 08:45:41'),
(139, '21', 'trucks', '', '1533804430.png', 'main_1533804430.png', 'thumb_1533804430.png', '2018-08-09 08:47:10'),
(140, '21', 'trucks', 'mobile', 'mobile_main_1533804430.png', 'mobile_main_1533804430.png', 'mobile_thumb_1533804430.png', '2018-08-09 08:47:11'),
(141, '16', 'trucks', '', '1533804494.png', 'main_1533804494.png', 'thumb_1533804494.png', '2018-08-09 08:48:15'),
(142, '16', 'trucks', 'mobile', 'mobile_main_1533804495.png', 'mobile_main_1533804495.png', 'mobile_thumb_1533804495.png', '2018-08-09 08:48:15'),
(143, '4', 'trucks', '', '1533804555.png', 'main_1533804555.png', 'thumb_1533804555.png', '2018-08-09 08:49:15'),
(144, '4', 'trucks', 'mobile', 'mobile_main_1533804555.png', 'mobile_main_1533804555.png', 'mobile_thumb_1533804555.png', '2018-08-09 08:49:15'),
(145, '17', 'trucks', '', '1533804635.png', 'main_1533804635.png', 'thumb_1533804635.png', '2018-08-09 08:50:35'),
(146, '17', 'trucks', 'mobile', 'mobile_main_1533804635.png', 'mobile_main_1533804635.png', 'mobile_thumb_1533804635.png', '2018-08-09 08:50:36'),
(147, '22', 'trucks', '', '1533804694.png', 'main_1533804694.png', 'thumb_1533804694.png', '2018-08-09 08:51:34'),
(148, '22', 'trucks', 'mobile', 'mobile_main_1533804694.png', 'mobile_main_1533804694.png', 'mobile_thumb_1533804694.png', '2018-08-09 08:51:34'),
(149, '14', 'trucks', '', '1533804746.png', 'main_1533804746.png', 'thumb_1533804746.png', '2018-08-09 08:52:27'),
(150, '14', 'trucks', 'mobile', 'mobile_main_1533804747.png', 'mobile_main_1533804747.png', 'mobile_thumb_1533804747.png', '2018-08-09 08:52:27'),
(151, '1', 'trucks', '', '1534175434.jpg', 'main_1534175434.jpg', 'thumb_1534175434.jpg', '2018-08-13 15:50:35'),
(152, '1', 'trucks', 'mobile', 'mobile_main_1534175435.jpg', 'mobile_main_1534175435.jpg', 'mobile_thumb_1534175435.jpg', '2018-08-13 15:50:35'),
(153, '26', 'trucks', '', '1534177355.jpg', 'main_1534177355.jpg', 'thumb_1534177355.jpg', '2018-08-13 16:22:35'),
(154, '26', 'trucks', 'mobile', 'mobile_main_1534177355.jpg', 'mobile_main_1534177355.jpg', 'mobile_thumb_1534177355.jpg', '2018-08-13 16:22:35'),
(155, '8', 'trucks', '', '1534178029.jpg', 'main_1534178029.jpg', 'thumb_1534178029.jpg', '2018-08-13 16:33:50'),
(156, '8', 'trucks', 'mobile', 'mobile_main_1534178030.jpg', 'mobile_main_1534178030.jpg', 'mobile_thumb_1534178030.jpg', '2018-08-13 16:33:50'),
(157, '27', 'trucks', '', '1534178129.jpg', 'main_1534178129.jpg', 'thumb_1534178129.jpg', '2018-08-13 16:35:29'),
(158, '27', 'trucks', 'mobile', 'mobile_main_1534178129.jpg', 'mobile_main_1534178129.jpg', 'mobile_thumb_1534178129.jpg', '2018-08-13 16:35:29'),
(159, '26', 'trucks', '', '1534178161.jpg', 'main_1534178161.jpg', 'thumb_1534178161.jpg', '2018-08-13 16:36:01'),
(160, '26', 'trucks', 'mobile', 'mobile_main_1534178161.jpg', 'mobile_main_1534178161.jpg', 'mobile_thumb_1534178161.jpg', '2018-08-13 16:36:01'),
(161, '27', 'trucks', '', '1534181716.jpg', 'main_1534181716.jpg', 'thumb_1534181716.jpg', '2018-08-13 17:35:16'),
(162, '27', 'trucks', 'mobile', 'mobile_main_1534181716.jpg', 'mobile_main_1534181716.jpg', 'mobile_thumb_1534181716.jpg', '2018-08-13 17:35:16'),
(163, '12', 'trucks', '', '1534181755.jpg', 'main_1534181755.jpg', 'thumb_1534181755.jpg', '2018-08-13 17:35:56'),
(164, '12', 'trucks', 'mobile', 'mobile_main_1534181756.jpg', 'mobile_main_1534181756.jpg', 'mobile_thumb_1534181756.jpg', '2018-08-13 17:35:56'),
(165, '18', 'trucks', '', '1534184931.jpg', 'main_1534184931.jpg', 'thumb_1534184931.jpg', '2018-08-13 18:28:51'),
(166, '18', 'trucks', 'mobile', 'mobile_main_1534184931.jpg', 'mobile_main_1534184931.jpg', 'mobile_thumb_1534184931.jpg', '2018-08-13 18:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state_master`
--

CREATE TABLE `tbl_state_master` (
  `state_id` mediumint(8) UNSIGNED NOT NULL,
  `state_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zone_id` smallint(5) UNSIGNED NOT NULL,
  `countryid` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state_master`
--

INSERT INTO `tbl_state_master` (`state_id`, `state_name`, `zone_id`, `countryid`, `is_active`) VALUES
(1, 'ANDAMAN & NICOBAR', 2, 1, '1'),
(2, 'ANDHRA PRADESH', 2, 1, '1'),
(3, 'ASAAM', 3, 1, '1'),
(4, 'BIHAR', 3, 1, '1'),
(5, 'CHANDIGARH', 2, 1, '1'),
(6, 'CHHATTISGARH', 4, 1, '1'),
(7, 'DELHI', 1, 1, '1'),
(8, 'GOA', 4, 1, '1'),
(9, 'GUJARAT', 4, 1, '1'),
(10, 'HIMACHAL PRADESH', 1, 1, '1'),
(11, 'HARYANA', 1, 1, '1'),
(12, 'JAMMU & KASHMIR', 1, 1, '1'),
(13, 'JHARKHAND', 3, 1, '1'),
(14, 'KARNATAKA', 2, 1, '1'),
(15, 'KERALA', 2, 1, '1'),
(16, 'MADHYA PRADESH', 4, 1, '1'),
(17, 'MAHARASHTRA', 4, 1, '1'),
(19, 'ODISHA', 3, 1, '1'),
(20, 'PONDICHERRY', 2, 1, '1'),
(21, 'PUNJAB', 1, 1, '1'),
(22, 'RAJASTHAN', 1, 1, '1'),
(23, 'TAMIL NADU', 2, 1, '1'),
(25, 'UTTAR PRADESH', 1, 1, '1'),
(26, 'UTTARAKHAND', 1, 1, '1'),
(28, 'WEST BENGAL', 3, 1, '1'),
(29, 'SIKKIM', 3, 1, '1'),
(32, 'ARUNACHAL PARDESH', 3, 1, '1'),
(33, 'TRIPURA', 3, 1, '1'),
(34, 'MANIPUR', 3, 1, '1'),
(35, 'MIZORAM', 3, 1, '1'),
(36, 'NAGALAND', 3, 1, '1'),
(37, 'MEGHALAYA', 3, 1, '1'),
(40, 'TELANGANA', 2, 1, '1'),
(41, 'Dadra and Nagar Haveli', 1, 1, '1'),
(42, 'Daman and Diu', 1, 1, '1'),
(43, 'Lakshadweep', 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stores`
--

CREATE TABLE `tbl_stores` (
  `sd_id` int(11) NOT NULL,
  `product_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `store_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `store_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(300) NOT NULL,
  `sales_person` varchar(255) NOT NULL,
  `sales_person_contact` varchar(255) NOT NULL,
  `sales_person_email` varchar(255) NOT NULL,
  `service_person` varchar(255) NOT NULL,
  `service_contact_person` varchar(255) NOT NULL,
  `service_person_email` varchar(255) NOT NULL,
  `latitude` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `longitude` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stores`
--

INSERT INTO `tbl_stores` (`sd_id`, `product_type`, `store_type`, `store_name`, `state`, `city`, `region`, `address`, `phone`, `Email`, `sales_person`, `sales_person_contact`, `sales_person_email`, `service_person`, `service_contact_person`, `service_person_email`, `latitude`, `longitude`, `cdate`) VALUES
(2, '1S', 'sales', 'Topsel', 'West Bengal', 'Siliguri', 'East', 'TopselTrucking,Topplaza,3rdfloor,oppPayalcinema,sevokeRoad,Siliguri-734001.Darjeelingdist,WestBengal', '', 'csc.slg@topseltrucking.co.in', '', '', '', '', '', '', '26.739676', '88.435220', '2018-07-29 18:30:00'),
(3, '1S', 'sales', 'Espirit ', 'UP & Haryana', 'Faridabad', 'North1', '2NDFLOOR,BAREJABHAWAN,15/4,MAINMATHURAROAD,FARIDABAD(EAST)HARYANA', '1294013620', 'Salesfbd@espirit-trucking.com', 'SANJEEV  JALOTA', '7290051156', 'gmconstruction@espirit-trucking.com', 'Mr. Ravinder Rawat', '7291988501', 'gmservicegzb@espirit-trucking.com', '28.439694', '77.308186', '2018-07-29 18:30:00'),
(4, '1S', 'sales', 'Espirit ', 'Delhi', 'Okla', 'North1', 'D-186,OkhlaIndl.Area,Okhlaphase1,NearAnandmaaiMarg,NewDelhi-110020', '1141323255', 'Salesdeskdel@espirit-trucking.com', 'SANJEEV  JALOTA', '7290051156', 'gmconstruction@espirit-trucking.com', 'Mr. Ravinder Rawat', '7291988501', 'gmservicegzb@espirit-trucking.com', '28.524336', '77.275034', '2018-07-29 18:30:00'),
(5, '1S', 'sales', 'Espirit ', 'Uttar Pradesh', 'Sahibabad', 'North1', 'PLOTNO1961POCHIKAMBERPUROLDGTROADSAHIBABADGhazibad', '0120-2623225', 'Salessbd@espirit-trucking.com', 'Vivek Khamasera', '9871262968', 'vivek@espirit-trucking.com', 'Mr. Ravinder Rawat', '7291988501', 'gmservicegzb@espirit-trucking.com', '28.676462', '77.336846', '2018-07-29 18:30:00'),
(6, '1S', 'sales', 'Society ', 'UP', 'Lucknow (City)', 'North1', 'HousenoS475,TransportNagar,Lucknow', '', '', 'Aprajit Mishra ', '7800001346', 'sales@societytrucking.com', '', '', '', '', '', '2018-07-29 18:30:00'),
(7, '1S', 'sales', 'Anand', 'Himachal Pradesh', 'Baddi', 'North2', 'ShopNo.72,MotiaPlazaComplex,Baddi-NalagarhRoad,Baddi173205', '94185-14411', 'anandtrucking.salesbaddi@gmail.com', 'Sumeet Chandel', '9805002336', 'anandtrucking.cs@gmail.com', 'Dinesh Yadav', '88942-22555', 'anandtruckingwmsolan@gmail.com', '30.92498', '76.79884', '2018-07-29 18:30:00'),
(8, '1S', 'sales', 'Globe ', 'Punjab', 'Jalandhar', 'North2', 'GlobeCVPvt.Ltd,LambaPindByePassOppositeAllahabadBankNearIOCLGTRoad,Jalandhar-144001', '8725012067', 'bb@globe-trucking.com', 'MANINDER SINGH', '8725012067', 'maninder.singh@globe-trucking.com', 'HARDEEP SINGH', '8437012501', 'hardeep.singh@globe-trucking.com', '30.951239', '76.531665', '2018-07-29 18:30:00'),
(9, '1S', 'sales', 'Kamal ', 'Rajasthan', 'Shahpura', 'North2', 'KamalTrucking,NH8,NEARSHAHPURARTO,SHAHPURA,JAIPUR(RAJ)303103', '7726009278', 'support.shahpura@kamal-trucking.com', 'Sandeep Sharma & Neeraj Sharma', '7726009275 & 7726009271?', 'sales.shahpura@kamal-trucking.com', 'Om Prakash Yadav', '7726009290', 'opyadav@kamal-trucking.com', '27.363812', '75.954998', '2018-07-29 18:30:00'),
(10, '1S', 'sales', 'Prabal ', 'Tamil Nadu', 'Coimbatore(city)', 'South', 'PrabalMotorsPvt.Ltd.#75&76,NehruStadiumBuilding,VOCPark,Coimbatore-641018.', '0422 - 4371444', 'mahalingam.rangaraj@prabaltrucking.com', 'Mr Shabeek', '8489901906', 'shabeek.jaffer@prabaltrucking.com', 'NA', 'NA', 'NA', '11.005826', '76.969093', '2018-07-29 18:30:00'),
(11, '1S', 'sales', 'Prabal ', 'Tamil Nadu', 'Sankari', 'South', 'PrabalMotorsPvt.Ltd,3/632,EswariComplex,.SalemMainRoad,Sankagiri?637301', '8489901914', 'mukesh.murali@prabaltrucking.com ', 'Mr Vishnu', '8489901884', 'mukesh.murali@prabaltrucking.com ', 'NA', 'NA', 'NA', '11.4851973', '77.8893432', '2018-07-29 18:30:00'),
(12, '1S', 'sales', 'Prabal ', 'Tamil Nadu', 'Tiruppur', 'South', 'PrabalMotorsPvt.Ltd,3/876-A,NPSComplex,MolakadaiPalladamRoad,ochipalayamPirivu,Tirupur?641605', '8489901963', 'priyanka.anbazhagan@prabaltrucking.com ', 'Mr Appadurai', '8489901975', 'appadurai.i@prabaltrucking.com', 'NA', 'NA', 'NA', '11.060492', '77.337424', '2018-07-29 18:30:00'),
(13, '1S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Miyapur', 'South', 'SRIHARSHATRUCKINGPVTLTD,Hno1-112/1/215,Syno:44/1and42,plotno:215,Miyapur,RangareddyDist.500049,Telengana.', '9100101339', 'sht_hr@sriharshatrucking.com', 'Mr. Rajasekhar', '8978380404', 'sht_infrahyd@sriharshatrucking.com', '', '', '', '17.29455', '78.22211', '2018-07-29 18:30:00'),
(14, '1S', 'sales', 'Trident ', 'Karnataka', 'Kalyan Nagar', 'South', 'TridentTrucking,Sales-90,6thBMainRoad,HRBRLayout,KalyanNagarOuterRingroad,Bangalore-560053,Karnataka', '080-43430333', 'sales1@tridenttrucking.com', 'Rajendra Kumar', '8197137777', 'rajendrakumar@tridenttrucking.com', '', '', '', '13.025475', '77.641663', '2018-07-29 18:30:00'),
(15, '1S', 'sales', 'Trident ', 'Karnataka', 'Shivamoga', 'South', 'TridentTrucking,SangolirayannaCircle,KEB100FtRoad,Opp.HPPetrolBunk,Shimoga,Karnataka,577201', '9900513356', 'salessmg@tridenttrucking.com', 'Vinod', '9900513356', 'salessmg@tridenttrucking.com', '', '', '', '13.939294', '75.583913', '2018-07-29 18:30:00'),
(16, '1S', 'sales', 'Wasan ', 'Maharashtra', 'Thane', 'West1 ', 'Unit.no.1,Manasanandcomplex,Surveyno.141,Hissano.6,Dongripada,Kavesar,GhodBunderroad,Thane(west)', '7045959998', '', 'Abhishek Khadye', '9167710919', 'abhishek.khadye@wasantrucking.com', '', '', '', '19.251417', '72.97333', '2018-07-29 18:30:00'),
(17, '1S', 'sales', 'Wasan ', 'Maharashtra', 'Vashi', 'West1 ', 'Groundfloorunitno.1016,Awingplotno.4,Sector-19,Vashi,NaviMumbai', '9892916098', '', 'Abhishek Khadye', '9167710919', 'abhishek.khadye@wasantrucking.com', '', '', '', '19.251417', '72.97333', '2018-07-29 18:30:00'),
(18, '1S', 'sales', 'Wasan ', 'Maharashtra', 'Chembur', 'West1 ', 'Wasanhouse,5thfloor,PlotNo4,swastikpark,Sion-TrombayRoad,Chembur,Mumbai-400071', '022- 66834444', '', 'Mr. Sampath Gaikar', '91679 76660', 'sampath.gaikar@wasantrucking.com', '', '', '', '19.05425', '72.89079', '2018-07-29 18:30:00'),
(19, '1S', 'sales', 'Wasan ', 'Maharashtra', 'Andheri', 'West1 ', 'Unit - 28, Ajay Mittal ind estate, Building no.1, Mittal estate, Marol Naka, Andheri (East), Mumbai - 400 059\r\n', '022-40150552, 022-40150551', '', 'Mr. Trushar Shah', '9167670953', 'trushar.shah@wasantrucking.com', '', '', '', '19.107286', '72.881687', '2018-07-29 18:30:00'),
(20, '1S', 'sales', 'Sealand ', 'Gujarat', 'Rajkot city', 'West2', '20,GalaxyCommercialCentre,GroundFloor,JwaharRoad,Rajkot-360001', 'NA', 'NA', 'Mr. Kamlesh Dave', '9909998463', 'kamlesh@sealandtrucking.com', 'NA', 'NA', 'NA', '22.296878', '70.801186', '2018-07-29 18:30:00'),
(21, '2S', 'workshop', 'Shree Bharat', 'Odisha', 'Barbil', 'East', 'ShreeBharatMotorsLtd.BARBIL,KEONJHAR-758035', '8599011394', 'dicv.bbl@bharats.in', 'Ramakant Parida', '8599011407', 'rk.parida@bharats.in,', 'Mr. Ranjan Kumar Raul', '8599011406', 'service.kjr@shreebharattrucking.com,', '22.073356', '85.385598', '2018-07-29 18:30:00'),
(22, '2S', 'workshop', 'Topsel', 'West Bengal', 'Siliguri', 'East', '(AUnitofTopsparesPvtLtd)PO-Fulbarihat,P-S-Bhaktinagar,Dist-Jalpaiguri,WestBengal-734015', '+91 07805392020 to 27', 'csc.slg@topseltrucking.co.in', 'Mr.Neeraj Sharma', '7024156520', 'be4.slg@topseltrucking.co.in', 'Shersang Tamang', '9735913205', 'wm.slg@topseltrucking.co.in', '26.652517', '88.417602', '2018-07-29 18:30:00'),
(23, '2S', 'workshop', 'GMMCO', 'Jharkhand', 'Dhanbad', 'Mining', 'GmmcoLtd.C/oSKIndustrialWorksPvtLtd,Kowaband,GTRoad,NH2,POKGAshram,---Gobindpur,Dist.Dhanbad,---Jharkhand828109', '', 'contactus@gmmcoindia.com', 'Mr.BimalKumar Roy', '9771458530', 'bimalroy@gmmcoindia.com', 'Mr. Prashant Kumar', '9771458529', 'Prashant@gmmcoindia.com', '23.838532', '86.501285', '2018-07-29 18:30:00'),
(24, '2S', 'workshop', 'GMMCO', 'Orissa', 'Sambalpur', 'Mining', 'GMMCOLIMITED,Plotno.398-399-157,Pardhiapali(JSGROAD)SambalpurPO&PSAinthapaliTahasilSambalpurDistrict,Sambalpur-768006', '', 'contactus@gmmcoindia.com', 'Mr.Santhanu Jana', '9007077552', 'santanujana@gmmcoindia.com', 'Mr. Gopal pradhan', '9624477718', 'Gopalpradhan@gmmcoindia.com', '21.515126', '84.008728', '2018-07-29 18:30:00'),
(25, '2S', 'workshop', 'GMMCO', 'Gujarat', 'Ahmedabad', 'Mining', 'GMMCOLtd.C/o.NasibWarehouse,Block/SurveyNo.150,NearBakrolCircle,SardarPatelRingRoad,Post?Fathevadi,Taluka?DashkroiDistrict-Ahmedabad,Pincode?382210', '07930077296/07930077293', 'contactus@gmmcoindia.com', 'Mr.Kiranrameshbhai  Surti', '9925032299', 'kiransurti@gmmcoindia.com', 'Mr. Gopal pradhan', '9624477718', 'Gopalpradhan@gmmcoindia.com', '22.940215', '72.48946', '2018-07-29 18:30:00'),
(26, '2S', 'workshop', 'GMMCO', 'Andhra Pradesh', 'Ramagundam', 'Mining', 'GMMCOLIMITED,PlotNo.13/D,IndustrialDevelopmentArea,Opp.SaiBabaTemple,FCIRoad,Gowthaminagar,RamagundamMandal,KarimnagarDistrict,ANDHRAPRADESH-505210.', '+91 08728332505 to 07', 'contactus@gmmcoindia.com', 'Mr.Balakalyan Singh', '8008102608', 'balakalyansingh@gmmcoindia.com', 'Mr. Chandrashekara Reddy J', '8008102608', 'jcsreddy@gmmcoindia.com', '18.745388', '79.493948', '2018-07-29 18:30:00'),
(27, '2S', 'workshop', 'GMMCO', 'Chhattisgarh', 'Raigarh', 'Mining', 'GMMCOLimited,M/sKrishnaBuildconPvt.Limited,NearMangludeepaBasti,Dhimrapur-KotraroadBypass,Raigarh(Chhattisgarh)496001', '', 'contactus@gmmcoindia.com', 'Mr.Abhishek Kumar singh', '9910107990', 'neerajsharma@gmmcoindia.com', 'Mr. Vishnudas Manikpure', '8120 540540', '', '21.909776', '83.381607', '2018-07-29 18:30:00'),
(28, '2S', 'workshop', 'Globe ', 'Punjab', 'Ropar', 'North2', 'GlobeCVPvt.Ltd.Shop-cum-FlatNo?24,AnajMandi,Ropar-140001', '8437012504', 'bb@globe-trucking.com', 'HARKISHAN SINGH AULAKH', '8437012504', 'h.aulakh@globe-trucking.com', 'HARDEEP SINGH', '8437012501', 'hardeep.singh@globe-trucking.com', '31.341924', '75.608524', '2018-07-29 18:30:00'),
(29, '2S', 'workshop', 'Globe ', 'Punjab', 'Amirtsar', 'North2', 'GlobeCVPvt.Ltd,AJCBLgroupCompany,JandialaGuru,Amirtsar,Punjab', '8847445665', 'service.asr@globe-trucking.com', 'Ramesh Awasthi', '8725044331', 'ramesh.awasthi@globe-trucking.com', 'Sharanjeet Singh', '8847445665', 'service.asr@globe-trucking.com', '31.570716', '75.017339', '2018-07-29 18:30:00'),
(30, '2S', 'workshop', 'Autobahn', 'Kerala', 'Kottayam', 'South', 'HouseNo:X/647,Anakallumkal,KothalaP.O.,Kottayam,Pin:686502', '8606976174', 'service.ktm@autobahntrucking.com ', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Jayachandran D', '8606976174', 'service.ktm@autobahntrucking.com ', '9.564689444', '76.66438528', '2018-07-29 18:30:00'),
(31, '2S', 'workshop', 'Autobahn', 'Kerala', 'Pandalam', 'South', 'House6/1096A,Neetham,ThonnalloorBhagom,Pandalam,Pathanamthitta,Pin:689501', '8606976075', 'service.adoor@autobahntrucking.com', 'Bringle Simon A.', '8606976099', 'bringle.simon@autobahntrucking.com', 'Robin Raju', '8606976075', 'service.adoor@autobahntrucking.com', '9.223234722', '76.66892222', '2018-07-29 18:30:00'),
(32, '2S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Nagerkarnool', 'South', 'SriHarshaPricatelimited,Vuyalavadavillage,Nagarkurnool(Mandal),Nagarkurnool-district', '9100901232', '', '', '', '', '?S.Gangadhar Goud', '?8008459787', 'sht_servicengrkl@sriharshatrucking.com', '17.389061', '77.836326', '2018-07-29 18:30:00'),
(33, '2S', 'workshop', 'Varun ', 'Andhra Pradesh', 'Chitoor', 'South', 'VarunMotorsPvtLtd,D.No:25-526,G.KNagar,ReddiguntaPost,Chittoor-517002', '0857 - 2241444', 'service.ctr.varuntrucking@gmail.com', 'Mr.S KHADEER', '8297183222', 'be7.nlr.varuntrucking@gmail.com ', 'Mr. A RAJASHEKARAN', '8297255444', 'service.ctr.varuntrucking@gmail.com', '13.217176', '13.217176', '2018-07-29 18:30:00'),
(34, '2S', 'workshop', 'Ghatge ', 'Goa', 'South Goa', 'West1 ', 'C/oVARAMASIRINDIALOGISTICS&INFRASTRUCTUREPVT.LTD,NearUpasnagar,PostZuariNagar,MormugaoTaluka,Dist.SouthGoa,?Goa-403726', '8380872000', 'sales.goa@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83800 77929', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Dilip Singh', '77200 24400', 'service.goa@ghatgetrucking.com', '', '', '2018-07-29 18:30:00'),
(35, '2S', 'workshop', 'Frontier ', 'Madhya Pradesh', 'Singrauli', 'West2', 'Frontiertruckspvtltd,Opp.AhujaPetrolpumpNougarh,Waidhan,Singrauli-486886', '', '', 'Mr. Prabhakar Singh Baghel', '77710 03215', 'sales@frontier-trucking.com', 'Mr. Jitendra Kumar Sharma?', '7771003222?', 'service.singrauli@frontier-trucking.com', '24.0832599', '82.5734761', '2018-07-29 18:30:00'),
(36, '2S', 'workshop', 'Marksmen', 'Madhya Pradesh', 'Gwalior', 'West2', 'NEARTAPOVANGATE,PARASVIHARCOLONY,NEARVIKKYFACTORY,JHANSIROAD,GWALIOR-474009,MadhyaPradesh.', '751 2433379', '', 'Mr.Karan Grover', '9893911155?', 'karangrover@marksmentrucking.com', 'Mr. Karan Grover', '9893911155?', 'karangrover@marksmentrucking.com', '26.18172', '78.17277', '2018-07-29 18:30:00'),
(37, '2S', 'workshop', 'Sealand ', 'Gujarat', 'Bhavnagar', 'West2', 'Shopno.4&5,Surveyno.111,BehindMadhubanhotel,Bhavnagar-Rajkothighway,Vartej,Dist-Bhavnagar,Pin364060', '', '', 'Mr. Sumit Rathod - BE Rajula', '9909998475', 'sales@sealandtrucking.com', 'Mr. Shailesh Makwana', '9909963668', 'bhavnagar@sealandtrucking.com', '21.74383', '72.068448', '2018-07-29 18:30:00'),
(38, '2S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Palavancha', 'South', '', '', '', '', '', '', '', '', '', '', '', '2018-07-29 18:30:00'),
(39, '2S', 'workshop', 'Provincial', 'Maharashtra', 'Aurangabad', 'West1 ', '', '', '', '', '', '', '', '', '', '19.806618', '75.231378', '2018-07-29 18:30:00'),
(40, '2S', 'workshop', 'Marwar ', 'Rajasthan', 'Sanchor', 'North1', 'VillageBDhaniSanchore,BarmerRoad,NH15,TehsilSanchore,Jalore,Rajasthan-343041', '9116116707', '', 'NA', 'NA', 'NA', 'Ravindra', '9116116707', '', '', '', '2018-07-29 18:30:00'),
(41, '2S', 'workshop', 'Society ', 'UP', 'Lakhimpur', 'North1', '', '', '', '', '', '', '', '', '', '', '', '2018-07-29 18:30:00'),
(42, '2S', 'workshop', 'Anand', 'Himachal Pradesh', 'Kangra', 'North1', '45Miles,POLadwara,TehsilShahpura,Dist?Kangra176208', '9418138520', 'wm.kangra@anandtrucking.com', 'NA', 'NA', 'NA', 'Naveen Kumar', '9418138520', 'wm.kangra@anandtrucking.com', '', '', '2018-07-29 18:30:00'),
(43, '2S', 'workshop', 'N R ', 'West Bengal', 'Raniganj', 'East', 'RaniganjSquare,NH-2,BansraMore,PO-SearsoleRajbari,Raniganj-713347,BehindRangdeBasantiDhaba', '', '', 'NA', 'NA', 'NA', 'Koushik Kayal', '9732231215', 'kousikkayal@gmail.com', '', '', '2018-07-29 18:30:00'),
(44, '3S', 'workshop', 'Abutani ', 'Assam', 'Guwahati', 'East', 'AbutaniVaahanPvtLtd,Kamarkuchi,Tepesia,Sonapur,Kamrup,PIN-782402', '7086030802', 'gdoley.ceo@abutanitrucking.com', 'Mr. Rupak Purkayastha', '9435109555', 'rupak.p@abutanitrucking.com', 'Mr. Jayabrata Das,', '8638740798', 'jayabrata@abutanitrucking.com', '26.119987', '91.914817', '2018-07-29 18:30:00'),
(45, '3S', 'workshop', 'BEBBCO ', 'Jharkhand', 'Jamshedpur', 'East', 'NH33,Plotno.21&27,Village:Asonboni,Chandil,Jamshedpur,Jharkhand-832102', '0657-6050555-888', 'jsr@bebbcotrucking.com', 'Mr Ajay Sinha', '9204052480', 'sales.jamshedpur@bebbcotrucking.com', 'Sudip Santra', '9204052485', 'servicemanager.jsr@bebbcotrucking.com', '22.881908', '86.169527', '2018-07-29 18:30:00'),
(46, '3S', 'workshop', 'BEBBCO ', 'Jharkhand', 'Dhanbad', 'East', 'Plotno3427,mouzabarwa,no223,PS-govindpur,G.T.road,dhanbad-826001', '6540277004', 'Dhanbad@bebbcotrucking.com', 'Mr Ajay Singh', '9204552437', 'Sales.dhanbad@bebbcotrucking.com', 'Madhusudhan Mukherjee', '9204552435', 'service.dhanbad@bebbcotrucking.com', '23.83675', '86.51032', '2018-07-29 18:30:00'),
(47, '3S', 'workshop', 'BEBBCO ', 'Jharkhand', 'Ranchi', 'East', 'Plotno,225,Khata,no13,mouzagetlatu,P.Ssadar,ranchi-834001', '0651-2271281', 'Ranchi@bebbcotrucking.com', 'Mr Sanjay Kumar', '9204552433', 'sales.ranchi@bebbcotrucking.com', 'Rajiv Sinha', '9204552436', 'service.ranchi@bebbcotrucking.com', '23.418845', '85.40844', '2018-07-29 18:30:00'),
(48, '3S', 'workshop', 'N R ', 'West Bengal', 'Kolkata', 'East', 'N.RMotorsPvt.Ltd.Mouja:KhalisaniP.S.Ulberia,?DistrictHowrah(Westbengal),Pincode-711360', '7439019565', 'csc.hwh@nr-trucking.com', 'Awadesh Gupta', '7439579290', 'a.gupta@nr-trucking.com', 'Sandip Mondal', '7439019572', 'wm.hwh@nr-trucking.com', '22.505939', '88.13005', '2018-07-29 18:30:00'),
(49, '3S', 'workshop', 'N R ', 'West Bengal', 'Durgapur', 'East', 'JLNo102,Vill-Sarul,POGalsi,DT-Burdwan-713406,WestBengal.', '7439019564', 'csc.bwd@nr-trucking.com', 'Dilip Mulo', '7439019574', 'd.mulo@nr-trucking.com', 'Somnath Panja', '8100927677', 'wm.bwd@nr-trucking.com', '23.325804', '87.713956', '2018-07-29 18:30:00'),
(50, '3S', 'workshop', 'N R ', 'West Bengal', 'CK Road ', 'East', 'Vill+P.O:Kiyaboni(C.K.Road),P.S:Garbeta,Dist:PaschimMidinipur,WestBengal.', '7439019565', 'csc.hwh@nr-trucking.com', 'Awadesh Gupta', '7439579290', 'ash.ho@nr-trucking.com', 'Ujjwal Kr. Bera', '7439019573', 'service.hwh@nr-trucking.com', '22.775632', '87.339297', '2018-07-29 18:30:00'),
(51, '3S', 'workshop', 'Shree Bharat', 'Orissa', 'Cuttack', 'East', 'ShreeBharatMotorsLtd.PlotNo.25&791,Mouza-ChakaKhaira,NH-5,Badachana,?Dist:Jajpur,Pin:754296', '8599011344', 'dicvsales@bharats.in', 'Mr. Sree Ranjan', '8599011450', 's.anil@bharats.in', 'Mr.Bikash Jena', '8599011467', 'dicv_service_cuttack@bharats.in; bikash@bharats.in', '20.657843', '86.116673', '2018-07-29 18:30:00'),
(52, '3S', 'workshop', 'Shree Bharat', 'Orissa', 'Sambalpur', 'East', 'ShreeBharatMotorsLtd.Mouza-Dhanakuda,Sambalpur,Orissa,768010', '8599011476', 'dicv.sbp@bharats.in', 'Mr. Sanjay Agarwal', '8599011514', 'sanjay.agrawal@bharats.in', 'Mr.Sumanta Sahu', '8599011447', 'dicv.sbp@bharats.in', '21.452797', '84.025738', '2018-07-29 18:30:00'),
(53, '3S', 'workshop', 'Shree Bharat', 'Orissa', 'Rourkela', 'East', 'ShreeBharatMotorsLtd.At:Chikatmati,Panposh,RourkelaDist.Sundergarh-769042.', '8599011503', 'dicv.rourkela@bharats.in', 'Mr. Anil Saraogi', '8599011601', 'neeraj@bharats.in', 'Mr.Debajyoti Prusty', '8599011474', 'dicvservice.rkl@bharats.in', '22.237645', '84.731322', '2018-07-29 18:30:00'),
(54, '3S', 'workshop', 'Shree Bharat', 'Orissa', 'Keonjhar', 'East', 'ShreeBharatMotorsLtd.NH-6,Shankarpur,Keonjhar,Orissa-758002', '8599011394', 'sales.kjr@shreebharattrucking.com', 'Mr. Ramakant Parida', '8599011407', 'rk.parida@bharats.in', 'Mr. Ranjan Kumar Raul', '8599011406', 'service.kjr@shreebharattrucking.com', '21.65968', '85.642909', '2018-07-29 18:30:00'),
(55, '3S', 'workshop', 'Shree Bharat', 'Orissa', 'Behrampur', 'East', 'ShreeBharatMotorsLtd.PlotNo.643/1209&1210,NH-5,BypassRoad,PatharaJunctionBerhampur,?PIN:760010', '8599011398', 'dicv.bhm@bharats.in', 'Mr. Fahad Ahmed', '8599011395', 'fahad@bharats.in', 'Mr. Narahari Swain', '8599011349', 'service.bhm@bharats.in', '19.315161', '84.858273', '2018-07-29 18:30:00'),
(56, '3S', 'workshop', 'Shree Bharat', 'Orissa', 'Balasore', 'East', 'ShreeBharatMotorsLtd.PlotNo.61-72,GaneswarpurIndustrialEstate,Balasore,PIN:756019', '8599011387', 'dicv.balasore@bharats.in ', 'Mr. S K Mathur', '8599011333', 'rajesh.sharma@bharats.in', 'Mr.Bikram Behra', '8599011391', 'dicv.balasore@bharats.in', '21.506834', '86.892103', '2018-07-29 18:30:00'),
(57, '3S', 'workshop', 'Shree Bharat', 'Odisha', 'Angul', 'East', 'ShreeBharatMotorsLtd.N.H.-42,KULAD,ANGUL-759122', '(06764) 222278', 'dicv.angul@bharats.in', 'Sailendra Kumar Acharya', '8599011368', 'acharya@bharats.in ', 'Ravi Bhusan Sharma', '8599011378', 'dicv.angul@bharats.in; bhushan@bharats.in,', '20.845081', '85.179673', '2018-07-29 18:30:00'),
(58, '3S', 'workshop', 'Topsel', 'West Bengal', 'Howrah ', 'East', '?ChamrailBanarasRd,Bamangachi,Salkia,Howrah,WestBengal711106', '9836587825', 'csc.kol@topseltrucking.co.in', 'Saradindu Biswas', '9830262603', 'saradindu.biswas@topseltrucking.co.in', 'P.Vasudevan', '9073983944', 'p.vasudevan@topseltrucking.co.in', '22.643835', '88.3065830', '2018-07-29 18:30:00'),
(59, '3S', 'workshop', 'GMMCO', 'Maharashtra', 'Nagpur', 'Mining', 'GMMCOLimited,PlotNoJ-9,MIDC,IndustrialArea,Butibori,Nagpur?441122', '8728332506', 'contactus@gmmcoindia.com', 'Mr.Neeraj Sharma', '7024156520', 'neerajsharma@gmmcoindia.com', 'Mr. Sudharshan R', '9404537651', '', '18.745388', '79.493948', '2018-07-29 18:30:00'),
(60, '3S', 'workshop', 'GMMCO', 'Madhya Pradesh', 'Singrauli', 'Mining', 'GMMCOLimited,JayantMainRoad,Medhauli,Singrauli,PO?Singrauli,Dist?Singrauli(MP)PIN?486889Landline:07805392025', '', '', '', '', '', 'Mr. Pradeep Kumar Tripathi', '8435000256', '', '', '', '2018-07-29 18:30:00'),
(61, '3S', 'workshop', 'Dhingra ', 'Haryana ', 'Dharuhera', 'North1', 'PlotNo.22,DharuheraIndustrialArea,Dist.Rewari,Haryana-123106', '0124-243045', 'cre.sales@dhingratrucking.com', 'Mr. Narendra Singh ', '8059226666', 'ash.dharuhera@dhingratrucking.com', 'Mr. Arindom Kundu', '8222020860', 'sm.dharuhera@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(62, '3S', 'workshop', 'Dhingra ', 'Haryana ', 'Karnal', 'North1', 'DhingraTruckingPrivateLimitedKhasraNo-74/16/1/17,18,23&24VillageBastra,AmbalaDelhiNH-1NationalHighwayDist-Karnal', '8222020863', 'crm.karnal@dhingratrucking.com', 'Mr. Vikram Singh', '9729996841', 'vikram.singh@dhingratrucking.com ', 'Mr. J.P.Garg', '8683886666', 'sm@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(63, '3S', 'workshop', 'Dhingra ', 'Haryana ', 'SGTN/ Alipur', 'North1', 'KHASRANO.292293,VILLAGESIRASPUR,ALIPUR,OUTERDELHI-110043', '7065076009', 'crm.delhi@dhingratrucking.com', 'Mr. Inderjeet Singh', '8130293434', 'ash.delhi@dhingratrucking.com', 'Mr. G.V.Badri', '8607336666', 'gm.keyaccounts@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(64, '3S', 'workshop', 'Dhingra ', 'Haryana ', 'Hisar', 'North1', 'PLOTN0.175,SECTOR27&28,HISSAR,Haryana,-125001', '01662-222145', 'crm.hissar@dhingratrucking.com', 'Mr. Rajesh Mehta ', '8222020861', 'ash.hissar@dhingratrucking.com', 'Mr. Tarun Wadhawan', '8222020866', 'sm.hissar@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(65, '3S', 'workshop', 'DPM', 'Uttarakhand', 'Haridwar', 'North1', 'DDPMESTATE,KALIYARROAD,ROORKEE,DIST-HARIDWAR,INDIA', '8979002101', 'info@dpmtrucking.in', 'MUSHARRAF ALI', '9837109815', 'saleshead@dpmtrucking.com', 'AJIT SINGH', '7055211578', 'servicehead@dpmtrucking.in', '', '', '2018-07-29 18:30:00'),
(66, '3S', 'workshop', 'Espirit ', 'UP & Haryana', 'Agra ', 'North1', '162/1,NaglaRamBuxnearKuberpurElectricSubStationETMADPURNH-2,Agra', 'NA', 'salesagra@espirit-trucking.com', 'Mr. Amlesh Sharma ', '7455033951', 'gmsalesgzb@espirit-trucking.com', 'Mr. Amet garg ', '7291988501', 'wmagra@espirit-trucking.com', '27.231349', '78.159943', '2018-07-29 18:30:00'),
(67, '3S', 'workshop', 'Espirit ', 'UP & Haryana', 'Ghaziabad', 'North1', 'PlotNo1283,MortaVillage,DelhiMeerutRoad,Ghaziabad', '0120-2802100', 'Salesdeskgzb@espirit-trucking.com', 'Mr. Sanjay Tripathi', '7291988508', 'gmsalesgzb@espirit-trucking.com', 'Mr. Ravinder Rawat', '7291988501', 'gmservicegzb@espirit-trucking.com', '28.43176', '77.28073', '2018-07-29 18:30:00'),
(68, '3S', 'workshop', 'Rajendra ', 'UP', 'Gorakhpur', 'North1', 'C-2,SECTORNO.-11,GIDAGORAKHPUR273209', '8601872866', 'sales.gorakhpur@rajendratrucking.com ', 'Mr. Sanjay Singh ', '8601872866', 'sales.gorakhpur@rajendratrucking.com ', 'Mr. Ramagya ', '8601872864', 'service.gorakhpur@rajendratrucking.com', '26.744941', '83.257356', '2018-07-29 18:30:00'),
(69, '3S', 'workshop', 'Rajendra ', 'UP', 'Varanasi', 'North1', 'Ward:Kaswarraja,MehndigunjVillage,Varanasi-AllahabadHighway,Varanasi', '8601872852', 'sales.varanasi@rajendratrucking.com', 'Mr. Nadeem', '8601872852', 'sales.varanasi@rajendratrucking.com', 'Mr. Amresh Kumar Dubey ', '8601872880', 'service.varanasi@rajendratrucking.com', '25.270903', '82.828132', '2018-07-29 18:30:00'),
(70, '3S', 'workshop', 'Rajendra ', 'UP', 'Sonbhadra', 'North1', 'BaghaNala,Varanasi-ShaktinagarMarg,Chopan,Sonbhadra,UttarPradesh231205', '8601872863', 'sales.chopan@rajendratrucking.com', 'Mr. Anil Singh', '8601872863', 'sales.chopan@rajendratrucking.com', 'Mr. B.N.Yadav', '8601872855', 'service.chopan@rajendratrucking.com', '24.491053', '83.029207', '2018-07-29 18:30:00'),
(71, '3S', 'workshop', 'Society ', 'UP', 'Kanpur', 'North1', 'Khasrano.259&266,NH2,VillagePakri,DistKanpurNagar,OppositeHPPetrolPumpUttarPradesh-209304', '', '', 'Mr Suman Kapoor', '9235612683', 'gmsales@societytrucking.com', 'Mr. Ravi Tripathi', '7800001306', 'gmservice@societytrucking.com', '26.419335', '80.146494', '2018-07-29 18:30:00'),
(72, '3S', 'workshop', 'Society ', 'UP', 'Lucknow', 'North1', 'ArajiNo210,211,VillageRasoolpur,TehsilHasanganj,DistUnnao,NearPriyankaDhaba,NH25,Lucknow', '', '', 'Mr Suman Kapoor', '9235612683', 'gmsales@societytrucking.com', 'Mr. Aleem', '7800001314', 'wsm@societytrucking.com', '26.637929', '80.750163', '2018-07-29 18:30:00'),
(73, '3S', 'workshop', 'Society ', 'Uttar Pradesh', 'Kabrai ', 'North1', 'PlotNo-165/1,VivekNagar,KanpurSagarRoad,Kabrai,UP', '', '', '', '', '', 'Ravi Tripathi', '7800001306', 'gmservice@societytrucking.com', '25.40777', '80.005584', '2018-07-29 18:30:00'),
(74, '3S', 'workshop', 'Society ', 'Uttar Pradesh', 'Jhansi ', 'North1', 'HNo-154,Digara,Jhansi,UP', '', '', '', '', '', 'Manwendra Siddharth', '9235653676', 'wsmjhs@societytrucking.com', '25.466111', '78.64057', '2018-07-29 18:30:00'),
(75, '3S', 'workshop', 'Anand', 'Himachal Pradesh', 'Bilaspur', 'North2', 'AnandTrucking,Village-Ratt.P.O.Kothipura,Bilaspursader,Himachapradesh-174001', '?01978-2280221', '?sales.bilaspur@anandtrucking.com', 'Rehman', '8894000555', '?sales.bilaspur@anandtrucking.com', 'Mr. Sarabjit Singh', '8894111555', 'service.bilaspur@anandtrucking.com?', '31.285108', '76.769186', '2018-07-29 18:30:00'),
(76, '3S', 'workshop', 'Anand', 'Himachal Pradesh', 'Solan', 'North2', 'Vill.-MohalNagali,P.O.Deonghat,Tehsil&Distt-Solan(H.P.)PinCode.:-173209', '01792-645625?', 'sales.solan@anandtrucking.com?', 'Mr. Prem Verma', '9805002321', 'sales.solan@anandtrucking.com', 'Mr. Sumeet Chandel', '8894222555', 'service.solan@anandtrucking.com', '30.898184', '77.068873', '2018-07-29 18:30:00'),
(77, '3S', 'workshop', 'Globe ', 'Punjab', 'Ludhiana', 'North2', 'GlobeCVPvtLtd,Delhi-AmritsarNH1,VillageMehandipur,TehsilKhanna,Ludhiana-141401', '0161-3003651', 'bb@globe-trucking.com', 'Mr. Harpal Singh', '8725012070', 'harpal.singh@globe-trucking.com', 'Mr. Hardeep Singh', '8437012501', 'hardeep.singh@globe-trucking.com', '30.745024', '76.125922', '2018-07-29 18:30:00'),
(78, '3S', 'workshop', 'Globe ', 'Punjab', 'Bhatinda', 'North2', 'GlobeCVPvtLtd,HadbastNo196,Barnala-BhatindaRoadVillageLehraMohabat,Bhatinda-151102', '8725044334', 'accounts.bth@globe-trucking.com', 'Mr. Harpal Singh', '8725012070', 'harpal.singh@globe-trucking.com', 'Mr. Charanjeet Singh', '8725012075', 'wm.bth@globe-trucking.com', '30.250339', '75.165083', '2018-07-29 18:30:00'),
(79, '3S', 'workshop', 'Globe ', 'Punjab', 'Panthankot', 'North2', 'GlobeCVPvtLtd,Jammuroad,nearReebokshowroom,Sujanpur,Pathankot,Punjab-145023', '8725044337', 'account.ptk@globe-trucking.com', 'Mr. Parwinder Singh', '8437012503', 'parwinder.singh@globe-trucking.com', 'Mr. Sarabjit Singh', '8437012502', 'sarabjit.singh@globe-trucking.com', '32.36289', '75.59701', '2018-07-29 18:30:00'),
(80, '3S', 'workshop', 'Kamal ', 'Rajasthan', 'Udaipur', 'North2', 'KamalCommercialVehiclesP.ltd,KhasraNo.6&761/7,villageSaraiPatwarArea,karanpur,Udaipur-313601', '8003996592', 'marketing@kamaltrucking.co.in', 'Mr. Vivek Choudhary', '8003496421', '?sales@kamaltrucking.co.in', 'Mr. Vidyacharan Anand', '8003496431', '?service@kamaltrucking.co.in', '24.619825', '73.9638', '2018-07-29 18:30:00'),
(81, '3S', 'workshop', 'Kamal ', 'Rajasthan', 'Jaipur', 'North2', 'KamalCommercialPvt.ltd.KhasraNo.2363/46&2362/45,NH-8,Mehla,JaipurRajasthan.', '9116036755', 'service.support@kamal-trucking.com', 'Mr. Mohd Yunus', '7726009285', 'Sales.jaipur@kamal-trucking.com', 'N/A', 'N/A', 'Service.jaipur@kamal-trucking.com', '26.481976', '75.273514', '2018-07-29 18:30:00'),
(82, '3S', 'workshop', 'Kamal ', 'Rajasthan', 'Kota', 'North2', 'KamalTrucking,BhimpuraIndustrialArea,NearJagpuraPoliceChowki,JhalawaraRoad,Kota.(Rajasthan)', '7728891111', '?marketingkota@kamaltrucking.co.in', 'Mr Ajit Singh?', '7728891101?', '?manager@kamaltrucking.co.in', '?Mr Rahul Sharma', '7728891112?', 'service@kamaltrucking.co.in', '25.054128', '75.874155', '2018-07-29 18:30:00'),
(83, '3S', 'workshop', 'Kamal ', 'Rajasthan', 'Ajmer/Nasirabad', 'North2', 'E-10RIICOINDUSTRIALAREASHRINAGAR,NASIRABAD,DISTAJMERPINNO.305601', '9929732848', 'rajendra.kumar8226@gmail.com ', 'Navil Marker', '9982220007', '', '', '', '', '26.470037', '74.809799', '2018-07-29 18:30:00'),
(84, '3S', 'workshop', 'Marwar ', 'Rajasthan', 'Jodhpur', 'North2', 'MarwarTrucking,E-285/286M.I.A2NDPHASEBASNI,NEARMARUTIDHARAMKANTA,JODHPUR,RAJASTHAN?342005', '9116116702', 'sales.jdp@marwartrucking.com', 'Mr. Shwet Kamal', '9116116701', 'shwetkamal@marwartrucking.com ', '?Mr. Javed', '7728888120', 'service@marwartrucking.com', '26.228123', '73.00801', '2018-07-29 18:30:00'),
(85, '3S', 'workshop', 'Marwar ', 'Rajasthan', 'Bikaner', 'North2', 'MarwarTruckingPvt.Ltd.NearKalaptaruWarehouse,SriganganagarRoad.Husangsar,Bikaner-Rajasthan', '7728888101?', 'edp@marwartrucking.com', 'Babulal Bishnoi', '7728888110', 'sales@marwartrucking.com', '?Baldev Bishnoi', '7728888117', 'service@marwartrucking.com', '28.144886', '73.376193', '2018-07-29 18:30:00'),
(86, '3S', 'workshop', 'Marwar ', 'Rajasthan', 'Hanumangarh', 'North2', 'MarwarTrucking,Opp.SanjhaChulharestaurant,NearTollplaza,Makkasarvillage,SuratgarhRoad,Hanumangarh(Rajasthan)', '7023003111', 'backofficehmh@gmail.com?', 'Ashfak', '7023003110', '?sales@marwartrucking.com', '?Dinesh', '7023003109', 'service-hmo@marwartrucking.com', '29.681802', '74.410764', '2018-07-29 18:30:00'),
(87, '3S', 'workshop', 'Autobahn', 'Kerala', 'Kochi', 'South', 'AutobahnTruckingCorporationPvt.Ltd.,NedumbasseryP.O.,Kottayi,NH47,NearAthaniJunction,Aluva,Ernakulam683585,Kerala', '0484 2379000 ', 'sales.ekm@autobahntrucking.com', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Sibu Paulose', '8606976168', 'wm.ekm@autobahntrucking.com', '10.141998', '76.352526', '2018-07-29 18:30:00'),
(88, '3S', 'workshop', 'Autobahn', 'Kerala', 'Trivandrum', 'South', 'AutobahnTruckingCorporationPvt.Ltd.,NearBPCLPump,LalBaghEstate,16thMilestone,MeleThonnakkalP.O.,Trivandrum-695317.', '0471-2617399/ 499', 'sales.tvm@autobahntrucking.com', 'Bringle Simon A.', '8606976099', 'bringle.simon@autobahntrucking.com', 'Jesim Shajahan', '8606976066', 'jesim.s@autobahntrucking.com', '8.642844', '76.842982', '2018-07-29 18:30:00'),
(89, '3S', 'workshop', 'Autobahn', 'Kerala', 'Kozhikode', 'South', 'AutobahnTrucking,NH17,CalicutBypassRoad,AzhinjilamP.O.,Ramanattukara,PinCode:673632,Kerala', '0495 2486555', 'sales.clt@autobahntrucking.com', 'Mr. Sreejith P S', '8606976802', 'sreejith.ps@autobahntrucking.com', 'Rajeesh M. P.', '8606976070', 'wm.alathur@autobahntrucking.com', '11.195386', '75.868848', '2018-07-29 18:30:00'),
(90, '3S', 'workshop', 'Autobahn', 'Kerala', 'Kochi 2', 'South', 'AutobahnTruckingCorporationPvtLtd.7/234,NearSimiliaBusstop,Malikampeedika,AlangadP.O.,Aluva-PravoorRoad,Aluva,Ernakulam,Kerala', '0484 2672323 ', 'service.alangad@autobahntrucking.com ', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Jaisankar S.', '8606976021', 'wm.alangad@autobahntrucking.com', '10.12649811', '76.31381286', '2018-07-29 18:30:00'),
(91, '3S', 'workshop', 'Autobahn', 'Kerala', 'Palaghat', 'South', 'AutobahnTruckingCorporationPvtLtd.11/494,NearAbhayaHospital,NH47,AnjumoorthimangalamVia.,Erattakulam.P.O.,Palakkad,Kerala.', '8606976822', 'service.alathur@autobahntrucking.com', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Jithil Mohan', '8606976073', 'wm.alathur@autobahntrucking.com', '10.6285795', '76.5116172', '2018-07-29 18:30:00'),
(92, '3S', 'workshop', 'Autobahn', 'Kerala', 'Kannur', 'South', 'B21,AUTOBAHNTRUCKINGCORPORATIONPVT.LTD,KSIDCINDUSTRIALGROWTHCENTRE,MOORYADPOST,VALIYAVELICHAM,KOOTHUPARAMBA,Kannur,Kerala,670643', '8606976126', 'service.knr@autobahntrucking.com', 'Mr. Sreejith P S', '8606976802', 'sreejith.ps@autobahntrucking.com', 'Ragesh T.', '8606976069', 'service.knr@autobahntrucking.com', '11.82823889', '75.59916667', '2018-07-29 18:30:00'),
(93, '3S', 'workshop', 'Jayaraj ', 'Tamil Nadu', 'Madurai', 'South', 'MaduraiDindigulNationalHighway,KattapuliNagar,Thenur,SamayanallurP.O,MaduraiNorth,Pin-625402', '9244227703', 'projectmanager@jayarajgroup.com', 'Mr Jayakumar', '9244422789', 'ash.mdu@jayarajgroup.com', 'Mr Ashok', '9043003760', 'worksmanager.mdu@jayarajtrucking.com', '9.994453', '78.024623', '2018-07-29 18:30:00'),
(94, '3S', 'workshop', 'Jayaraj ', 'Tamil Nadu', 'Trichy', 'South', '133&134,Panjapur,MaduraiMainRoad,Trichy-620012', '9244422103', 'admin.try@jayarajtrucking.com', 'Mr Marcus', '9244222774', 'ash.try@jayarajtrucking.com', 'Mr Ramamoorthy', '9043003756', 'worksmanager.try@jayarajtrucking.com', '10.753024', '78.650847', '2018-07-29 18:30:00'),
(95, '3S', 'workshop', 'Jayaraj ', 'Tamil Nadu', 'Tirunelveli', 'South', 'JayarajTrucks&Buses(P)Ltd,Kanyakumari?NationalHighway,K.K.NagarC,NearJayarajAutomobileAgency(JCBDivision)AyankulmBusStop,Tirunelveli-627007', '9043003723', 'ash.tvl@jayarajtrucking.com', 'Mr Karthik Pandian', '9244422100', 'ash.tvl@jayarajtrucking.com', 'Mr Seenivasan', '9043003727', 'worksmanager.tvl@jayarajtrucking.com', '8.638702', '77.705488', '2018-07-29 18:30:00'),
(96, '3S', 'workshop', 'Jayaraj ', 'Tamil Nadu', 'Tuticorin', 'South', '17/1,MaduraiTuticorinNationalHighway,MelaArasadi,Tuticorin?628002.', '9043004793', 'ash.tvl@jayarajtrucking.com', 'KarthikPandian', '9244422100', 'ash.tvl@jayarajtrucking.com', 'Mr Subash', '9043004782', 'worksmanager.tcn@jayarajtrucking.com', '8.884866', '78.109162', '2018-07-29 18:30:00'),
(97, '3S', 'workshop', 'KUN ', 'Tamil Nadu', 'Chennai', 'South', 'KUNTrucking,SurveyNo210/1a3,ByePassRoad,Poonamallee,Chennai600056', '044 -26271199', 'SALES@KUNTRUCKING.COM', 'Mr.Akshayalinga Prabu', '7708060969', 'prabuna@kuntrucking.com', 'Mr.T.Goldvin kumar', '7708060951', 'wmpme@kuntrucking.com', '13.057252', '80.098839', '2018-07-29 18:30:00'),
(98, '3S', 'workshop', 'KUN ', 'Tamil Nadu', 'Vellore', 'South', 'SurveyNo187/7B2,BangaloreRoad,NandhiyalamVillage,Walajapettauluk,Vellore-632517.Landmark:RathnagiriTemple.', '7708068444', 'sales.vellore@kuntrucking.com', 'Mr. A.Ganesh Kumar', '7708060944', 'ganesh@kuntrucking.com', 'Mr. Muthu Palaniappan. R.M', '77080 61372', 'wmvlr@kuntrucking.com', '12.9348', '79.25574', '2018-07-29 18:30:00'),
(99, '3S', 'workshop', 'Prabal ', 'Tamil Nadu', 'Coimbatore', 'South', '46,BharathiNagar,Peelamedu,Coimbatore,Pincode-641004.', '0422 - 3001500', 'manjini.muthu@prabaltrucking.com ', 'Mr Daniel', '8489901939', 'daniel.jw@prabaltrucking.com', 'Mr.D.Tamilarasu Subramaian', '8489901819', 'tamilarasu.subramanian@prabaltrucking.com ', '11.089981', '77.133485', '2018-07-29 18:30:00'),
(100, '3S', 'workshop', 'Prabal ', 'Tamil Nadu', 'Salem', 'South', '152,KoneriKaraiByePassroad,Kandampatti,Salem-636005', '0427 - 2225411', 'pandiyan.saigeetha@prabaltrucking.com', 'Mr.R.M.Prakash', '8489901909', 'prakash@prabaltrucking.com ', 'Mr Prabhu', '8489901946', 'Subbarayan.prabhu@prabaltrucking.com', '11.6523', '78.121373', '2018-07-29 18:30:00'),
(101, '3S', 'workshop', 'Prabal ', 'Tamil Nadu', 'Hosur', 'South', 'PrabalMotorsPvtLtd.13/4A1KamandodiVillage,ShoolagiriPanchayath,Hosur,Krishnagiri', '04344 - 655508', 'ravi.shanmugam@prabaltrucking.com ', 'Mr Sridhar', '8489903119', 'sridhar.raghavendran@prabaltrucking.com', 'Mr Thangaraj', '8489901951', 'thangaraju.vengatesh@prabaltrucking.com', '12.68382', '77.938166', '2018-07-29 18:30:00'),
(102, '3S', 'workshop', 'RNS ', 'Karnataka', 'Hubli', 'South', '97/B,SherwadCross,PaleVillage,Hubli,580023HubliTaluk.', '9183666150', 'ccm@rnstrucking.com', 'MR.Gorpade', '7760964701', 'gm@rnstrucking.com', 'MR.Jayanth Rawal', '8861304671', 'wm@rnstrucking.com', '15.250652', '75.144425', '2018-07-29 18:30:00'),
(103, '3S', 'workshop', 'RNS ', 'Karnataka', 'Hospet', 'South', 'SurveyNo.163/2,NexttoGMRTollGate,Hitnal?583234Karnataka.', '9900033361', '', 'MR.Girish Kamat', '9108485384', 'manager_hpt@rnstrucking.com', 'MR.Sumanth Kulkarni', '9900032631', 'wm_hpt@rnstrucking.com', '15.32547', '76.302854', '2018-07-29 18:30:00'),
(104, '3S', 'workshop', 'RNS ', 'Karnataka', 'Murdeswar', 'South', 'RNSTrucking,NH-66,Murdeswar,BhatkalTaluk,Karnataka,581350', '8385268696', 'ccm@rnstrucking.com', '', '', '', 'Naveen', '9740062491', 'wm_mur@rnstrucking.com', '14.0965', '75.5044', '2018-07-29 18:30:00'),
(105, '3S', 'workshop', 'RNS ', 'Karnataka', 'Belgaum', 'South', 'No.48,Kolikoppa,Hirebagewadihobli,Belgaum', '8316525012', '', 'MR SANTOSH VARDAMANE', '9538965678', 'ash_bgm@rnstrucking.com', 'MR.Mahantesh', '9241112745', 'wm_bgm@rnstrucking.com', '15.785096', '74.600496', '2018-07-29 18:30:00'),
(106, '3S', 'workshop', 'RNS ', 'Karnataka', 'Gulbarga', 'South', 'RNSTRUCKINGNEARTAVARGERACROSSHUMANABADROADKALBURGI', '0847-2298062', 'wm_kal@rnstrucking.com', 'VENKATESH SHASTRY', '9740065723', 'sales_kal@rnstrucking.com', 'SHARANABASAPPA SAHU', '7022623248', 'wm_kal@rnstrucking.com', '17.41145', '76.8783978', '2018-07-29 18:30:00'),
(107, '3S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Hyderabad1', 'South', 'SurveyNo.286/P,287,288/Pand289/P,BaghHayathnagarVillage,HayathnagarMandal,RangaReddyDistrict,Hyderabad-501505', '040 -24113118', 'sht_salesreceptionhyd@sriharshatrucking.com', 'Mr.B.Srinivasa Rao', '8008493857', 'sht_gmsales@sriharshatrucking.com', ' Mr.Anand Reddy', '8978380405', 'sht_wmhyd@sriharshatrucking.com', '17.334072', '78.586264', '2018-07-29 18:30:00'),
(108, '3S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Kodad', 'South', 'SurveyNo:338/1,NH-9NallabandaGudem,Chimiryala,Kodad,Nalagonda(Dist)-508206.', '08683-284446', 'sht_hrkdd@sriharshatrucking.com', 'Mr.K.Srinivas Rao', '8978380439', 'sht_ashkdd@sriharshatrucking.com', 'Mr. K.N.V Ramesh', '8978380440', 'sht_awmkdd@sriharshatrucking.com', '16.960371', '80.040634', '2018-07-29 18:30:00'),
(109, '3S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Anantpur', 'South', 'Sy.No-112/10B,NH-7,LolurVillageSinganamala(Mandal),Ananthapur(Dt.)', '08554 - 251455', 'sht_salesreceptionatp@sriharshatrucking.com', 'Mr.D.Lakshmi Prasad', '8008060904', 'sht_ashatp@sriharshatrucking.com', 'Mr.P.Rajesh Babu', '8008367459', 'sht_awmatp@sriharshatrucking.com', '14.79531', '77.598144', '2018-07-29 18:30:00'),
(110, '3S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Hyderabad2', 'South', 'Sy.No:258,Plotno-3&10Pashamyalaram(V),Patancheru(M),Medak(D),PASHAMYLARAM,MEDAK', '9100905556', 'sht_adminpsmlr@sriharshatrucking.com', '', '', '', 'S.Chittayya', '8978180820', 'sht_bppsmlr@sriharshatrucking.com', '17.527345', '78.179922', '2018-07-29 18:30:00'),
(111, '3S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Karimnagar', 'South', 'SriHarshaTruckingsPvt.Ltd,D.No.8-6-301/10/1/A,PdplBypassRoad,Autonagar,Rampur,BesideTVSKongaraShowRoom,Karimnagar-505001.', '0878-6504433', 'sht_hrkrmr@sriharshatrucking.com', 'Mr.Das Prakash', '8978180818', 'sht_ashkrmr@sriharshatrucking.com', 'Mr.Kishan Reddy', '9100076263', 'sht_hrkrmr@sriharshatrucking.com', '18.4145265', '79.1407834', '2018-07-29 18:30:00'),
(112, '3S', 'workshop', 'Sri Harsha ', 'Andhra Pradesh', 'Nizamabad', 'South', 'SriHarshaTruckingPvt.Ltd,Sy.No;743&744,Bardipur(Vil),Dichpally(Mndl),Nizamabad(Dt)', '08461-245466', 'Sht_adminnzb@sriharshatrucking.com', 'M.Sudhakar', '8790998691', 'Sht_foodchainkrmr@sriharshatrucking.com', 'K.Gabbar Singh', '9100444788', 'Sht_servicenzb@sriharshatrucking.com', '18.63389', '78.177803', '2018-07-29 18:30:00'),
(113, '3S', 'workshop', 'Trident ', 'Karnataka', 'Bangalore', 'South', '72/1,Budhihal,KasabaHobli,Nelamangala,Bangalore-562123', '080-27730003', 'customercare@tridenttrucking.com', 'Rajendra Kumar', '8197137777', 'rajendrakumar@tridenttrucking.com', 'Andrew', '7353757330', 'andrew@tridenttrucking.com', '13.136638', '77.355259', '2018-07-29 18:30:00'),
(114, '3S', 'workshop', 'Trident ', 'Karnataka', 'Chitradurga', 'South', 'SurveyNo.56,KunchinalHobli,IngladalPanchayat,OppositetoVRLLogistics,NearReliancesPetrolbunk,Chitradurga-577501', '9741267722', 'salescd@tridenttrucking.com', 'Shivaprakash N', '7353751029', 'shivaprakash@tridenttrucking.com', 'Srinath T V', '9900022408', 'srinath@tridenttrucking.com', '14.191095', '76.454493', '2018-07-29 18:30:00'),
(115, '3S', 'workshop', 'Trident ', 'Karnataka', 'Mangalore', 'South', 'TridentAutomobilePvtLtd,SurveyNo.32/7,BellayuruVillage,Mukigram,Mangalore(DK)-574154', '0824-6611900/2290633', 'marketingmlr@tridenttrucking.com', 'Sreedharaprabhu', '7353757323', 'sridharprabhu@tridenttrucking.com', 'Dinakar Anchan', '7353757312', 'dinkar@tridenttrucking.com', '13.065556', '74.797796', '2018-07-29 18:30:00'),
(116, '3S', 'workshop', 'Varun ', 'Andhra Pradesh', 'Vijayawada', 'South', 'Surveynos561/2b(p)and3a,562/5b&6a,KesarapalliVillage,Gannavaram(Mandal)Krishnadist.-521101', '0866 - 3984142', 'admn.vja.varuntrucking@gmail.com', 'MR.J.SRINIVASA RAO', '8297999444', 'gm.vja.varuntrucking@gmail.com', 'MR.KHAREEM KHAN', '8297547444', 'srm.varuntrucking@gmail.com', '16.516644', '80.764943', '2018-07-29 18:30:00'),
(117, '3S', 'workshop', 'Varun ', 'Andhra Pradesh', 'Vizag', 'South', '88/P,BlockD,VarunAutoPark,BesideGajuwakapoilcestationSrinagar,OldGajuwaka,Vishakapatnam-530026', '0891 - 3050099', 'admn.vsp.varuntrucking@gmail.com', 'MR. B N V S PRAKASH', '9703811188', 'ash.vsp.varuntrucking@gmail.com', 'MR.SATHI BABU', '9885339955', 'srsup1.vsp.varuntrucking@gmail.com', '17.684118', '83.19244', '2018-07-29 18:30:00'),
(118, '3S', 'workshop', 'Varun ', 'Andhra Pradesh', 'Rajamundry', 'South', 'VarunMotorsPvtLtd,PlotNo:251,RoadNo:6,AutoNagar,EastGodavari,Rajahmundry-533106', '9703811188', 'srsup.rjy.varuntrucking@gmail.com', 'Mr.M.Ramesh', '8297092444', 'bdm1.vsp.varuntrucking@gmail.com', 'M Srinivasa Rao', '9885322744', 'ssrup.rj.varuntrucking@gmail.com', '17.004393', '81.783325', '2018-07-29 18:30:00'),
(119, '3S', 'workshop', 'Varun ', 'Andhra Pradesh', 'Nellore', 'South', 'SurveyNo299/1,299/2&300/1,PaduguPaduVillage,KovuruMandalam,SPSRNelloredistrict,AndhraPradesh-524137', '0861 - 3041410', 'sales.nlr.varuntrucking@gmail.com', 'MR.M.SRINIVASA RAO', '8297210444', 'sales.nlr@varuntrucking.com', 'MR.J.RAVI', '9885355547', 'gm.nlr.varuntrucking@gmail.com', '14.493194', '80.002423', '2018-07-29 18:30:00'),
(120, '3S', 'workshop', 'Ghatge ', 'Maharashtra', 'Baramati', 'West1 ', 'Plotno-G-320,Katfal,MIDCBaramati,BaramatiRural,Baramati,Pune,Maharashtra,Pin-413102', '83808 12000', 'sales.baramati@ghatgetrucking.com', 'Mr. Narendra Deokate', '8380032188', 'narendra.deokate@ghatgetrucking.com', 'Mr. Jairaj Lad', '83800 20177', 'awm.baramati@ghatgetrucking.com', '18.226834', '74.603048', '2018-07-29 18:30:00'),
(121, '3S', 'workshop', 'Ghatge ', 'Maharashtra', 'Pune', 'West1 ', 'KGPAutoLtd,Warehouseno:126,Tathwade,PCMC,District-Pune-411033', '020 66344600', 'sales.pune@ghatgetrucking.com', 'Mr. Santosh Mane', '83800 11922', 'santosh.mane@ghatgetrucking.com', 'Mr.Sunil Jangle', '88053 71600', 'worksmanager.pune@ghatgetrucking.com', '18.622873', '73.746117', '2018-07-29 18:30:00'),
(122, '3S', 'workshop', 'Ghatge ', 'Maharashtra', 'Kolhapur', 'West1 ', 'RSno:236,Village:Vathar,Taluk:Hatkanangale,District:Kolhapur,Maharashtra-416112', '088884 47700', 'sales.kolhapur@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83089 81600', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Sumanth Kulkarni', '83800 32210', 'worksmanager.kolhapur@ghategetrucking.com', '16.833061', '74.289374', '2018-07-29 18:30:00'),
(123, '3S', 'workshop', 'Ghatge ', 'Maharashtra', 'Sholapur', 'West1 ', 'GHATGETrucking,GatNo.195/1,Sholapur,HyderabadHighway(NH9),Village-Doddi,Tal-SouthSholapur-413006,Dist-SholapurState-Maharashtra', '088057 77700', 'sales.solapur@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83089 81600', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Suresh kumbhar', '8380040410', 'worksmanager.solapur@ghategetrucking.com', '17.705243', '75.986719', '2018-07-29 18:30:00'),
(124, '3S', 'workshop', 'Ghatge ', 'Maharashtra', 'Nasik', 'West1 ', 'C/OGhatgePatilTransportPvtLtd,40/10&40/11,MIDCSatpur,NearSatpurswimmingpool,Satpur,Nasik,Maharashtra', '86050 04210', 'sales.nashik@ghatgetrucking.com', 'Mr. Vitthal Mahulikar', '77199 30101', 'vitthal.mahulikar@ghatgetrucking.com', 'Mr. Mahadev Kanthale', '91460 05182', 'awm.nashik@ghatgetrucking.com', '19.995544', '73.733187', '2018-07-29 18:30:00'),
(125, '3S', 'workshop', 'Ghatge ', 'Maharashtra', 'Ratnagiri', 'West1 ', 'R.S./GatNo.128/1/A/1,HatkhambaTitha,?GaneshNagar,Hatkhamba,Ratnagiri,Maharashtra,Pin-415619', '8380813000', 'sales.ratnagiri@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83089 81600', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Ranjit Vibhute', '83800 94083', 'service.ratnagiri@ghatgetrucking.com', '17.01726', '73.40536', '2018-07-29 18:30:00'),
(126, '3S', 'workshop', 'Provincial', 'Maharashtra', 'Dhule', 'West1 ', 'Surveyno.409/1A/1,Agra-MumbaiHighway(NH3),InfrontofMasjidArafat,NearVadjaiRoadFlyover,Dhule,Maharashtra,Pin?424001', '', '', 'Mr. Anil Kumar', '8380075842', 'anil.kumar@provincialtrucking.in', 'Mr. Jagdish Shinde', '8669655971', 'service.dhule@provincialtrucking.in', '20.88536', '74.79509', '2018-07-29 18:30:00'),
(127, '3S', 'workshop', 'Provincial', 'Maharashtra', 'Nagpur', 'West1 ', 'ProvincialTruckingPvt.Ltd.,21KMMILESTONE,NEARTOLLBOOTH,AMRAVATIROAD(NH6),GONDKHAIRINAGPUR440023', '071186 65666', '', 'Mr. Tejendra Chawada', '9850489959', 'tejendra@provincialtrucking.in', 'Mr. Harshal Mankar', '8380055466', 'service.nagpur@provincialtrucking.in', '21.137896', '78.899969', '2018-07-29 18:30:00'),
(128, '3S', 'workshop', 'Provincial', 'Maharashtra', 'Nanded', 'West1 ', 'ProvincialTruckingPvt.Ltd.,NearBhokarPhata,NandedNagpurRoadJambrun,TAL-Ardhapur,Nanded-431745,Maharashtra', '083800 46404', '', 'Mr. Anil Kumar', '8380075842', 'anil.kumar@kaletrucking.com', 'Mr. Sainath Yadav', '8380046402', 'service.nanded@provincialtrucking.in', '19.25547', '77.363199', '2018-07-29 18:30:00'),
(129, '3S', 'workshop', 'Provincial', 'Maharashtra', 'Chandrapur', 'West1 ', 'khno.45/1,Mouza-Lakhampur,PSK16,Chandrapur-Nagpurroad,Chandrapur-442406', '083800 46412', '', 'Mr. Tejendra Chawada', '9850489959', 'tejendra@provincialtrucking.in', 'Mr. Milesh Yerewar', '8380046431', 'service.chanda@Provincialtrucking.in', '19.99008', '79.26758', '2018-07-29 18:30:00'),
(130, '3S', 'workshop', 'Satya ', 'Chhattisgarh', 'Raipur', 'West1 ', 'SatyaTruckingPvt.Ltd.,NewTCIFreight,G.E.Road,TatibandhRaipur(C.G)-492099', '', '', 'Mr. Paritosh Tiwari', '7869919585', '', 'Mr. Fuleshwar Nagpure', '8120601234', '', '21.255614', '81.555282', '2018-07-29 18:30:00'),
(131, '3S', 'workshop', 'Satya ', 'Chhattisgarh', 'Korba', 'West1 ', 'SatyaTruckingPvt.Ltd.ChampaRoad,NearUrgaPoliceChowki,UrgaKorba-495674(C.G)', '', '', 'Mr. Paritosh Tiwari', '7869919585', '', 'Mr. Mohd. Nayoom Ansari', '8120801234', '', '22.225030', '82.864062', '2018-07-29 18:30:00'),
(132, '3S', 'workshop', 'Satya ', 'Chhattisgarh', 'Bilaspur', 'West1 ', 'Plot-52,Industrialarea-sirgitti,Bilaspur,Pin-495001,Chhattisgarh', '', '', 'Kailash Bisane', '7611127454', 'kailash.bisane@gmail.com', '', '', '', '22.045761', '82.128743', '2018-07-29 18:30:00'),
(133, '3S', 'workshop', 'Satya ', 'Chhattisgarh', 'Raigarh', 'West1 ', 'SatyaTruckingPvtLtd.,Gerwani,Raigarh-496001Chattisgarh', '', '', '?Mr. Nagendra Dhanank', '94791 26699', '', 'Mr. Surendra Patel', '81209 01234', '', '22.269164', '83.202408', '2018-07-29 18:30:00'),
(134, '3S', 'workshop', 'Wasan ', 'Maharashtra', 'Panvel', 'West1 ', 'PlotNo.66,VillageKolkhe,PalashpaPhata,MumbaiPuneNationalHighway-4,TalukaPanvelDistrict:Raigarh-410206', '02143 220 101', '', 'Mr. Prasad Vaidya', '9167710913', 'prasad.vaidya@wasantrucking.com', 'Mr. Prashant Shetty', '9167790678', 'prashant.shetty@wasantrucking.com', '18.989401', '73.117516', '2018-07-29 18:30:00'),
(135, '3S', 'workshop', 'Wasan ', 'Maharashtra', 'Vasai', 'West1 ', 'AppleIndustrialHUB,Surveyno:71&72,VillagePelhar,Vasai(E),Vasai-401208', '0250 6636900', '', 'Mr. Turshar Shah', '9167670953', 'trushar.shah@wasantrucking.com', 'Mr. Ajay Salvi', '9167670952', 'ajay.salvi@wasantrucking.com', '19.443641', '72.880198', '2018-07-29 18:30:00'),
(136, '3S', 'workshop', 'Frontier ', 'Madhya Pradesh', 'Jabalpur', 'West2', 'FrontierTrucking,66/2,NH7,NagpurRoad,Village-Manegoan,Jabalpur-482051', '', '', 'Mr.Sunil Gururani', '7771003203', 'sales@frontier-trucking.com', 'Mr. Lakhan Singh Lodhi', '7771003212', 'service.jabalpur@frontier-trucking.com', '23.0712669', '79.9126714', '2018-07-29 18:30:00'),
(137, '3S', 'workshop', 'Frontier ', 'Madhya Pradesh', 'Satna', 'West2', 'PlotNo.16,GramGada,TehsilRampurBaghelan,RewaRoad,Satna-485001', '', '', 'Mr. Prabhakar Singh Baghel', '    77710 03215', 'sales@frontier-trucking.com', 'Mr. Shiv Kumar Tiwari', '77710 03225', 'service.satna@frontier-trucking.com', '24.5551135', '80.946246', '2018-07-29 18:30:00'),
(138, '3S', 'workshop', 'Kasliwal ', 'Madhya Pradesh', 'Indore', 'West2', 'SurveyNo-309/4,310/4,BypassRoad,GramKhajarana,City:Indore,PinCode:452001,State:MadhyaPradesh', '', '', 'Mr. Tunu Bhaskar', '9630096358', 'sales.indore@gmail.com', 'Mr.Vimal Patidar', '9630096337', 'service.indore@kasliwaltrucking.com', '22.739127', '75.934903', '2018-07-29 18:30:00'),
(139, '3S', 'workshop', 'Kasliwal ', 'Madhya Pradesh', 'Bhopal', 'West2', 'KasliwalTruckingPrivateLimited,Village-Rapadiya,NewBypass,Beside-IndianOilPetrolPump,Bhopal:462021,MadhyaPradesh.', '', '', 'Mr. Vinod Shukla', '9826567419', 'bplkasliwaltrucking@gmail.com', 'Mr. Vinod Shukla', '9826567419', 'bplkasliwaltrucking@gmail.com', '23.92053', '77.301541', '2018-07-29 18:30:00');
INSERT INTO `tbl_stores` (`sd_id`, `product_type`, `store_type`, `store_name`, `state`, `city`, `region`, `address`, `phone`, `Email`, `sales_person`, `sales_person_contact`, `sales_person_email`, `service_person`, `service_contact_person`, `service_person_email`, `latitude`, `longitude`, `cdate`) VALUES
(140, '3S', 'workshop', 'Kataria ', 'Gujarat', 'Ahmedabad', 'West2', 'Plotno.103/B,ChacharWadiVasna,Opp.ZydusCadila,Sarkhej-Bavlaroad,Taluka?Sanand,Dist.?Ahmedabad,PinCodeNo.?382213', '', '', 'Mr.Praveen Parmar', '8347244400', 'pravin.parmar@katariatrucking.net', 'Mr.Bhautik Pancholi', '99244 45359', 'wm.ahmedabad@katariatrucking.net', '22.897238', '72.419493', '2018-07-29 18:30:00'),
(141, '3S', 'workshop', 'Kataria ', 'Gujarat', 'Surat', 'West2', 'Blockno.165.Village.Kosmadi.NH.NO.8.OPP.KathodraPatiya.Near.KrishnaHotel.Taluka.Kamrej.Dist.Surat.Pinno.394326', '', '', 'Mr. Rajesh Salunke', '73592 11165', 'rajesh.salunke@katariatrucking.net', 'Mr. Shaktisinh Rana', '72111 03304', 'wm.baroda@katariatrucking.net', '21.224442', '72.969282', '2018-07-29 18:30:00'),
(142, '3S', 'workshop', 'Kataria ', 'Gujarat', 'Baroda', 'West2', 'KatariaMotors(P)Ltd.,SurveyNo.437,At&Po:Padamla,NHNo.8,Ranoli,Vadodara-391350', '', '', 'Mr. Amit Mistry', '81550 27666', 'amit.mistry@katariatrucking.net', 'Mr. Amit Srivastava', '99090 46606', 'wm.surat@katariatrucking.net', '22.408936', '73.130783', '2018-07-29 18:30:00'),
(143, '3S', 'workshop', 'Kataria ', 'Gujarat', 'Vapi', 'West2', 'Plotno.185,besidesuper-indiaRMC,N.H.NO?8,village?Tighra,Taluka?Pardi,Dist.?Valsad.PinCodeNo.396185GUJARAT.', '', '', 'Mr.Rajeev Kumar', '99244 46266', 'rajeevkumar@katariatrucking.net', 'Mr.Manjit Naik', '76220 09835', 'wm.vapi@katariatrucking.net', '20.442415', '72.918706', '2018-07-29 18:30:00'),
(144, '3S', 'workshop', 'Sealand ', 'Gujarat', 'Gandhidham', 'West2', 'SurveyNo.142/2,NationalHighway8A,VillageMoti-Chirai,Tal:Bhachau,Dist:Kutch.Pincode370140', '', '', 'Mr. Samir Shukla', '9979066966', 'hs.rajkot@sealandtrucking.com', 'Mr. Keyur oza', '9909998459', 'wm.kutch@sealandtrucking.com', '23.22822', '70.270814', '2018-07-29 18:30:00'),
(145, '3S', 'workshop', 'Sealand ', 'Gujarat', 'Rajkot', 'West2', 'SealandTrucking,VillageRamparaBeti,NH-8,Rajkot-360005', '', '', 'Mr. Samir Shukla', '9979066966', 'hs.rajkot@sealandtrucking.com', 'Mr. Shaktisinh Jadeja', '9909998480', 'wm.rajkot@sealandtrucking.com', '22.388881', '71.000098', '2018-07-29 18:30:00'),
(146, '3S', 'workshop', 'Sealand ', 'Gujarat', 'Veraval', 'West2', 'Nr.Talajaroad,SurveyNo.64/2At.Ghantiya-Pranchi362268TalSutarpadaDist.Junagadh.', '', '', 'Mr Amit Dhabba', '9909998460', 'veraval@sealandtrucking.com', 'Mr. Janmohmad mandhra', '9909998474', 'service.veraval@sealandtrucking.com', '20.922827', '70.602711', '2018-07-29 18:30:00'),
(147, '3S', 'workshop', 'Gujral', 'Uttar Pradesh', 'Bareilly', 'North1', '01OppositeC.B.GanjIndustrialArea,RampurRoad,VillageJauharpur,Bareilly.UttarPradesh.Pincode243502', '0581-2561888', 'info@gujraltrucking.com', 'Vishal Verma', '9105006555', 'sales.bareilly@gujraltrucking.com', 'Sachin Rastogi', '9105009911', 'parts.bareilly@gujraltrucking.com', '28.405572', '79.368254', '2018-07-29 18:30:00'),
(148, '3S', 'sales', 'Abutani ', 'Assam', 'Guwahati', 'East', 'AbutaniVaahanPvtLtd,Kamarkuchi,Tepesia,Sonapur,Kamrup,PIN-782402', '7086030802', 'gdoley.ceo@abutanitrucking.com', 'Mr. Rupak Purkayastha', '9435109555', 'rupak.p@abutanitrucking.com', 'Mr. Jayabrata Das,', '8638740798', 'jayabrata@abutanitrucking.com', '26.119987', '91.914817', '2018-07-29 18:30:00'),
(149, '3S', 'sales', 'BEBBCO ', 'Jharkhand', 'Jamshedpur', 'East', 'NH33,Plotno.21&27,Village:Asonboni,Chandil,Jamshedpur,Jharkhand-832102', '0657-6050555-888', 'jsr@bebbcotrucking.com', 'Mr Ajay Sinha', '9204052480', 'sales.jamshedpur@bebbcotrucking.com', 'Sudip Santra', '9204052485', 'servicemanager.jsr@bebbcotrucking.com', '22.881908', '86.169527', '2018-07-29 18:30:00'),
(150, '3S', 'sales', 'BEBBCO ', 'Jharkhand', 'Dhanbad', 'East', 'Plotno3427,mouzabarwa,no223,PS-govindpur,G.T.road,dhanbad-826001', '6540277004', 'Dhanbad@bebbcotrucking.com', 'Mr Ajay Singh', '9204552437', 'Sales.dhanbad@bebbcotrucking.com', 'Madhusudhan Mukherjee', '9204552435', 'service.dhanbad@bebbcotrucking.com', '23.83675', '86.51032', '2018-07-29 18:30:00'),
(151, '3S', 'sales', 'BEBBCO ', 'Jharkhand', 'Ranchi', 'East', 'Plotno,225,Khata,no13,mouzagetlatu,P.Ssadar,ranchi-834001', '0651-2271281', 'Ranchi@bebbcotrucking.com', 'Mr Sanjay Kumar', '9204552433', 'sales.ranchi@bebbcotrucking.com', 'Rajiv Sinha', '9204552436', 'service.ranchi@bebbcotrucking.com', '23.418845', '85.40844', '2018-07-29 18:30:00'),
(152, '3S', 'sales', 'N R ', 'West Bengal', 'Kolkata', 'East', 'N.RMotorsPvt.Ltd.Mouja:KhalisaniP.S.Ulberia,?DistrictHowrah(Westbengal),Pincode-711360', '7439019565', 'csc.hwh@nr-trucking.com', 'Awadesh Gupta', '7439579290', 'a.gupta@nr-trucking.com', 'Sandip Mondal', '7439019572', 'wm.hwh@nr-trucking.com', '22.505939', '88.13005', '2018-07-29 18:30:00'),
(153, '3S', 'sales', 'N R ', 'West Bengal', 'Durgapur', 'East', 'JLNo102,Vill-Sarul,POGalsi,DT-Burdwan-713406,WestBengal.', '7439019564', 'csc.bwd@nr-trucking.com', 'Dilip Mulo', '7439019574', 'd.mulo@nr-trucking.com', 'Somnath Panja', '8100927677', 'wm.bwd@nr-trucking.com', '23.325804', '87.713956', '2018-07-29 18:30:00'),
(154, '3S', 'sales', 'N R ', 'West Bengal', 'CK Road ', 'East', 'Vill+P.O:Kiyaboni(C.K.Road),P.S:Garbeta,Dist:PaschimMidinipur,WestBengal.', '7439019565', 'csc.hwh@nr-trucking.com', 'Awadesh Gupta', '7439579290', 'ash.ho@nr-trucking.com', 'Ujjwal Kr. Bera', '7439019573', 'service.hwh@nr-trucking.com', '22.775632', '87.339297', '2018-07-29 18:30:00'),
(155, '3S', 'sales', 'Shree Bharat', 'Orissa', 'Cuttack', 'East', 'ShreeBharatMotorsLtd.PlotNo.25&791,Mouza-ChakaKhaira,NH-5,Badachana,?Dist:Jajpur,Pin:754296', '8599011344', 'dicvsales@bharats.in', 'Mr. Sree Ranjan', '8599011450', 's.anil@bharats.in', 'Mr.Bikash Jena', '8599011467', 'dicv_service_cuttack@bharats.in; bikash@bharats.in', '20.657843', '86.116673', '2018-07-29 18:30:00'),
(156, '3S', 'sales', 'Shree Bharat', 'Orissa', 'Sambalpur', 'East', 'ShreeBharatMotorsLtd.Mouza-Dhanakuda,Sambalpur,Orissa,768010', '8599011476', 'dicv.sbp@bharats.in', 'Mr. Sanjay Agarwal', '8599011514', 'sanjay.agrawal@bharats.in', 'Mr.Sumanta Sahu', '8599011447', 'dicv.sbp@bharats.in', '21.452797', '84.025738', '2018-07-29 18:30:00'),
(157, '3S', 'sales', 'Shree Bharat', 'Orissa', 'Rourkela', 'East', 'ShreeBharatMotorsLtd.At:Chikatmati,Panposh,RourkelaDist.Sundergarh-769042.', '8599011503', 'dicv.rourkela@bharats.in', 'Mr. Anil Saraogi', '8599011601', 'neeraj@bharats.in', 'Mr.Debajyoti Prusty', '8599011474', 'dicvservice.rkl@bharats.in', '22.237645', '84.731322', '2018-07-29 18:30:00'),
(158, '3S', 'sales', 'Shree Bharat', 'Orissa', 'Keonjhar', 'East', 'ShreeBharatMotorsLtd.NH-6,Shankarpur,Keonjhar,Orissa-758002', '8599011394', 'sales.kjr@shreebharattrucking.com', 'Mr. Ramakant Parida', '8599011407', 'rk.parida@bharats.in', 'Mr. Ranjan Kumar Raul', '8599011406', 'service.kjr@shreebharattrucking.com', '21.65968', '85.642909', '2018-07-29 18:30:00'),
(159, '3S', 'sales', 'Shree Bharat', 'Orissa', 'Behrampur', 'East', 'ShreeBharatMotorsLtd.PlotNo.643/1209&1210,NH-5,BypassRoad,PatharaJunctionBerhampur-760010', '8599011398', 'dicv.bhm@bharats.in', 'Mr.Fahad Ahmed', '8599011395', 'fahad@bharats.in', 'Mr.Narahari Swain', '8599011349', 'service.bhm@bharats.in', '19.315161', '84.858273', '2018-07-29 18:30:00'),
(160, '3S', 'sales', 'Shree Bharat', 'Orissa', 'Balasore', 'East', 'ShreeBharatMotorsLtd.PlotNo.61-72,GaneswarpurIndustrialEstate,Balasore,PIN:756019', '8599011387', 'dicv.balasore@bharats.in ', 'Mr. S K Mathur', '8599011333', 'rajesh.sharma@bharats.in', 'Mr.Bikram Behra', '8599011391', 'dicv.balasore@bharats.in', '21.506834', '86.892103', '2018-07-29 18:30:00'),
(161, '3S', 'sales', 'Shree Bharat', 'Odisha', 'Angul', 'East', 'ShreeBharatMotorsLtd.N.H.-42,KULAD,ANGUL-759122', '(06764) 222278', 'dicv.angul@bharats.in', 'Sailendra Kumar Acharya', '8599011368', 'acharya@bharats.in ', 'Ravi Bhusan Sharma', '8599011378', 'dicv.angul@bharats.in; bhushan@bharats.in,', '20.845081', '85.179673', '2018-07-29 18:30:00'),
(162, '3S', 'sales', 'Topsel', 'West Bengal', 'Howrah ', 'East', 'ChamrailBanarasRd,Bamangachi,Salkia,Howrah,WestBengal711106', '9836587825', 'csc.kol@topseltrucking.co.in', 'Saradindu Biswas', '9830262603', 'saradindu.biswas@topseltrucking.co.in', 'P.Vasudevan', '9073983944', 'p.vasudevan@topseltrucking.co.in', '22.643835', '88.3065830', '2018-07-29 18:30:00'),
(163, '3S', 'sales', 'GMMCO', 'Maharashtra', 'Nagpur', 'Mining', 'GMMCOLimited,PlotNoJ-9,MIDC,IndustrialArea,Butibori,Nagpur?441122', '8728332506', 'contactus@gmmcoindia.com', 'Mr.Neeraj Sharma', '7024156520', 'neerajsharma@gmmcoindia.com', 'Mr. Sudharshan R', '9404537651', '', '18.745388', '79.493948', '2018-07-29 18:30:00'),
(164, '3S', 'sales', 'GMMCO', 'Madhya Pradesh', 'Singrauli', 'Mining', 'GMMCOLimited,JayantMainRoad,Medhauli,Singrauli,PO?Singrauli,Dist?Singrauli(MP)PIN?486889Landline:07805392025', '', '', '', '', '', 'Mr. Pradeep Kumar Tripathi', '8435000256', '', '', '', '2018-07-29 18:30:00'),
(165, '3S', 'sales', 'Dhingra ', 'Haryana ', 'Dharuhera', 'North1', 'PlotNo.22,DharuheraIndustrialArea,Dist.Rewari,Haryana-123106', '0124-243045', 'cre.sales@dhingratrucking.com', 'Mr. Narendra Singh ', '8059226666', 'ash.dharuhera@dhingratrucking.com', 'Mr. Arindom Kundu', '8222020860', 'sm.dharuhera@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(166, '3S', 'sales', 'Dhingra ', 'Haryana ', 'Karnal', 'North1', 'DhingraTruckingPrivateLimitedKhasraNo-74/16/1/17,18,23&24VillageBastra,AmbalaDelhiNH-1NationalHighwayDist-Karnal', '8222020863', 'crm.karnal@dhingratrucking.com', 'Mr. Vikram Singh', '9729996841', 'vikram.singh@dhingratrucking.com ', 'Mr. J.P.Garg', '8683886666', 'sm@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(167, '3S', 'sales', 'Dhingra ', 'Haryana ', 'SGTN/ Alipur', 'North1', 'KHASRANO.292293,VILLAGESIRASPUR,ALIPUR,OUTERDELHI-110043', '7065076009', 'crm.delhi@dhingratrucking.com', 'Mr. Inderjeet Singh', '8130293434', 'ash.delhi@dhingratrucking.com', 'Mr. G.V.Badri', '8607336666', 'gm.keyaccounts@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(168, '3S', 'sales', 'Dhingra ', 'Haryana ', 'Hisar', 'North1', 'PLOTN0.175,SECTOR27&28,HISSAR,Haryana,-125001', '01662-222145', 'crm.hissar@dhingratrucking.com', 'Mr. Rajesh Mehta ', '8222020861', 'ash.hissar@dhingratrucking.com', 'Mr. Tarun Wadhawan', '8222020866', 'sm.hissar@dhingratrucking.com', '', '', '2018-07-29 18:30:00'),
(169, '3S', 'sales', 'DPM', 'Uttarakhand', 'Haridwar', 'North1', 'DDPMESTATE,KALIYARROAD,ROORKEE,DIST-HARIDWAR,INDIA', '8979002101', 'info@dpmtrucking.in', 'MUSHARRAF ALI', '9837109815', 'saleshead@dpmtrucking.com', 'AJIT SINGH', '7055211578', 'servicehead@dpmtrucking.in', '', '', '2018-07-29 18:30:00'),
(170, '3S', 'sales', 'Espirit ', 'UP & Haryana', 'Agra ', 'North1', '162/1,NaglaRamBuxnearKuberpurElectricSubStationETMADPURNH-2,Agra', 'NA', 'salesagra@espirit-trucking.com', 'Mr. Amlesh Sharma ', '7455033951', 'gmsalesgzb@espirit-trucking.com', 'Mr. Amet garg ', '7291988501', 'wmagra@espirit-trucking.com', '27.231349', '78.159943', '2018-07-29 18:30:00'),
(171, '3S', 'sales', 'Espirit ', 'UP & Haryana', 'Ghaziabad', 'North1', 'PlotNo1283,MortaVillage,DelhiMeerutRoad,Ghaziabad', '0120-2802100', 'Salesdeskgzb@espirit-trucking.com', 'Mr. Sanjay Tripathi', '7291988508', 'gmsalesgzb@espirit-trucking.com', 'Mr. Ravinder Rawat', '7291988501', 'gmservicegzb@espirit-trucking.com', '28.43176', '77.28073', '2018-07-29 18:30:00'),
(172, '3S', 'sales', 'Rajendra ', 'UP', 'Gorakhpur', 'North1', 'C-2,SECTORNO.-11,GIDAGORAKHPUR273209', '8601872866', 'sales.gorakhpur@rajendratrucking.com ', 'Mr. Sanjay Singh ', '8601872866', 'sales.gorakhpur@rajendratrucking.com ', 'Mr. Ramagya ', '8601872864', 'service.gorakhpur@rajendratrucking.com', '26.744941', '83.257356', '2018-07-29 18:30:00'),
(173, '3S', 'sales', 'Rajendra ', 'UP', 'Varanasi', 'North1', 'Ward:Kaswarraja,MehndigunjVillage,Varanasi-AllahabadHighway,Varanasi', '8601872852', 'sales.varanasi@rajendratrucking.com', 'Mr. Nadeem', '8601872852', 'sales.varanasi@rajendratrucking.com', 'Mr. Amresh Kumar Dubey ', '8601872880', 'service.varanasi@rajendratrucking.com', '25.270903', '82.828132', '2018-07-29 18:30:00'),
(174, '3S', 'sales', 'Rajendra ', 'UP', 'Sonbhadra', 'North1', 'BaghaNala,Varanasi-ShaktinagarMarg,Chopan,Sonbhadra,UttarPradesh231205', '8601872863', 'sales.chopan@rajendratrucking.com', 'Mr. Anil Singh', '8601872863', 'sales.chopan@rajendratrucking.com', 'Mr. B.N.Yadav', '8601872855', 'service.chopan@rajendratrucking.com', '24.491053', '83.029207', '2018-07-29 18:30:00'),
(175, '3S', 'sales', 'Society ', 'UP', 'Kanpur', 'North1', 'Khasrano.259&266,NH2,VillagePakri,DistKanpurNagar,OppositeHPPetrolPumpUttarPradesh-209304', '', '', 'Mr Suman Kapoor', '9235612683', 'gmsales@societytrucking.com', 'Mr. Ravi Tripathi', '7800001306', 'gmservice@societytrucking.com', '26.419335', '80.146494', '2018-07-29 18:30:00'),
(176, '3S', 'sales', 'Society ', 'UP', 'Lucknow', 'North1', 'ArajiNo210,211,VillageRasoolpur,TehsilHasanganj,DistUnnao,NearPriyankaDhaba,NH25,Lucknow', '', '', 'Mr Suman Kapoor', '9235612683', 'gmsales@societytrucking.com', 'Mr. Aleem', '7800001314', 'wsm@societytrucking.com', '26.637929', '80.750163', '2018-07-29 18:30:00'),
(177, '3S', 'sales', 'Society ', 'Uttar Pradesh', 'Kabrai ', 'North1', 'PlotNo-165/1,VivekNagar,KanpurSagarRoad,Kabrai,UP', '', '', '', '', '', 'Ravi Tripathi', '7800001306', 'gmservice@societytrucking.com', '25.40777', '80.005584', '2018-07-29 18:30:00'),
(178, '3S', 'sales', 'Society ', 'Uttar Pradesh', 'Jhansi ', 'North1', 'HNo-154,Digara,Jhansi,UP', '', '', '', '', '', 'Manwendra Siddharth', '9235653676', 'wsmjhs@societytrucking.com', '25.466111', '78.64057', '2018-07-29 18:30:00'),
(179, '3S', 'sales', 'Anand', 'Himachal Pradesh', 'Bilaspur', 'North2', 'AnandTrucking,Village-Ratt.P.O.Kothipura,Bilaspursader,Himachapradesh-174001', '?01978-2280221', '?sales.bilaspur@anandtrucking.com', 'Rehman', '8894000555', '?sales.bilaspur@anandtrucking.com', 'Mr. Sarabjit Singh', '8894111555', 'service.bilaspur@anandtrucking.com?', '31.285108', '76.769186', '2018-07-29 18:30:00'),
(180, '3S', 'sales', 'Anand', 'Himachal Pradesh', 'Solan', 'North2', 'Vill.-MohalNagali,P.O.Deonghat,Tehsil&Distt-Solan(H.P.)PinCode.:-173209', '01792-645625?', 'sales.solan@anandtrucking.com?', 'Mr. Prem Verma', '9805002321', 'sales.solan@anandtrucking.com', 'Mr. Sumeet Chandel', '8894222555', 'service.solan@anandtrucking.com', '30.898184', '77.068873', '2018-07-29 18:30:00'),
(181, '3S', 'sales', 'Globe ', 'Punjab', 'Ludhiana', 'North2', 'GlobeCVPvtLtd,Delhi-AmritsarNH1,VillageMehandipur,TehsilKhanna,Ludhiana-141401', '0161-3003651', 'bb@globe-trucking.com', 'Mr. Harpal Singh', '8725012070', 'harpal.singh@globe-trucking.com', 'Mr. Hardeep Singh', '8437012501', 'hardeep.singh@globe-trucking.com', '30.745024', '76.125922', '2018-07-29 18:30:00'),
(182, '3S', 'sales', 'Globe ', 'Punjab', 'Bhatinda', 'North2', 'GlobeCVPvtLtd,HadbastNo196,Barnala-BhatindaRoadVillageLehraMohabat,Bhatinda-151102', '8725044334', 'accounts.bth@globe-trucking.com', 'Mr. Harpal Singh', '8725012070', 'harpal.singh@globe-trucking.com', 'Mr. Charanjeet Singh', '8725012075', 'wm.bth@globe-trucking.com', '30.250339', '75.165083', '2018-07-29 18:30:00'),
(183, '3S', 'sales', 'Globe ', 'Punjab', 'Panthankot', 'North2', 'GlobeCVPvtLtd,Jammuroad,nearReebokshowroom,Sujanpur,Pathankot,Punjab-145023', '8725044337', 'account.ptk@globe-trucking.com', 'Mr. Parwinder Singh', '8437012503', 'parwinder.singh@globe-trucking.com', 'Mr. Sarabjit Singh', '8437012502', 'sarabjit.singh@globe-trucking.com', '32.36289', '75.59701', '2018-07-29 18:30:00'),
(184, '3S', 'sales', 'Kamal ', 'Rajasthan', 'Udaipur', 'North2', 'KamalCommercialVehiclesP.ltd,KhasraNo.6&761/7,villageSaraiPatwarArea,karanpur,Udaipur-313601', '8003996592', 'marketing@kamaltrucking.co.in', 'Mr. Vivek Choudhary', '8003496421', 'sales@kamaltrucking.co.in', 'Mr. Vidyacharan Anand', '8003496431', 'service@kamaltrucking.co.in', '24.619825', '73.9638', '2018-07-29 18:30:00'),
(185, '3S', 'sales', 'Kamal ', 'Rajasthan', 'Jaipur', 'North2', 'KamalCommercialPvt.ltd.KhasraNo.2363/46&2362/45,NH-8,Mehla,JaipurRajasthan.', '9116036755', 'service.support@kamal-trucking.com', 'Mr. Mohd Yunus', '7726009285', 'Sales.jaipur@kamal-trucking.com', '', '', 'Service.jaipur@kamal-trucking.com', '26.912434', '75.787271', '2018-07-29 18:30:00'),
(186, '3S', 'sales', 'Kamal ', 'Rajasthan', 'Kota', 'North2', 'KamalTrucking,BhimpuraIndustrialArea,NearJagpuraPoliceChowki,JhalawaraRoad,Kota.(Rajasthan)', '7728891111', '?marketingkota@kamaltrucking.co.in', 'Mr Ajit Singh?', '7728891101?', '?manager@kamaltrucking.co.in', '?Mr Rahul Sharma', '7728891112?', 'service@kamaltrucking.co.in', '25.054128', '75.874155', '2018-07-29 18:30:00'),
(187, '3S', 'sales', 'Kamal ', 'Rajasthan', 'Ajmer/Nasirabad', 'North2', 'E-10RIICOINDUSTRIALAREASHRINAGAR,NASIRABAD,DISTAJMERPINNO.305601', '9929732848', 'rajendra.kumar8226@gmail.com ', 'Navil Marker', '9982220007', '', '', '', '', '26.470037', '74.809799', '2018-07-29 18:30:00'),
(188, '3S', 'sales', 'Marwar ', 'Rajasthan', 'Jodhpur', 'North2', 'MarwarTrucking,E-285/286M.I.A2NDPHASEBASNI,NEARMARUTIDHARAMKANTA,JODHPUR,RAJASTHAN?342005', '9116116702', 'sales.jdp@marwartrucking.com', 'Mr. Shwet Kamal', '9116116701', 'shwetkamal@marwartrucking.com ', '?Mr. Javed', '7728888120', 'service@marwartrucking.com', '26.228123', '73.00801', '2018-07-29 18:30:00'),
(189, '3S', 'sales', 'Marwar ', 'Rajasthan', 'Bikaner', 'North2', 'MarwarTruckingPvt.Ltd.NearKalaptaruWarehouse,SriganganagarRoad.Husangsar,Bikaner-Rajasthan', '7728888101?', 'edp@marwartrucking.com', 'Babulal Bishnoi', '7728888110', 'sales@marwartrucking.com', '?Baldev Bishnoi', '7728888117', 'service@marwartrucking.com', '28.144886', '73.376193', '2018-07-29 18:30:00'),
(190, '3S', 'sales', 'Marwar ', 'Rajasthan', 'Hanumangarh', 'North2', 'MarwarTrucking,Opp.SanjhaChulharestaurant,NearTollplaza,Makkasarvillage,SuratgarhRoad,Hanumangarh(Rajasthan)', '7023003111', 'backofficehmh@gmail.com?', 'Ashfak', '7023003110', '?sales@marwartrucking.com', '?Dinesh', '7023003109', 'service-hmo@marwartrucking.com', '29.681802', '74.410764', '2018-07-29 18:30:00'),
(191, '3S', 'sales', 'Autobahn', 'Kerala', 'Kochi', 'South', 'AutobahnTruckingCorporationPvt.Ltd.,NedumbasseryP.O.,Kottayi,NH47,NearAthaniJunction,Aluva,Ernakulam683585,Kerala', '0484 2379000 ', 'sales.ekm@autobahntrucking.com', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Sibu Paulose', '8606976168', 'wm.ekm@autobahntrucking.com', '10.141998', '76.352526', '2018-07-29 18:30:00'),
(192, '3S', 'sales', 'Autobahn', 'Kerala', 'Trivandrum', 'South', 'AutobahnTruckingCorporationPvt.Ltd.,NearBPCLPump,LalBaghEstate,16thMilestone,MeleThonnakkalP.O.,Trivandrum-695317.', '0471-2617399/ 499', 'sales.tvm@autobahntrucking.com', 'Bringle Simon A.', '8606976099', 'bringle.simon@autobahntrucking.com', 'Jesim Shajahan', '8606976066', 'jesim.s@autobahntrucking.com', '8.642844', '76.842982', '2018-07-29 18:30:00'),
(193, '3S', 'sales', 'Autobahn', 'Kerala', 'Kozhikode', 'South', 'AutobahnTrucking,NH17,CalicutBypassRoad,AzhinjilamP.O.,Ramanattukara,PinCode:673632,Kerala', '0495 2486555', 'sales.clt@autobahntrucking.com', 'Mr. Sreejith P S', '8606976802', 'sreejith.ps@autobahntrucking.com', 'Rajeesh M. P.', '8606976070', 'wm.alathur@autobahntrucking.com', '11.195386', '75.868848', '2018-07-29 18:30:00'),
(194, '3S', 'sales', 'Autobahn', 'Kerala', 'Kochi 2', 'South', 'AutobahnTruckingCorporationPvtLtd.7/234,NearSimiliaBusstop,Malikampeedika,AlangadP.O.,Aluva-PravoorRoad,Aluva,Ernakulam,Kerala', '0484 2672323 ', 'service.alangad@autobahntrucking.com ', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Jaisankar S.', '8606976021', 'wm.alangad@autobahntrucking.com', '10.12649811', '76.31381286', '2018-07-29 18:30:00'),
(195, '3S', 'sales', 'Autobahn', 'Kerala', 'Palaghat', 'South', 'AutobahnTruckingCorporationPvtLtd.11/494,NearAbhayaHospital,NH47,AnjumoorthimangalamVia.,Erattakulam.P.O.,Palakkad,Kerala.', '8606976822', 'service.alathur@autobahntrucking.com', 'Santhosh Kumar P.', '8606976015', 'santhoshkumar.p@autobahntrucking.com', 'Jithil Mohan', '8606976073', 'wm.alathur@autobahntrucking.com', '10.6285795', '76.5116172', '2018-07-29 18:30:00'),
(196, '3S', 'sales', 'Autobahn', 'Kerala', 'Kannur', 'South', 'B21,AUTOBAHNTRUCKINGCORPORATIONPVT.LTD,KSIDCINDUSTRIALGROWTHCENTRE,MOORYADPOST,VALIYAVELICHAM,KOOTHUPARAMBA,Kannur,Kerala,670643', '8606976126', 'service.knr@autobahntrucking.com', 'Mr. Sreejith P S', '8606976802', 'sreejith.ps@autobahntrucking.com', 'Ragesh T.', '8606976069', 'service.knr@autobahntrucking.com', '11.82823889', '75.59916667', '2018-07-29 18:30:00'),
(197, '3S', 'sales', 'Jayaraj ', 'Tamil Nadu', 'Madurai', 'South', 'MaduraiDindigulNationalHighway,KattapuliNagar,Thenur,SamayanallurP.O,MaduraiNorth,Pin-625402', '9244227703', 'projectmanager@jayarajgroup.com', 'Mr Jayakumar', '9244422789', 'ash.mdu@jayarajgroup.com', 'Mr Ashok', '9043003760', 'worksmanager.mdu@jayarajtrucking.com', '9.994453', '78.024623', '2018-07-29 18:30:00'),
(198, '3S', 'sales', 'Jayaraj ', 'Tamil Nadu', 'Trichy', 'South', '133&134,Panjapur,MaduraiMainRoad,Trichy-620012', '9244422103', 'admin.try@jayarajtrucking.com', 'Mr Marcus', '9244222774', 'ash.try@jayarajtrucking.com', 'Mr Ramamoorthy', '9043003756', 'worksmanager.try@jayarajtrucking.com', '10.753024', '78.650847', '2018-07-29 18:30:00'),
(199, '3S', 'sales', 'Jayaraj ', 'Tamil Nadu', 'Tirunelveli', 'South', 'JayarajTrucks&Buses(P)Ltd,Kanyakumari?NationalHighway,K.K.NagarC,NearJayarajAutomobileAgency(JCBDivision)AyankulmBusStop,Tirunelveli-627007', '9043003723', 'ash.tvl@jayarajtrucking.com', 'Mr Karthik Pandian', '9244422100', 'ash.tvl@jayarajtrucking.com', 'Mr Seenivasan', '9043003727', 'worksmanager.tvl@jayarajtrucking.com', '8.638702', '77.705488', '2018-07-29 18:30:00'),
(200, '3S', 'sales', 'Jayaraj ', 'Tamil Nadu', 'Tuticorin', 'South', '17/1,MaduraiTuticorinNationalHighway,MelaArasadi,Tuticorin?628002.', '9043004793', 'ash.tvl@jayarajtrucking.com', 'KarthikPandian', '9244422100', 'ash.tvl@jayarajtrucking.com', 'Mr Subash', '9043004782', 'worksmanager.tcn@jayarajtrucking.com', '8.884866', '78.109162', '2018-07-29 18:30:00'),
(201, '3S', 'sales', 'KUN ', 'Tamil Nadu', 'Chennai', 'South', 'KUNTrucking,SurveyNo210/1a3,ByePassRoad,Poonamallee,Chennai600056', '044 -26271199', 'SALES@KUNTRUCKING.COM', 'Mr.Akshayalinga Prabu', '7708060969', 'prabuna@kuntrucking.com', 'Mr.T.Goldvin kumar', '7708060951', 'wmpme@kuntrucking.com', '13.057252', '80.098839', '2018-07-29 18:30:00'),
(202, '3S', 'sales', 'KUN ', 'Tamil Nadu', 'Vellore', 'South', 'SurveyNo187/7B2,BangaloreRoad,NandhiyalamVillage,Walajapettauluk,Vellore-632517.Landmark:RathnagiriTemple.', '7708068444', 'sales.vellore@kuntrucking.com', 'Mr. A.Ganesh Kumar', '7708060944', 'ganesh@kuntrucking.com', 'Mr. Muthu Palaniappan. R.M', '77080 61372', 'wmvlr@kuntrucking.com', '12.9348', '79.25574', '2018-07-29 18:30:00'),
(203, '3S', 'sales', 'Prabal ', 'Tamil Nadu', 'Coimbatore', 'South', '46,BharathiNagar,Peelamedu,Coimbatore,Pincode-641004.', '0422 - 3001500', 'manjini.muthu@prabaltrucking.com ', 'Mr Daniel', '8489901939', 'daniel.jw@prabaltrucking.com', 'Mr.D.Tamilarasu Subramaian', '8489901819', 'tamilarasu.subramanian@prabaltrucking.com ', '11.089981', '77.133485', '2018-07-29 18:30:00'),
(204, '3S', 'sales', 'Prabal ', 'Tamil Nadu', 'Salem', 'South', '152,KoneriKaraiByePassroad,Kandampatti,Salem-636005', '0427 - 2225411', 'pandiyan.saigeetha@prabaltrucking.com', 'Mr.R.M.Prakash', '8489901909', 'prakash@prabaltrucking.com ', 'Mr Prabhu', '8489901946', 'Subbarayan.prabhu@prabaltrucking.com', '11.6523', '78.121373', '2018-07-29 18:30:00'),
(205, '3S', 'sales', 'Prabal ', 'Tamil Nadu', 'Hosur', 'South', 'PrabalMotorsPvtLtd.13/4A1KamandodiVillage,ShoolagiriPanchayath,Hosur,Krishnagiri', '04344 - 655508', 'ravi.shanmugam@prabaltrucking.com ', 'Mr Sridhar', '8489903119', 'sridhar.raghavendran@prabaltrucking.com', 'Mr Thangaraj', '8489901951', 'thangaraju.vengatesh@prabaltrucking.com', '12.68382', '77.938166', '2018-07-29 18:30:00'),
(206, '3S', 'sales', 'RNS ', 'Karnataka', 'Hubli', 'South', '97/B,SherwadCross,PaleVillage,Hubli,580023HubliTaluk.', '9183666150', 'ccm@rnstrucking.com', 'MR.Gorpade', '7760964701', 'gm@rnstrucking.com', 'MR.Jayanth Rawal', '8861304671', 'wm@rnstrucking.com', '15.250652', '75.144425', '2018-07-29 18:30:00'),
(207, '3S', 'sales', 'RNS ', 'Karnataka', 'Hospet', 'South', 'SurveyNo.163/2,NexttoGMRTollGate,Hitnal?583234Karnataka.', '9900033361', '', 'MR.Girish Kamat', '9108485384', 'manager_hpt@rnstrucking.com', 'MR.Sumanth Kulkarni', '9900032631', 'wm_hpt@rnstrucking.com', '15.32547', '76.302854', '2018-07-29 18:30:00'),
(208, '3S', 'sales', 'RNS ', 'Karnataka', 'Murdeswar', 'South', 'RNSTrucking,NH-66,Murdeswar,BhatkalTaluk,Karnataka,581350', '8385268696', 'ccm@rnstrucking.com', '', '', '', 'Naveen', '9740062491', 'wm_mur@rnstrucking.com', '14.0965', '75.5044', '2018-07-29 18:30:00'),
(209, '3S', 'sales', 'RNS ', 'Karnataka', 'Belgaum', 'South', 'No.48,Kolikoppa,Hirebagewadihobli,Belgaum', '8316525012', '', 'MR SANTOSH VARDAMANE', '9538965678', 'ash_bgm@rnstrucking.com', 'MR.Mahantesh', '9241112745', 'wm_bgm@rnstrucking.com', '15.785096', '74.600496', '2018-07-29 18:30:00'),
(210, '3S', 'sales', 'RNS ', 'Karnataka', 'Gulbarga', 'South', 'RNSTRUCKINGNEARTAVARGERACROSSHUMANABADROADKALBURGI', '0847-2298062', 'wm_kal@rnstrucking.com', 'VENKATESH SHASTRY', '9740065723', 'sales_kal@rnstrucking.com', 'SHARANABASAPPA SAHU', '7022623248', 'wm_kal@rnstrucking.com', '17.41145', '76.8783978', '2018-07-29 18:30:00'),
(211, '3S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Hyderabad1', 'South', 'SurveyNo.286/P,287,288/Pand289/P,BaghHayathnagarVillage,HayathnagarMandal,RangaReddyDistrict,Hyderabad-501505', '040 -24113118', 'sht_salesreceptionhyd@sriharshatrucking.com', 'Mr.B.Srinivasa Rao', '8008493857', 'sht_gmsales@sriharshatrucking.com', ' Mr.Anand Reddy', '8978380405', 'sht_wmhyd@sriharshatrucking.com', '17.334072', '78.586264', '2018-07-29 18:30:00'),
(212, '3S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Kodad', 'South', 'SurveyNo:338/1,NH-9NallabandaGudem,Chimiryala,Kodad,Nalagonda(Dist)-508206.', '08683-284446', 'sht_hrkdd@sriharshatrucking.com', 'Mr.K.Srinivas Rao', '8978380439', 'sht_ashkdd@sriharshatrucking.com', 'Mr. K.N.V Ramesh', '8978380440', 'sht_awmkdd@sriharshatrucking.com', '16.960371', '80.040634', '2018-07-29 18:30:00'),
(213, '3S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Anantpur', 'South', 'Sy.No-112/10B,NH-7,LolurVillageSinganamala(Mandal),Ananthapur(Dt.)', '08554 - 251455', 'sht_salesreceptionatp@sriharshatrucking.com', 'Mr.D.Lakshmi Prasad', '8008060904', 'sht_ashatp@sriharshatrucking.com', 'Mr.P.Rajesh Babu', '8008367459', 'sht_awmatp@sriharshatrucking.com', '14.79531', '77.598144', '2018-07-29 18:30:00'),
(214, '3S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Hyderabad2', 'South', 'Sy.No:258,Plotno-3&10Pashamyalaram(V),Patancheru(M),Medak(D),PASHAMYLARAM,MEDAK', '9100905556', 'sht_adminpsmlr@sriharshatrucking.com', '', '', '', 'S.Chittayya', '8978180820', 'sht_bppsmlr@sriharshatrucking.com', '17.527345', '78.179922', '2018-07-29 18:30:00'),
(215, '3S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Karimnagar', 'South', 'SriHarshaTruckingsPvt.Ltd,D.No.8-6-301/10/1/A,PdplBypassRoad,Autonagar,Rampur,BesideTVSKongaraShowRoom,Karimnagar-505001.', '0878-6504433', 'sht_hrkrmr@sriharshatrucking.com', 'Mr.Das Prakash', '8978180818', 'sht_ashkrmr@sriharshatrucking.com', 'Mr.Kishan Reddy', '9100076263', 'sht_hrkrmr@sriharshatrucking.com', '18.4145265', '79.1407834', '2018-07-29 18:30:00'),
(216, '3S', 'sales', 'Sri Harsha ', 'Andhra Pradesh', 'Nizamabad', 'South', 'SriHarshaTruckingPvt.Ltd,Sy.No;743&744,Bardipur(Vil),Dichpally(Mndl),Nizamabad(Dt)', '08461-245466', 'Sht_adminnzb@sriharshatrucking.com', 'M.Sudhakar', '8790998691', 'Sht_foodchainkrmr@sriharshatrucking.com', 'K.Gabbar Singh', '9100444788', 'Sht_servicenzb@sriharshatrucking.com', '18.63389', '78.177803', '2018-07-29 18:30:00'),
(217, '3S', 'sales', 'Trident ', 'Karnataka', 'Bangalore', 'South', '72/1,Budhihal,KasabaHobli,Nelamangala,Bangalore-562123', '080-27730003', 'customercare@tridenttrucking.com', 'Rajendra Kumar', '8197137777', 'rajendrakumar@tridenttrucking.com', 'Andrew', '7353757330', 'andrew@tridenttrucking.com', '13.136638', '77.355259', '2018-07-29 18:30:00'),
(218, '3S', 'sales', 'Trident ', 'Karnataka', 'Chitradurga', 'South', 'SurveyNo.56,KunchinalHobli,IngladalPanchayat,OppositetoVRLLogistics,NearReliancesPetrolbunk,Chitradurga-577501', '9741267722', 'salescd@tridenttrucking.com', 'Shivaprakash N', '7353751029', 'shivaprakash@tridenttrucking.com', 'Srinath T V', '9900022408', 'srinath@tridenttrucking.com', '14.191095', '76.454493', '2018-07-29 18:30:00'),
(219, '3S', 'sales', 'Trident ', 'Karnataka', 'Mangalore', 'South', 'TridentAutomobilePvtLtd,SurveyNo.32/7,BellayuruVillage,Mukigram,Mangalore(DK)-574154', '0824-6611900/2290633', 'marketingmlr@tridenttrucking.com', 'Sreedharaprabhu', '7353757323', 'sridharprabhu@tridenttrucking.com', 'Dinakar Anchan', '7353757312', 'dinkar@tridenttrucking.com', '13.065556', '74.797796', '2018-07-29 18:30:00'),
(220, '3S', 'sales', 'Varun ', 'Andhra Pradesh', 'Vijayawada', 'South', 'Surveynos561/2b(p)and3a,562/5b&6a,KesarapalliVillage,Gannavaram(Mandal)Krishnadist.-521101', '0866 - 3984142', 'admn.vja.varuntrucking@gmail.com', 'MR.J.SRINIVASA RAO', '8297999444', 'gm.vja.varuntrucking@gmail.com', 'MR.KHAREEM KHAN', '8297547444', 'srm.varuntrucking@gmail.com', '16.516644', '80.764943', '2018-07-29 18:30:00'),
(221, '3S', 'sales', 'Varun ', 'Andhra Pradesh', 'Vizag', 'South', '88/P,BlockD,VarunAutoPark,BesideGajuwakapoilcestationSrinagar,OldGajuwaka,Vishakapatnam-530026', '0891 - 3050099', 'admn.vsp.varuntrucking@gmail.com', 'MR. B N V S PRAKASH', '9703811188', 'ash.vsp.varuntrucking@gmail.com', 'MR.SATHI BABU', '9885339955', 'srsup1.vsp.varuntrucking@gmail.com', '17.684118', '83.19244', '2018-07-29 18:30:00'),
(222, '3S', 'sales', 'Varun ', 'Andhra Pradesh', 'Rajamundry', 'South', 'VarunMotorsPvtLtd,PlotNo:251,RoadNo:6,AutoNagar,EastGodavari,Rajahmundry-533106', '9703811188', 'srsup.rjy.varuntrucking@gmail.com', 'Mr.M.Ramesh', '8297092444', 'bdm1.vsp.varuntrucking@gmail.com', 'M Srinivasa Rao', '9885322744', 'ssrup.rj.varuntrucking@gmail.com', '17.004393', '81.783325', '2018-07-29 18:30:00'),
(223, '3S', 'sales', 'Varun ', 'Andhra Pradesh', 'Nellore', 'South', 'SurveyNo299/1,299/2&300/1,PaduguPaduVillage,KovuruMandalam,SPSRNelloredistrict,AndhraPradesh-524137', '0861 - 3041410', 'sales.nlr.varuntrucking@gmail.com', 'MR.M.SRINIVASA RAO', '8297210444', 'sales.nlr@varuntrucking.com', 'MR.J.RAVI', '9885355547', 'gm.nlr.varuntrucking@gmail.com', '14.493194', '80.002423', '2018-07-29 18:30:00'),
(224, '3S', 'sales', 'Ghatge ', 'Maharashtra', 'Baramati', 'West1 ', 'Plotno-G-320,Katfal,MIDCBaramati,BaramatiRural,Baramati,Pune,Maharashtra,Pin-413102', '83808 12000', 'sales.baramati@ghatgetrucking.com', 'Mr. Narendra Deokate', '8380032188', 'narendra.deokate@ghatgetrucking.com', 'Mr. Jairaj Lad', '83800 20177', 'awm.baramati@ghatgetrucking.com', '18.226834', '74.603048', '2018-07-29 18:30:00'),
(225, '3S', 'sales', 'Ghatge ', 'Maharashtra', 'Pune', 'West1 ', 'KGPAutoLtd,Warehouseno:126,Tathwade,PCMC,District-Pune-411033', '020 66344600', 'sales.pune@ghatgetrucking.com', 'Mr. Santosh Mane', '83800 11922', 'santosh.mane@ghatgetrucking.com', 'Mr.Sunil Jangle', '88053 71600', 'worksmanager.pune@ghatgetrucking.com', '18.622873', '73.746117', '2018-07-29 18:30:00'),
(226, '3S', 'sales', 'Ghatge ', 'Maharashtra', 'Kolhapur', 'West1 ', 'RSno:236,Village:Vathar,Taluk:Hatkanangale,District:Kolhapur,Maharashtra-416112', '088884 47700', 'sales.kolhapur@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83089 81600', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Sumanth Kulkarni', '83800 32210', 'worksmanager.kolhapur@ghategetrucking.com', '16.833061', '74.289374', '2018-07-29 18:30:00'),
(227, '3S', 'sales', 'Ghatge ', 'Maharashtra', 'Sholapur', 'West1 ', 'GHATGETrucking,GatNo.195/1,Sholapur,HyderabadHighway(NH9),Village-Doddi,Tal-SouthSholapur-413006,Dist-SholapurState-Maharashtra', '088057 77700', 'sales.solapur@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83089 81600', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Suresh kumbhar', '8380040410', 'worksmanager.solapur@ghategetrucking.com', '17.705243', '75.986719', '2018-07-29 18:30:00'),
(228, '3S', 'sales', 'Ghatge ', 'Maharashtra', 'Nasik', 'West1 ', 'C/OGhatgePatilTransportPvtLtd,40/10&40/11,MIDCSatpur,NearSatpurswimmingpool,Satpur,Nasik,Maharashtra', '86050 04210', 'sales.nashik@ghatgetrucking.com', 'Mr. Vitthal Mahulikar', '77199 30101', 'vitthal.mahulikar@ghatgetrucking.com', 'Mr. Mahadev Kanthale', '91460 05182', 'awm.nashik@ghatgetrucking.com', '19.995544', '73.733187', '2018-07-29 18:30:00'),
(229, '3S', 'sales', 'Ghatge ', 'Maharashtra', 'Ratnagiri', 'West1 ', 'R.S./GatNo.128/1/A/1,HatkhambaTitha,?GaneshNagar,Hatkhamba,Ratnagiri,Maharashtra,Pin-415619', '8380813000', 'sales.ratnagiri@ghatgetrucking.com', 'Mr. Krishnaraj Desai ', '83089 81600', 'krishnaraj.desai@ghatgetrucking.com', 'Mr. Ranjit Vibhute', '83800 94083', 'service.ratnagiri@ghatgetrucking.com', '17.01726', '73.40536', '2018-07-29 18:30:00'),
(230, '3S', 'sales', 'Provincial', 'Maharashtra', 'Dhule', 'West1 ', 'Surveyno.409/1A/1,Agra-MumbaiHighway(NH3),InfrontofMasjidArafat,NearVadjaiRoadFlyover,Dhule,Maharashtra,Pin?424001', '', '', 'Mr. Anil Kumar', '8380075842', 'anil.kumar@provincialtrucking.in', 'Mr. Jagdish Shinde', '8669655971', 'service.dhule@provincialtrucking.in', '20.88536', '74.79509', '2018-07-29 18:30:00'),
(231, '3S', 'sales', 'Provincial', 'Maharashtra', 'Nagpur', 'West1 ', 'ProvincialTruckingPvt.Ltd.,21KMMILESTONE,NEARTOLLBOOTH,AMRAVATIROAD(NH6),GONDKHAIRINAGPUR440023', '071186 65666', '', 'Mr. Tejendra Chawada', '9850489959', 'tejendra@provincialtrucking.in', 'Mr. Harshal Mankar', '8380055466', 'service.nagpur@provincialtrucking.in', '21.137896', '78.899969', '2018-07-29 18:30:00'),
(232, '3S', 'sales', 'Provincial', 'Maharashtra', 'Nanded', 'West1 ', 'ProvincialTruckingPvt.Ltd.,NearBhokarPhata,NandedNagpurRoadJambrun,TAL-Ardhapur,Nanded-431745,Maharashtra', '083800 46404', '', 'Mr. Anil Kumar', '8380075842', 'anil.kumar@kaletrucking.com', 'Mr. Sainath Yadav', '8380046402', 'service.nanded@provincialtrucking.in', '19.25547', '77.363199', '2018-07-29 18:30:00'),
(233, '3S', 'sales', 'Provincial', 'Maharashtra', 'Chandrapur', 'West1 ', 'khno.45/1,Mouza-Lakhampur,PSK16,Chandrapur-Nagpurroad,Chandrapur-442406', '083800 46412', '', 'Mr. Tejendra Chawada', '9850489959', 'tejendra@provincialtrucking.in', 'Mr. Milesh Yerewar', '8380046431', 'service.chanda@Provincialtrucking.in', '19.99008', '79.26758', '2018-07-29 18:30:00'),
(234, '3S', 'sales', 'Satya ', 'Chhattisgarh', 'Raipur', 'West1 ', 'SatyaTruckingPvt.Ltd.,NewTCIFreight,G.E.Road,TatibandhRaipur(C.G)-492099', '', '', 'Mr. Paritosh Tiwari', '7869919585', '', 'Mr. Fuleshwar Nagpure', '8120601234', '', '21.255614', '81.555282', '2018-07-29 18:30:00'),
(235, '3S', 'sales', 'Satya ', 'Chhattisgarh', 'Korba', 'West1 ', 'SatyaTruckingPvt.Ltd.ChampaRoad,NearUrgaPoliceChowki,UrgaKorba-495674(C.G)', '', '', 'Mr. Paritosh Tiwari', '7869919585', '', 'Mr. Mohd. Nayoom Ansari', '8120801234', '', '22.275248', '82.726622', '2018-07-29 18:30:00'),
(236, '3S', 'sales', 'Satya ', 'Chhattisgarh', 'Bilaspur', 'West1 ', 'Plot-52,Industrialarea-sirgitti,Bilaspur,Pin-495001,Chhattisgarh', '', '', 'Kailash Bisane', '7611127454', 'kailash.bisane@gmail.com', '', '', '', '22.045761', '82.128743', '2018-07-29 18:30:00'),
(237, '3S', 'sales', 'Satya ', 'Chhattisgarh', 'Raigarh', 'West1 ', 'SatyaTruckingPvtLtd.,Gerwani,Raigarh-496001Chattisgarh', '', '', '?Mr. Nagendra Dhanank', '94791 26699', '', 'Mr. Surendra Patel', '81209 01234', '', '22.269164', '83.202408', '2018-07-29 18:30:00'),
(238, '3S', 'sales', 'Wasan ', 'Maharashtra', 'Panvel', 'West1 ', 'PlotNo.66,VillageKolkhe,PalashpaPhata,MumbaiPuneNationalHighway-4,TalukaPanvelDistrict:Raigarh-410206', '02143 220 101', '', 'Mr. Prasad Vaidya', '9167710913', 'prasad.vaidya@wasantrucking.com', 'Mr. Prashant Shetty', '9167790678', 'prashant.shetty@wasantrucking.com', '19.443641', '72.880198', '2018-07-29 18:30:00'),
(239, '3S', 'sales', 'Wasan ', 'Maharashtra', 'Vasai', 'West1 ', 'AppleIndustrialHUB,Surveyno:71&72,VillagePelhar,Vasai(E),Vasai-401208', '0250 6636900', '', 'Mr. Turshar Shah', '9167670953', 'trushar.shah@wasantrucking.com', 'Mr. Ajay Salvi', '9167670952', 'ajay.salvi@wasantrucking.com', '19.2638', '72.5249', '2018-07-29 18:30:00'),
(240, '3S', 'sales', 'Frontier ', 'Madhya Pradesh', 'Jabalpur', 'West2', 'FrontierTrucking,66/2,NH7,NagpurRoad,Village-Manegoan,Jabalpur-482051', '', '', 'Mr.Sunil Gururani', '7771003203', 'sales@frontier-trucking.com', 'Mr. Lakhan Singh Lodhi', '7771003212', 'service.jabalpur@frontier-trucking.com', '23.0712669', '79.9126714', '2018-07-29 18:30:00'),
(241, '3S', 'sales', 'Frontier ', 'Madhya Pradesh', 'Satna', 'West2', 'PlotNo.16,GramGada,TehsilRampurBaghelan,RewaRoad,Satna-485001', '', '', 'Mr. Prabhakar Singh Baghel', '    77710 03215', 'sales@frontier-trucking.com', 'Mr. Shiv Kumar Tiwari', '77710 03225', 'service.satna@frontier-trucking.com', '24.5551135', '80.946246', '2018-07-29 18:30:00'),
(242, '3S', 'sales', 'Kasliwal ', 'Madhya Pradesh', 'Indore', 'West2', 'SurveyNo-309/4,310/4,BypassRoad,GramKhajarana,City:Indore,PinCode:452001,State:MadhyaPradesh', '', '', 'Mr. Tunu Bhaskar', '9630096358', 'sales.indore@gmail.com', 'Mr.Vimal Patidar', '9630096337', 'service.indore@kasliwaltrucking.com', '22.739127', '75.934903', '2018-07-29 18:30:00'),
(243, '3S', 'sales', 'Kasliwal ', 'Madhya Pradesh', 'Bhopal', 'West2', 'KasliwalTruckingPrivateLimited,Village-Rapadiya,NewBypass,Beside-IndianOilPetrolPump,Bhopal:462021,MadhyaPradesh.', '', '', 'Mr. Vinod Shukla', '9826567419', 'bplkasliwaltrucking@gmail.com', 'Mr. Vinod Shukla', '9826567419', 'bplkasliwaltrucking@gmail.com', '23.92053', '77.301541', '2018-07-29 18:30:00'),
(244, '3S', 'sales', 'Kataria ', 'Gujarat', 'Ahmedabad', 'West2', 'Plotno.103/B,ChacharWadiVasna,Opp.ZydusCadila,Sarkhej-Bavlaroad,Taluka?Sanand,Dist.?Ahmedabad,PinCodeNo.?382213', '', '', 'Mr.Praveen Parmar', '8347244400', 'pravin.parmar@katariatrucking.net', 'Mr.Bhautik Pancholi', '99244 45359', 'wm.ahmedabad@katariatrucking.net', '22.897238', '72.419493', '2018-07-29 18:30:00'),
(245, '3S', 'sales', 'Kataria ', 'Gujarat', 'Surat', 'West2', 'Blockno.165.Village.Kosmadi.NH.NO.8.OPP.KathodraPatiya.Near.KrishnaHotel.Taluka.Kamrej.Dist.Surat.Pinno.394326', '', '', 'Mr. Rajesh Salunke', '73592 11165', 'rajesh.salunke@katariatrucking.net', 'Mr. Shaktisinh Rana', '72111 03304', 'wm.baroda@katariatrucking.net', '21.224442', '72.969282', '2018-07-29 18:30:00'),
(246, '3S', 'sales', 'Kataria ', 'Gujarat', 'Baroda', 'West2', 'KatariaMotors(P)Ltd.,SurveyNo.437,At&Po:Padamla,NHNo.8,Ranoli,Vadodara-391350', '', '', 'Mr. Amit Mistry', '81550 27666', 'amit.mistry@katariatrucking.net', 'Mr. Amit Srivastava', '99090 46606', 'wm.surat@katariatrucking.net', '22.408936', '73.130783', '2018-07-29 18:30:00'),
(247, '3S', 'sales', 'Kataria ', 'Gujarat', 'Vapi', 'West2', 'Plotno.185,besidesuper-indiaRMC,N.H.NO?8,village?Tighra,Taluka?Pardi,Dist.?Valsad.PinCodeNo.396185GUJARAT.', '', '', 'Mr.Rajeev Kumar', '99244 46266', 'rajeevkumar@katariatrucking.net', 'Mr.Manjit Naik', '76220 09835', 'wm.vapi@katariatrucking.net', '20.442415', '72.918706', '2018-07-29 18:30:00'),
(248, '3S', 'sales', 'Sealand ', 'Gujarat', 'Gandhidham', 'West2', 'SurveyNo.142/2,NationalHighway8A,VillageMoti-Chirai,Tal:Bhachau,Dist:Kutch.Pincode370140', '', '', 'Mr. Samir Shukla', '9979066966', 'hs.rajkot@sealandtrucking.com', 'Mr. Keyur oza', '9909998459', 'wm.kutch@sealandtrucking.com', '23.22822', '70.270814', '2018-07-29 18:30:00'),
(249, '3S', 'sales', 'Sealand ', 'Gujarat', 'Rajkot', 'West2', 'SealandTrucking,VillageRamparaBeti,NH-8,Rajkot-360005', '', '', 'Mr. Samir Shukla', '9979066966', 'hs.rajkot@sealandtrucking.com', 'Mr. Shaktisinh Jadeja', '9909998480', 'wm.rajkot@sealandtrucking.com', '22.388881', '71.000098', '2018-07-29 18:30:00'),
(250, '3S', 'sales', 'Sealand ', 'Gujarat', 'Veraval', 'West2', 'Nr.Talajaroad,SurveyNo.64/2At.Ghantiya-Pranchi362268TalSutarpadaDist.Junagadh.', '', '', 'Mr Amit Dhabba', '9909998460', 'veraval@sealandtrucking.com', 'Mr. Janmohmad mandhra', '9909998474', 'service.veraval@sealandtrucking.com', '20.922827', '70.602711', '2018-07-29 18:30:00'),
(251, '3S', 'sales', 'Gujral', 'Uttar Pradesh', 'Bareilly', 'North1', '01OppositeC.B.GanjIndustrialArea,RampurRoad,VillageJauharpur,Bareilly.UttarPradesh.Pincode243502', '0581-2561888', 'info@gujraltrucking.com', 'Vishal Verma', '9105006555', 'sales.bareilly@gujraltrucking.com', 'Sachin Rastogi', '9105009911', 'parts.bareilly@gujraltrucking.com', '28.405572', '79.368254', '2018-07-29 18:30:00'),
(252, '', 'salesperson', 'Jayaraj Trucking', 'Tamilnadu', 'Virudhunagar', '', '', '9043003719', '', '', '', '', '', '', '', '9.564503', '77.949304', '2018-07-29 18:30:00'),
(253, '', 'salesperson', 'Jayaraj Trucking', 'Tamilnadu', 'Nagercoil', '', '', '9244227778', '', '', '', '', '', '', '', '8.470438', '77.459349', '2018-07-29 18:30:00'),
(254, '', 'salesperson', 'Jayaraj Trucking', 'Tamilnadu', 'Tanjore', '', '', '9244222737', '', '', '', '', '', '', '', '10.729676', '79.089356', '2018-07-29 18:30:00'),
(255, '', 'salesperson', 'Jayaraj Trucking', 'Tamilnadu', 'Thiruvarur', '', '', '9244222763', '', '', '', '', '', '', '', '10.790849', '79.600754', '2018-07-29 18:30:00'),
(256, '', 'salesperson', 'Autobahn Trucking ', 'Kerala', 'Kasarkode', '', '', '8606976111', '', '', '', '', '', '', '', '12.526147', '75.017791', '2018-07-29 18:30:00'),
(257, '', 'salesperson', 'Autobahn Trucking ', 'Kerala', 'Idukki', '', '', '8606363932', '', '', '', '', '', '', '', '9.972318', '76.687947', '2018-07-29 18:30:00'),
(258, '', 'salesperson', 'Autobahn Trucking ', 'Kerala', 'Pathanamthitta', '', '', '8606976198', '', '', '', '', '', '', '', '9.304745', '76.781893', '2018-07-29 18:30:00'),
(259, '', 'salesperson', 'Trident Trucking', 'Karnataka', 'Kolar', '', '', '7353762532', '', '', '', '', '', '', '', '13.127246', '78.136884', '2018-07-29 18:30:00'),
(260, '', 'salesperson', 'Trident Trucking', 'Karnataka', 'Mysore', '', '', '9743786744', '', '', '', '', '', '', '', '12.298218', '76.637757', '2018-07-29 18:30:00'),
(261, '', 'salesperson', 'Trident Trucking', 'Karnataka', 'Kasargod', '', '', '7353753012', '', '', '', '', '', '', '', '12.527815', '75.018611', '2018-07-29 18:30:00'),
(262, '', 'salesperson', 'Trident Trucking', 'Karnataka', 'Chikmangalur', '', '', '9886580489', '', '', '', '', '', '', '', '13.339756', '75.811522', '2018-07-29 18:30:00'),
(263, '', 'salesperson', 'Varun Trucking', 'Andhra Pradesh', 'Srikakulam', '', '', '9966177422', '', '', '', '', '', '', '', '18.334667', '83.938869', '2018-07-29 18:30:00'),
(264, '', 'salesperson', 'Varun Trucking', 'Andhra Pradesh', 'West Godavari', '', '', '8297036444', '', '', '', '', '', '', '', '16.54719', '81.711067', '2018-07-29 18:30:00'),
(265, '', 'salesperson', 'Varun Trucking', 'Andhra Pradesh', 'Guntur', '', '', '8297382444', '', '', '', '', '', '', '', '16.259008', '80.654999', '2018-07-29 18:30:00'),
(266, '', 'salesperson', 'Varun Trucking', 'Andhra Pradesh', 'Prakasam', '', '', '8297157444', '', '', '', '', '', '', '', '15.570059', '80.038451', '2018-07-29 18:30:00'),
(267, '', 'salesperson', 'Varun Trucking', 'Andhra Pradesh', 'Kadapa', '', '', '8297272444', '', '', '', '', '', '', '', '14.443725', '78.804629', '2018-07-29 18:30:00'),
(268, '', 'salesperson', 'Sri Harsha Trucking ', 'Telangana', 'Kodada,Miryalaguda', '', '', '8008040761', '', '', '', '', '', '', '', '16.878365', '79.569144', '2018-07-29 18:30:00'),
(269, '', 'salesperson', 'Sri Harsha Trucking ', 'Telangana', 'Khammam', '', '', '9100216667', '', '', '', '', '', '', '', '17.259914', '80.152734', '2018-07-29 18:30:00'),
(270, '', 'salesperson', 'Sri Harsha Trucking ', 'Telangana', 'Nalgonda,Suryapet', '', '', '9100101346', '', '', '', '', '', '', '', '17.166165', '79.606853', '2018-07-29 18:30:00'),
(271, '', 'salesperson', 'Sri Harsha Trucking ', 'Andhra Pradesh', 'Tadipatri', '', '', '8978380429', '', '', '', '', '', '', '', '14.910989', '77.9927', '2018-07-29 18:30:00'),
(272, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Bellary', '', '', '7022025522', '', '', '', '', '', '', '', '15.147746', '76.899301', '2018-07-29 18:30:00'),
(273, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Koppal', '', '', '8792564156', '', '', '', '', '', '', '', '15.348555', '76.193164', '2018-07-29 18:30:00'),
(274, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Yadagir', '', '', '7022279084', '', '', '', '', '', '', '', '16.748942', '77.130777', '2018-07-29 18:30:00'),
(275, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Bijapur', '', '', '7829677709', '', '', '', '', '', '', '', '16.814046', '75.716768', '2018-07-29 18:30:00'),
(276, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Haveri & Gadag', '', '', '7760964702', '', '', '', '', '', '', '', '14.816865', '75.37733', '2018-07-29 18:30:00'),
(277, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Dharwad', '', '', '7760964703', '', '', '', '', '', '', '', '15.401128', '75.075158', '2018-07-29 18:30:00'),
(278, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Davangere', '', '', '7338552086', '', '', '', '', '', '', '', '14.478916, ', '75.906967', '2018-07-29 18:30:00'),
(279, '', 'salesperson', 'RNS Trucking', 'Karnataka', 'Bailahongal', '', '', '9900032669', '', '', '', '', '', '', '', '15.803421', '74.839554', '2018-07-29 18:30:00'),
(280, '', 'salesperson', 'Prabal Trucking', 'Tamilnadu', 'Mettupalayam', '', '', '8489901906', '', '', '', '', '', '', '', '11.293722', '76.937543', '2018-07-29 18:30:00'),
(281, '', 'salesperson', 'Prabal Trucking', 'Tamilnadu', 'Tirupur', '', '', '8489901975', '', '', '', '', '', '', '', '11.068184', '77.338964', '2018-07-29 18:30:00'),
(282, '', 'salesperson', 'Prabal Trucking', 'Tamilnadu', 'Pollachi', '', '', '8489906252', '', '', '', '', '', '', '', '10.659988', '77.024682', '2018-07-29 18:30:00'),
(283, '', 'salesperson', 'Provincial Trucking', 'Maharashtra', 'Khamgaon', '', '', '8380055463', '', '', '', '', '', '', '', '20.56635', '76.178625', '2018-07-29 18:30:00'),
(284, '', 'salesperson', 'Provincial Trucking', 'Maharashtra', 'Jalgaon', '', '', '9146197563', '', '', '', '', '', '', '', '20.990893', '75.558976', '2018-07-29 18:30:00'),
(285, '', 'salesperson', 'Provincial Trucking', 'Maharashtra', 'Akola', '', '', '7447499527', '', '', '', '', '', '', '', '20.721524', '77.003506', '2018-07-29 18:30:00'),
(286, '', 'salesperson', 'Frontier Trucking', 'Madhya Pradesh', 'Katni Mandla', '', '', '7771003205', '', '', '', '', '', '', '', '23.83093', '80.407205', '2018-07-29 18:30:00'),
(287, '', 'salesperson', 'Frontier Trucking', 'Madhya Pradesh', 'Sagar Damoh Deori', '', '', '7771003234', '', '', '', '', '', '', '', '22.940596', '79.140219', '2018-07-29 18:30:00'),
(288, '', 'salesperson', 'Frontier Trucking', 'Madhya Pradesh', 'Sagar Damoh Beena', '', '', '7771003219', '', '', '', '', '', '', '', '23.36771', '79.073862', '2018-07-29 18:30:00'),
(289, '', 'salesperson', 'Frontier Trucking', 'Madhya Pradesh', 'Seoni Balaghat Chhindwara', '', '', '7771003236', '', '', '', '', '', '', '', '22.063962', '78.911304', '2018-07-29 18:30:00'),
(290, '', 'salesperson', 'Frontier Trucking', 'Madhya Pradesh', 'Shahdol Umariya, Anuppur', '', '', '7771003237', '', '', '', '', '', '', '', '23.11318', '81.693401', '2018-07-29 18:30:00'),
(291, '', 'salesperson', 'Satya Trucking', 'Chhattisgarh', 'Ambikapur', '', '', '7611127455', '', '', '', '', '', '', '', '23.158991', '83.200556', '2018-07-29 18:30:00'),
(292, '', 'salesperson', 'Globe Trucking', 'Punjab', 'Amritsar', '', '', '8725044331', '', '', '', '', '', '', '', '31.634756', '74.854073', '2018-07-29 18:30:00'),
(293, '', 'salesperson', 'Globe Trucking', 'Punjab', 'Moga', '', '', '8437055834', '', '', '', '', '', '', '', '31.473403', '74.930238', '2018-07-29 18:30:00'),
(294, '', 'salesperson', 'Globe Trucking', 'Punjab', 'Sangrur', '', '', '8437012510', '', '', '', '', '', '', '', '30.247373', '75.838802', '2018-07-29 18:30:00'),
(295, '', 'salesperson', 'Globe Trucking', 'Punjab', 'Muktsar', '', '', '8725055830', '', '', '', '', '', '', '', '30.470839', '74.521938', '2018-07-29 18:30:00'),
(296, '', 'salesperson', 'Globe Trucking', 'Punjab', 'Fazilka', '', '', '8437012505', '', '', '', '', '', '', '', '30.380397', '74.047616', '2018-07-29 18:30:00'),
(297, '', 'salesperson', 'Globe Trucking', 'Punjab', 'Chandigarh', '', '', '8725017623', '', '', '', '', '', '', '', '31.134514', '76.115926', '2018-07-29 18:30:00'),
(298, '', 'salesperson', 'Marwar Trucking', 'Rajasthan', 'Nagaur', '', '', '7728888115', '', '', '', '', '', '', '', '27.226328', '73.701997', '2018-07-29 18:30:00'),
(299, '', 'salesperson', 'Marwar Trucking', 'Rajasthan', 'Barmer', '', '', '7728888107', '', '', '', '', '', '', '', '25.768409', '71.423343', '2018-07-29 18:30:00'),
(300, '', 'salesperson', 'Marwar Trucking', 'Rajasthan', 'Jalore', '', '', '7728888106', '', '', '', '', '', '', '', '25.329497', '72.631649', '2018-07-29 18:30:00'),
(301, '', 'salesperson', 'Marwar Trucking', 'Rajasthan', 'Sumerpur', '', '', '7728888118', '', '', '', '', '', '', '', '25.150962', '73.071344', '2018-07-29 18:30:00'),
(302, '', 'salesperson', 'Marwar Trucking', 'Rajasthan', 'Sirganganagar', '', '', '7023003106', '', '', '', '', '', '', '', '29.897658', '73.896104', '2018-07-29 18:30:00'),
(303, '', 'salesperson', 'NR Trucking', 'West Bengal', 'North 24 Parganas', '', '', '7439019582', '', '', '', '', '', '', '', '22.73101', '88.485336', '2018-07-29 18:30:00');
INSERT INTO `tbl_stores` (`sd_id`, `product_type`, `store_type`, `store_name`, `state`, `city`, `region`, `address`, `phone`, `Email`, `sales_person`, `sales_person_contact`, `sales_person_email`, `service_person`, `service_contact_person`, `service_person_email`, `latitude`, `longitude`, `cdate`) VALUES
(304, '', 'salesperson', 'NR Trucking', 'West Bengal', 'Vardhman', '', '', '7439019561', '', '', '', '', '', '', '', '22.427137', '87.320412', '2018-07-29 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_application`
--

CREATE TABLE `tbl_sub_application` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_application`
--

INSERT INTO `tbl_sub_application` (`id`, `app_id`, `title`, `description`, `short_description`, `image`, `thumbnail`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Fruits', 'Fruits are perishable products..................', 'Fruits are perishable products..................', 'main_1533193640.jpg', 'thumb_1533193640.jpg', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-09 10:51:14', '2018-08-02 07:07:20', 'admin', 'admin'),
(2, 1, 'Vegetables', 'Vegetables', 'Vegetables - Perishable goods .....', 'main_1531211103.jpg', 'thumb_1531211103.jpg', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-10 08:18:40', '2018-07-17 06:25:08', 'admin', 'admin'),
(3, 1, 'Agriculture', '', '', '', '', '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-10 09:10:51', NULL, 'admin', NULL),
(5, 3, 'Livestock transportation', '', 'Livestock transportation', 'main_1534223729.jpg', 'thumb_1534223729.jpg', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-25 10:59:02', '2018-08-13 23:45:29', 'admin', 'admin'),
(6, 3, 'Egg transportation', '', 'Egg transportation', 'main_1534223715.jpg', 'thumb_1534223715.jpg', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-25 10:59:27', '2018-08-13 23:45:14', 'admin', 'admin'),
(7, 4, 'Rigids (MDT)', '', 'Collection centres to chilling/processing plant – Rigids (MDT)', 'main_1534084622.jpg', 'thumb_1534084622.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:02:47', '2018-08-12 09:07:02', 'admin', 'admin'),
(8, 4, 'Tanker', '', 'Chilling/processing plant to processing cum batching centre – Tanker', 'main_1534084615.jpg', 'thumb_1534084615.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:03:08', '2018-08-12 09:06:55', 'admin', 'admin'),
(9, 4, 'Reefer', '', 'Processing cum batching centre to Distribution units – Reefer', 'main_1534084607.jpg', 'thumb_1534084607.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:03:29', '2018-08-12 09:06:47', 'admin', 'admin'),
(10, 4, 'Pallets', '', 'Distribution units to retail outlets – Pallets', 'main_1534084605.jpg', 'thumb_1534084605.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:03:52', '2018-08-12 09:06:45', 'admin', 'admin'),
(11, 5, 'Petroleum', '', 'Petroleum', 'main_1534084569.jpg', 'thumb_1534084569.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:10:55', '2018-08-12 09:06:09', 'admin', 'admin'),
(12, 5, 'LPG/LNG/CNG', '', 'LPG/LNG/CNG', 'main_1534084561.jpg', 'thumb_1534084561.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:11:19', '2018-08-12 09:06:01', 'admin', 'admin'),
(13, 5, 'Chemical', '', 'Chemical', 'main_1534084505.jpg', 'thumb_1534084505.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:11:40', '2018-08-12 09:05:05', 'admin', 'admin'),
(14, 5, 'Edible Oil', '', 'Edible Oil', 'main_1534084497.jpg', 'thumb_1534084497.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:11:53', '2018-08-12 09:04:57', 'admin', 'admin'),
(15, 5, 'Bitumen', '', 'Bitumen', 'main_1534084490.jpg', 'thumb_1534084490.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:12:09', '2018-08-12 09:04:50', 'admin', 'admin'),
(16, 5, 'Water', '', 'Water', 'main_1534084483.jpg', 'thumb_1534084483.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:12:26', '2018-08-12 09:04:43', 'admin', 'admin'),
(17, 6, 'PUF container', '', 'Fisheries to processing unit– PUF container', 'main_1534084351.jpg', 'thumb_1534084351.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:26:19', '2018-08-12 09:02:31', 'admin', 'admin'),
(18, 6, 'PUF container/Open truck', '', 'PUF container/Open truck', 'main_1534084346.jpg', 'thumb_1534084346.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:26:35', '2018-08-12 09:02:26', 'admin', 'admin'),
(19, 7, 'Warehouse', '', 'Warehouse to Warehouse', 'main_1534084317.jpg', 'thumb_1534084317.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:27:08', '2018-08-12 09:01:57', 'admin', 'admin'),
(20, 7, 'Warehouse to distribution', '', 'Warehouse to distribution centres/retail outlets', 'main_1534084312.jpg', 'thumb_1534084312.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:27:35', '2018-08-12 09:01:52', 'admin', 'admin'),
(21, 9, 'Passenger cars', '', 'Passenger cars', 'main_1532518503.jpg', 'thumb_1532518503.jpg', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 11:34:53', '2018-07-25 11:35:03', 'admin', 'admin'),
(22, 9, 'Three wheeler/Agricultural tractor carriers', '', 'Three wheeler/Agricultural tractor carriers', 'main_1532518539.jpg', 'thumb_1532518539.jpg', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 11:35:39', NULL, 'admin', NULL),
(23, 9, 'Two wheelers', '', 'Two wheelers', 'main_1534084286.jpg', 'thumb_1534084286.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:35:56', '2018-08-12 09:01:26', 'admin', 'admin'),
(24, 9, 'Commercial vehicles', '', 'Commercial vehicles', 'main_1534084283.jpg', 'thumb_1534084283.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:36:10', '2018-08-12 09:01:23', 'admin', 'admin'),
(25, 8, 'ISO container', '', 'ISO container', 'main_1534084279.jpg', 'thumb_1534084279.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 11:37:25', '2018-08-12 09:01:19', 'admin', 'admin'),
(26, 10, 'Cement bags', '', 'Cement bags', 'main_1534084219.jpg', 'thumb_1534084219.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:19:36', '2018-08-12 09:00:19', 'admin', 'admin'),
(27, 10, 'Wholesaler/Distribution to retail outlet', '', 'Wholesaler/Distribution to retail outlet', 'main_1534084211.jpg', 'thumb_1534084211.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:23:51', '2018-08-12 09:00:11', 'admin', 'admin'),
(28, 10, 'Cement bulker', '', 'Cement bulker', 'main_1534084200.jpg', 'thumb_1534084200.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:26:57', '2018-08-12 09:00:00', 'admin', 'admin'),
(29, 11, 'Processing units to cold chain warehouse/Ports', '', 'Processing units to cold chain warehouse/Ports', 'main_1534084745.jpg', 'thumb_1534084745.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:30:57', '2018-08-12 09:09:05', 'admin', 'admin'),
(30, 11, 'Cold chain warehouse to intra city retail outlets', '', 'Cold chain warehouse to intra city retail outlets', 'main_1534084733.jpg', 'thumb_1534084733.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:34:14', '2018-08-12 09:08:53', 'admin', 'admin'),
(31, 12, 'Bricks/ Hollow bricks', '', 'Bricks/ Hollow bricks', 'main_1534084127.jpg', 'thumb_1534084127.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:39:28', '2018-08-12 08:58:47', 'admin', 'admin'),
(32, 12, 'Sand/ M-sand', '', 'Sand/ M-sand', 'main_1534084119.jpg', 'thumb_1534084119.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:44:42', '2018-08-12 08:58:39', 'admin', 'admin'),
(33, 12, 'Blue metal/ Gravel', '', 'Blue metal/ Gravel', 'main_1534084100.jpg', 'thumb_1534084100.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:45:44', '2018-08-12 08:58:20', 'admin', 'admin'),
(34, 12, 'Irrigation/ Canal project', '', 'Irrigation/ Canal project', 'main_1534084093.jpg', 'thumb_1534084093.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:46:12', '2018-08-12 08:58:13', 'admin', 'admin'),
(35, 12, 'Ready mix concrete', '', 'Ready mix concrete', 'main_1534084087.jpg', 'thumb_1534084087.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 13:46:33', '2018-08-12 08:58:07', 'admin', 'admin'),
(36, 13, 'Over Burden removal', '', 'Over Burden removal', 'main_1534084052.jpg', 'thumb_1534084052.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:46:00', '2018-08-12 08:57:32', 'admin', 'admin'),
(37, 13, 'Coal mining', '', 'Pit to surface movement', 'main_1534084042.jpg', 'thumb_1534084042.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:47:10', '2018-08-12 08:57:22', 'admin', 'admin'),
(38, 13, 'Surface transportation', '', 'Surface transportation – Port/ Railway siding ? Stockyard ? Power Plant', 'main_1534084040.jpg', 'thumb_1534084040.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:47:39', '2018-08-12 08:57:20', 'admin', 'admin'),
(39, 13, 'Iron Ore mining', '', 'Iron Ore mining', 'main_1534084035.jpg', 'thumb_1534084035.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:47:56', '2018-08-12 08:57:15', 'admin', 'admin'),
(40, 13, 'Marble/Granite mining', '', 'Marble/Granite mining', 'main_1534084028.jpg', 'thumb_1534084028.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:48:14', '2018-08-12 08:57:08', 'admin', 'admin'),
(41, 13, 'Limestone', '', 'Limestone/Rock Phosphate/Bauxite mining', 'main_1534084016.jpg', 'thumb_1534084016.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:48:47', '2018-08-12 08:56:56', 'admin', 'admin'),
(42, 14, 'Bale/Yarn transportation', '', 'Bale/Yarn transportation', 'main_1534083951.jpg', 'thumb_1534083951.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:49:08', '2018-08-12 08:55:51', 'admin', 'admin'),
(43, 14, 'Knitted textile transportation', '', 'Knitted textile transportation', 'main_1534083925.jpg', 'thumb_1534083925.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:49:26', '2018-08-12 08:55:25', 'admin', 'admin'),
(44, 14, 'Wet material transportation', '', 'Wet material (Post dyeing) transportation', 'main_1534083920.jpg', 'thumb_1534083920.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:50:23', '2018-08-12 08:55:20', 'admin', 'admin'),
(45, 14, 'Garment', '', 'Garment (Final product) transportation', 'main_1534083910.jpg', 'thumb_1534083910.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 05:51:05', '2018-08-12 08:55:10', 'admin', 'admin'),
(46, 15, 'Market Load', '', 'Market Load', 'main_1534083878.jpg', 'thumb_1534083878.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:03:27', '2018-08-12 08:54:38', 'admin', 'admin'),
(47, 16, 'Coils', '', 'Coils', 'main_1534083828.jpg', 'thumb_1534083828.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:09:06', '2018-08-12 08:53:48', 'admin', 'admin'),
(48, 16, 'Plates/Pipes/Rods', '', 'Plates/Pipes/Rods', 'main_1534083814.jpg', 'thumb_1534083814.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:09:29', '2018-08-12 08:53:34', 'admin', 'admin'),
(49, 16, 'Auto ancillaries', '', 'Auto ancillaries', 'main_1534083856.jpg', 'thumb_1534083856.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:09:44', '2018-08-12 08:54:16', 'admin', 'admin'),
(50, 16, 'Tyres/ Lubes/ Paint', '', 'Tyres/ Lubes/ Paint', 'main_1534083788.jpg', 'thumb_1534083788.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:10:08', '2018-08-12 08:53:08', 'admin', 'admin'),
(51, 17, 'Fruits/ Vegetables', '', 'Fruits/ Vegetables', 'main_1534083735.jpg', 'thumb_1534083735.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:15:26', '2018-08-12 08:52:15', 'admin', 'admin'),
(52, 17, 'Food grains', '', 'Food grains', 'main_1534083762.jpg', 'thumb_1534083762.jpg', '', '', '', '', '157.33.161.203', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-26 06:15:45', '2018-08-12 08:52:42', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `testimonial_for` varchar(255) NOT NULL,
  `type` varchar(75) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `is_home` int(2) NOT NULL,
  `is_dealer` enum('1','0') NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `catalogue` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `title`, `testimonial_for`, `type`, `image`, `thumbnail`, `is_home`, `is_dealer`, `youtube`, `name`, `short_description`, `description`, `designation`, `company`, `catalogue`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(10, 'BharatBenz Have Actually Bought A Revolution In India', '', 'video', 'main_1533872993.jpg', 'thumb_1533872993.jpg', 1, '0', 'https://www.youtube.com/watch?v=Xc8gdSTB1Lg', '', '', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-12 11:50:40', '2018-08-10 10:56:30', 'admin', 'admin'),
(11, 'Excellent Truck With Great Performance And Mileage', '', 'image', 'main_1533875581.jpg', 'thumb_1533875581.jpg', 0, '0', '', 'Lakshmi Naryan Jaat', 'In our milk transport business, all the vehicles leave at the same time from the dairy, but our BharatBenz vehicles reach 4 to 5 hours earlier. I can thus afford to do an extra trip in 48 to 72 hours. It is an excellent truck with great performance and mileage', '<p>In our milk transport business, all the vehicles leave at the same time from the dairy, but our BharatBenz vehicles reach 4 to 5 hours earlier. I can thus afford to do an extra trip in 48 to 72 hours. It is an excellent truck with great performance and mileage</p>\r\n', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-20 09:20:32', '2018-08-10 04:33:59', 'admin', 'admin'),
(12, 'Thankyou BharatBenz For Giving Good Vehicles In India', '', 'video', 'main_1533873300.jpg', 'thumb_1533873300.jpg', 0, '0', 'https://www.youtube.com/watch?v=_DMa_zeqEJo', 'Raghuvendra Rao – Transport Owner', '', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-26 15:31:48', '2018-08-10 10:58:46', 'admin', 'admin'),
(13, 'The Experience Of Driving A BharatBenz Vehicle Is At Another Level', '', 'video', 'main_1533873316.jpg', 'thumb_1533873316.jpg', 0, '0', 'https://www.youtube.com/watch?v=30Et94WGZP8', 'BharatBenz Customer', '', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-26 15:37:42', '2018-08-10 11:13:54', 'admin', 'admin'),
(14, 'Customer Testimonial 12', 'truck', 'video', 'main_1533109878.jpg', 'thumb_1533109878.jpg', 0, '1', 'https://www.youtube.com/watch?v=Lxsqo1kHvxk&index=14', 'Ankur Mittal – Mittal Roadlines', '', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-26 17:34:34', '2018-08-10 11:02:23', 'admin', 'admin'),
(15, 'Customer Testimonial 13', '', 'video', '', '', 0, '0', 'https://youtube.com/watch?v=Lxsqo1kHvxk', 'Customer Testimonial 13', '', '', 'Safalta Ka Safar', 'BharatBenz', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-26 17:36:04', '2018-07-26 17:37:57', 'admin', 'admin'),
(16, 'I Believe Its Better Than The SUV Which I Own', '', 'video', 'main_1533873282.jpg', 'thumb_1533873282.jpg', 0, '0', 'https://www.youtube.com/watch?v=NjYPs2MVOKw', 'Shanwaj Alam – Transport Business', '', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-26 17:36:59', '2018-08-10 10:48:41', 'admin', 'admin'),
(17, 'Finance & Insurance', 'bus', 'image', 'main_1533032693.jpg', 'thumb_1533032693.jpg', 0, '0', '', 'test', 'BharatBenz Financial is a partner who will be with you throughout your lifetime of your vehicle and beyond.', '<p>BharatBenz Financial is a partner who will be with you throughout your lifetime of your vehicle and beyond.</p>\r\n', 'ff', 'ff', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-31 10:24:53', NULL, 'admin', NULL),
(18, 'Success Stories', 'bus', 'video', '', '', 0, '0', 'https://www.youtube.com/watch?v=X-vfFovN5Dw', 'stet', 'Rajkanwar Singh shares his experience with BharatBenz Tripper 1623C', '<p>Rajkanwar Singh shares his experience with BharatBenz Tripper 1623C</p>\r\n', 'test', 'bcwebwise', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-31 10:26:06', '2018-07-31 10:35:36', 'admin', 'admin'),
(19, 'Our Drivers Are Happy To Drive BharatBenz Vehicles', '', 'image', 'main_1533873782.jpg', 'thumb_1533873782.jpg', 0, '0', '', 'Raghuveer Singh', 'In our transportation business of 55 years, BharatBenz trucks require the least maintenance. Our drivers are happy to drive the vehicles and easily travel long distance without any helpers.', '<p>In our transportation business of 55 years, BharatBenz trucks require the least maintenance. Our drivers are happy to drive the vehicles and easily travel long distance without any helpers.</p>\r\n', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-08-10 04:03:02', '2018-08-10 04:28:43', 'admin', 'admin'),
(20, 'BharatBenz Trucks Are The Most Comfortable to Drive', '', 'image', 'main_1533875425.jpg', 'thumb_1533875425.jpg', 0, '0', '', 'Gurdev Singh - Dal Haldi Truck Owners’ association', 'BharatBenz trucks are the most comfortable. Recently, I was about to change the driver of my 14-wheeler BharatBenz truck. But he said he wants to drive a BharatBenz vehicle only and asked me to give another truck to the other driver.', '<p>BharatBenz trucks are the most comfortable. Recently, I was about to change the driver of my 14-wheeler BharatBenz truck. But he said he wants to drive a BharatBenz vehicle only and asked me to give another truck to the other driver.</p>\r\n', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-08-10 04:30:25', '2018-08-10 04:41:21', 'admin', 'admin'),
(21, 'Good Fuel Average And Excellent Turn Around Time.', '', 'image', 'main_1533875496.jpg', 'thumb_1533875496.jpg', 0, '0', '', 'Vijay Kumar - Sri Mallikarjun Transport', 'The vehicle maintenance costs and spare parts costs are much lower as compared to other trucks. These trucks have a good fuel average and excellent turn around time.', '<p>The vehicle maintenance costs and spare parts costs are much lower as compared to other trucks. These trucks have a good fuel average and excellent turn around time.</p>\r\n', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 04:31:36', '2018-08-10 11:13:03', 'admin', 'admin'),
(22, 'Good Fuel Efficiency And Luxurious Comfort For Drivers', '', 'image', 'main_1533875772.jpg', 'thumb_1533875772.jpg', 0, '0', '', 'Velu -Sri Velmurugan Arul Transport', 'I have been running my business from the past 30 years. From the time I bought BharatBenz trucks, it has been flourishing. These trucks provide good fuel efficiency and luxurious comfort for drivers.', '<p>I have been running my business from the past 30 years. From the time I bought BharatBenz trucks, it has been flourishing. These trucks provide good fuel efficiency and luxurious comfort for drivers.</p>\r\n', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-08-10 04:36:12', NULL, 'admin', NULL),
(23, 'BharatBenz Vehicle Is Very Strong With A Good Pickup', '', 'image', 'main_1533875841.jpg', 'thumb_1533875841.jpg', 0, '0', '', 'Murarilal Saini - Vinayak Transport', 'The vehicle is very strong with a good pickup. It runs without any stoppage and requires low maintenance. Even getting its servicing done is easy.', '<p>The vehicle is very strong with a good pickup. It runs without any stoppage and requires low maintenance. Even getting its servicing done is easy.</p>\r\n', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-08-10 04:37:21', NULL, 'admin', NULL),
(24, 'Because Of The Comfort Given By BharatBenz All My Drivers Are Happy', '', 'video', 'main_1533919037.jpg', 'thumb_1533919037.jpg', 0, '0', 'https://www.youtube.com/watch?v=Lxsqo1kHvxk', 'Ankur Mittal – Mittal Roadlines', '', '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-10 16:37:17', '2018-08-10 11:11:19', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_features`
--

CREATE TABLE `tbl_truck_features` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_features`
--

INSERT INTO `tbl_truck_features` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Globally Proven Aggregates', 'All aggregates are designed to be highly durable. This ensures longer and hassle-free productive life of the vehicle and peace of mind for you.', 'main_1534167557.jpg', 'thumb_1534167557.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 05:05:59', '2018-08-13 08:09:17', 'admin', 'admin'),
(2, 1, 'Sturdy Suspension', 'The heavy duty bogie suspension in 25 & 31 tonne BharatBenz Tippers and semi-elliptical suspension in 16-tonne improve stability and load carrying ability of the vehicle, thereby ensuring that these trucks operate even in the toughest conditions.', 'main_1533631970.jpg', 'thumb_1533631970.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 05:07:32', '2018-08-13 08:09:40', 'admin', 'admin'),
(3, 1, 'Robust Chassis', 'The heavy-duty steel frame of the BharatBenz Tippers provide greater chassis stiffness which improves its load bearing, torsional and bending abilities.', 'main_1532511920.jpg', 'thumb_1532511920.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:21:13', '2018-07-25 09:45:20', 'admin', 'admin'),
(4, 1, 'Bigger & Thicker Gears', 'The braking system of the BharatBenz Tippers features a wider and thicker brake lining, which ensures the braking response is quick and efficient.', 'main_1533642102.jpg', 'thumb_1533642102.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:21:51', '2018-08-07 11:41:42', 'admin', 'admin'),
(5, 4, 'Globally Proven Aggregates', 'All the aggregates used to build the BharatBenz Tractors are designed for high durability to ensure a longer and hassle-free productive life of the truck.', 'main_1532506286.jpg', 'thumb_1532506286.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:46:22', '2018-07-25 08:11:26', 'admin', 'admin'),
(6, 4, 'Sturdy Suspension', 'BharatBenz tractors are fitted with parabolic suspensions to improve drive quality and reduce driver fatigue.', 'main_1532506349.jpg', 'thumb_1532506349.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:46:56', '2018-07-25 08:12:29', 'admin', 'admin'),
(7, 4, 'Durable Chassis', 'The robust and durable frame of the BharatBenz Tractors is shot-blasted and powder coated to increase longevity.', 'main_1532506398.jpg', 'thumb_1532506398.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:47:28', '2018-07-25 08:13:18', 'admin', 'admin'),
(8, 4, 'Bigger & Thicker Gears', 'The BharatBenz Tractor is equipped with a strong and durable gearbox with a high centre distance for bigger and stronger gears.', 'main_1532506456.jpg', 'thumb_1532506456.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:48:16', '2018-07-25 08:14:16', 'admin', 'admin'),
(9, 2, 'Unitized Pump', 'The BharatBenz Medium-Duty Truck engines are equipped with 6 independent unitized injection pumps for enhanced lubrication and durability.', 'main_1531677536.jpg', 'thumb_1531677536.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36', '1', '0', '2018-07-15 17:58:56', NULL, 'admin', NULL),
(10, 2, 'E-viscous Fan', 'The e-viscous fan for engine cooling in BharatBenz MDTs maintains optimum engine temperature to achieve the best fuel efficiency.', 'main_1533668424.png', 'thumb_1533668424.png', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:59:29', '2018-08-13 08:17:32', 'admin', 'admin'),
(11, 3, 'Globally Proven Aggregates', 'All the aggregates used to power the BharatBenz Haulage are designed to be highly durable, ensuring a longer and hassle-free productive life.', 'main_1533630774.jpg', 'thumb_1533630774.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 07:35:46', '2018-08-07 08:32:54', 'admin', 'admin'),
(12, 3, 'Sturdy Suspension', 'The superior parabolic suspension of BharatBenz Haulage Trucks ensure better traction and minimal slippage.', 'main_1532505710.jpg', 'thumb_1532505710.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '0', '1', '2018-07-25 07:36:23', '2018-08-08 04:03:21', 'admin', 'admin'),
(13, 3, 'Heavier & Durable Chassis', 'The chassis of the BharatBenz Haulage Trucks is shot-blasted and powder coated to make it more robust for enhanced performance.', 'main_1532505734.jpg', 'thumb_1532505734.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '0', '1', '2018-07-25 07:37:05', '2018-08-08 04:04:25', 'admin', 'admin'),
(14, 3, 'Bigger & Thicker Gears', 'BharatBenz Haulage Trucks feature a sturdy gear box making for bigger and stronger gears, enabling longer gear life.', 'main_1533630598.jpg', 'thumb_1533630598.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '0', '1', '2018-07-25 07:37:55', '2018-08-08 04:01:47', 'admin', 'admin'),
(15, 2, 'High-Powered Engine', 'The BharatBenz Medium-Duty Truck engine is one of the most powerful in its class, directly resulting in faster turnarounds.', 'main_1533825297.jpg', 'thumb_1533825297.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 08:50:19', '2018-08-09 14:34:57', 'admin', 'admin'),
(16, 2, 'Flat Peak Torque', 'The peak torque of BharatBenz MDTs is made available over a wide range of engine speeds while high torque is available even at lower speeds, improving its drivability and fuel efficiency.', 'main_1533841883.jpg', 'thumb_1533841883.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '0', '1', '2018-07-25 08:50:51', '2018-08-09 19:11:23', 'admin', 'admin'),
(17, 3, 'Unitized Pumps', 'The six individual fuel injection pumps in BharatBenz Haulage Trucks ensure better combustion of fuel through fine atomized spray, thereby delivering unmatched fuel efficiency.', 'main_1534163551.jpg', 'thumb_1534163551.jpg', NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-13 12:32:31', '2018-08-13 09:03:38', 'admin', 'admin'),
(18, 3, 'E-viscous Fan', 'The BharatBenz Haulage Trucks have a high-performance engine which can be cooled as and when required by the electronic control unit (ECU) with the help of the smart fan which ensures unmatched cooling efficiency.', 'main_1534163589.jpg', 'thumb_1534163589.jpg', NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-13 12:33:09', '2018-08-13 09:05:16', 'admin', 'admin'),
(19, 3, 'Engine Brake', 'The constant throttle valve engine brake in BharatBenz Haulage Trucks not only saves the engine from overrunning, but also saves fuel while the truck runs with its exhaust brake activated.', 'main_1534163647.jpg', 'thumb_1534163647.jpg', NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-08-13 12:34:07', '2018-08-13 09:10:13', 'admin', 'admin'),
(20, 2, 'Unitized Pumps', 'The four individual fuel injection pumps in BharatBenz MDTs ensure better combustion of fuel through fine atomized spray, thereby delivering unmatched fuel efficiency.', 'main_1534168150.jpg', 'thumb_1534168150.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 13:49:10', NULL, 'admin', NULL),
(21, 4, 'Unitized pump', 'The six individual fuel injection pumps in BharatBenz Tractors ensure better combustion of fuel through fine atomized spray, thereby delivering unmatched fuel efficiency.', 'main_1534170052.jpg', 'thumb_1534170052.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:20:52', NULL, 'admin', NULL),
(22, 4, 'E- viscous fan', 'The BharatBenz Tractors have high performance engine which can be cooled as and when required by the electronic control unit (ECU) with the help of the smart fan which ensures unmatched cooling efficiency.', 'main_1534170108.jpg', 'thumb_1534170108.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:21:48', NULL, 'admin', NULL),
(23, 4, 'Engine brake', 'The constant throttle valve engine brake in BharatBenz Tractors not only saves the engine from overrunning, but also saves fuel while the truck runs with its exhaust brake activated.', 'main_1534170496.jpg', 'thumb_1534170496.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:22:33', '2018-08-13 08:58:16', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_features2`
--

CREATE TABLE `tbl_truck_features2` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_features2`
--

INSERT INTO `tbl_truck_features2` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'High Peak Torque', 'BharatBenz Tippers give a high peak torque even at low RPM ranges, reducing the need for frequent gear shifts.', 'main_1532512029.png', 'thumb_1532512029.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 05:20:52', '2018-07-25 09:47:09', 'admin', 'admin'),
(2, 1, 'High- Powered Engine', 'The BharatBenz Tippers are equipped with engines designed for higher efficiency and longer life. The inductive hardening at crankshaft journals, noise optimal crankcase and Electronic Control Unit enhance the reliability of the engine.', 'main_1533643255.png', 'thumb_1533643255.png', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 05:37:32', '2018-08-13 08:10:32', 'admin', 'admin'),
(3, 1, 'Superior Gradeability', 'BharatBenz Tippers have a higher power to weight ratio that enhances their gradeability, enabling easy navigation in hilly terrains.', 'main_1533642607.jpg', 'thumb_1533642607.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:24:40', '2018-08-07 11:50:07', 'admin', 'admin'),
(4, 4, 'High-powered Engine', 'The BharatBenz Tractors are equipped with engines designed for higher efficiency and longer life. The inductive hardening at crankshaft journals, noise optimal crankcase and Electronic Control Unit enhance the reliability of the engine.', 'main_1533643304.png', 'thumb_1533643304.png', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:51:00', '2018-08-13 08:53:33', 'admin', 'admin'),
(5, 4, 'High peak torque', 'With additional 40 Nm torque, the engines powering the BharatBenz Tractors ensure better pickup and smoother acceleration.  This ensures that trips are completed in lesser time resulting in more trips and more revenue.', 'main_1532507129.png', 'thumb_1532507129.png', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:51:52', '2018-08-13 08:53:46', 'admin', 'admin'),
(6, 4, 'Superior Gradeability', 'A higher power to weight ratio gives BharatBenz Tractors outstanding gradeability enabling them to easily navigate the most hostile road conditions and climb gradients even with full load.', 'main_1533642634.jpg', 'thumb_1533642634.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-15 17:52:26', '2018-08-13 08:54:02', 'admin', 'admin'),
(7, 2, 'High-Powered Engine', 'The BharatBenz Medium-Duty Trucks engines are one of the most powerful in its class, directly resulting in faster turnarounds.', 'main_1531677674.jpg', 'thumb_1531677674.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36', '1', '0', '2018-07-15 18:01:14', NULL, 'admin', NULL),
(8, 3, 'High-Powered Engine', 'The BharatBenz Haulage Trucks are equipped with engines designed for higher efficiency and longer life. The inductive hardening at crankshaft journals, noise optimal crankcase and Electronic Control Unit enhance the reliability of the engine.', 'main_1534163749.jpg', 'thumb_1534163749.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 07:39:28', '2018-08-13 07:05:49', 'admin', 'admin'),
(9, 3, 'High-Peak Torque', 'High peak torque over a wide range of RPM ensures reduced gear shifts which results in better fuel efficiency. This ensures that trips are completed in lesser time resulting in more trips and more revenue.', 'main_1534163771.jpg', 'thumb_1534163771.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 07:40:04', '2018-08-13 07:06:11', 'admin', 'admin'),
(10, 3, 'Superior Gradeability', 'A higher power to weight ratio gives BharatBenz Haulage Trucks outstanding gradeability enabling them to easily navigate the most hostile road conditions and climb gradients even with full load.', 'main_1534163795.jpg', 'thumb_1534163795.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 07:42:42', '2018-08-13 07:06:35', 'admin', 'admin'),
(11, 2, 'Superior Gradeability', 'A higher power to weight ratio gives BharatBenz MDTs outstanding gradeability enabling them to easily climb gradients even with full load.\r\nImage-  ‘914R haulage truck text’ to be replaced by ‘1014R haulage truck’.', 'main_1534168619.jpg', 'thumb_1534168619.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 08:52:15', '2018-08-13 08:26:59', 'admin', 'admin'),
(12, 2, 'Overdrive Gearbox', 'The gearboxes in the BharatBenz MDTs have a higher centre distance between the main shaft and counter shaft, allowing for bigger and stronger gears with more contact area to ensure longevity.', 'main_1533668554.png', 'thumb_1533668554.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '0', '1', '2018-07-25 08:53:41', '2018-08-07 19:02:34', 'admin', 'admin'),
(13, 2, 'Robust Chassis', 'The BharatBenz MDTs chassis frame is shot-blasted and powder-coated to increase corrosion resistance and make it long-lasting.', 'main_1533797716.png', 'thumb_1533797716.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 08:54:02', '2018-08-09 06:55:16', 'admin', 'admin'),
(14, 2, 'High Powered Engine', 'The bigger engine of 3907 CC in BharatBenz MDTs provides for longer life and lesser noise. The Electronic Control Unit with sensors makes the vehicle more responsive to all types of terrain.', 'main_1534168501.jpg', 'thumb_1534168501.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 13:55:01', NULL, 'admin', NULL),
(15, 2, 'High Peak Torque', 'In BharatBenz MDTs, peak torque is available over a wide range of engine speeds and high torque is available at lower engine speeds, thereby reducing the need of frequent gear shifts and improving fuel efficiency.', 'main_1534168577.jpg', 'thumb_1534168577.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 13:56:17', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_key_buying_factors`
--

CREATE TABLE `tbl_truck_key_buying_factors` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_key_buying_factors`
--

INSERT INTO `tbl_truck_key_buying_factors` (`id`, `title`, `short_description`, `image`, `thumbnail`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Enhanced Engine Technology', 'BharatBenz trucking technology is a benchmark for fuel-efficiency. The Selective Catalyctic Reduction (SCR) technology used in the BharatBenz Trucks not only help make its engines more fuel efficient, but also help reduce its harmful emissions, making the trucks environmentally friendly too.', 'main_1529487826.jpg', 'thumb_1529487826.jpg', '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-06-20 09:43:46', '2018-07-13 13:18:15', 'admin', 'admin'),
(2, 'Unmatched Reliability', 'BharatBenz trucking technology is a benchmark for fuel-efficiency. Additionally, the Selective Catalytic Reduction (SCR) technology used in the BharatBenz Trucks help reduce its harmful emissions, making the trucks environmentally friendly.', 'main_1533812601.jpg', 'thumb_1533812601.jpg', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-20 09:46:01', '2018-08-09 11:03:21', 'admin', 'admin'),
(3, 'Total Cost of Ownership', 'Higher service intervals and the rugged built of BharatBenz trucks ensure maximum asset utilisation while optimising the total cost of ownership. This means more uptime for your truck with fewer hassles, leading to greater profits for your business.', 'main_1534224540.jpg', 'thumb_1534224540.jpg', NULL, '', NULL, NULL, '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-25 10:27:30', '2018-08-13 23:59:00', 'admin', 'admin'),
(4, 'Safety', 'BharatBenz Trucks are designed and tested to ensure optimal performance and complete safety in the varied terrains and weather conditions without stoppage.', 'main_1534224588.jpg', 'thumb_1534224588.jpg', NULL, '', NULL, NULL, '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-25 10:28:50', '2018-08-13 23:59:48', 'admin', 'admin'),
(5, 'Technology', 'Built using superior technology, BharatBenz trucks are well-equipped with a host of advanced features that ensure durability and efficiency, thus guaranteeing fuel efficiency and a better user experience overall.', 'main_1533698896.png', 'thumb_1533698896.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 10:29:11', '2018-08-08 03:28:16', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_products`
--

CREATE TABLE `tbl_truck_products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `label1` varchar(255) NOT NULL,
  `label2` varchar(255) NOT NULL,
  `label3` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` text NOT NULL,
  `banner` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) NOT NULL,
  `broucher` varchar(255) NOT NULL,
  `broucher_image` varchar(255) NOT NULL,
  `broucher_thumbnail` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_products`
--

INSERT INTO `tbl_truck_products` (`id`, `title`, `label1`, `label2`, `label3`, `short_desc`, `description`, `category_id`, `category_type`, `image`, `thumbnail`, `banner`, `mobile_banner`, `broucher`, `broucher_image`, `broucher_thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'Tippers', 'Higher Reliability', 'Superior Performance', '', '', 'The Tipper built on the world-class Mercedes-Benz platform, gives a high peak torqueeven at a low RPM. This ensures performance on all kinds of terrains.', 8, NULL, 'main_1534173294.png', 'thumb_1534173294.png', 'thumb_banner_1533670283.jpg', 'thumb_banner_1533670283.jpg', 'tipper_90.pdf', 'main_1532622929.png', 'thumb_1532622929.png', 3, 'Looking for the best tipper trucks manufacturers in India? BharatBenz offers a range of trucks for heavy load. Explore the range of heavy trucks and tipper trucks.', '', 'Heavy Trucks, Heavy Load Trucks, Trucks for heavy load, Tipper Trucks, Tipper Manufacturers, Best tipper trucks manufacturers', 'Heavy Trucks, Heavy Load Trucks, Trucks for heavy load, Tipper Trucks-BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-19 13:25:33', '2018-08-13 09:44:54', 'admin', 'admin'),
(2, 'Medium Duty Trucks', 'Higher Fuel efficiency', 'Superior Performance', 'Matchless comfort', '', '', 8, NULL, 'main_1532604708.png', 'thumb_1532604708.png', 'thumb_banner_1533670442.jpg', 'thumb_banner_1533670442.jpg', 'mdt_72.pdf', 'main_1532622876.png', 'thumb_1532622876.png', 1, 'Looking for the best commercial transport vehicle for Indian roads? BharatBenz is one of the leading Medium-Duty Truck manufacturers in India, offering some of the best medium duty trucks and off-road trucks.', '', 'Medium Duty Trucks,Off road Truck, Commercial Transport Vehicle for Indian roads, Medium duty  truck manufacturers, Bes medium duty trucks', 'Medium Duty Trucks,Off road Truck, Commercial Transport Vehicle for Indian roads -  BharatBenz', '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-06-20 05:27:10', '2018-08-13 08:15:01', 'admin', 'admin'),
(3, 'Haulage Trucks', 'Best in Class Fuel Efficiency', 'Superior Performance', 'Low Maintenance at Low Costs', '', '', 8, NULL, 'main_1532604534.png', 'thumb_1532604534.png', 'thumb_banner_1533811278.jpg', 'thumb_banner_1533811278.jpg', 'haulage_17.pdf', 'main_1532622615.png', 'thumb_1532622615.png', 2, 'Looking for transport truck manufacturers? BharatBenz is one of the leading manufacturer of transport trucks in India. Explore the range of Haulage Trucks and Rigid Trucks for transport.', '', 'Truck for Transport, Rigid Trucks, Best Benz Truck in India, Trasport trucks manufacturers, Transport trucks in India, Best trucks in India,  Haulage Trucks', 'Haulage Trucks,Truck for Transport, Rigid Trucks, Best Benz Truck in India -  BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-20 05:30:15', '2018-08-13 09:54:24', 'admin', 'admin'),
(4, 'Tractors', 'Best in Class Fuel Efficiency', 'Superior Performance', 'Low Maintenance at Low Costs', '', '', 8, NULL, 'main_1534175900.png', 'thumb_1534175900.png', 'thumb_banner_1533811322.jpg', 'thumb_banner_1533811322.jpg', 'tractors47.pdf', 'main_1531914679.png', 'thumb_1531914679.png', 4, 'Looking for the Best Tractor Manufacturers in India? The higher uptime, superior power & gradability of the Bharatbenz heavy-duty tractor trailers make them very durable.', '', 'Village tractors, Tractors, Best Tractor Manufacturers in India, Farm tractors manufacturers, Farm tractors in India', 'Village tractors, Farm Tractors,Tractors, Best Tractor Manufacturers in India - BharatBenz', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-06-20 05:32:15', '2018-08-13 10:28:20', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_products_images`
--

CREATE TABLE `tbl_truck_products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_products_images`
--

INSERT INTO `tbl_truck_products_images` (`id`, `product_id`, `category_type`, `uploaded_image`, `image`, `thumb_image`, `insert_date`) VALUES
(9, 5, '', '1529566835.jpg', 'main_1529566835.jpg', 'thumb_1529566835.jpg', '2018-06-21 07:40:35'),
(10, 3, '', '1529567009.jpg', 'main_1529567009.jpg', 'thumb_1529567009.jpg', '2018-06-21 07:43:29'),
(11, 3, '', '1529567009.jpg', 'main_1529567009.jpg', 'thumb_1529567009.jpg', '2018-06-21 07:43:29'),
(12, 5, '', '1529567201.jpg', 'main_1529567201.jpg', 'thumb_1529567201.jpg', '2018-06-21 07:46:41'),
(13, 2, '', '11531543355.png', 'main_11531543355.png', 'thumb_11531543355.png', '2018-07-14 04:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_product_types`
--

CREATE TABLE `tbl_truck_product_types` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_product_types`
--

INSERT INTO `tbl_truck_product_types` (`id`, `title`, `product_id`, `image`, `thumbnail`, `sortorder`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, '1217C', 1, 'main_1533883866.png', 'thumb_1533883866.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-06-20 06:27:28', '2018-08-10 06:51:05', 'admin', 'admin'),
(2, 'MD 914R', 2, 'main_1532576532.png', 'thumb_1532576532.png', 7, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-06-21 11:14:32', '2018-07-26 03:42:12', 'admin', 'admin'),
(3, '2526C', 1, 'main_1531544127.png', 'thumb_1531544127.png', 0, '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-13 13:21:30', '2018-07-14 04:55:27', 'admin', 'admin'),
(4, '2523R', 3, 'main_1532576191.png', 'thumb_1532576191.png', 2, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-13 13:22:28', '2018-07-26 03:36:31', 'admin', 'admin'),
(5, '6598C', 1, 'main_1531544143.png', 'thumb_1531544143.png', 0, '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-13 13:25:25', '2018-07-14 04:55:43', 'admin', 'admin'),
(6, 'Power 914R', 2, 'main_1532576665.png', 'thumb_1532576665.png', 6, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 11:34:57', '2018-07-26 03:44:25', 'admin', 'admin'),
(7, '3128CM', 1, 'main_1531659181.png', 'thumb_1531659181.png', 0, 'Tripper, 3128CM', '', 'Tripper, 3128CM', 'Tripper - 3128CM', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '1', '0', '2018-07-15 12:53:01', NULL, 'admin', NULL),
(8, 'MD 1014R', 2, 'main_1532576513.png', 'thumb_1532576513.png', 1, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:21:12', '2018-07-26 03:41:53', 'admin', 'admin'),
(9, 'MD IN-POWER 1014R', 2, 'main_1532576716.png', 'thumb_1532576716.png', 2, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:21:42', '2018-07-26 03:45:16', 'admin', 'admin'),
(10, 'MD 1214RE', 2, 'main_1532576494.png', 'thumb_1532576494.png', 4, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:22:31', '2018-07-26 03:41:34', 'admin', 'admin'),
(11, 'MD IN-POWER 1214RE', 2, 'main_1532576693.png', 'thumb_1532576693.png', 5, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:23:03', '2018-07-26 03:44:53', 'admin', 'admin'),
(12, 'MD 1214R', 2, 'main_1532576475.png', 'thumb_1532576475.png', 3, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:23:30', '2018-07-26 03:41:15', 'admin', 'admin'),
(13, '4023T', 4, 'main_1532576816.png', 'thumb_1532576816.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:30:17', '2018-07-26 03:46:56', 'admin', 'admin'),
(14, '4928T', 4, 'main_1532576443.png', 'thumb_1532576443.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 03:31:23', '2018-07-26 03:40:43', 'admin', 'admin'),
(15, '1623C', 1, 'main_1531724863.png', 'thumb_1531724863.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 07:07:43', NULL, 'admin', NULL),
(16, '2523C', 1, 'main_1533878334.jpg', 'thumb_1533878334.jpg', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-16 07:20:29', '2018-08-10 05:18:54', 'admin', 'admin'),
(17, '2528C', 1, 'main_1532576226.png', 'thumb_1532576226.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 07:39:51', '2018-07-26 03:37:06', 'admin', 'admin'),
(18, '2528CM', 1, 'main_1534178294.png', 'thumb_1534178294.png', 0, '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-16 07:40:19', '2018-08-13 11:08:14', 'admin', 'admin'),
(19, '3128C', 1, 'main_1532576307.png', 'thumb_1532576307.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 07:41:30', '2018-07-26 03:38:27', 'admin', 'admin'),
(20, '3128CM', 1, 'main_1531726906.png', 'thumb_1531726906.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-16 07:41:46', NULL, 'admin', NULL),
(21, '1617R', 3, 'main_1532576150.png', 'thumb_1532576150.png', 1, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 08:47:07', '2018-07-26 03:35:50', 'admin', 'admin'),
(22, '3123R', 3, 'main_1532576275.png', 'thumb_1532576275.png', 3, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 08:47:30', '2018-07-26 03:37:55', 'admin', 'admin'),
(23, '3723R', 3, 'main_1534172291.png', 'thumb_1534172291.png', 4, '', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1', '1', '2018-07-16 08:47:49', '2018-08-13 09:28:11', 'admin', 'admin'),
(24, '3128CM', 1, 'main_1532576332.png', 'thumb_1532576332.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-16 10:04:30', '2018-07-26 03:38:52', 'admin', 'admin'),
(25, '111Test', 4, 'main_1533707777.png', 'thumb_1533707777.png', 0, '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-08-08 05:56:17', NULL, 'admin', NULL),
(26, 'MD 1414R', 2, 'main_1534175533.png', 'thumb_1534175533.png', 0, '', '', '', '', '157.33.204.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 15:31:53', '2018-08-13 10:22:13', 'admin', 'admin'),
(27, 'MD IN-POWER  1414R', 2, 'main_1534174383.png', 'thumb_1534174383.png', 0, '', '', '', '', '157.33.204.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 15:33:03', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_specifications`
--

CREATE TABLE `tbl_truck_specifications` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `engine_model` varchar(100) NOT NULL,
  `engine_max_power` varchar(100) NOT NULL,
  `engine_max_torque` varchar(100) NOT NULL,
  `engine_cylinders` varchar(100) NOT NULL,
  `engine_compliance` varchar(100) NOT NULL,
  `gear_box_model` varchar(100) NOT NULL,
  `gear_box_clutch_type` varchar(100) NOT NULL,
  `axle_front_model` varchar(100) NOT NULL,
  `axle_rear_model` varchar(100) NOT NULL,
  `axile_diff_ratio` varchar(100) NOT NULL,
  `dimensions_wheel_base` varchar(100) NOT NULL,
  `dimensions_length` varchar(100) NOT NULL,
  `dimensions_width` varchar(100) NOT NULL,
  `dimensions_height` varchar(100) NOT NULL,
  `dimensions_front_overhang` varchar(100) NOT NULL,
  `dimensions_rear_overhang` varchar(100) NOT NULL,
  `dimensions_min_clearance` varchar(100) NOT NULL,
  `dimensions_load_body` varchar(255) NOT NULL,
  `wt_gross_vehicle` varchar(100) NOT NULL,
  `chassis_type` varchar(100) NOT NULL,
  `chassis_depth` varchar(100) NOT NULL,
  `chassis_front` varchar(100) NOT NULL,
  `chassis_rear` varchar(100) NOT NULL,
  `chassis_anti_roll` varchar(100) NOT NULL,
  `chassis_wheel` varchar(100) NOT NULL,
  `brake_service` varchar(100) NOT NULL,
  `brake_parking` varchar(100) NOT NULL,
  `steering_type` varchar(100) NOT NULL,
  `steering_cabin` varchar(100) NOT NULL,
  `fuel_tank` varchar(100) NOT NULL,
  `ad_blue_tank` varchar(100) NOT NULL,
  `fuel_voltage` varchar(100) NOT NULL,
  `fuel_capacity` varchar(100) NOT NULL,
  `performance_max_grade` varchar(100) NOT NULL,
  `performance_max_gear` varchar(100) NOT NULL,
  `performance_min_diameter` varchar(100) NOT NULL,
  `configuration_cabin` varchar(100) NOT NULL,
  `configuration_fully_build` varchar(100) NOT NULL,
  `load_body_option` varchar(255) NOT NULL,
  `option_packs` varchar(255) NOT NULL,
  `colour_options` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_title` text NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_specifications`
--

INSERT INTO `tbl_truck_specifications` (`id`, `product_id`, `product_type_id`, `title`, `short_description`, `image`, `thumbnail`, `engine_model`, `engine_max_power`, `engine_max_torque`, `engine_cylinders`, `engine_compliance`, `gear_box_model`, `gear_box_clutch_type`, `axle_front_model`, `axle_rear_model`, `axile_diff_ratio`, `dimensions_wheel_base`, `dimensions_length`, `dimensions_width`, `dimensions_height`, `dimensions_front_overhang`, `dimensions_rear_overhang`, `dimensions_min_clearance`, `dimensions_load_body`, `wt_gross_vehicle`, `chassis_type`, `chassis_depth`, `chassis_front`, `chassis_rear`, `chassis_anti_roll`, `chassis_wheel`, `brake_service`, `brake_parking`, `steering_type`, `steering_cabin`, `fuel_tank`, `ad_blue_tank`, `fuel_voltage`, `fuel_capacity`, `performance_max_grade`, `performance_max_gear`, `performance_min_diameter`, `configuration_cabin`, `configuration_fully_build`, `load_body_option`, `option_packs`, `colour_options`, `ip`, `agent`, `meta_description`, `meta_keywords`, `meta_title`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(5, 1, 1, '1217C', NULL, 'main_1529564192.jpg', 'thumb_1529564192.jpg', '4D34i-125', '125kw(170) @2500pm', '520NM - 2000rpm', '4 Nos, 390c', 'dfs 656', 'G 85 - 6F+1 R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362 mm', 'IF 5.0 Reverse, elliot', 'AAM 10.22, Full Floating, gears', '6.33', '3160, 3760', '5435, 6060', '2225', '2500', '1275', '1000, 1025', '245', '-', '13,000 kg', 'Channel section with cross member', '228mm x 80mm x 6mm', 'Semi-elliptic leaf spring with shock absorbers', 'Semi-elliptic laminated leaf spring', 'Standard on both axles', '6.50 x 20 & 8.25 R 20 - 16 PR', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated spring brake', 'Hydraulic Power assisted', 'Day cabin, Tiltable', '200 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 75 Ah', '33.8%', '60 km/h', '12.8 m, 14.5 m', 'Cabin with chassis (3160 WB)', '', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', '', '', '1', '1', '2018-06-20 12:59:28', '2018-08-13 10:20:34', 'admin', 'admin'),
(7, 2, 2, 'Test', NULL, 'main_1530186505.jpg', 'thumb_1530186505.jpg', '4D34i-125', '125kw(170) @2500pm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '0', '0', '2018-06-21 13:12:59', '2018-07-14 08:15:13', 'admin', 'admin'),
(8, 2, 2, 'MD 914R', NULL, 'main_1531736590.jpg', 'thumb_1531736590.jpg', '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'MO36 - 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic actuated, 330 mm', 'IF 3.6, Reverse elliot', 'AAM 7.14, Fully floating, Hypoid gears', '4.56', '3760, 4250, 4800', '6985, 7585, 8195', '2210, 2210, 2210', '2420, 2420, 2420', '', '', '205, 205, 205', '5175 (17 ft.), 5785 (19 ft.), 6405 (21 ft.)', '9,600 kg', 'Channel Section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with hydraulic shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.00 x 16, 8.25 x 16 - 16 PR', 'Pneumatic, Foot operated, Dual line', 'Pneumatically operated hand control valve', 'Hydraulic power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '24.5%', '80 km/hr', '13.8 m, 15.7 m, 17.6 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck, Drop Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '0', '0', '2018-06-28 11:47:51', '2018-08-09 09:07:12', 'admin', 'admin'),
(9, 3, 4, '2523R - Specifications', NULL, 'main_1531737646.jpg', 'thumb_1531737646.jpg', 'DE175BS4', '175 kW (235 hp) @ 2200 rpm', '850 Nm @ 1200 - 1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G85-6F + 1R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 395 mm', 'IF6.6, Reverse elliot', 'IR440, Fully floating, Hypoid gears', '5.875', '5175, 6375', '9867, 11995', '2490,  2490', '2960, 2960', '1460, 1460', '2557, 3485', '264, 264', '7300 (24 ft), 9400 (31 ft)', '25,000 kg', 'Channel Section with cross members', '284mm x 70mm x 7mm', 'Parabolic leaf spring with 2 hydraulic shock absorbers', 'Balancer type Semi elliptical leaf spring', 'Standard on front axle (Optional on rear axle)', '8.25', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Sleeper cabin with Berth, Tiltable', '380 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '24%', '80 km/hr', '18.7 m 22.5 m', 'Cabin with Chassis', 'Fixed Side Deck & High Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-15 18:19:42', '2018-08-09 09:27:55', 'admin', 'admin'),
(10, 4, 13, '4023T', NULL, 'main_1531712346.png', 'thumb_1531712346.png', 'DE175BS4', '175kW (235 hp) @ 2200 rpm', '850 Nm @ 1200-1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G131 - 9F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 395mm', 'IF6.6, Reverse elliot', 'IR440, Fully floating, Single reduction hypoid drive with differential lock', '4.778', '3600', '6040', '2490', '2960', '1460', '980', '264', '-', '40200 kg', 'Channel section with cross member', '288mm x 70mm x 9mm', 'Parabolic type leaf spring with 2 hydraulic shock absorbers', 'Semi elliptic multi-leaf with auxiliary springs', 'Standard on front axle only', '8.25', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic power assisted', 'Sleeper cabin with berth, Tiltable', '290 litres+200 litres (Additional tank)', '60 litres', '24V Electrical system', '2 x 12 V, 120 Ah', '26.17%', '80 km/hr', '13.1 m', 'Comfort Pack (HVAC)', 'Comfort Pack (HVAC)', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 03:39:06', '2018-08-09 09:48:12', 'admin', 'admin'),
(11, 2, 6, 'MD IN-POWER 914R', NULL, 'main_1531733540.jpg', 'thumb_1531733540.jpg', '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'MO36- 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic actuated, 330 mm', 'IF 3.6, Reverse elliot', 'AAM 7.14, Fully floating, Hypoid gears', '4.56', '3760, 4250, 4800', '6985, 7585, 8195', '2190, 2190, 2190', '2390, 2390, 2390', '', '', '205, 205, 205', '5175 (17 ft.), 5785 (19 ft.), 6395 (21 ft.)', '10,600 kg', 'Channel Section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with hydraulic shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.75 x 17.5, & 235/75 R 17.5 - 14 PR', 'Pneumatic, Foot operated, Dual line', 'Pneumatically operated hand control valve', 'Hydraulic power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '23.5%', '80 km/hr', '13.8 m, 15.7 m, 17.6 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck, Drop Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '0', '0', '2018-07-16 03:41:31', '2018-08-09 09:08:38', 'admin', 'admin'),
(12, 2, 8, 'MD 1014R', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'MO36- 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic actuated,330 mm', 'IF 3.6, Reverse elliot', 'AAM 7.14, Full floating, Hypoid gears', '4.56', '3760, 4250, 4800', '6985, 7585, 8195', '2190, 2190, 2190', '2390, 2390, 2390', '', '', '175, 175, 175', '5175 (17 ft.), 5785 (19 ft.), 6405 (21 ft.)', '10600 kg', 'Ladder type channel section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.00 x 16, 8.25 x 16 - 16 PR & 6.75 x 17.5, 235/75 R17.5, 14PR', 'Pneumatic, Foot operated, Dual line', 'Pneumatically operated spring brake', 'Hydraulic power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '24.5%', '80 km/hr', '13.8 m, 15.7 m, 17.6 m', 'Cabin & Chassis', 'Fixed Side Deck, High Side Deck & Drop Side Deck', '', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', '', '', '1', '1', '2018-07-16 03:48:06', '2018-08-13 11:03:49', 'admin', 'admin'),
(13, 4, 14, '4928T', NULL, 'main_1531713102.png', 'thumb_1531713102.png', 'DE210BS4', '210kW (281 hp) @ 2200 rpm', '1120 Nm @ 1200-1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G131 - 9F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 430mm', 'IF6.6, Reverse elliot', 'IR390, Fully floating, Single reduction hypoid drive with differential lock', '4.778', '3975', '6865', '2490', '2975', '1460', '755', '264', '-', '49,000 kg', 'Channel section with cross member', '288mm x 70mm x 9mm', 'Parabolic leaf spring with shock absorbers', 'Inverted semi elliptic (Tandem Bogie)', 'Standard on front axle only', '8.25', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic power assisted', 'Sleeper cabin with berth, Tiltable', '290 litres+200 litres (Additional tank)', '60 litres', '24V Electrical system', '2 x 12 V, 120 Ah', '28.36%', '80 km/hr', '16.1 m', 'Comfort Pack (HVAC)', 'Comfort Pack (HVAC)', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 03:51:42', '2018-08-09 09:48:32', 'admin', 'admin'),
(14, 2, 9, 'MD IN-POWER 1014R', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'MO36- 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic actuated,330 mm', 'IF 3.6, Reverse elliot', 'AAM 7.14, Full floating, Hypoid gears', '4.56', '3760, 4250, 4800', '6985, 7585, 8195', '2190, 2190, 2190', '2390, 2390, 2390', '', '', '175, 175, 175', '5175 (17 ft.), 5785 (19 ft.), 6405 (21 ft.)', '10600 kg', 'Ladder type channel section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.75 x 17.5 & 235/75 R 17.5, 14PR', 'Pneumatic, Foot operated, Dual line', 'Pneumatically operated spring brake', 'Hydraulic power assisted', 'A/C Day cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '24.5%', '80 km/hr', '13.8 m, 15.7 m, 17.6 m', 'Cabin & Chassis', 'Fixed Side Deck, High Side Deck & Drop Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 03:53:26', '2018-08-09 09:10:12', 'admin', 'admin'),
(15, 2, 10, 'MD 1214RE', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'G85 - 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362mm', 'IF 4.5, Reverse elliot', 'AAM 9.22, Fully floating, Hypoid gears', '6.33, 6.33, 5.13, 5.13', '3760,3760, 4250, 4800', '6380, 7075, 7585, 8595', '2225, 2225, 2225, 2225', '2500, 2500, 2500, 2500', '', '', '245, 245, 245, 245', '4440 (14.6 ft.), 5175 (17 ft.), 5785 (19 ft.), 6615 (22 ft.)', '12800 kg', 'Channel section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.50 x 20, 8.25 R 20 - 16 PR', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '27.5%, 27.5%, 21.5%, 21.5%', '80 km/hr', '14.8 m, 14.7 m, 16.7 m, 18.7 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck, Drop Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 03:59:38', '2018-08-09 09:11:09', 'admin', 'admin'),
(16, 2, 11, 'MD IN-Power 1214RE', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'G85 - 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362mm', 'IF 4.5, Reverse elliot', 'AAM 9.22, Fully floating, Hypoid gears', '6.33, 6.33, 5.13, 5.13', '3760, 3760, 4250, 4800', '6380, 7075, 7585, 8595', '2220, 2220, 2220, 2220', '2480, 2480, 2480, 2480', '', '', '225, 225, 225, 245', '4440 (14.6 ft.), 5175 (17 ft.), 5785 (19 ft.), 6615 (22 ft.)', '13000 kg', 'Ladder type channel section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.50 x 20, 8.25R20 - 16 PR', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand controlled valve', 'Hydraulic power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '27.5%, 27.5%, 21.8%,21.8%', '80 km/hr', '14.8 m, 14.8 m, 16.7 m, 18.7 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck, Drop Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 04:05:00', '2018-08-09 09:11:53', 'admin', 'admin'),
(17, 2, 12, 'MD 1214R', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'G85 - 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362mm', 'IF 4.5, Reverse elliot', 'AAM 9.22, Full floating, Hypoid gears', '6.33,5.13', '3760, 4250', '6380, 7585', '2225, 2225', '2495, 2495', '', '', '245, 245', '4440 (14.6 ft.), 5785 (19 ft.)', '11990 kg', 'Channel section with cross member', '228mm x 80mm x 6mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.50 x 20, 8.25 x 20 - 16 PR', 'Pneumatic, Foot operated, Dual line', 'Pneumatically operated hand control valve', 'Hydraulic power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24V Electrical system', '2 x 12 V, 75 Ah', '29.6%, 23.5%', '80 km/hr', '14.8 m, 16.7 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck, Drop Side Deck', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', '', '', '1', '1', '2018-07-16 04:09:26', '2018-08-13 12:05:55', 'admin', 'admin'),
(18, 1, 15, '1623C', NULL, NULL, NULL, 'DE175BS4', '175 kW (235 hp) @ 2200 rpm', '850 Nm @ 1200 - 1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G85-6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 395 mm', 'IR 6.6, Reverse Elliot Type', 'IR 440-11, Fully floating, Hypoid gears', '5.875', '3600', '6160', '2490', '2960', '1460', '1100', '234', '-', '16,200 kg', 'Channel Section with cross members', '288mm x 70mm x 9mm', 'Parabolic leaf spring with 2 hydraulic shock absorbers', 'Semi elliptical auxiliary leaf spring', 'Standard on both axles', '7.50 x 20, 10.00x20-16 PR/ 10R20-16PR', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Day cabin, Tiltable', '260 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '40.41%', '60 km/h', '60 km/h', 'Cabin with Chassis', 'Fully-built 10.5 CuM Box tippers', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 07:52:11', '2018-08-09 09:50:05', 'admin', 'admin'),
(19, 1, 16, '2523C', NULL, NULL, NULL, 'DE175BS4', '175kW (235hp) @ 2200 rpm', '850 Nm @ 1200 - 1600 rpm', '6 Nos., 6372 cc', 'BSIV', 'G131, 9F + 1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 395mm', 'IF 6.6, Reverse elliot', 'RA1 - IRT 390-11 Hypoid gears/ RA2 - IRT 390T-11, Topoid gears', '5.375', '4275', '7160/7460(RMC)', '2490', '2975', '1460', '750/1050(RMC)', '234', '-', '25,000 kg', 'Channel Section with cross members', '288 mm x 70 mm x 9 mm', 'Parabolic leaf spring with 2 hydraulic shock absorbers', 'Inverted Semi elliptical tandem bogie', 'Standard on both axles', '7.50 x 20, 11.00 x 20 - 16 PR/ 11.00 R20 - 16 PR', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Day cabin, Tiltable', '290 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '53%', '60 km/h', '15.5 m', 'Fully built 16 Cu.M Box Tipper', 'Fully built 14 Cu.M Box Tipper', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 07:59:56', '2018-08-09 09:50:27', 'admin', 'admin'),
(20, 1, 17, '2528C', NULL, NULL, NULL, 'DE210BS4', '210 kW (281 hp) @ 2200 rpm', '1120 Nm @ 1200 - 1600 rpm', '6 Nos., 6372 cc', 'BSIV', 'G131, 9F + 1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 430 mm', 'IF6.6, Reverse elliot', 'RA1 - IRT390-11 Hypoid gears/ RA2 - IRT390T-11, Topoid gears', '5.375', '4275', '7160 / 7460 (RMC)', '2490', '2975', '1460', '750 / 1050 (RMC)', '234', '-', '25,000 kg', 'Channel Section with cross members', '288 mm x 70 mm x 9 mm', 'Parabolic type leaf spring with 2 hydraulic shock absorbers', 'Inverted Semi elliptical tandem bogie', 'Standard on both axles', '7.50 x 20, 11x20 - 16PR/11.00x20 - 18 PR Mining', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Day cabin, Tiltable', '290 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '80%', '60 km/h', '15.5 m', 'Fully Built 16 Cu. M Box Tipper', 'Fully Built 14 Cu. M Scoop Tipper', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 08:14:00', '2018-08-09 09:51:07', 'admin', 'admin'),
(21, 1, 18, '2528CM', NULL, NULL, NULL, 'DE210BS4', '210 kw (281 hp) @ 2200 rpm', '1120 Nm @ 1200 - 1600 rpm', '6 Nos., 6372 cc', 'BSIV', 'G131 - 9F + 1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 430 mm', 'IF6.6, Reverse elliot', 'Hub reduction axle RA2 - IRT390T-11, Topoid gears', '5.39', '4275', '7160', '2490', '2975', '1460', '750', '234', '-', '25,000 kg', 'Channel Section with cross members', '288 mm x 70 mm x 9 mm', 'Parabolic type leaf spring with 2 hydraulic shock absorbers', 'Inverted semi elliptical tandem bogie', 'Standard on both axles', '7.50 x 20, 11.00x20 - 18 PR Mining', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Day Cabin, Tiltable', '290 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '80%', '60 km/h', '15.5 m', 'Fully Built 16 CuM Scoop Tipper', 'Fully Built 16 CuM Box Tipper', '', '', '', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', '', '', '1', '1', '2018-07-16 08:19:54', '2018-08-13 12:58:51', 'admin', 'admin'),
(22, 1, 19, '3128C', NULL, NULL, NULL, 'DE210BS4', '210 kw (281 hp) @ 2200 rpm', '1120 Nm @ 1200 - 1600 rpm', '6 Nos., 6372 cc', 'BSIV', 'G131 - 9F+1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 430mm', 'IF6.6, Reverse elliot', 'RA1 - IRT390-11 Hypoid gears/ RA2 - IRT390T-11, Topoid gears', '5.375', '5175', '8060/8360(RMC)', '2550', '3000', '1460', '750/1050(RMC)', '234', '-', '31,000 kg', 'Channel Section with cross members', 'Channel Section with cross members', 'Parabolic type leaf spring with 2 hydraulic shock absorbers', 'Inverted Semi elliptical tandem bogie', 'Standard on both axles', '7.50 x 20, 11.00 x 20 - 16 PR/ 11R20 optional', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Day Cabin, Tiltable', '260 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '58%', '60 km/h', '19.2 m', 'Fully built 19 Cu.M Box Tipper', 'Comfort Pack (HVAC) & RMC Pack', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 08:24:58', '2018-08-09 09:54:16', 'admin', 'admin'),
(23, 1, 24, '3128CM', NULL, NULL, NULL, 'DE210BS4', '210 kW (281 hp) @ 2200 rpm', '1120 Nm @ 1200 - 1600 rpm', '6 Nos., 6372 cc', 'BSIV', 'G131 - 9F+1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 430mm', 'VL4-7.5, Reverse elliot', 'Hub Reduction axle', '6.18', '5175', '8060', '2490', '3030', '1460', '750', '287', '-', '31,000 kg', 'Channel Section with cross members', '288 mm x 70 mm x 9 mm', 'Parabolic type leaf spring with 2 hydraulic shock absorbers', 'Inverted Semi elliptical tandem bogie', 'Standard on both axles', '8.50 x 20, 12.00 x 20 - 18 PR', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Day Cabin, Tiltable', '260 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '66.87%', '60 km/h', '19.2 m', 'Fully Built 23 Cu. M Box Tipper', 'Fully Built 18 Cu. M Scoop Tipper', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 08:31:56', '2018-08-09 09:54:04', 'admin', 'admin'),
(24, 3, 21, '1617R', NULL, NULL, NULL, '4D34i', '125kW (170hp) @ 2500 rpm', '520 Nm @ 1500 - 2000 rpm', '4 Nos., 3907 cc', 'BSIV', 'G85-6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362 mm', 'IF 6.0, Reverse Elliot', 'MS145, Full floating, Hypoid gears', '5.57', '5100, 5900, 6700', '8600, 9815, 11995', '2440, 2440, 2440', '2600, 2600, 2600', '1335, 1335, 1335', '2165, 2580, 3960', '270,  270,  270', '5985 (20ft), 7200 (24ft), 9500 (31ft)', '16,200 kg', 'Channel section with cross member', '272mm x 70mm x 6mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '7.5', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Sleeper cabin with berth, Tiltable', '200 litres', '27 litres', '24 V Electrical System', '2 x 12 V, 75 Ah', '21.5%', '80 km/hr', '17.1 m, 19.8 m, 22.6 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 08:54:09', '2018-08-09 09:26:28', 'admin', 'admin'),
(25, 3, 22, '3123R', NULL, NULL, NULL, 'DE175BS4', '175 kW(235 hp) @ 2200 rpm', '850 Nm @ 1200 - 1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G85-6F+1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 395mm', 'IF6.6, Reverse Elliot & IT10, Pusher', 'IR440, Fully floating, Hypoid gears', '5.875', '5775, 6375', '9867, 11067', '2490,  2490', '2960,  2960', '1460, 1460', '1957,  2557', '264,  264', '7300 (24 ft),  8500 (28 ft)', '31,000 kg', 'Channel Section with cross members', '284mm x 70mm x 7mm', 'Parabolic leaf spring with 2 hydraulic shock absorbers', 'Balancer type semi elliptical leaf spring', 'Standard on front axle (Optional on rear axle), Standard on both axles', '8.25', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Sleeper Cabin with Berth, Tiltable', '380 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '19.3%', '80 km/h', '21.6 m, 23.2 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '1', '2018-07-16 09:03:57', '2018-08-09 09:29:09', 'admin', 'admin'),
(26, 3, 22, '3123R', NULL, NULL, NULL, 'DE175BS4', '175 kW(235 hp) @ 2200 rpm', '850 Nm @ 1200 - 1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G85-6F+1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 395mm', 'IF6.6, Reverse Elliot & IT10, Pusher', 'IR440, Fully floating, Hypoid gears', '5.875', '5775, 6375', '9867, 11067', '2490,  2490', '2960,  2960', '1460, 1460', '1957,  2557', '264,  264', '', '31,000 kg', 'Channel Section with cross members', '284mm x 70mm x 7mm', 'Parabolic leaf spring with 2 hydraulic shock absorbers', 'Balancer type semi elliptical leaf spring', 'Standard on front axle (Optional on rear axle), Standard on both axles', '8.25\\\" x 22.5\\\" & 295/80R 22.5 16PR (Tubeless)', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Sleeper Cabin with Berth, Tiltable', '380 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '19.3%', '80 km/h', '21.6 m, 23.2 m', 'Cabin with Chassis', 'Fixed Side Deck, High Side Deck', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', '', '1', '0', '2018-07-16 09:10:19', NULL, 'admin', NULL),
(27, 3, 23, '3723R', NULL, 'main_1531733402.jpg', 'thumb_1531733402.jpg', 'DE175BS4', '175 kW (235 hp) @ 2200 rpm', '850 Nm @ 1200 - 1600 rpm', '6 Nos, 6372 cc', 'BSIV', 'G131-9F + 1 R, Mechanical, Synchromesh Gears', 'Single dry plate, Hydraulic control with clutch booster, 395 mm', 'IF6.6 Reverse elliot & IT10, Pusher', 'IR440 Fully floating, Hypoid gears', '4.778', '6575', '11044', '2490', '2975', '1460', '2334', '260', '8420 (28 ft)', '37,000 kg', 'Channel Section with cross members', '284mm x 70mm x 7mm', 'Parabolic type leaf spring with 2 hydraulic shock absorbers', 'Balancer type Semi elliptical leaf spring', 'Standard on Front axle (Optional on rear axle)', '8.25', 'Pneumatic, Foot operated, Dual line with ABS', 'Pneumatically operated hand control valve', 'Hydraulic Power assisted', 'Sleeper cabin with Berth, Tiltable', '330 litres', '60 litres', '24 V Electrical System', '2 x 12 V, 120 Ah', '29.6%', '80 km/h', '24 m', 'Cabin with Chassis', '', 'Fixed Side Deck, High Slide Deck', 'Hazardous Goods Package', 'Arctic white, Golden brown', '103.218.101.134', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '', '1', '1', '2018-07-16 09:16:05', '2018-08-13 10:31:08', 'admin', 'admin'),
(28, 4, 25, '111T', NULL, 'main_1533708494.jpg', 'thumb_1533708494.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', 'Official Website of BharatBenz | Commercial Vehicles India', '1', '0', '2018-08-08 06:07:14', '2018-08-09 07:43:55', 'admin', 'admin'),
(29, 2, 26, 'MD 1414R', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '103.218.101.134', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '', '0', '0', '2018-08-13 16:19:34', NULL, 'admin', NULL),
(30, 2, 26, 'MD 1414R', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'G85 - 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362mm', 'IF 5.0, Reverse elliot', 'DANA - S145, Full floating, Hypoid gears', '6.33, 5.13, 5.13', '3760, 4250, 4800', '7075, 7585, 8595', '2220, 2220, 2220', '2480, 2480, 2480', '', '', '2225, 225, 225', '5175 (17 ft.), 5785 (19 ft.), 6615 (22 ft.)', '14,050 kg', 'Ladder type channel section with cross member', '230mm x 80mm x 7mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.50 x 20, 8.25 R 20 - 16 PR(Radial)', 'Pneumatic, Foot operated, Dual line (with ABS)', 'Pneumatically operated spring brake', 'Hydraulic Power assisted', 'Day Cabin, Tiltable', '200 litres', '27 litres', '24 V Electrical System', '2 x 12 V, 75 Ah', '24.9%, 19.8%, 19.8%', '70 km/hr', '14.8m, 16.7m, 18.7m', 'Cabin & Chassis', '', 'Fixed side deck, High side deck & Drop side deck', '', '', '157.33.204.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', '', '', '1', '1', '2018-08-13 16:22:35', '2018-08-14 00:35:45', 'admin', 'admin'),
(31, 2, 27, 'MD IN-POWER 1414R', NULL, NULL, NULL, '4D34i', '100kW (140 hp) @ 2500 rpm', '420 Nm @ 1500-2000 rpm', '4 Nos, 3907 cc', 'BSIV', 'G85 - 6F+1R, Mechanical, Synchromesh gears', 'Single dry plate, Hydraulic control with clutch booster, 362mm', 'IF 5.0, Reverse elliot', 'DANA - S145, Fully floating, Hypoid gears', '6.33, 5.13, 5.13', '3760, 4250, 4800', '7075, 7585, 8595', '2220, 2220, 2220', '2480, 2480, 2480', '', '', '2225, 225, 225', '5175 (17 ft.), 5785 (19 ft.), 6615 (22 ft.)', '14,050 kg', 'Ladder type channel section with cross member', '230mm x 80mm x 7mm', 'Semi elliptic leaf spring with shock absorbers', 'Semi elliptic laminated leaf spring', 'Optional (Front & Rear)', '6.50 x20,  8.25 R20 - 16 PR(Radial)', 'Pneumatic, Foot operated, Dual line (with ABS)', 'Pneumatically operated spring brake', 'Hydraulic Power assisted', 'A/C Day cabin, Tiltable', '200 litres', '27 litres', '24 V Electrical System', '2 x 12 V, 75 Ah', '24.9%, 19.8%, 19.8%', '70 km/hr', '14.8 m, 16.7 m, 18.7 m', 'Cabin & Chassis', '', 'Fixed side deck, High side deck & Drop side deck', '', '', '110.173.177.162', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', '', '', '1', '1', '2018-08-13 16:34:42', '2018-08-13 12:05:16', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_technology`
--

CREATE TABLE `tbl_truck_technology` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_technology`
--

INSERT INTO `tbl_truck_technology` (`id`, `product_id`, `title`, `short_description`, `image`, `thumbnail`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 1, 'Cruise Control', 'BharatBenz Tippers are equipped with cruise control to help the driver maintain the truck’s speed, enabling fatigueless driving.', 'main_1532512141.jpg', 'thumb_1532512141.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-14 05:45:10', '2018-07-25 09:49:01', 'admin', 'admin'),
(2, 2, 'Reverse camera and display', 'State-of-an-art technology that aids your driver in safety reversing', 'main_1531913229.jpg', 'thumb_1531913229.jpg', NULL, '', NULL, NULL, '10.10.10.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-14 05:45:34', '2018-07-18 11:27:08', 'admin', 'admin'),
(3, 3, 'Reverse camera and display', 'State-of-an-art technology that aids your driver in safety reversing', 'main_1531913349.jpg', 'thumb_1531913349.jpg', NULL, '', NULL, NULL, '10.10.10.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-14 05:45:50', '2018-07-18 11:29:09', 'admin', 'admin'),
(4, 4, 'Longer service Intervals', 'The minimal lubrication points and the longer, synchronized driveline oil change intervals of the BharatBenz Haulage Trucks help increase service intervals thereby reducing maintenance costs.', 'main_1532507441.jpg', 'thumb_1532507441.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-14 05:46:04', '2018-08-07 11:04:32', 'admin', 'admin'),
(5, 4, 'Drivetrain Warranty', 'BharatBenz Tractors come with a 4 year drive train warranty enabling stress-free operations.', 'main_1531913472.jpg', 'thumb_1531913472.jpg', NULL, '', NULL, NULL, '10.10.10.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:54:29', '2018-07-18 11:31:12', 'admin', 'admin'),
(6, 4, 'Lesser lubrication Points', 'BharatBenz Tractors are designed with minimal lubrication points making way for longer service intervals.', 'main_1532508273.png', 'thumb_1532508273.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:55:20', '2018-07-25 08:44:32', 'admin', 'admin'),
(7, 4, 'Thicker Clutch with Clutch Wear Indicator', 'The larger clutch plate of the BharatBenz Tractors coupled with driver-friendly indicators for wear & tear help in preventive maintenance, ensuring trouble-free running.', 'main_1532507823.jpg', 'thumb_1532507823.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:55:59', '2018-07-25 08:37:03', 'admin', 'admin'),
(8, 4, 'Wider brake drums and thicker brake liners', 'BharatBenz Tractors are fitted with a braking system that has wider and thicker brakes to enhance longevity.', 'main_1533631134.jpg', 'thumb_1533631134.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-15 17:57:16', '2018-08-07 08:38:54', 'admin', 'admin'),
(9, 1, 'Cruise Control', 'BharatBenz Tippers are equipped with cruise control to help the driver maintain the truck’s speed, enabling fatigueless driving.', 'main_1531913095.jpg', 'thumb_1531913095.jpg', NULL, '', NULL, NULL, '10.10.10.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-18 11:20:53', '2018-07-18 11:24:55', 'admin', 'admin'),
(10, 2, 'Comfort', 'State-of-an-art technology that aids your driver in safety reversing', 'main_1531913263.jpg', 'thumb_1531913263.jpg', NULL, '', NULL, NULL, '10.10.10.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-18 11:27:43', NULL, 'admin', NULL),
(11, 3, 'Truck', 'test', 'main_1531913375.jpg', 'thumb_1531913375.jpg', NULL, '', NULL, NULL, '10.10.10.164', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-18 11:29:35', NULL, 'admin', NULL),
(12, 3, 'Longer service Intervals', 'The minimal lubrication points and the longer, synchronized driveline oil change intervals of the BharatBenz Haulage Trucks help increase service intervals thereby reducing maintenance costs.', 'main_1532504913.jpg', 'thumb_1532504913.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 07:45:14', '2018-08-07 11:04:41', 'admin', 'admin'),
(13, 3, 'Lesser Lubrication Points', 'The minimal lubrication points in the BharatBenz Haulage Trucks help increase the service intervals and reduce overall costs.', 'main_1532504860.png', 'thumb_1532504860.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 07:47:40', NULL, 'admin', NULL),
(14, 3, 'Thicker Clutch with Clutch Wear Indicator', 'The large clutch plate of the BharatBenz Haulage Trucks are fitted with thicker clutch plates for enhanced performance and also come with a wear indicator to help in preventative maintenance.', 'main_1533630706.jpg', 'thumb_1533630706.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 07:50:18', '2018-08-07 08:31:46', 'admin', 'admin'),
(15, 3, 'Human Machine Interface', 'The intelligent instrument cluster on the BharatBenz Haulage Truck provides useful information pertaining to trip mileage and related areas while providing warning signals for various parameters, helping in preventative maintenance.', 'main_1532505054.png', 'thumb_1532505054.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 07:50:54', NULL, 'admin', NULL),
(16, 4, 'Human Machine Interface', 'The instrument cluster on the BharatBenz Haulage Truck provides useful information pertaining to trip mileage and related ascpects while prompting warning signals for various parameters, thus enabling preventative maintenance.', 'main_1532508164.png', 'thumb_1532508164.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 08:42:44', NULL, 'admin', NULL),
(17, 2, 'Power Windows', 'The power windows in BharatBenz MDTs give a car- like experience by providing one touch window operation.', 'main_1533841977.jpg', 'thumb_1533841977.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 08:54:57', '2018-08-13 08:28:07', 'admin', 'admin'),
(18, 2, '3-Way Adjustable Seats', 'The 3- way adjustable fabric seat with Lumbar support in BharatBenz MDTs allows the driver to set most convenient seating position for driving.', 'main_1533668695.png', 'thumb_1533668695.png', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 08:55:19', '2018-08-13 08:28:38', 'admin', 'admin'),
(19, 2, 'Air-Conditioned Cabins', 'The BharatBenz MDTs cabins are air-conditioned and fully sealed to cut vehicle noise and ensure the driver’s comfort.', 'main_1533803477.jpg', 'thumb_1533803477.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 08:55:41', '2018-08-09 08:31:17', 'admin', 'admin'),
(20, 2, 'Front Shock Absorbers', 'The BharatBenz MDTs are equipped with standard hydraulic front shock absorbers to minimize vibrations in the cabin and reduce driver fatigue.', 'main_1532508963.jpg', 'thumb_1532508963.jpg', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '0', '1', '2018-07-25 08:56:03', NULL, 'admin', NULL),
(21, 1, 'Comfortable Cabin', 'The BharatBenz Tipper cabins are ergonomically designed and include 3-way adjustable seats as well as a provision for a sleeper berth.', 'main_1532512193.png', 'thumb_1532512193.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 09:49:53', NULL, 'admin', NULL),
(22, 1, 'Easy Gear shifting', 'The BharatBenz Tippers feature a simplified gear shift arrangement with a ball joint mechanism  and double synchrocone to ensure smoother, precise gear shifting.', 'main_1532512233.png', 'thumb_1532512233.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 09:50:33', NULL, 'admin', NULL),
(23, 1, 'Reverse Camera Display', 'The BharatBenz Tippers are fitted with a state-of-the-art reverse camera and display screen to ensure safe resversing.', 'main_1532512264.png', 'thumb_1532512264.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-25 09:51:04', NULL, 'admin', NULL),
(24, 1, 'Intelligent Instrument Cluster', 'The BharatBenz Tippers have an intelligent instrument cluster that provides useful information like trip mileage, neutral and reverse gear indication, distance that can be covered basis the fuel in the truck, etc.', 'main_1532512307.png', 'thumb_1532512307.png', NULL, '', NULL, NULL, '10.10.10.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/68.0.3440.75 Chrome/68.0.3440.75 Safari/537.36', '1', '1', '2018-07-25 09:51:47', '2018-08-08 04:11:26', 'admin', 'admin'),
(25, 3, 'Longer Engine Oil Change Interval', 'The longer, synchronized engine oil change interval in BharatBenz Haulage Trucks ensures that your vehicle runs at lower operational costs always.', 'main_1534163874.jpg', 'thumb_1534163874.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 12:37:54', NULL, 'admin', NULL),
(26, 3, '4 Years of Warranty', 'The BharatBenz Haulage Trucks come with 4 years of drivetrain warranty ensuring your peace of mind and stress free operation of your business.', 'main_1534163919.jpg', 'thumb_1534163919.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 12:38:39', NULL, 'admin', NULL),
(27, 3, 'Lesser Lubrication Points', 'The BharatBenz Haulage Trucks are designed with minimal lubrication points thereby guaranteeing longer service intervals. This reduces maintenance costs and increases uptime.', 'main_1534167171.jpg', 'thumb_1534167171.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 12:39:43', '2018-08-13 08:02:51', 'admin', 'admin'),
(28, 3, 'Clutch Wear Indicator', 'The driver friendly thicker clutch with clutch wear indicator in BharatBenz Haulage Trucks helps in preventive maintenance, ensuring trouble free running.', 'main_1534164013.jpg', 'thumb_1534164013.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 12:40:13', NULL, 'admin', NULL),
(29, 3, 'Thick Brake Liners', 'The wider brake lining coupled with engine and exhaust brake in BharatBenz Haulage Trucks ensures efficient braking and shorter braking distance.', 'main_1534164037.jpg', 'thumb_1534164037.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 12:40:37', NULL, 'admin', NULL),
(30, 2, 'Brake and Accelerator Pedals', 'The cabins in BharatBenz MDTs have pendant type brake and accelerator pedals to reduce driver effort and fatigue.', 'main_1534168748.jpg', 'thumb_1534168748.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 13:59:08', NULL, 'admin', NULL),
(31, 4, 'Longer Engine Oil Change Interval', 'The longer, synchronized engine oil change interval in BharatBenz Tractors ensures that your vehicle runs at lower operational costs always.', 'main_1534170290.jpg', 'thumb_1534170290.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:24:50', NULL, 'admin', NULL),
(32, 4, '4 Years of Warranty', 'The BharatBenz Tractors come with 4 years of drivetrain warranty ensuring your peace of mind and stress free operation of your business.', 'main_1534170315.jpg', 'thumb_1534170315.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:25:15', NULL, 'admin', NULL),
(33, 4, 'Lesser Lubrication Points', 'The BharatBenz Tractors are designed with minimal lubrication points thereby guaranteeing longer service intervals. This reduces maintenance costs and increases uptime.', 'main_1534170397.jpg', 'thumb_1534170397.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:26:37', NULL, 'admin', NULL),
(34, 4, 'Clutch Wear Indicator', 'The driver friendly thicker clutch with clutch wear indicator in BharatBenz Tractors helps in preventive maintenance, ensuring trouble free running.', 'main_1534170427.jpg', 'thumb_1534170427.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:27:07', NULL, 'admin', NULL),
(35, 4, 'Thick Brake Liners', 'The wider brake lining coupled with engine and exhaust brake in BharatBenz Tractors ensures efficient braking and shorter braking distance.', 'main_1534170473.jpg', 'thumb_1534170473.jpg', NULL, '', NULL, NULL, '157.33.146.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-13 14:27:53', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_truck_wallpapers`
--

CREATE TABLE `tbl_truck_wallpapers` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `is_delete` enum('1','0') NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_truck_wallpapers`
--

INSERT INTO `tbl_truck_wallpapers` (`id`, `product_id`, `uploaded_image`, `image`, `thumb_image`, `is_active`, `is_delete`, `insert_date`) VALUES
(21, 1, '11531558002.jpg', 'main_11531558002.jpg', 'thumb_11531558002.jpg', '1', '1', '2018-07-14 08:46:42'),
(22, 1, '21531558002.jpg', 'main_21531558002.jpg', 'thumb_21531558002.jpg', '1', '1', '2018-07-14 08:46:42'),
(23, 1, '31531558002.jpg', 'main_31531558002.jpg', 'thumb_31531558002.jpg', '1', '1', '2018-07-14 08:46:42'),
(24, 1, '41531558002.jpg', 'main_41531558002.jpg', 'thumb_41531558002.jpg', '1', '1', '2018-07-14 08:46:42'),
(26, 2, '11531721302.jpg', 'main_11531721302.jpg', 'thumb_11531721302.jpg', '1', '1', '2018-07-16 06:08:23'),
(27, 2, '21531721303.jpg', 'main_21531721303.jpg', 'thumb_21531721303.jpg', '1', '1', '2018-07-16 06:08:23'),
(28, 2, '31531721303.jpg', 'main_31531721303.jpg', 'thumb_31531721303.jpg', '1', '1', '2018-07-16 06:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_used_trucks`
--

CREATE TABLE `tbl_used_trucks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `make` varchar(100) NOT NULL,
  `km` text,
  `rc` enum('1','0') NOT NULL,
  `registration_year` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `model` varchar(100) NOT NULL,
  `body_type` varchar(100) NOT NULL,
  `loan_status` varchar(100) NOT NULL,
  `insured_upto` varchar(255) NOT NULL,
  `tax_paid_upto` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `no_of_owner` int(11) NOT NULL,
  `fitness_certificate` enum('1','0') NOT NULL,
  `national_permit` enum('1','0') NOT NULL,
  `meta_description` text,
  `seo_description` text NOT NULL,
  `meta_keywords` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `agent` text,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_used_trucks`
--

INSERT INTO `tbl_used_trucks` (`id`, `title`, `description`, `uploaded_image`, `image`, `thumb_image`, `make`, `km`, `rc`, `registration_year`, `price`, `model`, `body_type`, `loan_status`, `insured_upto`, `tax_paid_upto`, `location`, `state_id`, `no_of_owner`, `fitness_certificate`, `national_permit`, `meta_description`, `seo_description`, `meta_keywords`, `meta_title`, `ip`, `agent`, `is_active`, `is_delete`, `insert_date`, `updated_date`, `added_by`, `updated_by`) VALUES
(1, 'test', '', '', '', '', 'Bharatbenz', '15000', '1', '2018', '895623', 'CC V46F', 'body type', 'PEnding', '5000000', '230000', 'Mumbai,Maharashtra', 17, 2, '1', '0', '', '', '', '', '10.10.10.166', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '0', '2018-07-11 07:39:15', '2018-07-11 09:12:24', 'admin', 'admin'),
(2, 'Truck 2523C', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'main_1533813551.jpg', 'thumb_1533813551.jpg', 'BharatBenz', '16,000', '1', '2016', '000000', 'Trcuk 2523C', 'body type', 'PEnding', '000000', '000000', 'Rewari', 11, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-11 11:42:07', '2018-08-09 11:19:11', 'admin', 'admin'),
(3, 'Truck 2523R', 'fdf', 'thumb_banner_1532608534.jpg', 'main_1533813386.jpg', 'thumb_1533813386.jpg', 'Bharatbenz', '228,265', '1', '2013', '000000', 'Truck2523R', 'body type', 'PEnding', '000000', '000000', 'Kolkata', 28, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-07-26 11:43:23', '2018-08-09 11:19:52', 'admin', 'admin'),
(4, 'Truck 2523C', 'abc', '', 'main_1533813739.jpg', 'thumb_1533813739.jpg', 'Bharatbenz', '45,500 lacs', '1', '2013', '000000', 'Trcuk 2523C', 'body type', 'pending', '000000', '000000', 'Gurgaon', 11, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:22:19', NULL, 'admin', NULL),
(5, 'Truck 2523R', 'abc', '', 'main_1533813852.jpg', 'thumb_1533813852.jpg', 'Bharatbenz', '4,15,000 lacs', '1', '2014', '000000', 'Trcuk 2523R', 'body type', 'pending', '000000', '000000', 'Hissar', 11, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:24:12', NULL, 'admin', NULL),
(6, 'Truck 1214R', 'abc', '', 'main_1533813966.jpg', 'thumb_1533813966.jpg', 'Bharatbenz', '6,620', '0', '2017', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'Kalpakkam', 23, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:26:06', NULL, 'admin', NULL),
(7, 'Truck 1214R', 'abc', '', 'main_1533814122.jpg', 'thumb_1533814122.jpg', 'Bharatbenz', '13,273', '1', '2013', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'chennai', 23, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:28:42', '2018-08-09 11:29:04', 'admin', 'admin'),
(8, 'Truck 1214R', 'abc', '', 'main_1533814224.jpg', 'thumb_1533814224.jpg', 'Bharatbenz', '1.5 lakhs', '1', '2013', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'Calicut', 15, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:30:24', NULL, 'admin', NULL),
(9, 'Truck 1214R', 'abc', '', 'main_1533814315.jpg', 'thumb_1533814315.jpg', 'Bharatbenz', '1.6 lakhs', '1', '2014', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'Trivandrum', 15, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:31:55', NULL, 'admin', NULL),
(10, 'Truck 1214R', 'abc', '', 'main_1533814410.jpg', 'thumb_1533814410.jpg', 'Bharatbenz', '3.7 lacs', '1', '2013', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'Rajkot', 9, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:33:30', NULL, 'admin', NULL),
(11, 'Truck 1214R', 'abc', '', 'main_1533814473.jpg', 'thumb_1533814473.jpg', 'Bharatbenz', '1.25 lacs', '1', '2016', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'Rajkot', 9, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:34:33', NULL, 'admin', NULL),
(12, 'Truck 1214R', 'abc', '', 'main_1533814546.jpg', 'thumb_1533814546.jpg', 'Bharatbenz', '5500', '1', '2017', '000000', 'Trcuk 1214R', 'body type', 'pending', '000000', '000000', 'Chandmari, Kohima', 36, 0, '0', '0', '', '', '', '', '10.10.10.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1', '1', '2018-08-09 11:35:46', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_used_trucks_gallery`
--

CREATE TABLE `tbl_used_trucks_gallery` (
  `id` int(11) NOT NULL,
  `used_truck_id` int(11) NOT NULL,
  `uploaded_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `dimension` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_used_trucks_gallery`
--

INSERT INTO `tbl_used_trucks_gallery` (`id`, `used_truck_id`, `uploaded_image`, `image`, `thumbnail`, `dimension`, `is_active`, `insert_date`) VALUES
(1, 2, '11532605165.jpg', 'main_11532605165.jpg', '', 'used-gallery-01', '1', '2018-07-26 11:39:25'),
(2, 2, '11532605178.jpg', 'main_11532605178.jpg', '', 'used-gallery-02', '1', '2018-07-26 11:39:38'),
(6, 2, '41532605256.jpg', 'main_41532605256.jpg', '', 'used-gallery-02', '1', '2018-07-26 11:40:56'),
(8, 3, '21532605591.jpg', 'main_21532605591.jpg', '', 'pro-serve-02', '1', '2018-07-26 11:46:31'),
(9, 3, '31532605591.jpg', 'main_31532605591.jpg', '', 'pro-serve-03', '1', '2018-07-26 11:46:31'),
(10, 3, '41532605591.jpg', 'main_41532605591.jpg', '', 'used-gallery-01', '1', '2018-07-26 11:46:31'),
(11, 3, '51532605591.jpg', 'main_51532605591.jpg', '', 'used-gallery-02', '1', '2018-07-26 11:46:31'),
(12, 3, '11532605900.jpg', 'main_11532605900.jpg', '', '223995001467814512', '1', '2018-07-26 11:51:40'),
(14, 2, '11533212514.jpg', 'main_11533212514.jpg', '', '', '1', '2018-08-02 12:21:55'),
(15, 2, '21533212515.jpg', 'main_21533212515.jpg', '', '', '1', '2018-08-02 12:21:55'),
(16, 2, '31533212515.jpg', 'main_31533212515.jpg', '', '', '1', '2018-08-02 12:21:55'),
(17, 2, '41533212515.jpg', 'main_41533212515.jpg', '', '', '1', '2018-08-02 12:21:55'),
(18, 2, '51533212515.jpg', 'main_51533212515.jpg', '', '', '1', '2018-08-02 12:21:55'),
(19, 2, '61533212515.jpg', 'main_61533212515.jpg', '', '', '1', '2018-08-02 12:21:56'),
(20, 2, '71533212516.jpg', 'main_71533212516.jpg', '', '', '1', '2018-08-02 12:21:56'),
(21, 2, '81533212516.jpg', 'main_81533212516.jpg', '', '', '1', '2018-08-02 12:21:56'),
(22, 2, '91533212516.jpg', 'main_91533212516.jpg', '', '', '1', '2018-08-02 12:21:56'),
(23, 2, '11533212533.jpg', 'main_11533212533.jpg', '', '', '1', '2018-08-02 12:22:13'),
(24, 6, '11533815130.jpg', 'main_11533815130.jpg', '', '', '1', '2018-08-09 11:45:31'),
(25, 6, '21533815131.jpg', 'main_21533815131.jpg', '', '', '1', '2018-08-09 11:45:31'),
(26, 6, '31533815131.jpg', 'main_31533815131.jpg', '', '', '1', '2018-08-09 11:45:31'),
(27, 6, '41533815131.jpg', 'main_41533815131.jpg', '', '', '1', '2018-08-09 11:45:31'),
(28, 7, '11533815236.jpg', 'main_11533815236.jpg', '', '', '1', '2018-08-09 11:47:16'),
(29, 7, '21533815236.jpg', 'main_21533815236.jpg', '', '', '1', '2018-08-09 11:47:16'),
(30, 7, '31533815236.jpg', 'main_31533815236.jpg', '', '', '1', '2018-08-09 11:47:16'),
(31, 7, '41533815236.jpg', 'main_41533815236.jpg', '', '', '1', '2018-08-09 11:47:16'),
(32, 8, '11533815422.jpg', 'main_11533815422.jpg', '', '', '1', '2018-08-09 11:50:22'),
(33, 8, '21533815422.jpg', 'main_21533815422.jpg', '', '', '1', '2018-08-09 11:50:22'),
(34, 8, '31533815422.jpg', 'main_31533815422.jpg', '', '', '1', '2018-08-09 11:50:22'),
(35, 8, '41533815422.jpg', 'main_41533815422.jpg', '', '', '1', '2018-08-09 11:50:22'),
(36, 9, '11533815593.jpg', 'main_11533815593.jpg', '', '', '1', '2018-08-09 11:53:13'),
(37, 9, '21533815593.jpg', 'main_21533815593.jpg', '', '', '1', '2018-08-09 11:53:13'),
(38, 9, '31533815593.jpg', 'main_31533815593.jpg', '', '', '1', '2018-08-09 11:53:13'),
(39, 9, '41533815593.jpg', 'main_41533815593.jpg', '', '', '1', '2018-08-09 11:53:14'),
(40, 10, '11533815696.jpg', 'main_11533815696.jpg', '', '', '1', '2018-08-09 11:54:56'),
(41, 10, '21533815697.jpg', 'main_21533815697.jpg', '', '', '1', '2018-08-09 11:54:57'),
(42, 10, '31533815697.jpg', 'main_31533815697.jpg', '', '', '1', '2018-08-09 11:54:57'),
(43, 10, '41533815697.jpg', 'main_41533815697.jpg', '', '', '1', '2018-08-09 11:54:57'),
(44, 11, '11533815775.jpg', 'main_11533815775.jpg', '', '', '1', '2018-08-09 11:56:15'),
(45, 11, '21533815775.jpg', 'main_21533815775.jpg', '', '', '1', '2018-08-09 11:56:15'),
(46, 11, '31533815775.jpg', 'main_31533815775.jpg', '', '', '1', '2018-08-09 11:56:15'),
(47, 11, '41533815775.jpg', 'main_41533815775.jpg', '', '', '1', '2018-08-09 11:56:15'),
(48, 12, '11533815863.jpg', 'main_11533815863.jpg', '', '', '1', '2018-08-09 11:57:43'),
(49, 12, '21533815863.jpg', 'main_21533815863.jpg', '', '', '1', '2018-08-09 11:57:43'),
(50, 12, '31533815863.jpg', 'main_31533815863.jpg', '', '', '1', '2018-08-09 11:57:44'),
(51, 12, '41533815864.jpg', 'main_41533815864.jpg', '', '', '1', '2018-08-09 11:57:44'),
(52, 2, '11533816496.jpg', 'main_11533816496.jpg', '', '', '1', '2018-08-09 12:08:16'),
(53, 2, '21533816497.jpg', 'main_21533816497.jpg', '', '', '1', '2018-08-09 12:08:17'),
(54, 2, '31533816497.jpg', 'main_31533816497.jpg', '', '', '1', '2018-08-09 12:08:17'),
(55, 2, '41533816497.jpg', 'main_41533816497.jpg', '', '', '1', '2018-08-09 12:08:17'),
(56, 3, '11533816655.jpg', 'main_11533816655.jpg', '', '', '1', '2018-08-09 12:10:56'),
(57, 3, '21533816656.jpg', 'main_21533816656.jpg', '', '', '1', '2018-08-09 12:10:56'),
(58, 3, '31533816656.jpg', 'main_31533816656.jpg', '', '', '1', '2018-08-09 12:10:56'),
(59, 3, '41533816656.jpg', 'main_41533816656.jpg', '', '', '1', '2018-08-09 12:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_used_truck_enquiry`
--

CREATE TABLE `tbl_used_truck_enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_used_truck_enquiry`
--

INSERT INTO `tbl_used_truck_enquiry` (`id`, `name`, `mobile`, `email`, `state`, `product_id`, `product_name`, `is_delete`, `ip`, `agent`, `insert_date`) VALUES
(1, 'farheen parkar', '9869898989', 'farheen.parkar@bcwebwise.com', 'andaman & nicobar', 9, 'Truck 1214R', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 17:46:54'),
(2, 'farheen parkar ateting', '2387984979', 'fp@yopmail.com', 'andaman & nicobar', 2, 'Truck 2523C', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 17:52:41'),
(3, 'test entry', '3232432432', 'farheen.parkar@bcwebwise.com', 'andaman & nicobar', 2, 'Truck 2523C', '1', '182.76.177.54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-08-13 18:40:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_adminmenu`
--
ALTER TABLE `tbl_adminmenu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_adminsubmenu`
--
ALTER TABLE `tbl_adminsubmenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indexes for table `tbl_application`
--
ALTER TABLE `tbl_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_blog_author`
--
ALTER TABLE `tbl_blog_author`
  ADD PRIMARY KEY (`blog_author_id`);

--
-- Indexes for table `tbl_blog_comments`
--
ALTER TABLE `tbl_blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blogs_id` (`blogs_id`);

--
-- Indexes for table `tbl_bus_comfort`
--
ALTER TABLE `tbl_bus_comfort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bus_fuel_efficiency`
--
ALTER TABLE `tbl_bus_fuel_efficiency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bus_key_buying_factors`
--
ALTER TABLE `tbl_bus_key_buying_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bus_low_maintenance`
--
ALTER TABLE `tbl_bus_low_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bus_safety`
--
ALTER TABLE `tbl_bus_safety`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bus_specifications`
--
ALTER TABLE `tbl_bus_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_certification`
--
ALTER TABLE `tbl_certification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment_list`
--
ALTER TABLE `tbl_comment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_downloads`
--
ALTER TABLE `tbl_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_downloads_brand_images`
--
ALTER TABLE `tbl_downloads_brand_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_downloads_media`
--
ALTER TABLE `tbl_downloads_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_downloads_wallpapers`
--
ALTER TABLE `tbl_downloads_wallpapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_downloads_wallpapers_images`
--
ALTER TABLE `tbl_downloads_wallpapers_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_highlights`
--
ALTER TABLE `tbl_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_highlight_media`
--
ALTER TABLE `tbl_highlight_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_history_images`
--
ALTER TABLE `tbl_history_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_homebanner`
--
ALTER TABLE `tbl_homebanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_media_query`
--
ALTER TABLE `tbl_media_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_models`
--
ALTER TABLE `tbl_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pressrelease`
--
ALTER TABLE `tbl_pressrelease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pressrelease_media`
--
ALTER TABLE `tbl_pressrelease_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products_images`
--
ALTER TABLE `tbl_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_enquiry`
--
ALTER TABLE `tbl_sales_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_search`
--
ALTER TABLE `tbl_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_specification_images`
--
ALTER TABLE `tbl_specification_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state_master`
--
ALTER TABLE `tbl_state_master`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `state_zone_id` (`zone_id`);

--
-- Indexes for table `tbl_stores`
--
ALTER TABLE `tbl_stores`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `tbl_sub_application`
--
ALTER TABLE `tbl_sub_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_features`
--
ALTER TABLE `tbl_truck_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_features2`
--
ALTER TABLE `tbl_truck_features2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_key_buying_factors`
--
ALTER TABLE `tbl_truck_key_buying_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_products`
--
ALTER TABLE `tbl_truck_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_products_images`
--
ALTER TABLE `tbl_truck_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_product_types`
--
ALTER TABLE `tbl_truck_product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_specifications`
--
ALTER TABLE `tbl_truck_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_technology`
--
ALTER TABLE `tbl_truck_technology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_truck_wallpapers`
--
ALTER TABLE `tbl_truck_wallpapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_used_trucks`
--
ALTER TABLE `tbl_used_trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_used_trucks_gallery`
--
ALTER TABLE `tbl_used_trucks_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_used_truck_enquiry`
--
ALTER TABLE `tbl_used_truck_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_adminmenu`
--
ALTER TABLE `tbl_adminmenu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_adminsubmenu`
--
ALTER TABLE `tbl_adminsubmenu`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_application`
--
ALTER TABLE `tbl_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_blog_author`
--
ALTER TABLE `tbl_blog_author`
  MODIFY `blog_author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_blog_comments`
--
ALTER TABLE `tbl_blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bus_comfort`
--
ALTER TABLE `tbl_bus_comfort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_bus_fuel_efficiency`
--
ALTER TABLE `tbl_bus_fuel_efficiency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_bus_key_buying_factors`
--
ALTER TABLE `tbl_bus_key_buying_factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bus_low_maintenance`
--
ALTER TABLE `tbl_bus_low_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_bus_safety`
--
ALTER TABLE `tbl_bus_safety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_bus_specifications`
--
ALTER TABLE `tbl_bus_specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_certification`
--
ALTER TABLE `tbl_certification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_comment_list`
--
ALTER TABLE `tbl_comment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_downloads`
--
ALTER TABLE `tbl_downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_downloads_brand_images`
--
ALTER TABLE `tbl_downloads_brand_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_downloads_media`
--
ALTER TABLE `tbl_downloads_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_downloads_wallpapers`
--
ALTER TABLE `tbl_downloads_wallpapers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_downloads_wallpapers_images`
--
ALTER TABLE `tbl_downloads_wallpapers_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_highlights`
--
ALTER TABLE `tbl_highlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_highlight_media`
--
ALTER TABLE `tbl_highlight_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_history_images`
--
ALTER TABLE `tbl_history_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_homebanner`
--
ALTER TABLE `tbl_homebanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_media_query`
--
ALTER TABLE `tbl_media_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_models`
--
ALTER TABLE `tbl_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_pressrelease`
--
ALTER TABLE `tbl_pressrelease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_pressrelease_media`
--
ALTER TABLE `tbl_pressrelease_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_products_images`
--
ALTER TABLE `tbl_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_sales_enquiry`
--
ALTER TABLE `tbl_sales_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_search`
--
ALTER TABLE `tbl_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_specification_images`
--
ALTER TABLE `tbl_specification_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbl_state_master`
--
ALTER TABLE `tbl_state_master`
  MODIFY `state_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_stores`
--
ALTER TABLE `tbl_stores`
  MODIFY `sd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `tbl_sub_application`
--
ALTER TABLE `tbl_sub_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_truck_features`
--
ALTER TABLE `tbl_truck_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_truck_features2`
--
ALTER TABLE `tbl_truck_features2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_truck_key_buying_factors`
--
ALTER TABLE `tbl_truck_key_buying_factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_truck_products`
--
ALTER TABLE `tbl_truck_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_truck_products_images`
--
ALTER TABLE `tbl_truck_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_truck_product_types`
--
ALTER TABLE `tbl_truck_product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_truck_specifications`
--
ALTER TABLE `tbl_truck_specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_truck_technology`
--
ALTER TABLE `tbl_truck_technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_truck_wallpapers`
--
ALTER TABLE `tbl_truck_wallpapers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_used_trucks`
--
ALTER TABLE `tbl_used_trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_used_trucks_gallery`
--
ALTER TABLE `tbl_used_trucks_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_used_truck_enquiry`
--
ALTER TABLE `tbl_used_truck_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
