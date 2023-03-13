-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2023 at 07:57 PM
-- Server version: 10.2.44-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gta6l7a3_syringe_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_master`
--

CREATE TABLE `applicant_master` (
  `applicant_id` int(11) NOT NULL,
  `applicant_name` varchar(150) DEFAULT NULL,
  `email_id` varchar(150) NOT NULL,
  `email_verified` varchar(1) DEFAULT NULL,
  `mobile_number` varchar(30) DEFAULT NULL,
  `mobile_verified` varchar(1) DEFAULT NULL,
  `whats_app` varchar(30) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL COMMENT 'M-Male , F-Female',
  `registered_type` varchar(1) NOT NULL COMMENT 'W-Web M- Mobile G-Google F-FB ',
  `registered_on` varchar(10) DEFAULT NULL,
  `last_login` varchar(20) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `passport` int(11) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `sgm_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant_master`
--

INSERT INTO `applicant_master` (`applicant_id`, `applicant_name`, `email_id`, `email_verified`, `mobile_number`, `mobile_verified`, `whats_app`, `gender`, `registered_type`, `registered_on`, `last_login`, `image`, `password`, `country_id`, `city_id`, `town_id`, `nationality`, `passport`, `dob`, `sgm_id`) VALUES
(1, 'Charlton Mendes', 'charltonmendes@gmail.com', NULL, '+6591992000', NULL, NULL, 'M', '', NULL, NULL, NULL, '$2y$10$SovddJY16p4285zUtl8SwOClNj64v/bdfbAfKEyUPV8pD2cHqjR62', 1, 1, 1, 1, 1, '26/06/1970', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city_master`
--

CREATE TABLE `city_master` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `link_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favourite` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_master`
--

INSERT INTO `city_master` (`city_id`, `city_name`, `state_id`, `country_id`, `link_name`, `favourite`, `active`, `date_added`, `user_id`, `image`, `job_number`) VALUES
(1, 'Singapore', 0, 1, '', NULL, 'Y', '2030-01-20', 1, 'singapore-city.jpg', '10'),
(2, 'Mumbai', 0, 2, '', NULL, 'Y', '2027-05-21', 1, 'mumbai.jpg', '6'),
(3, 'Goa', 0, 2, NULL, NULL, 'Y', '2027-05-21', 1, 'goa.jpg', NULL),
(4, 'Kuala Lumpur', 0, 3, NULL, 'Y', 'Y', '2003-01-23', 1, 'kl.jpg', '4'),
(5, 'Bangalore', 0, 2, NULL, '', NULL, '2028-06-21', 1, '0', NULL),
(6, 'Sydney', 0, 5, NULL, NULL, NULL, '2001-08-21', 1, 'sydney.jpg', '9'),
(8, 'Melbourne', NULL, 5, NULL, NULL, 'Y', '2023-01-14', 1, 'melbourne.jpg', NULL),
(9, 'Manila', NULL, 4, NULL, NULL, 'Y', '2023-01-18', 1, 'manila.jpg', '12'),
(10, 'Dublin', 0, 7, NULL, NULL, NULL, '2001-08-21', 1, 'dublin.jpg', '3'),
(11, 'Cork', 0, 7, NULL, NULL, NULL, '2001-08-21', 1, 'cork.jpg', NULL),
(12, 'London', 0, 8, NULL, NULL, NULL, '2001-08-21', 1, 'london.jpg', '2'),
(13, 'Dubai', 0, 6, NULL, NULL, NULL, '2001-08-21', 1, 'dubai.jpg', '5'),
(14, 'Abu Dhabi', 0, 6, NULL, NULL, NULL, '2001-08-21', 1, 'abu-dhabi', NULL),
(15, 'Tokyo', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Kota Kinabalu', NULL, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(17, 'Johor Bahru', NULL, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(18, 'Kuantan', NULL, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(19, 'Terengganu', NULL, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(20, 'Selangor', NULL, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(21, 'Davao', NULL, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

CREATE TABLE `client_master` (
  `client_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `main_image` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `job_description` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `town_id` varchar(100) DEFAULT NULL,
  `kms` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

