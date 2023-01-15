-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2022 at 04:48 PM
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
-- Database: `spescho-dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2022_02_05_235057_create_roles_table', 1),
(6, '2022_02_06_224718_create_permissions_table', 1),
(8, '2022_02_07_001731_create_special_needs_table', 1),
(9, '2022_02_07_132610_create_difficulties_table', 2),
(10, '2022_02_07_145820_create_therapies_table', 3),
(11, '2022_02_07_150910_create_goals_table', 4),
(12, '2022_02_07_152423_create_designations_table', 5),
(13, '2022_02_07_154041_create_students_table', 6),
(14, '2022_02_07_155400_create_student_documents_table', 6),
(16, '2022_02_07_160329_create_student_difficulties_table', 6),
(17, '2022_02_07_160433_create_student_goals_table', 6),
(28, '2022_02_05_234827_create_users_table', 9),
(30, '2022_02_08_215540_create_user_documents_table', 10),
(31, '2022_02_07_160057_create_student_special_needs_table', 11),
(33, '2022_02_16_001950_create_subjects_table', 13),
(36, '2022_02_16_115425_create_plan_therapy_evaluations_table', 15),
(37, '2022_02_16_115808_create_plan_subjects_table', 15),
(38, '2022_02_16_115947_create_plan_subject_evaluations_table', 15),
(39, '2022_02_16_120146_create_plan_goals_table', 15),
(45, '2022_02_19_195841_create_attendances_table', 17),
(46, '2022_02_06_224748_create_user_permissions_table', 18),
(47, '2022_02_21_233134_create_payroll_payment_modes_table', 19),
(48, '2022_02_22_001235_create_payrolls_table', 19),
(50, '2022_03_01_201615_create_expenses_table', 20),
(51, '2022_03_01_202036_create_expense_categories_table', 20),
(54, '2022_03_01_221021_create_paypal_settings_table', 21),
(55, '2022_03_01_221351_create_stripe_settings_table', 21),
(56, '2022_03_01_230607_create_sslcommerz_settings_table', 21),
(58, '2022_03_02_211749_create_transactions_table', 22),
(61, '2022_03_04_225017_create_transactions_table', 24),
(66, '2022_02_12_214602_create_plans_table', 25),
(67, '2022_02_16_114746_create_plan_therapies_table', 26),
(71, '2022_03_25_182223_create_payment_settings_table', 28),
(77, '2022_04_18_220957_create_payments_table', 32),
(78, '2022_02_17_140159_add_extra_table_field', 33),
(79, '2022_02_05_222611_create_organizations_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendances`
--

CREATE TABLE `tbl_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `in_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_hour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(11) DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_attendances`
--

INSERT INTO `tbl_attendances` (`id`, `organization_id`, `reference`, `user_id`, `in_time`, `out_time`, `work_hour`, `note`, `added_by`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, '000001', 10, '2022-02-19 20:39', '2022-02-19 23:01', '02:22', NULL, NULL, 'LIVE', '2022-02-19 14:39:34', '2022-02-19 17:01:05'),
(2, 1, '000002', 8, '2022-02-19 20:41', '2022-02-19 22:59', '02.18', NULL, NULL, 'LIVE', '2022-02-19 14:41:55', '2022-02-19 16:59:47'),
(3, 1, '000003', 9, '2022-02-19 20:43', '2022-02-19 21:09', '00.26', 'Forget to logout', NULL, 'LIVE', '2022-02-19 14:43:51', '2022-02-19 15:09:35'),
(4, 1, '000004', 9, '2022-02-21 20:28', '2022-02-23 22:27', '01.59', NULL, NULL, 'LIVE', '2022-02-21 14:28:24', '2022-02-23 16:27:46'),
(5, 1, '000005', 9, '2022-02-26 18:01', '2022-02-26 18:05', '00.04', NULL, NULL, 'LIVE', '2022-02-26 12:01:53', '2022-02-26 12:05:41'),
(6, 1, '000006', 9, '2022-02-26 18:06', '2022-02-26 19:03', '00.57', NULL, NULL, 'LIVE', '2022-02-26 12:06:29', '2022-02-26 13:03:11'),
(7, 1, '000007', 9, '2022-02-26 19:04', '2022-02-27 00:00', '04.56', NULL, NULL, 'LIVE', '2022-02-26 13:04:11', '2022-02-26 18:00:10'),
(8, 1, '000008', 9, '2022-02-27 00:00', '2022-02-28 17:04', '17.04', NULL, NULL, 'LIVE', '2022-02-26 18:00:48', '2022-02-28 11:04:09'),
(9, 1, '000009', 8, '2022-02-28 20:22', '2022-02-28 20:23', '00.01', NULL, NULL, 'LIVE', '2022-02-28 14:22:45', '2022-02-28 14:23:26'),
(10, 1, '000010', 8, '2022-02-28 20:23', '2022-03-12 22:48', '02.25', NULL, NULL, 'LIVE', '2022-02-28 14:23:31', '2022-03-12 16:48:05'),
(11, 1, '000011', 8, '2022-03-12 22:48', '2022-03-19 21:49', '23.01', NULL, NULL, 'LIVE', '2022-03-12 16:48:09', '2022-03-19 15:49:39'),
(12, 1, '000012', 8, '2022-03-19 21:50', '2022-03-19 21:51', '00.01', NULL, NULL, 'LIVE', '2022-03-19 15:50:26', '2022-03-19 15:51:55'),
(13, 1, NULL, 8, '2022-03-19 21:54', '2022-03-21 23:19', '01.25', NULL, NULL, 'LIVE', '2022-03-19 15:54:18', '2022-03-22 16:12:00'),
(14, 1, '000014', 8, '2022-03-22 21:51', NULL, '0', NULL, NULL, 'DELETED', '2022-03-22 15:51:13', '2022-03-28 15:51:12'),
(15, 1, '000014', 10, '2022-04-09 17:19', '2022-04-09 17:27', '00.08', NULL, NULL, 'LIVE', '2022-04-09 11:19:58', '2022-04-09 11:27:14'),
(16, 1, '000015', 9, '2022-06-01 18:18', NULL, '0', NULL, NULL, 'LIVE', '2022-06-01 12:18:08', '2022-06-01 12:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designations`
--

CREATE TABLE `tbl_designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_designations`
--