INSERT INTO `client_master` (`client_id`, `name`, `main_image`, `logo`, `job_description`, `type`, `town_id`, `kms`, `user_id`) VALUES
(1, 'Singapore General Hospital (SGH)', 'sgh-main.jpg', 'sgh-logo.jpg', 'Staff Nurse', 'Public Hospital', 'Outram', '1.2', 1),
(2, 'Woodlands Health ', 'whc-main.jpg', 'whc-logo.jpg', 'Senior Staff Nurse', 'Public Hospital', 'Woodlands', '3.4', 1),
(3, 'St. Luke Hospital', 'stluke-main.jpg', 'stluke-logo.jpg', 'Enrolled Nurse', 'Private Hospital', 'Bishan', '0.90', 1),
(4, 'Tan Tock Seng Hospital-TTSH', 'ttsh-main.jpg', 'ttsh-logo.jpg', 'Nurse Assistant', 'Public Hospital', 'Novena', '4.5', 1),
(5, 'Ang Mo Kio- Thye Hua Kwan Hospital', 'amk-main.jpg', 'amk-logo.jpg', 'Community Nurse', 'Community Hospital', 'Ang Mo Kio', '6.7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `company_id` int(11) NOT NULL,
  `app_id` int(1) NOT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `mobile_number` varchar(30) DEFAULT NULL,
  `whats_app` varchar(30) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `email_id` varchar(150) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `instagram` varchar(150) DEFAULT NULL,
  `tiktok` varchar(150) DEFAULT NULL,
  `youtube` varchar(150) DEFAULT NULL,
  `app_name` varchar(100) DEFAULT NULL,
  `app_description` varchar(255) DEFAULT NULL,
  `app_logo` varchar(100) DEFAULT NULL,
  `main_image` varchar(150) DEFAULT NULL,
  `copyright` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`company_id`, `app_id`, `company_name`, `mobile_number`, `whats_app`, `location`, `email_id`, `facebook`, `instagram`, `tiktok`, `youtube`, `app_name`, `app_description`, `app_logo`, `main_image`, `copyright`) VALUES
(1, 11, 'The Syringe', '+65.91992000', '+65.91992000', 'Marine Drive , Singapore', 'support@the-syringe.com', 'https://www.facebook.com/thesyringe', 'https://www.instagram.com/thesyringe', NULL, NULL, 'The Syringe', 'The Syringe is a Market Place for Jobs that are specifically on Healthcare around the world.', 'syringe-logo.jpg', 'syringe-main.jpg', '@ The Gypsy International | Singapore , India 2023 - 2025');

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `one_city` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `favorite` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `open_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country_master`
--

INSERT INTO `country_master` (`country_id`, `country_name`, `one_city`, `country_code`, `nationality`, `currency_symbol`, `currency_name`, `date_added`, `user_id`, `favorite`, `open_to`, `active`, `flag_image`, `image`, `job_number`, `description`) VALUES
(1, 'Singapore', 'Y', '+65', 'Singaporean', 'S$', 'Singapore Dollar', '2030-01-20', 1, 'Y', NULL, NULL, 'flag-sg.png', 'hn0CdgzapDsY5klOIQ3j2yG6CGYfUN2myWEyXBoO.jpg', '23', 'Woodlands, Novena, Jurong'),
(2, 'India', NULL, '+91', 'Indian', 'Rs', 'Indian Rupees', '2030-01-20', 1, 'N', NULL, 'N', 'flag-in.png', 'Countries/o5FlZoLqfztvggqclscCVB3nBTdfCqsI0OR7P0QZ.png', '14', 'Mumbai, Goa, Delhi, Bangalore'),
(3, 'Malaysia', NULL, '+601', 'Malaysian', 'RM', 'Malaysian Ringgit', '2030-01-20', 1, NULL, NULL, NULL, NULL, NULL, '35', 'Kuala Lumpur, Penang, Ipoh, Sarawak'),
(4, 'Philippines', NULL, '+63', 'Filipino', 'Pesos', 'Philippines Pesos', '2030-01-20', 1, NULL, NULL, NULL, NULL, NULL, '54', 'Manila, Cebu, Davao'),
(5, 'Australia', NULL, '+641', 'English', '£', 'Pounds', '2027-05-21', 1, 'Y', NULL, 'Y', 'flag-uk.png', 'Countries/Wjt3zDQ84wWRx37Ua8t9gllkwyciUXVf8jdGxYee.png', '43', 'Sydney, Melbourne, Perth, Brisbane'),
(6, 'U.A.E', NULL, '+971', 'Bangladeshi', '৳', 'Taka', '2001-08-21', 1, NULL, NULL, NULL, 'flag-bd.png', 'r9FSQcdPoQpeuwygjjiVeCtN7JEfgP80RmzEkWJE.png', '7', 'Dubai, Abu Dhabi, Al Ain'),
(7, 'Ireland', NULL, '+353', 'Irish', '', 'Euro', '2001-08-21', 1, NULL, NULL, NULL, '', NULL, '87', 'Dublin, Cork'),
(8, 'United Kingdom (UK)', NULL, '+44', 'British', '', 'British Pounds', '2001-08-21', 1, NULL, NULL, NULL, '', '0lnmfp20bOIgYvZLwCdW0BCqZNyGmxRqAex2qAYt.png', '62', 'London, Manchester'),
(9, 'Japan', NULL, '+81', 'Japanese', NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'Countries/ycOBn3Ui1N129ZZPNEgLG7Gt8doyfUN9SzlwqyF9.jpg', NULL, NULL),
(10, 'Nepal', NULL, '1111', 'Nepalese', NULL, NULL, NULL, 1, 'Y', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'USA', NULL, '76', 'AMERICA', NULL, NULL, NULL, 1, 'Y', NULL, NULL, NULL, 'Countries/e0r2TvrYo6tppIjk4M8kHOtdz6jNiOuxA1G7oPle.jpg', NULL, NULL),
(12, 'Indonesia', NULL, '+62', 'Indonesian', NULL, NULL, NULL, 1, 'Y', NULL, NULL, NULL, 'Countries/Ita9yhVy10oNqc8cFZjjiu9h5ba7L0OmwxvLsSED.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employer_contacts`
--

CREATE TABLE `employer_contacts` (
  `ec_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email_id` varchar(200) DEFAULT NULL,
  `position_held` varchar(200) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `mobile_number` varchar(30) DEFAULT NULL,
  `whats_app` varchar(30) DEFAULT NULL,
  `linked_id` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer_contacts`
--

INSERT INTO `employer_contacts` (`ec_id`, `employer_id`, `name`, `email_id`, `position_held`, `phone_number`, `mobile_number`, `whats_app`, `linked_id`, `user_id`) VALUES
(1, 1, 'Charlton', 'foxtech2k@gmail.com', 'HR Executive', '91992000', NULL, NULL, NULL, 1),
(3, 1, 'Justin', 'foxtech3k@gmail.com', 'HR Assistant', '9877 1223', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employer_job_locations`
--

CREATE TABLE `employer_job_locations` (
  `ejl_id` int(11) NOT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer_master`
--

CREATE TABLE `employer_master` (
  `employer_id` int(11) NOT NULL,
  `employer_name` varchar(150) NOT NULL,
  `hs_id` varchar(3) NOT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'N',
  `featured` varchar(1) DEFAULT 'N',
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `postal_code` varchar(30) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `youtube` varchar(250) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer_master`
--

INSERT INTO `employer_master` (`employer_id`, `employer_name`, `hs_id`, `active`, `featured`, `country_id`, `city_id`, `town_id`, `zone_id`, `address`, `postal_code`, `telephone`, `website`, `facebook`, `instagram`, `linkedin`, `twitter`, `youtube`, `logo`, `user_id`) VALUES
(1, 'Woodlands Health Campus', '1', 'N', 'N', 1, 1, 7, 1, '10 Jalan Kilang #04-01/02, Sime Darby Enterprise Centre, Singapore 159410', '159410', '64964848', 'whc.sg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Tan Tock Seng Hospital - TTSH', '1', 'Y', 'N', 1, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Changi General Hospital - CGH', '1', 'N', 'N', 1, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'National Heart Institute (Malaysia) - IJN', '9', 'N', 'N', 3, 4, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'University Malaya Medical Centre', '6', 'N', 'N', 3, 4, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Queen Elizabeth Hospital', '1', 'N', 'N', 3, 16, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Landmark Medical Centre Sdn Bhd', '6', 'N', 'N', 3, 17, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Darul Makmur Medical Centre Sdn. Bhd', '6', 'N', 'N', 3, 18, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Kuala Terengganu Specialist Hospital Sdn Bhd', '7', 'N', 'N', 3, 19, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Alpha Specialist Centre', '6', 'N', 'N', 3, 20, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Assunta Hospital', '7', 'N', 'N', 3, 20, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Bukit Tinggi Medical Centre', '6', 'N', 'N', 3, 20, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Beacon Hospital', '7', 'N', 'N', 3, 20, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Sentosa Medical Center', '6', 'N', 'N', 3, 20, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Tagum Medical City', '6', 'N', 'N', 4, 21, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Kidney Dialysis Foundation (KDF)', '5', 'N', 'N', 1, 1, 73, 3, 'Blk 333 Kreta Ayer Road\r\n#03-33 Singapore 080333', '080333', '65592630', 'https://www.kdf.org.sg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'FirstLine Dialysis Center (Bedok)', '5', 'N', 'N', 1, 1, 6, 2, '203 Bedok North Street 1, Singapore 460203, Singapore', '460203', NULL, 'https://firstlinedialysis.sg/', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `healthcare_settings`
--

CREATE TABLE `healthcare_settings` (
  `hs_id` int(11) NOT NULL,
  `settings_name` varchar(150) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `job_number` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `healthcare_settings`
--

INSERT INTO `healthcare_settings` (`hs_id`, `settings_name`, `description`, `image`, `job_number`) VALUES
(1, 'Public Hospital', 'Multi Speciality', 'hospital.jpg', '12'),
(2, 'Clinics', '', 'clinic.jpg', '2'),
(3, 'Imaging Center', 'General Practicner (GP)', '\r\nimaging.jpg', '1'),
(4, 'Nursing Home', NULL, 'aged-care.jpg', '2'),
(5, 'Dialysis Centre', '', 'dialysis-centre.jpg', '4'),
(6, ' Medical Centres', 'Eye Centre, Skin Centre , Cancer Centre', 'medical-center.jpg\r\n', '15'),
(7, 'Private Hospital', '', '', NULL),
(8, 'Eye Center', 'Eye Clinic , Eye Hospital', NULL, NULL),
(9, 'Heart Centre', 'Heart Care Centre', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_master`
--

CREATE TABLE `inquiry_master` (
  `inquiry_id` int(11) NOT NULL,
  `inquiry_date` varchar(10) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL COMMENT 'E- Employer , A-Agency',
  `company_name` varchar(200) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `position_held` varchar(100) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL COMMENT 'M-Male , F-Female',
  `contact_number` varchar(30) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry_master`
--

INSERT INTO `inquiry_master` (`inquiry_id`, `inquiry_date`, `type`, `company_name`, `contact_person`, `position_held`, `gender`, `contact_number`, `email_id`, `country`, `city`) VALUES
(24, '30/01/23', 'E', 'IHH Healthcare Berhad', 'Tolga Eryoldas', NULL, 'M', '+60188736364', 'Hr@gmail.com', 'Malaysia', 'Kl'),
(23, '30/01/23', 'E', 'Ren Ci Hospital', 'Han Jing Wee', NULL, 'F', '91998722', 'han@renci.org', 'Singapore', 'Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `skills_group_master`
--

CREATE TABLE `skills_group_master` (
  `sgm_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills_group_master`
--

INSERT INTO `skills_group_master` (`sgm_id`, `slug`, `group_name`, `description`, `image`, `job_number`) VALUES
(1, 'nursing-jobs', 'Nursing', 'Icu Nurse, Dialysis Nurse , Ward Nurse , A & E Nurse , Oncology Nurse', 'nurse-jobs.jpg', '52'),
(2, 'allied-health-jobs', 'Allied Health', 'Physiotherapist , Pharmacist , Podiatrist , Occupational Therapist', 'allied-jobs.jpg', '9'),
(3, 'medical-doctor-jobs', 'Medical / Doctor', 'Oncologist, Cardiologist, Nephrologist ', 'doctor-jobs.jpg', '3'),
(4, 'executives-jobs', 'Executives', 'HR M Executive Assistant , Management ', 'exec-jobs.jpg', '23');

-- --------------------------------------------------------

--
-- Table structure for table `skills_master`
--

CREATE TABLE `skills_master` (
  `skills_id` int(11) NOT NULL,
  `skills_name` varchar(150) NOT NULL,
  `sgm_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills_master`
--

INSERT INTO `skills_master` (`skills_id`, `skills_name`, `sgm_id`, `image`, `active`) VALUES
(1, 'ICU Nurse', 1, 'c9443bd7e164f9f8090c2ebe653121de.png', 'Y'),
(2, 'Dialysis Nurse', 1, 'a4b83ea05a2af566ed005ff08be952b4.png', 'Y'),
(3, 'Medical & Surgical Nurse', 1, '0015a22ee5af6797c53879e4b9d55744.png', 'Y'),
(4, 'In-Patient / Out-Patient Nurse', 1, 'a4b051ea8c4109b7773baa7c25e8f4f8.png', 'Y'),
(5, 'Orthopedic Nurse', 1, '01974ab11cfa50a12ae26eb36e9a39e2.png', 'Y'),
(6, 'Infection Control Nurse', 1, '7e764adac50caca038356dc7c35f00e6.png', 'Y'),
(7, 'Radiologic Imaging Nurse', 1, 'a210912ac4f03b56306ec17c52148092.png', 'Y'),
(8, 'Nurse Educator', 1, 'f257dad89dfd0ee11ef2ddc4a43d8d61.png', 'Y'),
(9, 'Urologic Nurse', 1, '1787afdd93fde9be22e56aec5ed23bec.png', 'Y'),
(10, 'Oncology Nurse', 1, '7afedd31ea431a76fd12a589214312da.png', 'Y'),
(11, 'Nurse Management', 1, '37c2ece2e47b2353b65029520e5af377.png', 'Y'),
(12, 'Fresh Nursing', 1, '33215c6c785b6aa97462e57d513b070a.png', 'Y'),
(13, 'Triage Nurse', 1, '53029389884e99fc2cecff23fb539da5.png', 'Y'),
(14, 'Research Nurse', 1, '549d191a412b5258b06a8535aa62d3ac.png', ''),
(15, 'Dental Nurse', 1, 'ad60b826060147474ecda449c745f673.png', 'Y'),
(16, 'Advance Practice Nurse', 1, 'f2681b656657772787324a2487da89e5.png', ''),
(17, 'Midwife', 1, '55f7d11ab4eed991965e504cdb4d2a0a.png', 'Y'),
(18, 'Nursing Aide', 1, '828fc400d24fc4d7877063e4327f02fa.png', 'Y'),
(19, 'Rehabilitation Nurse', 1, '99fa8b0fb33e1e7297a407b6f626ba9a.png', 'Y'),
(20, 'Anesthetist Nurse', 1, 'd4ad9d7f62f5db528fd1cd1df95675d1.png', 'Y'),
(21, 'Geriatric Nurse', 1, '', ''),
(22, 'Paediatric Nurse', 1, '7ba3d9265b2b844ef3921babf5b85dca.png', 'Y'),
(23, 'OB/GYN Nurse', 1, '', ''),
(24, 'Neuro Nurse', 1, '235858d3a9ae6c3485af1e49ff48e7e1.png', 'Y'),
(25, 'Optha Nurse', 1, 'aa204c9aa4e622e08706fef9eb1458b8.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `town_master`
--

CREATE TABLE `town_master` (
  `town_id` int(11) NOT NULL,
  `town_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `town_master`
--

INSERT INTO `town_master` (`town_id`, `town_name`, `city_id`, `date_added`, `user_id`) VALUES
(1, 'Marine Parade', 1, '2030-01-20', 1),
(63, 'Jalan Tun Razak', 4, '2023-02-12', 1),
(3, 'Paya Lebar', 1, '2030-01-20', 1),
(4, 'Changi', 1, '2030-01-20', 1),
(5, 'City Hall', 1, '2014-02-20', 1),
(6, 'Bedok', 1, '2015-02-20', 1),
(7, 'Tampines', 1, '2001-03-20', 1),
(8, 'Ang Mo Kio', 1, '2002-03-20', 1),
(10, 'Woodlands', 1, '2002-03-20', 1),
(11, 'Serangoon', 1, '2002-03-20', 1),
(12, 'Sengkang', 1, '2002-03-20', 1),
(13, 'Jurong West', 1, '2002-03-20', 1),
(14, 'Punggol', 1, '2008-03-20', 1),
(15, 'Orchard', 1, '2010-03-20', 1),
(16, 'Bugis', 1, '2010-03-20', 1),
(17, 'Clarke Quay', 1, '2010-03-20', 1),
(18, 'Jurong East', 1, '2010-03-20', 1),
(19, 'Choa Chu Kang', 1, '2013-03-20', 2),
(20, 'Bishan', 1, '2013-03-20', 2),
(21, 'Bukit Panjang', 1, '2013-03-20', 2),
(22, 'Simei', 1, '2013-03-20', 2),
(23, 'Yishun', 1, '2013-03-20', 2),
(24, 'Alexandra Road', 1, '2013-03-20', 2),
(25, 'Pasir Ris', 1, '2013-03-20', 2),
(26, 'HarbourFront', 1, '2014-03-20', 2),
(27, 'Clementi Mall', 1, '2016-03-20', 1),
(28, 'Bukit Batok Central', 1, '2016-03-20', 1),
(29, 'Novena', 1, '2016-03-20', 1),
(30, 'Joo Chiat', 1, '2020-04-03', 1),
(31, 'North Bridge Road', 1, '2006-04-20', 1),
(32, 'Suntec', 1, '2018-05-21', 1),
(33, 'River Valley', 1, '2019-05-21', 1),
(34, 'Shires Lane', 2, '2027-05-21', 1),
(36, 'Kallang', 1, '2015-06-21', 1),
(37, 'Tai Seng', 1, '2022-06-21', 1),
(38, 'Kurla (West)', 2, '2026-06-21', 1),
(39, 'Thane', 2, '2008-07-21', 1),
(40, 'Ghatkopar (West)', 2, '2008-07-21', 1),
(42, 'Lower Parel', 2, '2008-07-21', 1),
(43, 'Malad (West)', 2, '2008-07-21', 1),
(44, 'Goregaon (East)', 2, '2008-07-21', 1),
(45, 'Mulund (West)', 2, '2008-07-21', 1),
(46, 'Kandivali (East)', 2, '2008-07-21', 1),
(47, 'Vashi', 2, '2008-07-21', 1),
(48, 'Eastgates', 2, '2009-07-21', 1),
(62, 'Tanjong Katong', 1, '2023-02-12', 1),
(52, 'East Coast Road', 1, '2021-08-22', 4),
(53, 'Ubi', 1, '2008-09-22', 4),
(55, 'Sembawang', 1, '2022-09-20', 1),
(56, 'Porvorim', 3, '2003-01-23', 4),
(57, 'Khar', 2, '2023-01-10', 1),
(65, 'Kepayan Ridge', 16, '2023-02-12', 1),
(59, 'Raia', 3, '2023-01-14', 1),
(64, 'Jalan Universiti', 4, '2023-02-12', 1),
(66, 'Bandar Johor Bahru', 17, '2023-02-12', 1),
(67, 'Taman Kempadang Makmur', 18, '2023-02-12', 1),
(68, 'Kuala Terengganu', 19, '2023-02-12', 1),
(69, 'Petaling Jaya', 20, '2023-02-12', 1),
(70, 'Klang', 20, '2023-02-12', 1),
(71, 'Kajang', 20, '2023-02-12', 1),
(72, 'Tagum', 21, '2023-02-13', 1),
(73, 'Outram Road', 1, '2023-02-14', 1),
(74, 'Fremantle', 6, '2023-03-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `name`, `country_id`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Charlton', 1, 'charlton@the-syringe.com', NULL, '$2y$10$Ej7z/qinKs.1fVo9FBJLuOjgFNfi9MJXT4XWVTNmdowtgAv.qOqS2', 'A', NULL, '2020-01-01 20:38:40', '2023-02-14 00:16:13'),
(2, 'Beta', 1, 'beta@the-syringe.com', NULL, '$2y$10$Ej7z/qinKs.1fVo9FBJLuOjgFNfi9MJXT4XWVTNmdowtgAv.qOqS2', 'U', NULL, '2020-01-01 20:38:40', '2023-02-14 00:15:55'),
(3, 'Alisha', 10, 'alisha.coder@gmail.com', NULL, '$2y$10$/CgHy1Pm1DWDgximSqhg8.6O2skXdOGltyFfXQ3T1h7sDHa1CFf2e', 'U', NULL, '2023-02-14 00:15:42', '2023-02-14 00:15:42'),
(4, 'Adam', 12, 'bangadam.dev@gmail.com', NULL, '$2y$10$Ej7z/qinKs.1fVo9FBJLuOjgFNfi9MJXT4XWVTNmdowtgAv.qOqS2', 'A', NULL, '2023-02-14 19:33:00', '2023-02-14 19:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `zone_master`
--

CREATE TABLE `zone_master` (
  `zone_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone_master`
--

INSERT INTO `zone_master` (`zone_id`, `name`, `user_id`) VALUES
(1, 'North', 1),
(2, 'East', 1),
(3, 'Central', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_master`
--
ALTER TABLE `applicant_master`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `city_master`
--
ALTER TABLE `city_master`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `city_name` (`city_name`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `client_master`
--
ALTER TABLE `client_master`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country_master`
--
ALTER TABLE `country_master`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_name` (`country_name`),
  ADD KEY `nationality` (`nationality`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_index` (`user_id`),
  ADD KEY `country_name_index` (`country_name`);

--
-- Indexes for table `employer_contacts`
--
ALTER TABLE `employer_contacts`
  ADD PRIMARY KEY (`ec_id`);

--
-- Indexes for table `employer_job_locations`
--
ALTER TABLE `employer_job_locations`
  ADD PRIMARY KEY (`ejl_id`);

--
-- Indexes for table `employer_master`
--
ALTER TABLE `employer_master`
  ADD PRIMARY KEY (`employer_id`);

--
-- Indexes for table `healthcare_settings`
--
ALTER TABLE `healthcare_settings`
  ADD PRIMARY KEY (`hs_id`);

--
-- Indexes for table `inquiry_master`
--
ALTER TABLE `inquiry_master`
  ADD PRIMARY KEY (`inquiry_id`);

--
-- Indexes for table `skills_group_master`
--
ALTER TABLE `skills_group_master`
  ADD PRIMARY KEY (`sgm_id`);

--
-- Indexes for table `skills_master`
--
ALTER TABLE `skills_master`
  ADD PRIMARY KEY (`skills_id`);

--
-- Indexes for table `town_master`
--
ALTER TABLE `town_master`
  ADD PRIMARY KEY (`town_id`),
  ADD KEY `town_name` (`town_name`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_master`
--
ALTER TABLE `zone_master`
  ADD PRIMARY KEY (`zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_master`
--
ALTER TABLE `applicant_master`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city_master`
--
ALTER TABLE `city_master`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `client_master`
--
ALTER TABLE `client_master`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company_master`
--
ALTER TABLE `company_master`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_master`
--
ALTER TABLE `country_master`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employer_contacts`
--
ALTER TABLE `employer_contacts`
  MODIFY `ec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employer_job_locations`
--
ALTER TABLE `employer_job_locations`
  MODIFY `ejl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer_master`
--
ALTER TABLE `employer_master`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `healthcare_settings`
--
ALTER TABLE `healthcare_settings`
  MODIFY `hs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inquiry_master`
--
ALTER TABLE `inquiry_master`
  MODIFY `inquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `skills_group_master`
--
ALTER TABLE `skills_group_master`
  MODIFY `sgm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skills_master`
--
ALTER TABLE `skills_master`
  MODIFY `skills_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `town_master`
--
ALTER TABLE `town_master`
  MODIFY `town_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zone_master`
--
ALTER TABLE `zone_master`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