INSERT INTO `tbl_designations` (`id`, `organization_id`, `name`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'CPA', 'Accounting. Chartered Professional Accountant', 'LIVE', '2022-02-07 09:35:03', '2022-02-07 09:35:03'),
(2, 1, 'CFA', 'Finance. Chartered Financial Analyst', 'LIVE', '2022-02-07 09:35:19', '2022-02-07 09:35:19'),
(3, 1, 'CHRP/CHRL', 'Human Resources. Certified Human Resources Professional/Leader', 'LIVE', '2022-02-07 09:35:35', '2022-02-07 09:35:35'),
(4, 1, 'CIM', 'Management. Certified In Management', 'LIVE', '2022-02-07 09:35:49', '2022-02-07 09:35:49'),
(5, 1, 'CSCP', 'Supply Chain and Logistics. Certified Supply Chain Professional', 'LIVE', '2022-02-07 09:36:09', '2022-02-07 09:36:28'),
(6, 1, 'Delete check', 'Delete check', 'DELETED', '2022-02-07 09:36:45', '2022-02-07 09:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_difficulties`
--

CREATE TABLE `tbl_difficulties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_difficulties`
--

INSERT INTO `tbl_difficulties` (`id`, `organization_id`, `title`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'attention deficit hyperactivity disorder (ADHD)', 'The symptoms of attention deficit hyperactivity disorder (ADHD) can be categorised into 2 types of behavioural problems:\r\n\r\ninattentiveness (difficulty concentrating and focusing)\r\nhyperactivity and impulsiveness\r\nMany people with ADHD have problems that fall into both these categories, but this is not always the case.\r\nFor example, around 2 to 3 in 10 people with the condition have problems with concentrating and focusing, but not with hyperactivity or impulsiveness.', 'LIVE', '2022-02-07 08:47:54', '2022-02-07 08:47:54'),
(2, 1, 'personality disorders', 'conditions in which an individual differs significantly from the average person in terms of how they think, perceive, feel or relate to others', 'LIVE', '2022-02-07 08:48:56', '2022-02-07 08:48:56'),
(3, 1, 'bipolar disorder', 'a condition affecting your mood, which can swing from one extreme to another', 'LIVE', '2022-02-07 08:49:49', '2022-02-07 08:53:57'),
(4, 1, 'Delete check', 'Delete check', 'DELETED', '2022-02-07 08:54:17', '2022-02-07 08:54:25'),
(5, 1, 'check difficulty one', NULL, 'LIVE', '2022-03-19 11:30:52', '2022-03-19 11:30:52'),
(6, 1, 'check difficulty two', 'check difficulty two', 'LIVE', '2022-03-19 11:39:29', '2022-03-19 11:39:29'),
(7, 1, 'check difficulty three', 'check difficulty three', 'LIVE', '2022-03-19 11:39:41', '2022-03-19 11:39:41'),
(8, 1, 'check difficulty four', NULL, 'LIVE', '2022-03-19 12:01:03', '2022-03-19 12:01:03'),
(9, 1, 'check difficulty five', NULL, 'LIVE', '2022-03-19 12:50:07', '2022-03-19 12:50:07'),
(10, 1, 'check difficulty six', NULL, 'LIVE', '2022-03-19 12:52:50', '2022-03-19 12:52:50'),
(11, 1, 'check difficulty seven', NULL, 'LIVE', '2022-03-19 12:53:57', '2022-03-19 12:53:57'),
(12, 1, 'check difficulty eight', NULL, 'LIVE', '2022-03-19 12:54:55', '2022-03-19 12:54:55'),
(13, 1, 'check difficulty 252', NULL, 'LIVE', '2022-03-19 13:00:59', '2022-03-19 13:00:59'),
(14, 1, 'Check difficulty 253', 'Check difficulty 253', 'LIVE', '2022-03-20 05:25:23', '2022-03-20 05:25:23'),
(15, 1, 'check difficulty 254', NULL, 'LIVE', '2022-03-20 15:03:27', '2022-03-20 15:03:27'),
(16, 1, 'check difficulty 255', NULL, 'LIVE', '2022-03-20 15:04:00', '2022-03-20 15:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(11) DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_expenses`
--

INSERT INTO `tbl_expenses` (`id`, `organization_id`, `date`, `amount`, `category_id`, `note`, `added_by`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-01', 100.00, 1, 'Check note', 1, 'LIVE', '2022-03-01 17:49:40', '2022-03-01 17:50:36'),
(2, 1, '2022-03-01', 500.00, 2, NULL, 1, 'DELETED', '2022-03-01 17:52:20', '2022-03-01 17:52:46'),
(3, 1, '2022-03-24', 200.00, 3, 'Electricity bill', 1, 'LIVE', '2022-03-25 04:54:38', '2022-03-25 04:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_categories`
--

CREATE TABLE `tbl_expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_expense_categories`
--

INSERT INTO `tbl_expense_categories` (`id`, `organization_id`, `title`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gas Bill', 'Gas Bill', 'LIVE', '2022-03-01 17:26:49', '2022-03-01 17:26:49'),
(2, 1, 'Water Bill', 'Water Bill', 'LIVE', '2022-03-01 17:27:05', '2022-03-01 17:27:05'),
(3, 1, 'Electric Bill', 'Electric Bill', 'LIVE', '2022-03-01 17:27:20', '2022-03-01 17:27:20'),
(4, 1, 'House Rent', 'House Rent', 'LIVE', '2022-03-01 17:27:36', '2022-03-01 17:27:36'),
(5, 1, 'Salary', 'Salary', 'LIVE', '2022-03-01 17:27:52', '2022-03-01 17:28:03'),
(6, 1, 'Delete check', 'd', 'DELETED', '2022-03-01 17:28:15', '2022-03-01 17:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goals`
--

CREATE TABLE `tbl_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_goals`
--

INSERT INTO `tbl_goals` (`id`, `organization_id`, `title`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Short-term goals', 'Short-term goals (especially ones that are realistic and attainable) have the benefit of providing nearly instant gratification, unlike goals spread over a year or a few months. These small milestones can actually set the stage for accomplishing goals over a longer term or be used throughout the year as benchmarks. Short-term goals work well for younger students, but you shouldn’t discount their worth for older students — everyone loves the feeling of accomplishment. Plus they are a great way to get the ball rolling and introduce goal setting to students', 'LIVE', '2022-02-07 09:17:28', '2022-02-07 09:17:28'),
(2, 1, 'Long-term goals', 'For a more complex goal, you need to set your sights on the long term — a goal that is worked on throughout the school year or over a semester. These goals will involve multiple steps and require check-ins along the way to ensure that the student is still on track. As mentioned earlier, you can sometimes check off short-term goals along the way as they lead up to the main goal. Encouragement is key here, as well as simple reminders of both the goal and the required pacing.', 'LIVE', '2022-02-07 09:17:54', '2022-02-07 09:17:54'),
(3, 1, 'Work-habit goals', 'Some goals may depend less on what’s being worked on and more on how the student is working. If some students practice poor work habits and that ends up impeding their learning, those areas may great targets for goal setting. Students of all grade levels can analyze their own work habits with guidance to identify areas for improvement.', 'LIVE', '2022-02-07 09:18:12', '2022-02-07 09:18:12'),
(4, 1, 'Subject-area goals', 'These goals are fairly straightforward in terms of their meaning: You and your student identify which subject requires the most extra attention and go from there. The steps involved in reaching a subject-area goal should be specific; the end goal is typically to improve a final grade, or to improve a series of grade marks. If grades are not an issue and a student still identifies a certain subject as one that they’d like to set goals for, they may be craving more extended or advanced learning in that particular area.', 'LIVE', '2022-02-07 09:18:29', '2022-02-07 09:18:29'),
(5, 1, 'Behavioral goals', 'Behavioral goals are those such as getting along better with classmates, practicing patience, being quiet when needed, etc. Depending on the nature of the behavior goal, these may be best set privately between teacher and student (with parental involvement, or other support staff). If the behavior goal applies to the whole class, it’s best to set the goal when all students are present. Talk to students about why it would be important to improve in these areas and be sure to give concrete examples of good behavioral goals. Reward systems align well with behavior goals. Rewards can be for the whole class if a class behavior goal has been set and met; alternatively, if the focus is on individual goals, students who begin to complete milestones for their goals might earn extra reading or computer time.', 'LIVE', '2022-02-07 09:18:46', '2022-02-07 09:18:46'),
(6, 1, 'Specific knowledge goals', 'A specific knowledge goal can be set in any class at any time. There is always more to know and improve on, so each student can choose something they want to learn more about, a skill to refine, or an entirely new concept to dive into. This goal pairs especially well with personalized learning initiatives.', 'LIVE', '2022-02-07 09:19:07', '2022-02-07 09:21:02'),
(7, 1, 'Delete check', 'Delete check', 'DELETED', '2022-02-07 09:21:23', '2022-02-07 09:21:31'),
(8, 1, 'check goal one', NULL, 'LIVE', '2022-03-19 11:31:32', '2022-03-19 11:31:32'),
(9, 1, 'check goal two', 'check goal two', 'LIVE', '2022-03-19 11:32:07', '2022-03-19 11:32:07'),
(10, 1, 'check goal three', NULL, 'LIVE', '2022-03-19 11:37:54', '2022-03-19 11:37:54'),
(11, 1, 'check goal four', NULL, 'LIVE', '2022-03-19 12:00:45', '2022-03-19 12:00:45'),
(12, 1, 'check goal five', NULL, 'LIVE', '2022-03-19 12:07:02', '2022-03-19 12:07:02'),
(13, 1, 'check goal six', NULL, 'LIVE', '2022-03-19 12:07:56', '2022-03-19 12:07:56'),
(14, 1, 'check goal seven', NULL, 'LIVE', '2022-03-19 12:10:38', '2022-03-19 12:10:38'),
(25, 1, 'check goal four gdfgdf', NULL, 'LIVE', '2022-03-19 12:30:24', '2022-03-19 12:30:24'),
(26, 1, 'check goal dsfdsfdsf', NULL, 'LIVE', '2022-03-19 12:32:13', '2022-03-19 12:32:13'),
(27, 1, 'check goal sa', NULL, 'LIVE', '2022-03-19 12:33:29', '2022-03-19 12:33:29'),
(28, 1, 'check goal 252', NULL, 'LIVE', '2022-03-19 13:00:48', '2022-03-19 13:00:48'),
(29, 1, 'Check goal 253', 'Check goal 253', 'LIVE', '2022-03-20 05:25:42', '2022-03-20 05:25:42'),
(30, 1, 'check goal 254', NULL, 'LIVE', '2022-03-20 15:03:47', '2022-03-20 15:03:47'),
(31, 1, 'check goal 255', NULL, 'LIVE', '2022-03-20 15:07:46', '2022-03-20 15:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organizations`
--

CREATE TABLE `tbl_organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_organizations`
--

INSERT INTO `tbl_organizations` (`id`, `name`, `phone`, `email`, `website`, `address`, `city`, `state`, `country`, `timezone`, `date_format`, `time_format`, `currency`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Organization Name', '26419162161', 'info@doorsoft.co', NULL, 'House No: 5, Road No: 4, Nikunja 2, Khilkhet, Dhaka.', 'Dhaka', 'Dhaka', 'BANGLADESH', 'Asia/Dhaka', 'd/m/Y', 'HH:MM', 'USD', 'images/1654067895logo3.png', '2022-06-01 07:15:53', '2022-06-01 07:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '1=>Monthly, 2=> Per Therapy',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'If payment type monthly education fee',
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'If payment type monthly education fee',
  `therapy_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'If payment type per therapy',
  `amount` double(8,2) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Un paid, 2=> Paid, 3=> Canceled',
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` double(8,2) DEFAULT NULL,
  `payment_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `note` text COLLATE utf8mb4_unicode_ci,
  `received_by` int(11) DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`id`, `organization_id`, `plan_id`, `student_id`, `parent_id`, `payment_type`, `month`, `year`, `therapy_id`, `amount`, `payment_status`, `payment_gateway`, `transaction_id`, `payment_amount`, `payment_time`, `currency`, `status`, `note`, `received_by`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 13, 2, NULL, NULL, '1', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(2, 1, 1, 1, 13, 2, NULL, NULL, '2', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(3, 1, 1, 1, 13, 2, NULL, NULL, '3', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(4, 1, 1, 1, 13, 2, NULL, NULL, '4', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(5, 1, 1, 1, 13, 2, NULL, NULL, '5', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(6, 1, 1, 1, 13, 2, NULL, NULL, '6', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(7, 1, 1, 1, 13, 2, NULL, NULL, '7', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(8, 1, 1, 1, 13, 2, NULL, NULL, '8', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(9, 1, 1, 1, 13, 2, NULL, NULL, '9', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(10, 1, 1, 1, 13, 2, NULL, NULL, '10', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(11, 1, 1, 1, 13, 2, NULL, NULL, '11', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(12, 1, 1, 1, 13, 2, NULL, NULL, '12', 30.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58'),
(13, 1, 1, 1, 13, 1, 'June', '2022', NULL, 500.00, 1, NULL, NULL, NULL, NULL, NULL, 'PENDING', NULL, NULL, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_settings`
--

CREATE TABLE `tbl_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `ssl_active` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Active,2=>In Active',
  `ssl_sanbox_store_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_sanbox_store_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_live_store_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_live_store_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_active_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sanbox',
  `paypal_active` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Active,2=>In Active',
  `paypal_sanbox_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sanbox_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sanbox_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_live_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_live_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_live_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_active_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sanbox',
  `stripe_active` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Active,2=>In Active',
  `stripe_sanbox_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_sanbox_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_live_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_live_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_active_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sanbox',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment_settings`
--

INSERT INTO `tbl_payment_settings` (`id`, `organization_id`, `ssl_active`, `ssl_sanbox_store_id`, `ssl_sanbox_store_password`, `ssl_live_store_id`, `ssl_live_store_password`, `ssl_active_mode`, `paypal_active`, `paypal_sanbox_client_id`, `paypal_sanbox_client_secret`, `paypal_sanbox_app_id`, `paypal_live_client_id`, `paypal_live_client_secret`, `paypal_live_app_id`, `paypal_active_mode`, `stripe_active`, `stripe_sanbox_key`, `stripe_sanbox_secret`, `stripe_live_key`, `stripe_live_secret`, `stripe_active_mode`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'na5f91242e6563a', 'na5f91242e6563a@ssl', NULL, NULL, 'live', 1, 'Ac5mYzoRWYcW5XxlPVoaZnyqIsbpxfUQalQesf1nUdI1JMctn5sr7tDGjSeR-4WrX5utvr9Rtml5A8dG', 'ECQ_ipYoTN9GBODRcTLxkuBJwN-dx6CZb-deiwarxOhgzdMMtU46ex_psG_1EEFLqS6BqF_Sg9uxZ4sF', NULL, NULL, NULL, NULL, 'sanbox', 1, 'pk_test_51KYYiIAm8i3I2WzVfpvmWJVk3s8JBjQzzkvwCin3sa7l05mGlV1jaTEwm82NU1DG1CUfapSN3neIzfoTQUSMOMWL00hJHqtdzI', 'sk_test_51KYYiIAm8i3I2WzViL9aoqLmvvqgu3Hazol4c8skEM7OKz4P4SWxT6kWuIwf45vPpQHeLgrg37fMT8LF5CYngoyz002H3V2zgn', NULL, NULL, 'sanbox', 'LIVE', '2022-03-25 14:35:05', '2022-04-04 16:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payrolls`
--

CREATE TABLE `tbl_payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=>Per Session/Class,2=>Monthly',
  `payment_amount` double(8,2) NOT NULL,
  `total_session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `addition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `subtraction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_salary` double(8,2) NOT NULL DEFAULT '0.00',
  `note` text COLLATE utf8mb4_unicode_ci,
  `added_by` int(11) DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payrolls`
--

INSERT INTO `tbl_payrolls` (`id`, `organization_id`, `payment_mode_id`, `user_id`, `payment_mode`, `payment_amount`, `total_session`, `addition`, `subtraction`, `total_salary`, `note`, `added_by`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, '2', 1500.00, '0', '010', '03', 1507.00, 'Check note one', NULL, 'LIVE', NULL, NULL),
(2, 1, 1, 11, '2', 1500.00, '0', '05', '03', 1502.00, 'Check note two', NULL, 'LIVE', NULL, NULL),
(5, 1, 3, 8, '1', 10.00, '1', '10', '3', 17.00, NULL, NULL, 'LIVE', NULL, NULL),
(6, 1, 3, 12, '1', 12.00, '1', '0', '3', 9.00, NULL, NULL, 'LIVE', NULL, NULL),
(7, 1, 3, 13, '1', 15.00, '0', '0', '0', 0.00, NULL, NULL, 'LIVE', NULL, NULL),
(8, 1, 3, 17, '1', 15.00, '3', '0', '3', 42.00, NULL, NULL, 'LIVE', NULL, NULL),
(9, 1, 3, 18, '1', 12.00, '3', '0', '3', 33.00, NULL, NULL, 'LIVE', NULL, NULL),
(10, 1, 4, 8, '1', 10.00, '1', '0', '0', 10.00, NULL, NULL, 'LIVE', NULL, NULL),
(11, 1, 4, 12, '1', 12.00, '1', '0', '0', 12.00, NULL, NULL, 'LIVE', NULL, NULL),
(12, 1, 4, 13, '1', 15.00, '0', '0', '0', 0.00, NULL, NULL, 'LIVE', NULL, NULL),
(13, 1, 4, 17, '1', 15.00, '3', '0', '0', 45.00, NULL, NULL, 'LIVE', NULL, NULL),
(14, 1, 4, 18, '1', 12.00, '3', '0', '0', 36.00, NULL, NULL, 'LIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payroll_payment_modes`
--

CREATE TABLE `tbl_payroll_payment_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL COMMENT '1=>Per Session/Class,2=>Monthly',
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payroll_payment_modes`
--

INSERT INTO `tbl_payroll_payment_modes` (`id`, `organization_id`, `payment_mode`, `year`, `month`, `start_date`, `end_date`, `added_by`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022', 'January', NULL, NULL, NULL, 'LIVE', '2022-02-22 12:16:44', '2022-02-22 12:16:44'),
(3, 1, 1, NULL, NULL, '2022-02-01', '2022-02-28', NULL, 'LIVE', '2022-02-22 12:38:58', '2022-02-22 12:38:58'),
(4, 1, 1, NULL, NULL, '2022-02-10', '2022-02-25', NULL, 'LIVE', '2022-02-22 16:17:20', '2022-02-22 16:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissions`
--

CREATE TABLE `tbl_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_permissions`
--

INSERT INTO `tbl_permissions` (`id`, `organization_id`, `permission`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'organization_setting', 'LIVE', NULL, NULL),
(2, 1, 'staff_parent_management', 'LIVE', NULL, NULL),
(3, 1, 'student_management', 'LIVE', NULL, NULL),
(4, 1, 'attendance_management', 'LIVE', NULL, NULL),
(5, 1, 'payroll_management', 'LIVE', NULL, NULL),
(6, 1, 'expense_management', 'LIVE', NULL, NULL),
(7, 1, 'payment_management', 'LIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plans`
--

CREATE TABLE `tbl_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `plan_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_goal_note` text COLLATE utf8mb4_unicode_ci,
  `monthly_education_fee` double(8,2) DEFAULT NULL,
  `per_therapy_fee` double DEFAULT NULL,
  `plan_status` int(11) DEFAULT NULL COMMENT '1=>Draft,2=>Final,3=>Canceled',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plans`
--

INSERT INTO `tbl_plans` (`id`, `organization_id`, `student_id`, `plan_title`, `start_date`, `end_date`, `plan_goal_note`, `monthly_education_fee`, `per_therapy_fee`, `plan_status`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'plan for fifteen days', '2022-06-04', '2022-06-18', 'Additional Note For Goal', 500.00, 30, 2, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_goals`
--

CREATE TABLE `tbl_plan_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `goal_id` int(11) NOT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plan_goals`
--

INSERT INTO `tbl_plan_goals` (`id`, `organization_id`, `plan_id`, `goal_id`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_subjects`
--

CREATE TABLE `tbl_plan_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Teacher User',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Pending,2=>Incomplete,3=>Complete',
  `reason` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plan_subjects`
--

INSERT INTO `tbl_plan_subjects` (`id`, `organization_id`, `plan_id`, `subject_id`, `date`, `time`, `user_id`, `del_status`, `created_at`, `updated_at`, `status`, `reason`) VALUES
(1, 1, 1, 1, '2022-06-04', '22:19', 8, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(2, 1, 1, 10, '2022-06-04', '22:20', 8, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(3, 1, 1, 14, '2022-06-05', '22:20', 8, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_subject_evaluations`
--

CREATE TABLE `tbl_plan_subject_evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Teacher User',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `student_id` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plan_subject_evaluations`
--

INSERT INTO `tbl_plan_subject_evaluations` (`id`, `organization_id`, `plan_id`, `date`, `user_id`, `del_status`, `created_at`, `updated_at`, `note`, `student_id`, `mark`) VALUES
(1, 1, 1, '2022-06-04', 8, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:24:18', 'Five', 1, 5),
(2, 1, 1, '2022-06-04', 8, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:24:33', 'Seven', 1, 7),
(3, 1, 1, '2022-06-05', 8, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:24:46', 'Ten', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_therapies`
--

CREATE TABLE `tbl_plan_therapies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `therapy_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_therapy_fee` double DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Therapist User',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=>Pending,2=>Incomplete,3=>Complete',
  `reason` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plan_therapies`
--

INSERT INTO `tbl_plan_therapies` (`id`, `organization_id`, `plan_id`, `therapy_id`, `date`, `time`, `per_therapy_fee`, `user_id`, `del_status`, `created_at`, `updated_at`, `status`, `reason`) VALUES
(1, 1, 1, 1, '2022-06-04', '22:17', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(2, 1, 1, 2, '2022-06-04', '22:17', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(3, 1, 1, 3, '2022-06-04', '22:17', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(4, 1, 1, 5, '2022-06-05', '22:17', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(5, 1, 1, 6, '2022-06-06', '22:17', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(6, 1, 1, 3, '2022-06-07', '22:18', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(7, 1, 1, 6, '2022-06-08', '22:18', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(8, 1, 1, 3, '2022-06-09', '22:18', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(9, 1, 1, 5, '2022-06-10', '22:18', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(10, 1, 1, 4, '2022-06-11', '22:18', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(11, 1, 1, 5, '2022-06-12', '22:18', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL),
(12, 1, 1, 4, '2022-06-17', '22:19', 30, 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_therapy_evaluations`
--

CREATE TABLE `tbl_plan_therapy_evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Therapist User',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `student_id` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plan_therapy_evaluations`
--

INSERT INTO `tbl_plan_therapy_evaluations` (`id`, `organization_id`, `plan_id`, `date`, `user_id`, `del_status`, `created_at`, `updated_at`, `note`, `student_id`, `mark`) VALUES
(1, 1, 1, '2022-06-04', 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:23:07', 'Better improvement', 1, 9),
(2, 1, 1, '2022-06-04', 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:23:35', 'Five marks', 1, 5),
(3, 1, 1, '2022-06-05', 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:24:00', 'Three marks', 1, 3),
(4, 1, 1, '2022-06-06', 9, 'LIVE', '2022-06-04 16:20:58', '2022-06-04 16:20:58', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `organization_id`, `name`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'Super Admin', 'LIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_special_needs`
--

CREATE TABLE `tbl_special_needs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_special_needs`
--

INSERT INTO `tbl_special_needs` (`id`, `organization_id`, `title`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Behavior Disorders', 'Behavior Disorders', 'LIVE', '2022-02-07 07:17:03', '2022-02-07 07:24:46'),
(2, 1, 'Cerebral Palsy', 'Cerebral Palsy', 'LIVE', '2022-02-07 07:17:16', '2022-02-07 07:17:16'),
(3, 1, 'Cleft Lip and Palate', 'Cleft Lip and Palate', 'LIVE', '2022-02-07 07:17:27', '2022-02-07 07:17:27'),
(4, 1, 'Cystic Fibrosis', 'Cystic Fibrosis', 'LIVE', '2022-02-07 07:17:38', '2022-02-07 07:17:38'),
(5, 1, 'Down Syndrome', 'Down Syndrome', 'LIVE', '2022-02-07 07:17:49', '2022-02-07 07:17:49'),
(6, 1, 'Hearing Disorders', 'Hearing Disorders', 'LIVE', '2022-02-07 07:18:03', '2022-02-07 07:18:03'),
(7, 1, 'Hemophilia', 'Hemophilia', 'LIVE', '2022-02-07 07:18:14', '2022-02-07 07:18:14'),
(8, 1, 'Intellectual Disabilities', 'Intellectual Disabilities', 'LIVE', '2022-02-07 07:18:30', '2022-02-07 07:18:30'),
(9, 1, 'Learning Disabilities', 'Learning Disabilities', 'LIVE', '2022-02-07 07:18:41', '2022-02-07 07:18:41'),
(10, 1, 'Paraplegia', 'Paraplegia', 'LIVE', '2022-02-07 07:18:59', '2022-02-07 07:20:43'),
(11, 1, 'Quadriplegia', 'Quadriplegia', 'LIVE', '2022-02-07 07:21:04', '2022-02-07 07:21:04'),
(12, 1, 'Seizure Disorders', 'Seizure Disorders', 'LIVE', '2022-02-07 07:21:18', '2022-02-07 07:21:18'),
(13, 1, 'Sensory Processing Disorder', 'Sensory Processing Disorder', 'LIVE', '2022-02-07 07:21:31', '2022-02-07 07:21:31'),
(14, 1, 'Spina Bifida', 'Spina Bifida', 'LIVE', '2022-02-07 07:21:44', '2022-02-07 07:21:44'),
(15, 1, 'Substance-Exposed Infants', 'Substance-Exposed Infants', 'LIVE', '2022-02-07 07:22:04', '2022-02-07 07:22:04'),
(16, 1, 'Vision Impairment', 'Vision Impairment', 'LIVE', '2022-02-07 07:22:19', '2022-02-07 07:22:19'),
(17, 1, 'Traumatic Brain Injury.', 'Traumatic Brain Injury.', 'LIVE', '2022-02-07 07:22:30', '2022-02-07 07:22:30'),
(18, 1, 'Delete check', NULL, 'Deleted', '2022-02-07 07:23:13', '2022-02-07 07:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff_parents`
--

CREATE TABLE `tbl_staff_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci,
  `family_history` text COLLATE utf8mb4_unicode_ci,
  `medical_history` text COLLATE utf8mb4_unicode_ci,
  `food_habit` text COLLATE utf8mb4_unicode_ci,
  `current_medication` text COLLATE utf8mb4_unicode_ci,
  `admission_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_fee` double(8,2) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1=>Active,2=>In Active',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `organization_id`, `student_id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `age`, `height`, `weight`, `parent_id`, `image`, `additional_information`, `family_history`, `medical_history`, `food_habit`, `current_medication`, `admission_date`, `admission_fee`, `status`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, '000001', 'Michael', 'Reiniger', 'Male', '1994-09-30', '27 years, 5 months and 17 days', '5\"\"', '56kg', 13, 'images/1644424420download (1).jpg', NULL, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '2022-03-19', 100.00, '1', 'LIVE', '2022-02-08 11:44:17', '2022-03-19 13:35:46'),
(2, 1, '000002', 'Franziska', 'Eggers', 'Female', '2013-04-06', '8 years, 11 months and 14 days', '4', '40', 14, 'images/1644320852img_avatar2.png', NULL, 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', '2022-03-20', 200.00, '2', 'LIVE', '2022-02-08 11:47:33', '2022-03-20 10:36:44'),
(3, 1, '000003', 'Rose', 'Dorsey', 'Female', '2013-04-06', '8', '4', '40', 14, 'images/1644424793download (10).png', NULL, 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', NULL, 200.00, '1', 'LIVE', '2022-02-08 11:47:58', '2022-03-19 04:27:31'),
(4, 1, '000004', 'Michael', 'King', 'Male', '2013-04-06', '8', '4', '40', 14, 'images/1644424897download (3).png', NULL, 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', '2022-03-19', 200.00, '1', 'LIVE', '2022-02-08 11:48:19', '2022-03-19 13:25:49'),
(5, 1, '000005', 'Fred', 'Pierre', 'Male', '2013-04-06', '8 years, 11 months and 13 days', '4', '40', 12, 'images/1644425253download.png', NULL, 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', '2022-03-19', 200.00, '1', 'LIVE', '2022-02-08 11:48:40', '2022-03-19 13:37:38'),
(6, 1, '000006', 'Margie', 'Joyce', 'Female', '2013-04-06', '8 years, 11 months and 13 days', '4', '40', 1, 'images/1644425674images (1).png', NULL, 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', '2022-03-19', 200.00, '1', 'LIVE', '2022-02-08 11:49:04', '2022-03-19 13:37:49'),
(7, 1, '000007', 'Franziska', 'Eggers', 'Female', '2013-04-06', '8 years, 11 months and 13 days', '4', '40', 1, 'images/1644320984img_avatar2.png', NULL, 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', 'TRACKING NUMBERS\r\nUPS tracking number\r\n1Z 062 425 17 3813 823 0\r\nWestern Union MTCN\r\n6727608672\r\nMoneyGram MTCN\r\n51577369', '2022-03-19', 200.00, '1', 'LIVE', '2022-02-08 11:49:44', '2022-03-19 13:38:05'),
(8, 1, '000008', 'Erik', 'Schreiber', 'Male', '2005-07-08', '16 years, 8 months and 11 days', '5\"\"', '56kg', 1, 'images/1644321334—Pngtree—user vector avatar_4830521.png', NULL, 'UPS tracking number\r\n1Z 0W9 080 68 2838 446 4\r\nWestern Union MTCN\r\n8635011984\r\nMoneyGram MTCN\r\n46149955', 'UPS tracking number\r\n1Z 0W9 080 68 2838 446 4\r\nWestern Union MTCN\r\n8635011984\r\nMoneyGram MTCN\r\n46149955', 'UPS tracking number\r\n1Z 0W9 080 68 2838 446 4\r\nWestern Union MTCN\r\n8635011984\r\nMoneyGram MTCN\r\n46149955', 'UPS tracking number\r\n1Z 0W9 080 68 2838 446 4\r\nWestern Union MTCN\r\n8635011984\r\nMoneyGram MTCN\r\n46149955', '2022-03-19', 200.00, '1', 'LIVE', '2022-02-08 11:55:35', '2022-03-19 13:38:21'),
(9, 1, '000009', 'Laura', 'Roberts', 'Female', '2000-04-01', '21 years, 11 months and 15 days', '5\"6', '45kg', 12, 'images/1644423808download (10).png', NULL, 'Brown\r\nVehicle\r\n1994 Ford Tracer\r\nGUID\r\nbd5f170b-c7e8-49c4-8589-68b413de1140', 'UPS tracking number\r\n1Z 42A 302 82 6742 863 9\r\nWestern Union MTCN\r\n5183435171\r\nMoneyGram MTCN\r\n67209437', 'Visa\r\n4532 2992 3184 4546\r\nExpires\r\n8/2027\r\nCVV2\r\n456', 'Username\r\nHaductincer\r\nPassword\r\nCad7ieree\r\nWebsite\r\nElectronicShare.com\r\nBrowser user agent\r\nMozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0\r\nFINANCE', '2022-03-19', 20.00, '1', 'LIVE', '2022-02-09 16:23:28', '2022-03-19 13:38:38'),
(10, 1, '000010', 'David', 'Simonetti', 'Male', '2009-03-06', '13 years, 0 months and 13 days', '3\"6', '35kg', 15, 'images/1644424199download (1).png', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Logged in users can view full social security numbers and can save their fake names to use later.', 'Favorite color\r\nBlue\r\nVehicle\r\n1996 Peugeot 504\r\nGUID\r\n80354d0a-1cd3-4941-8dbd-dc7e366ed60e', NULL, '2022-03-19', 20.00, '1', 'LIVE', '2022-02-09 16:29:59', '2022-03-19 13:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_difficulties`
--

CREATE TABLE `tbl_student_difficulties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_student_difficulties`
--

INSERT INTO `tbl_student_difficulties` (`id`, `organization_id`, `student_id`, `difficulty_id`, `del_status`, `created_at`, `updated_at`) VALUES
(32, 1, 3, 1, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(33, 1, 3, 3, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(36, 1, 4, 2, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(37, 1, 4, 3, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(39, 1, 1, 1, 'LIVE', '2022-03-19 13:35:46', '2022-03-19 13:35:46'),
(40, 1, 5, 2, 'LIVE', '2022-03-19 13:37:38', '2022-03-19 13:37:38'),
(41, 1, 7, 3, 'LIVE', '2022-03-19 13:38:05', '2022-03-19 13:38:05'),
(42, 1, 8, 3, 'LIVE', '2022-03-19 13:38:21', '2022-03-19 13:38:21'),
(43, 1, 10, 1, 'LIVE', '2022-03-19 13:38:49', '2022-03-19 13:38:49'),
(44, 1, 2, 1, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45'),
(45, 1, 2, 2, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_documents`
--

CREATE TABLE `tbl_student_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_student_documents`
--

INSERT INTO `tbl_student_documents` (`id`, `organization_id`, `student_id`, `title`, `path`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Birth certificate', 'images/1644320921_birth-certificate.jpg', 'LIVE', '2022-02-08 11:48:41', '2022-02-08 11:48:41'),
(2, 1, 5, 'Pp', 'images/1644320921_pp.jpg', 'LIVE', '2022-02-08 11:48:41', '2022-02-08 11:48:41'),
(3, 1, 6, 'Birth certificate', 'images/1644320944_birth-certificate.jpg', 'LIVE', '2022-02-08 11:49:04', '2022-02-08 11:49:04'),
(4, 1, 6, 'Pp', 'images/1644320944_pp.jpg', 'LIVE', '2022-02-08 11:49:04', '2022-02-08 11:49:04'),
(5, 1, 7, 'Birth certificate', 'images/1644320985_birth-certificate.jpg', 'LIVE', '2022-02-08 11:49:45', '2022-02-08 11:49:45'),
(6, 1, 7, 'Pp', 'images/1644320985_pp.jpg', 'LIVE', '2022-02-08 11:49:45', '2022-02-08 11:49:45'),
(7, 1, 8, 'Birth certificate', 'images/1644321335_birth-certificate.jpg', 'LIVE', '2022-02-08 11:55:35', '2022-02-08 11:55:35'),
(8, 1, 8, 'Check file', 'images/1644321335_check-file.docx', 'LIVE', '2022-02-08 11:55:35', '2022-02-08 11:55:35'),
(9, 1, 9, 'Birth certificate', 'images/1644423808_birth-certificate.jpg', 'LIVE', '2022-02-09 16:23:28', '2022-02-09 16:23:28'),
(10, 1, 9, 'National Id', 'images/1644423808_national-id.jpg', 'LIVE', '2022-02-09 16:23:28', '2022-02-09 16:23:28'),
(11, 1, 9, 'Previous prescription', 'images/1644423808_previous-prescription.pdf', 'LIVE', '2022-02-09 16:23:28', '2022-02-09 16:23:28'),
(12, 1, 10, 'Birth certificate', 'images/1644424199_birth-certificate.jpg', 'LIVE', '2022-02-09 16:29:59', '2022-02-09 16:29:59'),
(13, 1, 10, 'Previous prescription', 'images/1644424199_previous-prescription.docx', 'LIVE', '2022-02-09 16:29:59', '2022-02-09 16:29:59'),
(14, 1, 1, 'Birth certificate', 'images/1644424420_birth-certificate.jpg', 'LIVE', '2022-02-09 16:33:40', '2022-02-09 16:33:40'),
(15, 1, 4, 'Birth certificate', 'images/1644424897_birth-certificate.jpg', 'LIVE', '2022-02-09 16:41:37', '2022-02-09 16:41:37'),
(16, 1, 3, 'Birth certificate', 'images/1645288317_birth-certificate.png', 'LIVE', '2022-02-19 16:31:57', '2022-02-19 16:31:57'),
(17, 1, 3, 'National Id', 'images/1645288317_national-id.jpg', 'LIVE', '2022-02-19 16:31:57', '2022-02-19 16:31:57'),
(18, 1, 4, 'National Id', 'images/1645288351_national-id.jpg', 'LIVE', '2022-02-19 16:32:31', '2022-02-19 16:32:31'),
(19, 1, 1, 'Check file', 'images/1645335591_check-file.png', 'DELETED', '2022-02-20 05:39:51', '2022-02-20 05:40:41'),
(20, 1, 2, 'Life Insurance', 'images/1647772604_life-insurance.pdf', 'LIVE', '2022-03-20 10:36:44', '2022-03-20 10:36:44'),
(21, 1, 2, 'Health Insurance', 'images/1647772604_health-insurance.pdf', 'LIVE', '2022-03-20 10:36:44', '2022-03-20 10:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_goals`
--

CREATE TABLE `tbl_student_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `goal_id` int(11) NOT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_student_goals`
--

INSERT INTO `tbl_student_goals` (`id`, `organization_id`, `student_id`, `goal_id`, `del_status`, `created_at`, `updated_at`) VALUES
(79, 1, 3, 1, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(80, 1, 3, 2, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(81, 1, 3, 3, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(82, 1, 3, 6, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(89, 1, 4, 1, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(90, 1, 4, 2, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(91, 1, 4, 3, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(92, 1, 4, 4, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(93, 1, 4, 5, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(94, 1, 4, 6, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(98, 1, 1, 1, 'LIVE', '2022-03-19 13:35:46', '2022-03-19 13:35:46'),
(99, 1, 1, 2, 'LIVE', '2022-03-19 13:35:46', '2022-03-19 13:35:46'),
(100, 1, 1, 3, 'LIVE', '2022-03-19 13:35:46', '2022-03-19 13:35:46'),
(101, 1, 5, 2, 'LIVE', '2022-03-19 13:37:38', '2022-03-19 13:37:38'),
(102, 1, 5, 3, 'LIVE', '2022-03-19 13:37:38', '2022-03-19 13:37:38'),
(103, 1, 5, 6, 'LIVE', '2022-03-19 13:37:38', '2022-03-19 13:37:38'),
(104, 1, 7, 2, 'LIVE', '2022-03-19 13:38:05', '2022-03-19 13:38:05'),
(105, 1, 7, 5, 'LIVE', '2022-03-19 13:38:05', '2022-03-19 13:38:05'),
(106, 1, 8, 3, 'LIVE', '2022-03-19 13:38:21', '2022-03-19 13:38:21'),
(107, 1, 8, 6, 'LIVE', '2022-03-19 13:38:21', '2022-03-19 13:38:21'),
(108, 1, 10, 1, 'LIVE', '2022-03-19 13:38:49', '2022-03-19 13:38:49'),
(109, 1, 10, 4, 'LIVE', '2022-03-19 13:38:49', '2022-03-19 13:38:49'),
(110, 1, 2, 1, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45'),
(111, 1, 2, 2, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45'),
(112, 1, 2, 3, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45'),
(113, 1, 2, 6, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_special_needs`
--

CREATE TABLE `tbl_student_special_needs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `special_need_id` int(11) NOT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_student_special_needs`
--

INSERT INTO `tbl_student_special_needs` (`id`, `organization_id`, `student_id`, `special_need_id`, `del_status`, `created_at`, `updated_at`) VALUES
(51, 1, 3, 1, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(52, 1, 3, 4, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(53, 1, 3, 8, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(54, 1, 3, 9, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(55, 1, 3, 14, 'LIVE', '2022-03-19 04:27:31', '2022-03-19 04:27:31'),
(60, 1, 4, 1, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(61, 1, 4, 5, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(62, 1, 4, 9, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(63, 1, 4, 15, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(64, 1, 4, 17, 'LIVE', '2022-03-19 13:25:49', '2022-03-19 13:25:49'),
(67, 1, 1, 8, 'LIVE', '2022-03-19 13:35:46', '2022-03-19 13:35:46'),
(68, 1, 1, 11, 'LIVE', '2022-03-19 13:35:46', '2022-03-19 13:35:46'),
(69, 1, 5, 8, 'LIVE', '2022-03-19 13:37:38', '2022-03-19 13:37:38'),
(70, 1, 5, 11, 'LIVE', '2022-03-19 13:37:38', '2022-03-19 13:37:38'),
(71, 1, 7, 14, 'LIVE', '2022-03-19 13:38:05', '2022-03-19 13:38:05'),
(72, 1, 10, 1, 'LIVE', '2022-03-19 13:38:49', '2022-03-19 13:38:49'),
(73, 1, 10, 6, 'LIVE', '2022-03-19 13:38:49', '2022-03-19 13:38:49'),
(74, 1, 10, 14, 'LIVE', '2022-03-19 13:38:49', '2022-03-19 13:38:49'),
(75, 1, 2, 5, 'LIVE', '2022-03-20 10:36:44', '2022-03-20 10:36:44'),
(76, 1, 2, 8, 'LIVE', '2022-03-20 10:36:45', '2022-03-20 10:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `organization_id`, `title`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Movement Arts', 'Movement Arts with Special Needs', 'LIVE', '2022-02-15 18:27:19', '2022-02-15 18:27:52'),
(2, 1, 'Music for Children', 'Music for Children with Special Needs', 'LIVE', '2022-02-15 18:27:44', '2022-02-15 18:27:44'),
(3, 1, 'Effective Communication', 'Effective Communication with Professional and Families', 'LIVE', '2022-02-15 18:28:17', '2022-02-15 18:28:17'),
(4, 1, 'Introduction to Sociology', 'Introduction to Sociology with Family Planning.', 'LIVE', '2022-02-15 18:28:35', '2022-02-15 18:28:35'),
(5, 1, 'Experiencing- Learning Process.', 'Experiencing the teaching- Learning Process.', 'LIVE', '2022-02-15 18:28:56', '2022-02-15 18:28:56'),
(6, 1, 'Assessment of Children', 'Assessment of Children with Special Needs', 'LIVE', '2022-02-15 18:29:19', '2022-02-15 18:29:19'),
(7, 1, 'Learning Assessment Strategies', 'Learning Assessment Strategies', 'LIVE', '2022-02-15 18:29:32', '2022-02-15 18:31:25'),
(8, 1, 'Psychology of Children', 'Psychology of Children with Special Needs', 'LIVE', '2022-02-15 18:29:42', '2022-02-15 18:29:42'),
(9, 1, 'Fundamentals of Mathematics', 'Fundamentals of Mathematics', 'LIVE', '2022-02-15 18:29:55', '2022-02-15 18:31:38'),
(10, 1, 'Technology in Learning Environment', 'Technology in Learning Environment', 'LIVE', '2022-02-15 18:30:06', '2022-02-15 18:30:06'),
(11, 1, 'Introduction to Philosophy and Logic', 'Introduction to Philosophy and Logic', 'LIVE', '2022-02-15 18:30:16', '2022-02-15 18:30:16'),
(12, 1, 'Child & Adolescent Development', 'Child & Adolescent Development', 'LIVE', '2022-02-15 18:30:24', '2022-02-15 18:30:24'),
(13, 1, 'Speech and Oral Communication', 'Speech and Oral Communication', 'LIVE', '2022-02-15 18:30:38', '2022-02-15 18:30:38'),
(14, 1, 'Social Dimensions of Education', 'Social Dimensions of Education', 'LIVE', '2022-02-15 18:30:44', '2022-02-15 18:30:44'),
(15, 1, 'Philippine Literature in English', 'Philippine Literature in English', 'LIVE', '2022-02-15 18:31:48', '2022-02-15 18:31:48'),
(16, 1, 'SPED Classroom Management', 'SPED Classroom Management', 'LIVE', '2022-02-15 18:31:57', '2022-02-15 18:31:57'),
(17, 1, 'Delete check', 'Delete check', 'DELETED', '2022-02-15 18:32:18', '2022-02-15 18:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_therapies`
--

CREATE TABLE `tbl_therapies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_therapies`
--

INSERT INTO `tbl_therapies` (`id`, `organization_id`, `title`, `description`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Behavioral Therapy', 'Behavioral Therapy', 'LIVE', '2022-02-07 09:05:39', '2022-02-07 09:05:39'),
(2, 1, 'Speech Therapy', 'Speech Therapy', 'LIVE', '2022-02-07 09:05:52', '2022-02-07 09:05:52'),
(3, 1, 'Occupational Therapy', 'Occupational Therapy', 'LIVE', '2022-02-07 09:06:08', '2022-02-07 09:07:21'),
(4, 1, 'Physio Therapy', 'Physio Therapy', 'LIVE', '2022-02-07 09:06:26', '2022-02-07 09:06:26'),
(5, 1, 'Sensory-Integration Therapy', 'Sensory-Integration Therapy', 'LIVE', '2022-02-07 09:06:38', '2022-02-07 09:06:38'),
(6, 1, 'Social Skills Therapy', 'Social Skills Therapy', 'LIVE', '2022-02-07 09:06:55', '2022-02-07 09:07:08'),
(7, 1, 'Delete check', 'Delete check', 'DELETED', '2022-02-07 09:07:42', '2022-02-07 09:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timezones`
--

CREATE TABLE `tbl_timezones` (
  `country_code` char(2) NOT NULL,
  `coordinates` char(15) NOT NULL,
  `timezone` char(32) NOT NULL,
  `comments` varchar(85) NOT NULL,
  `utc_offset` char(8) NOT NULL,
  `utc_dst_offset` char(8) NOT NULL,
  `notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_timezones`
--

INSERT INTO `tbl_timezones` (`country_code`, `coordinates`, `timezone`, `comments`, `utc_offset`, `utc_dst_offset`, `notes`) VALUES
('CI', '+0519-00402', 'Africa/Abidjan', '', '+00:00', '+00:00', ''),
('GH', '+0533-00013', 'Africa/Accra', '', '+00:00', '+00:00', ''),
('ET', '+0902+03842', 'Africa/Addis_Ababa', '', '+03:00', '+03:00', ''),
('DZ', '+3647+00303', 'Africa/Algiers', '', '+01:00', '+01:00', ''),
('ER', '+1520+03853', 'Africa/Asmara', '', '+03:00', '+03:00', ''),
('', '', 'Africa/Asmera', '', '+03:00', '+03:00', 'Link to Africa/Asmara'),
('ML', '+1239-00800', 'Africa/Bamako', '', '+00:00', '+00:00', ''),
('CF', '+0422+01835', 'Africa/Bangui', '', '+01:00', '+01:00', ''),
('GM', '+1328-01639', 'Africa/Banjul', '', '+00:00', '+00:00', ''),
('GW', '+1151-01535', 'Africa/Bissau', '', '+00:00', '+00:00', ''),
('MW', '-1547+03500', 'Africa/Blantyre', '', '+02:00', '+02:00', ''),
('CG', '-0416+01517', 'Africa/Brazzaville', '', '+01:00', '+01:00', ''),
('BI', '-0323+02922', 'Africa/Bujumbura', '', '+02:00', '+02:00', ''),
('EG', '+3003+03115', 'Africa/Cairo', '', '+02:00', '+02:00', 'DST has been canceled since 2011'),
('MA', '+3339-00735', 'Africa/Casablanca', '', '+00:00', '+01:00', ''),
('ES', '+3553-00519', 'Africa/Ceuta', 'Ceuta & Melilla', '+01:00', '+02:00', ''),
('GN', '+0931-01343', 'Africa/Conakry', '', '+00:00', '+00:00', ''),
('SN', '+1440-01726', 'Africa/Dakar', '', '+00:00', '+00:00', ''),
('TZ', '-0648+03917', 'Africa/Dar_es_Salaam', '', '+03:00', '+03:00', ''),
('DJ', '+1136+04309', 'Africa/Djibouti', '', '+03:00', '+03:00', ''),
('CM', '+0403+00942', 'Africa/Douala', '', '+01:00', '+01:00', ''),
('EH', '+2709-01312', 'Africa/El_Aaiun', '', '+00:00', '+00:00', ''),
('SL', '+0830-01315', 'Africa/Freetown', '', '+00:00', '+00:00', ''),
('BW', '-2439+02555', 'Africa/Gaborone', '', '+02:00', '+02:00', ''),
('ZW', '-1750+03103', 'Africa/Harare', '', '+02:00', '+02:00', ''),
('ZA', '-2615+02800', 'Africa/Johannesburg', '', '+02:00', '+02:00', ''),
('SS', '+0451+03136', 'Africa/Juba', '', '+03:00', '+03:00', ''),
('UG', '+0019+03225', 'Africa/Kampala', '', '+03:00', '+03:00', ''),
('SD', '+1536+03232', 'Africa/Khartoum', '', '+03:00', '+03:00', ''),
('RW', '-0157+03004', 'Africa/Kigali', '', '+02:00', '+02:00', ''),
('CD', '-0418+01518', 'Africa/Kinshasa', 'west Dem. Rep. of Congo', '+01:00', '+01:00', ''),
('NG', '+0627+00324', 'Africa/Lagos', '', '+01:00', '+01:00', ''),
('GA', '+0023+00927', 'Africa/Libreville', '', '+01:00', '+01:00', ''),
('TG', '+0608+00113', 'Africa/Lome', '', '+00:00', '+00:00', ''),
('AO', '-0848+01314', 'Africa/Luanda', '', '+01:00', '+01:00', ''),
('CD', '-1140+02728', 'Africa/Lubumbashi', 'east Dem. Rep. of Congo', '+02:00', '+02:00', ''),
('ZM', '-1525+02817', 'Africa/Lusaka', '', '+02:00', '+02:00', ''),
('GQ', '+0345+00847', 'Africa/Malabo', '', '+01:00', '+01:00', ''),
('MZ', '-2558+03235', 'Africa/Maputo', '', '+02:00', '+02:00', ''),
('LS', '-2928+02730', 'Africa/Maseru', '', '+02:00', '+02:00', ''),
('SZ', '-2618+03106', 'Africa/Mbabane', '', '+02:00', '+02:00', ''),
('SO', '+0204+04522', 'Africa/Mogadishu', '', '+03:00', '+03:00', ''),
('LR', '+0618-01047', 'Africa/Monrovia', '', '+00:00', '+00:00', ''),
('KE', '-0117+03649', 'Africa/Nairobi', '', '+03:00', '+03:00', ''),
('TD', '+1207+01503', 'Africa/Ndjamena', '', '+01:00', '+01:00', ''),
('NE', '+1331+00207', 'Africa/Niamey', '', '+01:00', '+01:00', ''),
('MR', '+1806-01557', 'Africa/Nouakchott', '', '+00:00', '+00:00', ''),
('BF', '+1222-00131', 'Africa/Ouagadougou', '', '+00:00', '+00:00', ''),
('BJ', '+0629+00237', 'Africa/Porto-Novo', '', '+01:00', '+01:00', ''),
('ST', '+0020+00644', 'Africa/Sao_Tome', '', '+00:00', '+00:00', ''),
('', '', 'Africa/Timbuktu', '', '+00:00', '+00:00', 'Link to Africa/Bamako'),
('LY', '+3254+01311', 'Africa/Tripoli', '', '+01:00', '+02:00', ''),
('TN', '+3648+01011', 'Africa/Tunis', '', '+01:00', '+01:00', ''),
('NA', '-2234+01706', 'Africa/Windhoek', '', '+01:00', '+02:00', ''),
('', '', 'AKST9AKDT', '', 'âˆ’09:00', 'âˆ’08:00', 'Link to America/Anchorage'),
('US', '+515248-1763929', 'America/Adak', 'Aleutian Islands', 'âˆ’10:00', 'âˆ’09:00', ''),
('US', '+611305-1495401', 'America/Anchorage', 'Alaska Time', 'âˆ’09:00', 'âˆ’08:00', ''),
('AI', '+1812-06304', 'America/Anguilla', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('AG', '+1703-06148', 'America/Antigua', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '-0712-04812', 'America/Araguaina', 'Tocantins', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3436-05827', 'America/Argentina/Buenos_Aires', 'Buenos Aires (BA, CF)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2828-06547', 'America/Argentina/Catamarca', 'Catamarca (CT), Chubut (CH)', 'âˆ’03:00', 'âˆ’03:00', ''),
('', '', 'America/Argentina/ComodRivadavia', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Catamarca'),
('AR', '-3124-06411', 'America/Argentina/Cordoba', 'most locations (CB, CC, CN, ER, FM, MN, SE, SF)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2411-06518', 'America/Argentina/Jujuy', 'Jujuy (JY)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2926-06651', 'America/Argentina/La_Rioja', 'La Rioja (LR)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3253-06849', 'America/Argentina/Mendoza', 'Mendoza (MZ)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-5138-06913', 'America/Argentina/Rio_Gallegos', 'Santa Cruz (SC)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2447-06525', 'America/Argentina/Salta', '(SA, LP, NQ, RN)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3132-06831', 'America/Argentina/San_Juan', 'San Juan (SJ)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-3319-06621', 'America/Argentina/San_Luis', 'San Luis (SL)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-2649-06513', 'America/Argentina/Tucuman', 'Tucuman (TM)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AR', '-5448-06818', 'America/Argentina/Ushuaia', 'Tierra del Fuego (TF)', 'âˆ’03:00', 'âˆ’03:00', ''),
('AW', '+1230-06958', 'America/Aruba', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('PY', '-2516-05740', 'America/Asuncion', '', 'âˆ’04:00', 'âˆ’03:00', ''),
('CA', '+484531-0913718', 'America/Atikokan', 'Eastern Standard Time - Atikokan, Ontario and Southampton I, Nunavut', 'âˆ’05:00', 'âˆ’05:00', ''),
('', '', 'America/Atka', '', 'âˆ’10:00', 'âˆ’09:00', 'Link to America/Adak'),
('BR', '-1259-03831', 'America/Bahia', 'Bahia', 'âˆ’03:00', 'âˆ’03:00', ''),
('MX', '+2048-10515', 'America/Bahia_Banderas', 'Mexican Central Time - Bahia de Banderas', 'âˆ’06:00', 'âˆ’05:00', ''),
('BB', '+1306-05937', 'America/Barbados', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '-0127-04829', 'America/Belem', 'Amapa, E Para', 'âˆ’03:00', 'âˆ’03:00', ''),
('BZ', '+1730-08812', 'America/Belize', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('CA', '+5125-05707', 'America/Blanc-Sablon', 'Atlantic Standard Time - Quebec - Lower North Shore', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '+0249-06040', 'America/Boa_Vista', 'Roraima', 'âˆ’04:00', 'âˆ’04:00', ''),
('CO', '+0436-07405', 'America/Bogota', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('US', '+433649-1161209', 'America/Boise', 'Mountain Time - south Idaho & east Oregon', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'America/Buenos_Aires', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Buenos_Aires'),
('CA', '+690650-1050310', 'America/Cambridge_Bay', 'Mountain Time - west Nunavut', 'âˆ’07:00', 'âˆ’06:00', ''),
('BR', '-2027-05437', 'America/Campo_Grande', 'Mato Grosso do Sul', 'âˆ’04:00', 'âˆ’03:00', ''),
('MX', '+2105-08646', 'America/Cancun', 'Central Time - Quintana Roo', 'âˆ’06:00', 'âˆ’05:00', ''),
('VE', '+1030-06656', 'America/Caracas', '', 'âˆ’04:30', 'âˆ’04:30', ''),
('', '', 'America/Catamarca', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Catamarca'),
('GF', '+0456-05220', 'America/Cayenne', '', 'âˆ’03:00', 'âˆ’03:00', ''),
('KY', '+1918-08123', 'America/Cayman', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('US', '+415100-0873900', 'America/Chicago', 'Central Time', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2838-10605', 'America/Chihuahua', 'Mexican Mountain Time - Chihuahua away from US border', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'America/Coral_Harbour', '', 'âˆ’05:00', 'âˆ’05:00', 'Link to America/Atikokan'),
('', '', 'America/Cordoba', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Cordoba'),
('CR', '+0956-08405', 'America/Costa_Rica', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('CA', '+4906-11631', 'America/Creston', 'Mountain Standard Time - Creston, British Columbia', 'âˆ’07:00', 'âˆ’07:00', ''),
('BR', '-1535-05605', 'America/Cuiaba', 'Mato Grosso', 'âˆ’04:00', 'âˆ’03:00', ''),
('CW', '+1211-06900', 'America/Curacao', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('GL', '+7646-01840', 'America/Danmarkshavn', 'east coast, north of Scoresbysund', '+00:00', '+00:00', ''),
('CA', '+6404-13925', 'America/Dawson', 'Pacific Time - north Yukon', 'âˆ’08:00', 'âˆ’07:00', ''),
('CA', '+5946-12014', 'America/Dawson_Creek', 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia', 'âˆ’07:00', 'âˆ’07:00', ''),
('US', '+394421-1045903', 'America/Denver', 'Mountain Time', 'âˆ’07:00', 'âˆ’06:00', ''),
('US', '+421953-0830245', 'America/Detroit', 'Eastern Time - Michigan - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('DM', '+1518-06124', 'America/Dominica', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+5333-11328', 'America/Edmonton', 'Mountain Time - Alberta, east British Columbia & west Saskatchewan', 'âˆ’07:00', 'âˆ’06:00', ''),
('BR', '-0640-06952', 'America/Eirunepe', 'W Amazonas', 'âˆ’04:00', 'âˆ’04:00', ''),
('SV', '+1342-08912', 'America/El_Salvador', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('', '', 'America/Ensenada', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Tijuana'),
('BR', '-0343-03830', 'America/Fortaleza', 'NE Brazil (MA, PI, CE, RN, PB)', 'âˆ’03:00', 'âˆ’03:00', ''),
('', '', 'America/Fort_Wayne', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+4612-05957', 'America/Glace_Bay', 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971', 'âˆ’04:00', 'âˆ’03:00', ''),
('GL', '+6411-05144', 'America/Godthab', 'most locations', 'âˆ’03:00', 'âˆ’02:00', ''),
('CA', '+5320-06025', 'America/Goose_Bay', 'Atlantic Time - Labrador - most locations', 'âˆ’04:00', 'âˆ’03:00', ''),
('TC', '+2128-07108', 'America/Grand_Turk', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('GD', '+1203-06145', 'America/Grenada', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('GP', '+1614-06132', 'America/Guadeloupe', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('GT', '+1438-09031', 'America/Guatemala', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('EC', '-0210-07950', 'America/Guayaquil', 'mainland', 'âˆ’05:00', 'âˆ’05:00', ''),
('GY', '+0648-05810', 'America/Guyana', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+4439-06336', 'America/Halifax', 'Atlantic Time - Nova Scotia (most places), PEI', 'âˆ’04:00', 'âˆ’03:00', ''),
('CU', '+2308-08222', 'America/Havana', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('MX', '+2904-11058', 'America/Hermosillo', 'Mountain Standard Time - Sonora', 'âˆ’07:00', 'âˆ’07:00', ''),
('US', '+394606-0860929', 'America/Indiana/Indianapolis', 'Eastern Time - Indiana - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+411745-0863730', 'America/Indiana/Knox', 'Central Time - Indiana - Starke County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+382232-0862041', 'America/Indiana/Marengo', 'Eastern Time - Indiana - Crawford County', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+382931-0871643', 'America/Indiana/Petersburg', 'Eastern Time - Indiana - Pike County', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+375711-0864541', 'America/Indiana/Tell_City', 'Central Time - Indiana - Perry County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+384452-0850402', 'America/Indiana/Vevay', 'Eastern Time - Indiana - Switzerland County', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+384038-0873143', 'America/Indiana/Vincennes', 'Eastern Time - Indiana - Daviess, Dubois, Knox & Martin Counties', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+410305-0863611', 'America/Indiana/Winamac', 'Eastern Time - Indiana - Pulaski County', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'America/Indianapolis', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+682059-1334300', 'America/Inuvik', 'Mountain Time - west Northwest Territories', 'âˆ’07:00', 'âˆ’06:00', ''),
('CA', '+6344-06828', 'America/Iqaluit', 'Eastern Time - east Nunavut - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('JM', '+1800-07648', 'America/Jamaica', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('', '', 'America/Jujuy', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Jujuy'),
('US', '+581807-1342511', 'America/Juneau', 'Alaska Time - Alaska panhandle', 'âˆ’09:00', 'âˆ’08:00', ''),
('US', '+381515-0854534', 'America/Kentucky/Louisville', 'Eastern Time - Kentucky - Louisville area', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+364947-0845057', 'America/Kentucky/Monticello', 'Eastern Time - Kentucky - Wayne County', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'America/Knox_IN', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Indiana/Knox'),
('BQ', '+120903-0681636', 'America/Kralendijk', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Curacao'),
('BO', '-1630-06809', 'America/La_Paz', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('PE', '-1203-07703', 'America/Lima', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('US', '+340308-1181434', 'America/Los_Angeles', 'Pacific Time', 'âˆ’08:00', 'âˆ’07:00', ''),
('', '', 'America/Louisville', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Kentucky/Louisville'),
('SX', '+180305-0630250', 'America/Lower_Princes', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Curacao'),
('BR', '-0940-03543', 'America/Maceio', 'Alagoas, Sergipe', 'âˆ’03:00', 'âˆ’03:00', ''),
('NI', '+1209-08617', 'America/Managua', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('BR', '-0308-06001', 'America/Manaus', 'E Amazonas', 'âˆ’04:00', 'âˆ’04:00', ''),
('MF', '+1804-06305', 'America/Marigot', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Guadeloupe'),
('MQ', '+1436-06105', 'America/Martinique', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('MX', '+2550-09730', 'America/Matamoros', 'US Central Time - Coahuila, Durango, Nuevo LeÃ³n, Tamaulipas near US border', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2313-10625', 'America/Mazatlan', 'Mountain Time - S Baja, Nayarit, Sinaloa', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'America/Mendoza', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Mendoza'),
('US', '+450628-0873651', 'America/Menominee', 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2058-08937', 'America/Merida', 'Central Time - Campeche, YucatÃ¡n', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+550737-1313435', 'America/Metlakatla', 'Metlakatla Time - Annette Island', 'âˆ’08:00', 'âˆ’08:00', ''),
('MX', '+1924-09909', 'America/Mexico_City', 'Central Time - most locations', 'âˆ’06:00', 'âˆ’05:00', ''),
('PM', '+4703-05620', 'America/Miquelon', '', 'âˆ’03:00', 'âˆ’02:00', ''),
('CA', '+4606-06447', 'America/Moncton', 'Atlantic Time - New Brunswick', 'âˆ’04:00', 'âˆ’03:00', ''),
('MX', '+2540-10019', 'America/Monterrey', 'Mexican Central Time - Coahuila, Durango, Nuevo LeÃ³n, Tamaulipas away from US border', 'âˆ’06:00', 'âˆ’05:00', ''),
('UY', '-3453-05611', 'America/Montevideo', '', 'âˆ’03:00', 'âˆ’02:00', ''),
('CA', '+4531-07334', 'America/Montreal', 'Eastern Time - Quebec - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('MS', '+1643-06213', 'America/Montserrat', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BS', '+2505-07721', 'America/Nassau', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+404251-0740023', 'America/New_York', 'Eastern Time', 'âˆ’05:00', 'âˆ’04:00', ''),
('CA', '+4901-08816', 'America/Nipigon', 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973', 'âˆ’05:00', 'âˆ’04:00', ''),
('US', '+643004-1652423', 'America/Nome', 'Alaska Time - west Alaska', 'âˆ’09:00', 'âˆ’08:00', ''),
('BR', '-0351-03225', 'America/Noronha', 'Atlantic islands', 'âˆ’02:00', 'âˆ’02:00', ''),
('US', '+471551-1014640', 'America/North_Dakota/Beulah', 'Central Time - North Dakota - Mercer County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+470659-1011757', 'America/North_Dakota/Center', 'Central Time - North Dakota - Oliver County', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+465042-1012439', 'America/North_Dakota/New_Salem', 'Central Time - North Dakota - Morton County (except Mandan area)', 'âˆ’06:00', 'âˆ’05:00', ''),
('MX', '+2934-10425', 'America/Ojinaga', 'US Mountain Time - Chihuahua near US border', 'âˆ’07:00', 'âˆ’06:00', ''),
('PA', '+0858-07932', 'America/Panama', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('CA', '+6608-06544', 'America/Pangnirtung', 'Eastern Time - Pangnirtung, Nunavut', 'âˆ’05:00', 'âˆ’04:00', ''),
('SR', '+0550-05510', 'America/Paramaribo', '', 'âˆ’03:00', 'âˆ’03:00', ''),
('US', '+332654-1120424', 'America/Phoenix', 'Mountain Standard Time - Arizona', 'âˆ’07:00', 'âˆ’07:00', ''),
('HT', '+1832-07220', 'America/Port-au-Prince', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'America/Porto_Acre', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Rio_Branco'),
('BR', '-0846-06354', 'America/Porto_Velho', 'Rondonia', 'âˆ’04:00', 'âˆ’04:00', ''),
('TT', '+1039-06131', 'America/Port_of_Spain', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('PR', '+182806-0660622', 'America/Puerto_Rico', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+4843-09434', 'America/Rainy_River', 'Central Time - Rainy River & Fort Frances, Ontario', 'âˆ’06:00', 'âˆ’05:00', ''),
('CA', '+624900-0920459', 'America/Rankin_Inlet', 'Central Time - central Nunavut', 'âˆ’06:00', 'âˆ’05:00', ''),
('BR', '-0803-03454', 'America/Recife', 'Pernambuco', 'âˆ’03:00', 'âˆ’03:00', ''),
('CA', '+5024-10439', 'America/Regina', 'Central Standard Time - Saskatchewan - most locations', 'âˆ’06:00', 'âˆ’06:00', ''),
('CA', '+744144-0944945', 'America/Resolute', 'Central Standard Time - Resolute, Nunavut', 'âˆ’06:00', 'âˆ’05:00', ''),
('BR', '-0958-06748', 'America/Rio_Branco', 'Acre', 'âˆ’04:00', 'âˆ’04:00', ''),
('', '', 'America/Rosario', '', 'âˆ’03:00', 'âˆ’03:00', 'Link to America/Argentina/Cordoba'),
('BR', '-0226-05452', 'America/Santarem', 'W Para', 'âˆ’03:00', 'âˆ’03:00', ''),
('MX', '+3018-11452', 'America/Santa_Isabel', 'Mexican Pacific Time - Baja California away from US border', 'âˆ’08:00', 'âˆ’07:00', ''),
('CL', '-3327-07040', 'America/Santiago', 'most locations', 'âˆ’04:00', 'âˆ’03:00', ''),
('DO', '+1828-06954', 'America/Santo_Domingo', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('BR', '-2332-04637', 'America/Sao_Paulo', 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)', 'âˆ’03:00', 'âˆ’02:00', ''),
('GL', '+7029-02158', 'America/Scoresbysund', 'Scoresbysund / Ittoqqortoormiit', 'âˆ’01:00', '+00:00', ''),
('US', '+364708-1084111', 'America/Shiprock', 'Mountain Time - Navajo', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Denver'),
('US', '+571035-1351807', 'America/Sitka', 'Alaska Time - southeast Alaska panhandle', 'âˆ’09:00', 'âˆ’08:00', ''),
('BL', '+1753-06251', 'America/St_Barthelemy', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Guadeloupe'),
('CA', '+4734-05243', 'America/St_Johns', 'Newfoundland Time, including SE Labrador', 'âˆ’03:30', 'âˆ’02:30', ''),
('KN', '+1718-06243', 'America/St_Kitts', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('LC', '+1401-06100', 'America/St_Lucia', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('VI', '+1821-06456', 'America/St_Thomas', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('VC', '+1309-06114', 'America/St_Vincent', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+5017-10750', 'America/Swift_Current', 'Central Standard Time - Saskatchewan - midwest', 'âˆ’06:00', 'âˆ’06:00', ''),
('HN', '+1406-08713', 'America/Tegucigalpa', '', 'âˆ’06:00', 'âˆ’06:00', ''),
('GL', '+7634-06847', 'America/Thule', 'Thule / Pituffik', 'âˆ’04:00', 'âˆ’03:00', ''),
('CA', '+4823-08915', 'America/Thunder_Bay', 'Eastern Time - Thunder Bay, Ontario', 'âˆ’05:00', 'âˆ’04:00', ''),
('MX', '+3232-11701', 'America/Tijuana', 'US Pacific Time - Baja California near US border', 'âˆ’08:00', 'âˆ’07:00', ''),
('CA', '+4339-07923', 'America/Toronto', 'Eastern Time - Ontario - most locations', 'âˆ’05:00', 'âˆ’04:00', ''),
('VG', '+1827-06437', 'America/Tortola', '', 'âˆ’04:00', 'âˆ’04:00', ''),
('CA', '+4916-12307', 'America/Vancouver', 'Pacific Time - west British Columbia', 'âˆ’08:00', 'âˆ’07:00', ''),
('', '', 'America/Virgin', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/St_Thomas'),
('CA', '+6043-13503', 'America/Whitehorse', 'Pacific Time - south Yukon', 'âˆ’08:00', 'âˆ’07:00', ''),
('CA', '+4953-09709', 'America/Winnipeg', 'Central Time - Manitoba & west Ontario', 'âˆ’06:00', 'âˆ’05:00', ''),
('US', '+593249-1394338', 'America/Yakutat', 'Alaska Time - Alaska panhandle neck', 'âˆ’09:00', 'âˆ’08:00', ''),
('CA', '+6227-11421', 'America/Yellowknife', 'Mountain Time - central Northwest Territories', 'âˆ’07:00', 'âˆ’06:00', ''),
('AQ', '-6617+11031', 'Antarctica/Casey', 'Casey Station, Bailey Peninsula', '+11:00', '+08:00', ''),
('AQ', '-6835+07758', 'Antarctica/Davis', 'Davis Station, Vestfold Hills', '+05:00', '+07:00', ''),
('AQ', '-6640+14001', 'Antarctica/DumontDUrville', 'Dumont-d\'Urville Station, Terre Adelie', '+10:00', '+10:00', ''),
('AQ', '-5430+15857', 'Antarctica/Macquarie', 'Macquarie Island Station, Macquarie Island', '+11:00', '+11:00', ''),
('AQ', '-6736+06253', 'Antarctica/Mawson', 'Mawson Station, Holme Bay', '+05:00', '+05:00', ''),
('AQ', '-7750+16636', 'Antarctica/McMurdo', 'McMurdo Station, Ross Island', '+12:00', '+13:00', ''),
('AQ', '-6448-06406', 'Antarctica/Palmer', 'Palmer Station, Anvers Island', 'âˆ’04:00', 'âˆ’03:00', ''),
('AQ', '-6734-06808', 'Antarctica/Rothera', 'Rothera Station, Adelaide Island', 'âˆ’03:00', 'âˆ’03:00', ''),
('AQ', '-9000+00000', 'Antarctica/South_Pole', 'Amundsen-Scott Station, South Pole', '+12:00', '+13:00', 'Link to Antarctica/McMurdo'),
('AQ', '-690022+0393524', 'Antarctica/Syowa', 'Syowa Station, E Ongul I', '+03:00', '+03:00', ''),
('AQ', '-7824+10654', 'Antarctica/Vostok', 'Vostok Station, Lake Vostok', '+06:00', '+06:00', ''),
('SJ', '+7800+01600', 'Arctic/Longyearbyen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('YE', '+1245+04512', 'Asia/Aden', '', '+03:00', '+03:00', ''),
('KZ', '+4315+07657', 'Asia/Almaty', 'most locations', '+06:00', '+06:00', ''),
('JO', '+3157+03556', 'Asia/Amman', '', '+03:00', '+03:00', ''),
('RU', '+6445+17729', 'Asia/Anadyr', 'Moscow+08 - Bering Sea', '+12:00', '+12:00', ''),
('KZ', '+4431+05016', 'Asia/Aqtau', 'Atyrau (Atirau, Gur\'yev), Mangghystau (Mankistau)', '+05:00', '+05:00', ''),
('KZ', '+5017+05710', 'Asia/Aqtobe', 'Aqtobe (Aktobe)', '+05:00', '+05:00', ''),
('TM', '+3757+05823', 'Asia/Ashgabat', '', '+05:00', '+05:00', ''),
('', '', 'Asia/Ashkhabad', '', '+05:00', '+05:00', 'Link to Asia/Ashgabat'),
('IQ', '+3321+04425', 'Asia/Baghdad', '', '+03:00', '+03:00', ''),
('BH', '+2623+05035', 'Asia/Bahrain', '', '+03:00', '+03:00', ''),
('AZ', '+4023+04951', 'Asia/Baku', '', '+04:00', '+05:00', ''),
('TH', '+1345+10031', 'Asia/Bangkok', '', '+07:00', '+07:00', ''),
('LB', '+3353+03530', 'Asia/Beirut', '', '+02:00', '+03:00', ''),
('KG', '+4254+07436', 'Asia/Bishkek', '', '+06:00', '+06:00', ''),
('BN', '+0456+11455', 'Asia/Brunei', '', '+08:00', '+08:00', ''),
('', '', 'Asia/Calcutta', '', '+05:30', '+05:30', 'Link to Asia/Kolkata'),
('MN', '+4804+11430', 'Asia/Choibalsan', 'Dornod, Sukhbaatar', '+08:00', '+08:00', ''),
('CN', '+2934+10635', 'Asia/Chongqing', 'central China - Sichuan, Yunnan, Guangxi, Shaanxi, Guizhou, etc.', '+08:00', '+08:00', 'Covering historic Kansu-Szechuan time zone.'),
('', '', 'Asia/Chungking', '', '+08:00', '+08:00', 'Link to Asia/Chongqing'),
('LK', '+0656+07951', 'Asia/Colombo', '', '+05:30', '+05:30', ''),
('', '', 'Asia/Dacca', '', '+06:00', '+06:00', 'Link to Asia/Dhaka'),
('SY', '+3330+03618', 'Asia/Damascus', '', '+02:00', '+03:00', ''),
('BD', '+2343+09025', 'Asia/Dhaka', '', '+06:00', '+06:00', ''),
('TL', '-0833+12535', 'Asia/Dili', '', '+09:00', '+09:00', ''),
('AE', '+2518+05518', 'Asia/Dubai', '', '+04:00', '+04:00', ''),
('TJ', '+3835+06848', 'Asia/Dushanbe', '', '+05:00', '+05:00', ''),
('PS', '+3130+03428', 'Asia/Gaza', 'Gaza Strip', '+02:00', '+03:00', ''),
('CN', '+4545+12641', 'Asia/Harbin', 'Heilongjiang (except Mohe), Jilin', '+08:00', '+08:00', 'Covering historic Changpai time zone.'),
('PS', '+313200+0350542', 'Asia/Hebron', 'West Bank', '+02:00', '+03:00', ''),
('HK', '+2217+11409', 'Asia/Hong_Kong', '', '+08:00', '+08:00', ''),
('MN', '+4801+09139', 'Asia/Hovd', 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan', '+07:00', '+07:00', ''),
('VN', '+1045+10640', 'Asia/Ho_Chi_Minh', '', '+07:00', '+07:00', ''),
('RU', '+5216+10420', 'Asia/Irkutsk', 'Moscow+05 - Lake Baikal', '+09:00', '+09:00', ''),
('', '', 'Asia/Istanbul', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('ID', '-0610+10648', 'Asia/Jakarta', 'Java & Sumatra', '+07:00', '+07:00', ''),
('ID', '-0232+14042', 'Asia/Jayapura', 'west New Guinea (Irian Jaya) & Malukus (Moluccas)', '+09:00', '+09:00', ''),
('IL', '+3146+03514', 'Asia/Jerusalem', '', '+02:00', '+03:00', ''),
('AF', '+3431+06912', 'Asia/Kabul', '', '+04:30', '+04:30', ''),
('RU', '+5301+15839', 'Asia/Kamchatka', 'Moscow+08 - Kamchatka', '+12:00', '+12:00', ''),
('PK', '+2452+06703', 'Asia/Karachi', '', '+05:00', '+05:00', ''),
('CN', '+3929+07559', 'Asia/Kashgar', 'west Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Kunlun time zone.'),
('NP', '+2743+08519', 'Asia/Kathmandu', '', '+05:45', '+05:45', ''),
('', '', 'Asia/Katmandu', '', '+05:45', '+05:45', 'Link to Asia/Kathmandu'),
('IN', '+2232+08822', 'Asia/Kolkata', '', '+05:30', '+05:30', 'Note: Different zones in history, see Time in India.'),
('RU', '+5601+09250', 'Asia/Krasnoyarsk', 'Moscow+04 - Yenisei River', '+08:00', '+08:00', ''),
('MY', '+0310+10142', 'Asia/Kuala_Lumpur', 'peninsular Malaysia', '+08:00', '+08:00', ''),
('MY', '+0133+11020', 'Asia/Kuching', 'Sabah & Sarawak', '+08:00', '+08:00', ''),
('KW', '+2920+04759', 'Asia/Kuwait', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Macao', '', '+08:00', '+08:00', 'Link to Asia/Macau'),
('MO', '+2214+11335', 'Asia/Macau', '', '+08:00', '+08:00', ''),
('RU', '+5934+15048', 'Asia/Magadan', 'Moscow+08 - Magadan', '+12:00', '+12:00', ''),
('ID', '-0507+11924', 'Asia/Makassar', 'east & south Borneo, Sulawesi (Celebes), Bali, Nusa Tenggara, west Timor', '+08:00', '+08:00', ''),
('PH', '+1435+12100', 'Asia/Manila', '', '+08:00', '+08:00', ''),
('OM', '+2336+05835', 'Asia/Muscat', '', '+04:00', '+04:00', ''),
('CY', '+3510+03322', 'Asia/Nicosia', '', '+02:00', '+03:00', ''),
('RU', '+5345+08707', 'Asia/Novokuznetsk', 'Moscow+03 - Novokuznetsk', '+07:00', '+07:00', ''),
('RU', '+5502+08255', 'Asia/Novosibirsk', 'Moscow+03 - Novosibirsk', '+07:00', '+07:00', ''),
('RU', '+5500+07324', 'Asia/Omsk', 'Moscow+03 - west Siberia', '+07:00', '+07:00', ''),
('KZ', '+5113+05121', 'Asia/Oral', 'West Kazakhstan', '+05:00', '+05:00', ''),
('KH', '+1133+10455', 'Asia/Phnom_Penh', '', '+07:00', '+07:00', ''),
('ID', '-0002+10920', 'Asia/Pontianak', 'west & central Borneo', '+07:00', '+07:00', ''),
('KP', '+3901+12545', 'Asia/Pyongyang', '', '+09:00', '+09:00', ''),
('QA', '+2517+05132', 'Asia/Qatar', '', '+03:00', '+03:00', ''),
('KZ', '+4448+06528', 'Asia/Qyzylorda', 'Qyzylorda (Kyzylorda, Kzyl-Orda)', '+06:00', '+06:00', ''),
('MM', '+1647+09610', 'Asia/Rangoon', '', '+06:30', '+06:30', ''),
('SA', '+2438+04643', 'Asia/Riyadh', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Saigon', '', '+07:00', '+07:00', 'Link to Asia/Ho_Chi_Minh'),
('RU', '+4658+14242', 'Asia/Sakhalin', 'Moscow+07 - Sakhalin Island', '+11:00', '+11:00', ''),
('UZ', '+3940+06648', 'Asia/Samarkand', 'west Uzbekistan', '+05:00', '+05:00', ''),
('KR', '+3733+12658', 'Asia/Seoul', '', '+09:00', '+09:00', ''),
('CN', '+3114+12128', 'Asia/Shanghai', 'east China - Beijing, Guangdong, Shanghai, etc.', '+08:00', '+08:00', 'Covering historic Chungyuan time zone.'),
('SG', '+0117+10351', 'Asia/Singapore', '', '+08:00', '+08:00', ''),
('TW', '+2503+12130', 'Asia/Taipei', '', '+08:00', '+08:00', ''),
('UZ', '+4120+06918', 'Asia/Tashkent', 'east Uzbekistan', '+05:00', '+05:00', ''),
('GE', '+4143+04449', 'Asia/Tbilisi', '', '+04:00', '+04:00', ''),
('IR', '+3540+05126', 'Asia/Tehran', '', '+03:30', '+04:30', ''),
('', '', 'Asia/Tel_Aviv', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Asia/Thimbu', '', '+06:00', '+06:00', 'Link to Asia/Thimphu'),
('BT', '+2728+08939', 'Asia/Thimphu', '', '+06:00', '+06:00', ''),
('JP', '+353916+1394441', 'Asia/Tokyo', '', '+09:00', '+09:00', ''),
('', '', 'Asia/Ujung_Pandang', '', '+08:00', '+08:00', 'Link to Asia/Makassar'),
('MN', '+4755+10653', 'Asia/Ulaanbaatar', 'most locations', '+08:00', '+08:00', ''),
('', '', 'Asia/Ulan_Bator', '', '+08:00', '+08:00', 'Link to Asia/Ulaanbaatar'),
('CN', '+4348+08735', 'Asia/Urumqi', 'most of Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Sinkiang-Tibet time zone.'),
('LA', '+1758+10236', 'Asia/Vientiane', '', '+07:00', '+07:00', ''),
('RU', '+4310+13156', 'Asia/Vladivostok', 'Moscow+07 - Amur River', '+11:00', '+11:00', ''),
('RU', '+6200+12940', 'Asia/Yakutsk', 'Moscow+06 - Lena River', '+10:00', '+10:00', ''),
('RU', '+5651+06036', 'Asia/Yekaterinburg', 'Moscow+02 - Urals', '+06:00', '+06:00', ''),
('AM', '+4011+04430', 'Asia/Yerevan', '', '+04:00', '+04:00', ''),
('PT', '+3744-02540', 'Atlantic/Azores', 'Azores', 'âˆ’01:00', '+00:00', ''),
('BM', '+3217-06446', 'Atlantic/Bermuda', '', 'âˆ’04:00', 'âˆ’03:00', ''),
('ES', '+2806-01524', 'Atlantic/Canary', 'Canary Islands', '+00:00', '+01:00', ''),
('CV', '+1455-02331', 'Atlantic/Cape_Verde', '', 'âˆ’01:00', 'âˆ’01:00', ''),
('', '', 'Atlantic/Faeroe', '', '+00:00', '+01:00', 'Link to Atlantic/Faroe'),
('FO', '+6201-00646', 'Atlantic/Faroe', '', '+00:00', '+01:00', ''),
('', '', 'Atlantic/Jan_Mayen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('PT', '+3238-01654', 'Atlantic/Madeira', 'Madeira Islands', '+00:00', '+01:00', ''),
('IS', '+6409-02151', 'Atlantic/Reykjavik', '', '+00:00', '+00:00', ''),
('GS', '-5416-03632', 'Atlantic/South_Georgia', '', 'âˆ’02:00', 'âˆ’02:00', ''),
('FK', '-5142-05751', 'Atlantic/Stanley', '', 'âˆ’03:00', 'âˆ’03:00', ''),
('SH', '-1555-00542', 'Atlantic/St_Helena', '', '+00:00', '+00:00', ''),
('', '', 'Australia/ACT', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3455+13835', 'Australia/Adelaide', 'South Australia', '+09:30', '+10:30', ''),
('AU', '-2728+15302', 'Australia/Brisbane', 'Queensland - most locations', '+10:00', '+10:00', ''),
('AU', '-3157+14127', 'Australia/Broken_Hill', 'New South Wales - Yancowinna', '+09:30', '+10:30', ''),
('', '', 'Australia/Canberra', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3956+14352', 'Australia/Currie', 'Tasmania - King Island', '+10:00', '+11:00', ''),
('AU', '-1228+13050', 'Australia/Darwin', 'Northern Territory', '+09:30', '+09:30', ''),
('AU', '-3143+12852', 'Australia/Eucla', 'Western Australia - Eucla area', '+08:45', '+08:45', ''),
('AU', '-4253+14719', 'Australia/Hobart', 'Tasmania - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/LHI', '', '+10:30', '+11:00', 'Link to Australia/Lord_Howe'),
('AU', '-2016+14900', 'Australia/Lindeman', 'Queensland - Holiday Islands', '+10:00', '+10:00', ''),
('AU', '-3133+15905', 'Australia/Lord_Howe', 'Lord Howe Island', '+10:30', '+11:00', ''),
('AU', '-3749+14458', 'Australia/Melbourne', 'Victoria', '+10:00', '+11:00', ''),
('', '', 'Australia/North', '', '+09:30', '+09:30', 'Link to Australia/Darwin'),
('', '', 'Australia/NSW', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3157+11551', 'Australia/Perth', 'Western Australia - most locations', '+08:00', '+08:00', ''),
('', '', 'Australia/Queensland', '', '+10:00', '+10:00', 'Link to Australia/Brisbane'),
('', '', 'Australia/South', '', '+09:30', '+10:30', 'Link to Australia/Adelaide'),
('AU', '-3352+15113', 'Australia/Sydney', 'New South Wales - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/Tasmania', '', '+10:00', '+11:00', 'Link to Australia/Hobart'),
('', '', 'Australia/Victoria', '', '+10:00', '+11:00', 'Link to Australia/Melbourne'),
('', '', 'Australia/West', '', '+08:00', '+08:00', 'Link to Australia/Perth'),
('', '', 'Australia/Yancowinna', '', '+09:30', '+10:30', 'Link to Australia/Broken_Hill'),
('', '', 'Brazil/Acre', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Rio_Branco'),
('', '', 'Brazil/DeNoronha', '', 'âˆ’02:00', 'âˆ’02:00', 'Link to America/Noronha'),
('', '', 'Brazil/East', '', 'âˆ’03:00', 'âˆ’02:00', 'Link to America/Sao_Paulo'),
('', '', 'Brazil/West', '', 'âˆ’04:00', 'âˆ’04:00', 'Link to America/Manaus'),
('', '', 'Canada/Atlantic', '', 'âˆ’04:00', 'âˆ’03:00', 'Link to America/Halifax'),
('', '', 'Canada/Central', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Winnipeg'),
('', '', 'Canada/East-Saskatchewan', '', 'âˆ’06:00', 'âˆ’06:00', 'Link to America/Regina'),
('', '', 'Canada/Eastern', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Toronto'),
('', '', 'Canada/Mountain', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Edmonton'),
('', '', 'Canada/Newfoundland', '', 'âˆ’03:30', 'âˆ’02:30', 'Link to America/St_Johns'),
('', '', 'Canada/Pacific', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Vancouver'),
('', '', 'Canada/Saskatchewan', '', 'âˆ’06:00', 'âˆ’06:00', 'Link to America/Regina'),
('', '', 'Canada/Yukon', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Whitehorse'),
('', '', 'CET', '', '+01:00', '+02:00', ''),
('', '', 'Chile/Continental', '', 'âˆ’04:00', 'âˆ’03:00', 'Link to America/Santiago'),
('', '', 'Chile/EasterIsland', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to Pacific/Easter'),
('', '', 'CST6CDT', '', 'âˆ’06:00', 'âˆ’05:00', ''),
('', '', 'Cuba', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Havana'),
('', '', 'EET', '', '+02:00', '+03:00', ''),
('', '', 'Egypt', '', '+02:00', '+02:00', 'Link to Africa/Cairo'),
('', '', 'Eire', '', '+00:00', '+01:00', 'Link to Europe/Dublin'),
('', '', 'EST', '', 'âˆ’05:00', 'âˆ’05:00', ''),
('', '', 'EST5EDT', '', 'âˆ’05:00', 'âˆ’04:00', ''),
('', '', 'Etc./GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UTC', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Zulu', '', '+00:00', '+00:00', 'Link to UTC'),
('NL', '+5222+00454', 'Europe/Amsterdam', '', '+01:00', '+02:00', ''),
('AD', '+4230+00131', 'Europe/Andorra', '', '+01:00', '+02:00', ''),
('GR', '+3758+02343', 'Europe/Athens', '', '+02:00', '+03:00', ''),
('', '', 'Europe/Belfast', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RS', '+4450+02030', 'Europe/Belgrade', '', '+01:00', '+02:00', ''),
('DE', '+5230+01322', 'Europe/Berlin', '', '+01:00', '+02:00', 'In 1945, the Trizone did not follow Berlin\'s switch to DST, see Time in Germany'),
('SK', '+4809+01707', 'Europe/Bratislava', '', '+01:00', '+02:00', 'Link to Europe/Prague'),
('BE', '+5050+00420', 'Europe/Brussels', '', '+01:00', '+02:00', ''),
('RO', '+4426+02606', 'Europe/Bucharest', '', '+02:00', '+03:00', ''),
('HU', '+4730+01905', 'Europe/Budapest', '', '+01:00', '+02:00', ''),
('MD', '+4700+02850', 'Europe/Chisinau', '', '+02:00', '+03:00', ''),
('DK', '+5540+01235', 'Europe/Copenhagen', '', '+01:00', '+02:00', ''),
('IE', '+5320-00615', 'Europe/Dublin', '', '+00:00', '+01:00', ''),
('GI', '+3608-00521', 'Europe/Gibraltar', '', '+01:00', '+02:00', ''),
('GG', '+4927-00232', 'Europe/Guernsey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('FI', '+6010+02458', 'Europe/Helsinki', '', '+02:00', '+03:00', ''),
('IM', '+5409-00428', 'Europe/Isle_of_Man', '', '+00:00', '+01:00', 'Link to Europe/London'),
('TR', '+4101+02858', 'Europe/Istanbul', '', '+02:00', '+03:00', ''),
('JE', '+4912-00207', 'Europe/Jersey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RU', '+5443+02030', 'Europe/Kaliningrad', 'Moscow-01 - Kaliningrad', '+03:00', '+03:00', ''),
('UA', '+5026+03031', 'Europe/Kiev', 'most locations', '+02:00', '+03:00', ''),
('PT', '+3843-00908', 'Europe/Lisbon', 'mainland', '+00:00', '+01:00', ''),
('SI', '+4603+01431', 'Europe/Ljubljana', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('GB', '+513030-0000731', 'Europe/London', '', '+00:00', '+01:00', ''),
('LU', '+4936+00609', 'Europe/Luxembourg', '', '+01:00', '+02:00', ''),
('ES', '+4024-00341', 'Europe/Madrid', 'mainland', '+01:00', '+02:00', ''),
('MT', '+3554+01431', 'Europe/Malta', '', '+01:00', '+02:00', ''),
('AX', '+6006+01957', 'Europe/Mariehamn', '', '+02:00', '+03:00', 'Link to Europe/Helsinki'),
('BY', '+5354+02734', 'Europe/Minsk', '', '+03:00', '+03:00', ''),
('MC', '+4342+00723', 'Europe/Monaco', '', '+01:00', '+02:00', ''),
('RU', '+5545+03735', 'Europe/Moscow', 'Moscow+00 - west Russia', '+04:00', '+04:00', ''),
('', '', 'Europe/Nicosia', '', '+02:00', '+03:00', 'Link to Asia/Nicosia'),
('NO', '+5955+01045', 'Europe/Oslo', '', '+01:00', '+02:00', ''),
('FR', '+4852+00220', 'Europe/Paris', '', '+01:00', '+02:00', ''),
('ME', '+4226+01916', 'Europe/Podgorica', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('CZ', '+5005+01426', 'Europe/Prague', '', '+01:00', '+02:00', ''),
('LV', '+5657+02406', 'Europe/Riga', '', '+02:00', '+03:00', ''),
('IT', '+4154+01229', 'Europe/Rome', '', '+01:00', '+02:00', ''),
('RU', '+5312+05009', 'Europe/Samara', 'Moscow+00 - Samara, Udmurtia', '+04:00', '+04:00', ''),
('SM', '+4355+01228', 'Europe/San_Marino', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('BA', '+4352+01825', 'Europe/Sarajevo', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4457+03406', 'Europe/Simferopol', 'central Crimea', '+02:00', '+03:00', ''),
('MK', '+4159+02126', 'Europe/Skopje', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('BG', '+4241+02319', 'Europe/Sofia', '', '+02:00', '+03:00', ''),
('SE', '+5920+01803', 'Europe/Stockholm', '', '+01:00', '+02:00', ''),
('EE', '+5925+02445', 'Europe/Tallinn', '', '+02:00', '+03:00', ''),
('AL', '+4120+01950', 'Europe/Tirane', '', '+01:00', '+02:00', ''),
('', '', 'Europe/Tiraspol', '', '+02:00', '+03:00', 'Link to Europe/Chisinau'),
('UA', '+4837+02218', 'Europe/Uzhgorod', 'Ruthenia', '+02:00', '+03:00', ''),
('LI', '+4709+00931', 'Europe/Vaduz', '', '+01:00', '+02:00', ''),
('VA', '+415408+0122711', 'Europe/Vatican', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('AT', '+4813+01620', 'Europe/Vienna', '', '+01:00', '+02:00', ''),
('LT', '+5441+02519', 'Europe/Vilnius', '', '+02:00', '+03:00', ''),
('RU', '+4844+04425', 'Europe/Volgograd', 'Moscow+00 - Caspian Sea', '+04:00', '+04:00', ''),
('PL', '+5215+02100', 'Europe/Warsaw', '', '+01:00', '+02:00', ''),
('HR', '+4548+01558', 'Europe/Zagreb', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4750+03510', 'Europe/Zaporozhye', 'Zaporozh\'ye, E Lugansk / Zaporizhia, E Luhansk', '+02:00', '+03:00', ''),
('CH', '+4723+00832', 'Europe/Zurich', '', '+01:00', '+02:00', ''),
('', '', 'GB', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GB-Eire', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT-0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Greenwich', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Hong Kong', '', '+08:00', '+08:00', 'Link to Asia/Hong_Kong'),
('', '', 'HST', '', 'âˆ’10:00', 'âˆ’10:00', ''),
('', '', 'Iceland', '', '+00:00', '+00:00', 'Link to Atlantic/Reykjavik'),
('MG', '-1855+04731', 'Indian/Antananarivo', '', '+03:00', '+03:00', ''),
('IO', '-0720+07225', 'Indian/Chagos', '', '+06:00', '+06:00', ''),
('CX', '-1025+10543', 'Indian/Christmas', '', '+07:00', '+07:00', ''),
('CC', '-1210+09655', 'Indian/Cocos', '', '+06:30', '+06:30', ''),
('KM', '-1141+04316', 'Indian/Comoro', '', '+03:00', '+03:00', ''),
('TF', '-492110+0701303', 'Indian/Kerguelen', '', '+05:00', '+05:00', ''),
('SC', '-0440+05528', 'Indian/Mahe', '', '+04:00', '+04:00', ''),
('MV', '+0410+07330', 'Indian/Maldives', '', '+05:00', '+05:00', ''),
('MU', '-2010+05730', 'Indian/Mauritius', '', '+04:00', '+04:00', ''),
('YT', '-1247+04514', 'Indian/Mayotte', '', '+03:00', '+03:00', ''),
('RE', '-2052+05528', 'Indian/Reunion', '', '+04:00', '+04:00', ''),
('', '', 'Iran', '', '+03:30', '+04:30', 'Link to Asia/Tehran'),
('', '', 'Israel', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Jamaica', '', 'âˆ’05:00', 'âˆ’05:00', 'Link to America/Jamaica'),
('', '', 'Japan', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'JST-9', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'Kwajalein', '', '+12:00', '+12:00', 'Link to Pacific/Kwajalein'),
('', '', 'Libya', '', '+02:00', '+02:00', 'Link to Africa/Tripoli'),
('', '', 'MET', '', '+01:00', '+02:00', ''),
('', '', 'Mexico/BajaNorte', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Tijuana'),
('', '', 'Mexico/BajaSur', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Mazatlan'),
('', '', 'Mexico/General', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Mexico_City'),
('', '', 'MST', '', 'âˆ’07:00', 'âˆ’07:00', ''),
('', '', 'MST7MDT', '', 'âˆ’07:00', 'âˆ’06:00', ''),
('', '', 'Navajo', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Denver'),
('', '', 'NZ', '', '+12:00', '+13:00', 'Link to Pacific/Auckland'),
('', '', 'NZ-CHAT', '', '+12:45', '+13:45', 'Link to Pacific/Chatham'),
('WS', '-1350-17144', 'Pacific/Apia', '', '+13:00', '+14:00', ''),
('NZ', '-3652+17446', 'Pacific/Auckland', 'most locations', '+12:00', '+13:00', ''),
('NZ', '-4357-17633', 'Pacific/Chatham', 'Chatham Islands', '+12:45', '+13:45', ''),
('FM', '+0725+15147', 'Pacific/Chuuk', 'Chuuk (Truk) and Yap', '+10:00', '+10:00', ''),
('CL', '-2709-10926', 'Pacific/Easter', 'Easter Island & Sala y Gomez', 'âˆ’06:00', 'âˆ’05:00', ''),
('VU', '-1740+16825', 'Pacific/Efate', '', '+11:00', '+11:00', ''),
('KI', '-0308-17105', 'Pacific/Enderbury', 'Phoenix Islands', '+13:00', '+13:00', ''),
('TK', '-0922-17114', 'Pacific/Fakaofo', '', '+13:00', '+13:00', ''),
('FJ', '-1808+17825', 'Pacific/Fiji', '', '+12:00', '+13:00', ''),
('TV', '-0831+17913', 'Pacific/Funafuti', '', '+12:00', '+12:00', ''),
('EC', '-0054-08936', 'Pacific/Galapagos', 'Galapagos Islands', 'âˆ’06:00', 'âˆ’06:00', ''),
('PF', '-2308-13457', 'Pacific/Gambier', 'Gambier Islands', 'âˆ’09:00', 'âˆ’09:00', ''),
('SB', '-0932+16012', 'Pacific/Guadalcanal', '', '+11:00', '+11:00', ''),
('GU', '+1328+14445', 'Pacific/Guam', '', '+10:00', '+10:00', ''),
('US', '+211825-1575130', 'Pacific/Honolulu', 'Hawaii', 'âˆ’10:00', 'âˆ’10:00', ''),
('UM', '+1645-16931', 'Pacific/Johnston', 'Johnston Atoll', 'âˆ’10:00', 'âˆ’10:00', ''),
('KI', '+0152-15720', 'Pacific/Kiritimati', 'Line Islands', '+14:00', '+14:00', ''),
('FM', '+0519+16259', 'Pacific/Kosrae', 'Kosrae', '+11:00', '+11:00', ''),
('MH', '+0905+16720', 'Pacific/Kwajalein', 'Kwajalein', '+12:00', '+12:00', ''),
('MH', '+0709+17112', 'Pacific/Majuro', 'most locations', '+12:00', '+12:00', ''),
('PF', '-0900-13930', 'Pacific/Marquesas', 'Marquesas Islands', 'âˆ’09:30', 'âˆ’09:30', ''),
('UM', '+2813-17722', 'Pacific/Midway', 'Midway Islands', 'âˆ’11:00', 'âˆ’11:00', ''),
('NR', '-0031+16655', 'Pacific/Nauru', '', '+12:00', '+12:00', ''),
('NU', '-1901-16955', 'Pacific/Niue', '', 'âˆ’11:00', 'âˆ’11:00', ''),
('NF', '-2903+16758', 'Pacific/Norfolk', '', '+11:30', '+11:30', ''),
('NC', '-2216+16627', 'Pacific/Noumea', '', '+11:00', '+11:00', ''),
('AS', '-1416-17042', 'Pacific/Pago_Pago', '', 'âˆ’11:00', 'âˆ’11:00', ''),
('PW', '+0720+13429', 'Pacific/Palau', '', '+09:00', '+09:00', ''),
('PN', '-2504-13005', 'Pacific/Pitcairn', '', 'âˆ’08:00', 'âˆ’08:00', ''),
('FM', '+0658+15813', 'Pacific/Pohnpei', 'Pohnpei (Ponape)', '+11:00', '+11:00', ''),
('', '', 'Pacific/Ponape', '', '+11:00', '+11:00', 'Link to Pacific/Pohnpei'),
('PG', '-0930+14710', 'Pacific/Port_Moresby', '', '+10:00', '+10:00', ''),
('CK', '-2114-15946', 'Pacific/Rarotonga', '', 'âˆ’10:00', 'âˆ’10:00', ''),
('MP', '+1512+14545', 'Pacific/Saipan', '', '+10:00', '+10:00', ''),
('', '', 'Pacific/Samoa', '', 'âˆ’11:00', 'âˆ’11:00', 'Link to Pacific/Pago_Pago'),
('PF', '-1732-14934', 'Pacific/Tahiti', 'Society Islands', 'âˆ’10:00', 'âˆ’10:00', ''),
('KI', '+0125+17300', 'Pacific/Tarawa', 'Gilbert Islands', '+12:00', '+12:00', ''),
('TO', '-2110-17510', 'Pacific/Tongatapu', '', '+13:00', '+13:00', ''),
('', '', 'Pacific/Truk', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('UM', '+1917+16637', 'Pacific/Wake', 'Wake Island', '+12:00', '+12:00', ''),
('WF', '-1318-17610', 'Pacific/Wallis', '', '+12:00', '+12:00', ''),
('', '', 'Pacific/Yap', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('', '', 'Poland', '', '+01:00', '+02:00', 'Link to Europe/Warsaw'),
('', '', 'Portugal', '', '+00:00', '+01:00', 'Link to Europe/Lisbon'),
('', '', 'PRC', '', '+08:00', '+08:00', 'Link to Asia/Shanghai'),
('', '', 'PST8PDT', '', 'âˆ’08:00', 'âˆ’07:00', ''),
('', '', 'ROC', '', '+08:00', '+08:00', 'Link to Asia/Taipei'),
('', '', 'ROK', '', '+09:00', '+09:00', 'Link to Asia/Seoul'),
('', '', 'Singapore', '', '+08:00', '+08:00', 'Link to Asia/Singapore'),
('', '', 'Turkey', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('', '', 'UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'US/Alaska', '', 'âˆ’09:00', 'âˆ’08:00', 'Link to America/Anchorage'),
('', '', 'US/Aleutian', '', 'âˆ’10:00', 'âˆ’09:00', 'Link to America/Adak'),
('', '', 'US/Arizona', '', 'âˆ’07:00', 'âˆ’07:00', 'Link to America/Phoenix'),
('', '', 'US/Central', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Chicago'),
('', '', 'US/East-Indiana', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Indiana/Indianapolis'),
('', '', 'US/Eastern', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/New_York'),
('', '', 'US/Hawaii', '', 'âˆ’10:00', 'âˆ’10:00', 'Link to Pacific/Honolulu'),
('', '', 'US/Indiana-Starke', '', 'âˆ’06:00', 'âˆ’05:00', 'Link to America/Indiana/Knox'),
('', '', 'US/Michigan', '', 'âˆ’05:00', 'âˆ’04:00', 'Link to America/Detroit'),
('', '', 'US/Mountain', '', 'âˆ’07:00', 'âˆ’06:00', 'Link to America/Denver'),
('', '', 'US/Pacific', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Pacific-New', '', 'âˆ’08:00', 'âˆ’07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Samoa', '', 'âˆ’11:00', 'âˆ’11:00', 'Link to Pacific/Pago_Pago'),
('', '', 'UTC', '', '+00:00', '+00:00', ''),
('', '', 'W-SU', '', '+04:00', '+04:00', 'Link to Europe/Moscow'),
('', '', 'WET', '', '+00:00', '+01:00', ''),
('', '', 'Zulu', '', '+00:00', '+00:00', 'Link to UTC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_amount` double(8,2) NOT NULL,
  `transaction_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `organization_id`, `user_id`, `student_id`, `plan_id`, `gateway`, `transaction_id`, `transaction_amount`, `transaction_time`, `currency`, `status`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 14, NULL, NULL, 'sslcommerz', '62225175ca8ae', 100.00, '2022-03-04 23:50:45', 'BDT', 'SUCCESS', 'LIVE', NULL, '2022-03-04 17:50:54'),
(2, 1, 14, NULL, NULL, NULL, '62225359a54b9', 100.00, '2022-03-04 23:58:49', 'BDT', 'PENDING', 'LIVE', NULL, NULL),
(3, 1, 14, NULL, NULL, NULL, '622267e82b088', 100.00, '2022-03-05 01:26:32', 'BDT', 'PENDING', 'DELETED', NULL, '2022-03-28 16:12:01'),
(4, 1, 13, 1, 1, 'manual', 'dfdsfreafdfd9', 250.00, '2022-03-07 00:12:36', NULL, 'PENDING', 'LIVE', '2022-03-06 18:00:02', '2022-03-06 18:13:03'),
(5, 1, 14, NULL, NULL, 'paypal', '59H21283FA2236303', 1000.00, '2022-03-07 23:31:21', 'USD', 'SUCCESS', 'LIVE', '2022-03-07 17:31:21', '2022-03-07 17:31:21'),
(6, 1, 14, NULL, NULL, 'stripe', 'txn_3KakfrAm8i3I2WzV1FMb5NC5', 10000.00, '2022-03-07 23:48:46', 'usd', 'SUCCESS', 'LIVE', '2022-03-07 17:48:46', '2022-03-07 17:48:46'),
(7, 1, 14, 3, 3, 'paypal', '68F64225AB8563832', 1000.00, '2022-03-11 19:23:40', 'USD', 'SUCCESS', 'LIVE', '2022-03-11 13:23:40', '2022-03-11 13:23:40'),
(8, 1, 14, NULL, NULL, 'stripe', 'txn_3Kc8S5Am8i3I2WzV0WAQqOwn', 10000.00, '2022-03-11 19:24:19', 'usd', 'SUCCESS', 'LIVE', '2022-03-11 13:24:19', '2022-03-11 13:24:19'),
(9, 1, 14, NULL, NULL, 'stripe', 'txn_3Kc8V5Am8i3I2WzV0wQtNNoV', 10000.00, '2022-03-11 19:27:24', 'usd', 'SUCCESS', 'LIVE', '2022-03-11 13:27:24', '2022-03-11 13:27:24'),
(10, 1, 14, 3, 3, 'paypal', '49R75699NL3435235', 1000.00, '2022-03-11 19:28:00', 'USD', 'SUCCESS', 'LIVE', '2022-03-11 13:28:00', '2022-03-11 13:28:00'),
(11, 1, 14, 3, 3, 'stripe', 'txn_3Kc8X5Am8i3I2WzV0L4bt295', 10000.00, '2022-03-11 19:29:27', 'usd', 'SUCCESS', 'LIVE', '2022-03-11 13:29:27', '2022-03-11 13:29:27'),
(12, 1, 14, 3, 3, 'paypal', '6X05342183095284W', 1000.00, '2022-03-11 19:29:47', 'USD', 'SUCCESS', 'LIVE', '2022-03-11 13:29:47', '2022-03-11 13:29:47'),
(13, 1, 14, 3, 3, 'sslcommerz', '622b4fd769fc4', 100.00, '2022-03-11 19:34:15', 'BDT', 'SUCCESS', 'LIVE', NULL, '2022-03-11 13:34:25'),
(14, 1, 14, NULL, NULL, NULL, '626506ed2a652', 100.00, '2022-04-24 14:14:37', 'BDT', 'PENDING', 'LIVE', NULL, NULL),
(15, 1, 14, NULL, NULL, NULL, '62650c5a9eafc', 100.00, '2022-04-24 14:37:46', 'BDT', 'PENDING', 'LIVE', NULL, NULL),
(16, 1, 14, NULL, NULL, NULL, '62650ca9dd0f0', 10.00, '2022-04-24 14:39:05', 'BDT', 'PENDING', 'LIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2' COMMENT '1=>Admin,2=>Others',
  `type` int(11) DEFAULT NULL COMMENT '1=>Teacher,2=>Therapist,3=>Other Staff,4=>Parent',
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` int(11) DEFAULT NULL COMMENT '1=>Per Session/Class,2=>Monthly',
  `payment_amount` double(8,2) DEFAULT NULL,
  `will_login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yes/No',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `organization_id`, `role_id`, `type`, `employee_id`, `first_name`, `last_name`, `email`, `mobile`, `username`, `image`, `designation_id`, `address`, `city`, `state`, `country`, `payment_mode`, `payment_amount`, `will_login`, `password`, `status`, `remember_token`, `language`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'Mr', 'Admin', 'admin@doorsoft.co', '0123456789', NULL, 'images/1645342284logo3.png', NULL, NULL, 'Kaunia', 'Elmshorn', 'BURKINA FASO', NULL, NULL, 'Yes', '$2y$10$ff4Ey5eAGKxnSAjEEkm/rOEbbU4rvleomQlIEeFJ8oFmJXm6sDQ6u', 1, '0IVLq7ExbEcR3rN1zhv2gRrY50IkXH2DWbHuXQ7Y5RzHs04Tso2OgWiC3cfH', 'bn', 'LIVE', NULL, '2022-04-03 17:34:12'),
(8, 1, 2, 1, '000001', 'Francis', 'Boehm', 'FrancisBoehm@rhyta.com', '773-873-4490', NULL, 'images/164440131801.jpg', NULL, '4444 Point Street Chicago, IL 60620', 'Chicago', 'Chicago', 'CAMEROON', 1, 10.00, 'No', '$2y$10$ff4Ey5eAGKxnSAjEEkm/rOEbbU4rvleomQlIEeFJ8oFmJXm6sDQ6u', 1, 'RVgBQxgbzu41aKEuHJEdFiAgh8UQYmHzCHMn03DXT0YD0KtATnWxKYl75uxE', 'en', 'LIVE', '2022-02-09 10:08:39', '2022-04-04 16:34:08'),
(9, 1, 2, 2, '000002', 'Anthony', 'Neal', 'AnthonySNeal@dayrep.com', '940-672-0443', NULL, 'images/1645266240download (1).jpg', NULL, '2729 Olen Thomas Drive Seymour, TX 76380', 'Seymour', 'Seymour', 'AFGHANISTAN', NULL, 10.00, 'Yes', '$2y$10$ff4Ey5eAGKxnSAjEEkm/rOEbbU4rvleomQlIEeFJ8oFmJXm6sDQ6u', 1, 'SXmJC8jpRjFeDcWTS05FjN1FnveVl687QPIRMgHQJWC21BctMf1K830v5syj', 'bn', 'LIVE', '2022-02-09 10:10:04', '2022-03-19 16:26:16'),
(10, 1, 2, 3, '000004', 'Mary', 'King', 'MaryJKing@rhyta.com', '510-396-4160', NULL, 'images/1644401569img_avatar2.png', 3, '1721 Thompson Drive Concord, CA 94520', 'Concord', 'Concord', 'BAHAMAS', 2, 1500.00, 'Yes', '$2y$10$ff4Ey5eAGKxnSAjEEkm/rOEbbU4rvleomQlIEeFJ8oFmJXm6sDQ6u', 1, 'Bg0X02W3kScgypuPG9Eblmhe8Ae4HCv6IDSSEQwCNGu0kmz1GCQ4xq11CD88', 'en', 'LIVE', '2022-02-09 10:12:49', '2022-04-23 14:55:46'),
(11, 1, 2, 3, NULL, 'Gertrude', 'Sussman', 'GertrudeJSussman@jourrapide.com', '832-851-8600', NULL, 'images/1644421790avatar6.png', 5, '2921 Werninger Street Houston, TX 77002', 'Houston', 'Houston', 'AFGHANISTAN', 2, 1500.00, 'Yes', '$2y$10$VoYrj0Sv/51F3mOrpbQia.tL4GWHpUPi9yp2vcwqLKOFrPhEGKk3i', 1, NULL, 'en', 'LIVE', '2022-02-09 15:49:51', '2022-02-20 04:26:59'),
(12, 1, 2, 1, '000003', 'Norman', 'Viverette', 'NormanLViverette@armyspy.com', '6312663489', NULL, 'images/164442297207.jpg', NULL, '927 Clark Street East Northport, NY 11731', 'Northport', 'Northport', 'ALGERIA', 1, 12.00, 'Yes', '$2y$10$wmiwM/oh8WpazjT1./7Xt.F9gpB/vgunKeaIc.syg5z1Es8E5Wu.C', 1, 'zUAi3xZqvndz1nb4Du7DCAT3m3cbQT4gxU3mOrNWrp1dI0ygV5zF2cgk01ZJ', 'en', 'LIVE', '2022-02-09 16:09:32', '2022-04-23 14:55:31'),
(13, 1, 2, 4, NULL, 'Ingrid', 'Harding', 'IngridJHarding@teleworm.us', '9162660844', NULL, 'images/164442308617.jpg', NULL, '4563 Frederick Street Rancho Cordova, CA 95670', 'Cordova', 'Cordova', 'BARBADOS', 1, 15.00, 'Yes', '$2y$10$iimorrami6gyaz0YPB.to.u99RWTdc7D2L/FqFDjuMpOsxWWTXzP2', 1, 'Lac5mpq7RS140wJwhpbR7Vwhp59isfMmVS9tMDZWB8FdiiNAmXPcR9kRxrAt', 'en', 'LIVE', '2022-02-09 16:11:26', '2022-02-22 10:54:39'),
(14, 1, 2, 4, NULL, 'Brenda', 'Matthews', 'BrendaJMatthews@armyspy.com', '2092545284', NULL, 'images/164442318618.jpg', NULL, '2882 Maple Avenue Stockton, CA 95204', 'Stockton', 'Stockton', 'BRAZIL', NULL, NULL, 'Yes', '$2y$10$ff4Ey5eAGKxnSAjEEkm/rOEbbU4rvleomQlIEeFJ8oFmJXm6sDQ6u', 1, 'islH4dDx0G9dp1X5YLBfBbptTXxRCRKkVWKXMhrEj0wRSqm5XNhCvZquXPUE', 'en', 'LIVE', '2022-02-09 16:13:06', '2022-03-19 16:37:28'),
(15, 1, 2, 4, NULL, 'Vernon', 'Johnson', 'VernonRJohnson@dayrep.com', '6099651243', NULL, 'images/164442333615.jpg', NULL, '1389 Whiteman Street Egg Harbor City, NJ 08215', 'Harbor', 'Street Egg', 'US', NULL, NULL, 'Yes', '$2y$10$ff4Ey5eAGKxnSAjEEkm/rOEbbU4rvleomQlIEeFJ8oFmJXm6sDQ6u', 1, NULL, 'en', 'LIVE', '2022-02-09 16:15:36', '2022-02-09 16:15:36'),
(16, 1, 2, 2, NULL, 'Emilia', 'Bryson', 'EmiliaSBryson@teleworm.us', '5032495869', NULL, 'images/1644730622download (2).png', NULL, '4119 Gateway Road Portland, OR 97212', 'Portland', 'Portland', 'AMERICAN SAMOA', NULL, 5.00, 'Yes', '$2y$10$VXgxS4DzNOvl.iTkUCaCx.j1JZlvUNlV9xpPODyl7M7jujDoc4XXm', 1, 'SZZxi3zGtQYL8dCM1wHl20QK7bqUG6way5dXzHgR47Le4kLV3gMO7w9LONfQ', 'en', 'LIVE', '2022-02-13 05:37:02', '2022-02-22 09:34:41'),
(17, 1, 2, 2, NULL, 'Bruce', 'Hampton', 'BrucePHampton@dayrep.com', '2174468337', NULL, 'images/1644730709—Pngtree—user vector avatar_4830521.png', NULL, '1486 Isaacs Creek Road Danville, IL 61832', 'Danville', 'Danville', 'ANDORRA', 1, 15.00, 'Yes', '$2y$10$oZ9NbMT8TkZOLT1khLpzqeO0p7WgwQr.iX8hjqNKOPNHu3Xcq0fhe', 1, NULL, 'en', 'LIVE', '2022-02-13 05:38:29', '2022-02-22 09:35:24'),
(18, 1, 2, 2, NULL, 'Vera', 'Cornell', 'VeraMCornell@teleworm.us', '4022223963', NULL, 'images/1644730792img_avatar2.png', NULL, '1702 Crummit Lane Omaha, NE 68114', 'Omaha', 'Omaha', 'ALGERIA', 1, 12.00, 'Yes', '$2y$10$B.92S3f2wIPcaNpQeWb2W.pdRgYBHpZ.K2y0TXKMKaHn2uqaHW8ny', 1, NULL, 'en', 'LIVE', '2022-02-13 05:39:52', '2022-02-22 09:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_documents`
--

CREATE TABLE `tbl_user_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user_documents`
--

INSERT INTO `tbl_user_documents` (`id`, `organization_id`, `user_id`, `title`, `path`, `del_status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Birth certificate', 'images/1644400143_birth-certificate.jpg', 'LIVE', '2022-02-09 09:49:03', '2022-02-09 09:49:03'),
(2, 1, 2, 'National Id', 'images/1644400143_national-id.jpeg', 'LIVE', '2022-02-09 09:49:03', '2022-02-09 09:49:03'),
(3, 1, 7, 'Birth certificate', 'images/1644400199_birth-certificate.jpg', 'LIVE', '2022-02-09 09:49:59', '2022-02-09 09:49:59'),
(4, 1, 7, 'Check file', 'images/1644400199_check-file.pdf', 'LIVE', '2022-02-09 09:49:59', '2022-02-09 09:49:59'),
(5, 1, 8, 'Birth certificate', 'images/1644401319_birth-certificate.jpg', 'DELETED', '2022-02-09 10:08:39', '2022-02-20 05:36:24'),
(6, 1, 8, 'Others', 'images/1644401319_others.docx', 'DELETED', '2022-02-09 10:08:39', '2022-02-20 05:35:19'),
(7, 1, 9, 'Birth certificate', 'images/1644401404_birth-certificate.jpg', 'LIVE', '2022-02-09 10:10:04', '2022-02-09 10:10:04'),
(8, 1, 9, 'Others', 'images/1644401404_others.pdf', 'LIVE', '2022-02-09 10:10:04', '2022-02-09 10:10:04'),
(9, 1, 10, 'Birth certificate', 'images/1644401569_birth-certificate.jpg', 'LIVE', '2022-02-09 10:12:49', '2022-02-09 10:12:49'),
(10, 1, 10, 'Academic certificate', 'images/1644401569_academic-certificate.jpeg', 'LIVE', '2022-02-09 10:12:49', '2022-02-09 10:12:49'),
(11, 1, 9, 'Health Insurance', 'images/1644401622_health-insurance.pdf', 'LIVE', '2022-02-09 10:13:42', '2022-02-09 10:13:42'),
(12, 1, 11, 'Birth certificate', 'images/1644421791_birth-certificate.jpg', 'LIVE', '2022-02-09 15:49:51', '2022-02-09 15:49:51'),
(13, 1, 11, 'National Id', 'images/1644421791_national-id.jpg', 'LIVE', '2022-02-09 15:49:51', '2022-02-09 15:49:51'),
(14, 1, 11, 'Experience certificate', 'images/1644421820_experience-certificate.jpg', 'LIVE', '2022-02-09 15:50:20', '2022-02-09 15:50:20'),
(15, 1, 12, 'Birth certificate', 'images/1644422972_birth-certificate.jpg', 'LIVE', '2022-02-09 16:09:32', '2022-02-09 16:09:32'),
(16, 1, 12, 'National Id', 'images/1644422972_national-id.jpg', 'LIVE', '2022-02-09 16:09:32', '2022-02-09 16:09:32'),
(17, 1, 13, 'National Id', 'images/1644423086_national-id.png', 'LIVE', '2022-02-09 16:11:26', '2022-02-09 16:11:26'),
(18, 1, 14, 'National Id', 'images/1644423186_national-id.jpg', 'LIVE', '2022-02-09 16:13:06', '2022-02-09 16:13:06'),
(19, 1, 15, 'National Id', 'images/1644423336_national-id.jpg', 'LIVE', '2022-02-09 16:15:36', '2022-02-09 16:15:36'),
(20, 1, 16, 'Birth certificate', 'images/1644730622_birth-certificate.jpg', 'LIVE', '2022-02-13 05:37:03', '2022-02-13 05:37:03'),
(21, 1, 16, 'National Id', 'images/1644730623_national-id.png', 'LIVE', '2022-02-13 05:37:03', '2022-02-13 05:37:03'),
(22, 1, 17, 'National Id', 'images/1644730709_national-id.jfif', 'LIVE', '2022-02-13 05:38:29', '2022-02-13 05:38:29'),
(23, 1, 18, 'National Id', 'images/1644730792_national-id.jfif', 'LIVE', '2022-02-13 05:39:52', '2022-02-13 05:39:52'),
(24, 1, 8, 'Birth certificate', 'images/1647007599_birth-certificate.pdf', 'LIVE', '2022-03-11 14:06:39', '2022-03-11 14:06:39'),
(25, 1, 8, 'National Id', 'images/1647007599_national-id.pdf', 'LIVE', '2022-03-11 14:06:39', '2022-03-11 14:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_permissions`
--

CREATE TABLE `tbl_user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user_permissions`
--

INSERT INTO `tbl_user_permissions` (`id`, `organization_id`, `user_id`, `permission`, `del_status`, `created_at`, `updated_at`) VALUES
(62, 1, 1, 'organization_setting', 'LIVE', NULL, NULL),
(63, 1, 1, 'staff_parent_management', 'LIVE', NULL, NULL),
(64, 1, 1, 'student_management', 'LIVE', NULL, NULL),
(65, 1, 1, 'attendance_management', 'LIVE', NULL, NULL),
(66, 1, 1, 'payroll_management', 'LIVE', NULL, NULL),
(67, 1, 1, 'expense_management', 'LIVE', NULL, NULL),
(68, 1, 1, 'payment_management', 'LIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `tbl_attendances`
--
ALTER TABLE `tbl_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_difficulties`
--
ALTER TABLE `tbl_difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_categories`
--
ALTER TABLE `tbl_expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_goals`
--
ALTER TABLE `tbl_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_organizations`
--
ALTER TABLE `tbl_organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_settings`
--
ALTER TABLE `tbl_payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payrolls`
--
ALTER TABLE `tbl_payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payroll_payment_modes`
--
ALTER TABLE `tbl_payroll_payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plans`
--
ALTER TABLE `tbl_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan_goals`
--
ALTER TABLE `tbl_plan_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan_subjects`
--
ALTER TABLE `tbl_plan_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan_subject_evaluations`
--
ALTER TABLE `tbl_plan_subject_evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan_therapies`
--
ALTER TABLE `tbl_plan_therapies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan_therapy_evaluations`
--
ALTER TABLE `tbl_plan_therapy_evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_special_needs`
--
ALTER TABLE `tbl_special_needs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff_parents`
--
ALTER TABLE `tbl_staff_parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_staff_parents_phone_unique` (`phone`),
  ADD UNIQUE KEY `tbl_staff_parents_email_unique` (`email`),
  ADD UNIQUE KEY `tbl_staff_parents_username_unique` (`username`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_difficulties`
--
ALTER TABLE `tbl_student_difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_documents`
--
ALTER TABLE `tbl_student_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_goals`
--
ALTER TABLE `tbl_student_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_special_needs`
--
ALTER TABLE `tbl_student_special_needs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_therapies`
--
ALTER TABLE `tbl_therapies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timezones`
--
ALTER TABLE `tbl_timezones`
  ADD PRIMARY KEY (`timezone`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_users_email_unique` (`email`),
  ADD UNIQUE KEY `tbl_users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `tbl_users_username_unique` (`username`);

--
-- Indexes for table `tbl_user_documents`
--
ALTER TABLE `tbl_user_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_permissions`
--
ALTER TABLE `tbl_user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_attendances`
--
ALTER TABLE `tbl_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_difficulties`
--
ALTER TABLE `tbl_difficulties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_expense_categories`
--
ALTER TABLE `tbl_expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_goals`
--
ALTER TABLE `tbl_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_organizations`
--
ALTER TABLE `tbl_organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_payment_settings`
--
ALTER TABLE `tbl_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payrolls`
--
ALTER TABLE `tbl_payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_payroll_payment_modes`
--
ALTER TABLE `tbl_payroll_payment_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_plans`
--
ALTER TABLE `tbl_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_plan_goals`
--
ALTER TABLE `tbl_plan_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_plan_subjects`
--
ALTER TABLE `tbl_plan_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_plan_subject_evaluations`
--
ALTER TABLE `tbl_plan_subject_evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_plan_therapies`
--
ALTER TABLE `tbl_plan_therapies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_plan_therapy_evaluations`
--
ALTER TABLE `tbl_plan_therapy_evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_special_needs`
--
ALTER TABLE `tbl_special_needs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_staff_parents`
--
ALTER TABLE `tbl_staff_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_student_difficulties`
--
ALTER TABLE `tbl_student_difficulties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_student_documents`
--
ALTER TABLE `tbl_student_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_student_goals`
--
ALTER TABLE `tbl_student_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_student_special_needs`
--
ALTER TABLE `tbl_student_special_needs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user_documents`
--
ALTER TABLE `tbl_user_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_user_permissions`
--
ALTER TABLE `tbl_user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
