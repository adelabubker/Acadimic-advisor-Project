-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2024 at 02:38 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acadmicproject`
--
CREATE DATABASE IF NOT EXISTS `acadmicproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `acadmicproject`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

DROP TABLE IF EXISTS `admin_data`;
CREATE TABLE IF NOT EXISTS `admin_data` (
  `admin_id` varchar(250) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_password` varchar(250) NOT NULL,
  `admin_email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`admin_id`, `admin_name`, `admin_password`, `admin_email`) VALUES
('1', 'omer alasasma', '111', 'omer@gmail.com'),
('2', 'Dr.Obada alhabashna', '000', 'obada@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admin_for_std`
--

DROP TABLE IF EXISTS `admin_for_std`;
CREATE TABLE IF NOT EXISTS `admin_for_std` (
  `std_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_for_std`
--

INSERT INTO `admin_for_std` (`std_id`, `password`) VALUES
('120212211003', '333'),
('120212211004', '111'),
('120212211005', '555'),
('120212211008', '777'),
('120212211009', '888');

-- --------------------------------------------------------

--
-- Table structure for table `ai_courses`
--

DROP TABLE IF EXISTS `ai_courses`;
CREATE TABLE IF NOT EXISTS `ai_courses` (
  `course_id` varchar(150) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `evaluation` varchar(100) NOT NULL,
  `num_hour` varchar(50) NOT NULL,
  `Open_study_sub` varchar(255) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `have_prerequisite` varchar(255) NOT NULL,
  `num_of_prereq` varchar(150) NOT NULL,
  `Success_rate` varchar(250) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ai_courses`
--

INSERT INTO `ai_courses` (`course_id`, `course_name`, `evaluation`, `num_hour`, `Open_study_sub`, `academic_year`, `have_prerequisite`, `num_of_prereq`, `Success_rate`) VALUES
('0101137', 'العلوم العسكرية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('0301101', 'تفاضل وتكامل (1)', 'year1', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'Low'),
('0301131', 'مبادئ في الاحصاء والاحتمالات', 'year1', '3', 'Do not open', '1', 'تفاضل وتكامل (1)', '0301101', 'High'),
('0301323', 'تحليل عددي', 'year3', '3', 'Do not open', '3', 'تراكيب متقطعة للحوسبة', '2222111', 'Low'),
('0809103', 'المهارات الحياتية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1600106', 'التربية الوطنية و المسؤوليه المجتمعية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1801102', 'مهارات اللغة الانجليزية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('2100102', 'الريادة و لالبتكار', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('2211121', 'مقدمة في البرمجة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'medium'),
('2211122', 'مختبر مقدمة في البرمجة\r\n', 'more important', '1', 'Do not open', '1', 'مقدمة في البرمجة', '0', 'High'),
('2211123', 'البرمجة الشيئية الموجهة', 'year1 more', '3', 'open', '1', 'مقدمة في البرمجة', '2211121', 'High'),
('2211124', 'مختبر البرمجة الشيئية', 'year1 more', '1', 'open', '1', 'البرمجة الشيئية الموجهة', '2211121', 'High'),
('2211211', 'تركيب البيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجهة', '2211123', 'Low'),
('2211212', 'الخوارزميات', 'year2 more', '3', 'open', '2', 'تركيب البيانات', '2211211', 'medium'),
('2211214', 'مختبر الخوارزميات', 'year2 more', '1', 'open', '2', 'الخوارزميات', '2211211', 'medium'),
('2211261', 'مقدمة في قواعد البيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجهة', '2211123', 'High'),
('2211262', 'مختبر مقدمة في قواعد البيانات', 'year2 more', '1', 'open', '2', 'مقدمة في قواعد البيانات', '2211123', 'High'),
('2211263', 'برمجة قواعد البيانات', 'year2', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211262', 'medium'),
('2211351', 'شبكات الحاسوب', 'year3 more', '3', 'open', '3', 'برمجة قواعد البيانات', '2211263', 'Low'),
('2212251', 'اساسيات امن السيبراني', 'year4', '3', 'Do not open', '4', 'امن حاسبات وشبكات', '2212351', 'medium'),
('2212351', 'امن حاسبات وشبكات', 'year4', '3', 'Do not open', '4', 'شبكات الحاسوب', '2211351', 'Low'),
('222111', 'مقدمة في تكنولوجيا المعلومات', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2221223', 'برمجة تطبيقات الانترنت', 'year2', '3', 'Do not open', '2', 'برمجة قواعد البيانات', '2211263', 'medium'),
('2221363', 'نظم قواعد البيانات الموزعة', 'yare3', '3', 'Do not open', '3', 'مقدمة في قواعد البيانات', '2211261', 'medium'),
('2221461', 'نظم استرجاع المعلومات\r\n', 'year2', '3', 'Do not open', '2', 'اساسيات علم بيانات', '2222161', 'medium'),
('2222111', 'تراكيب متقطعة للحوسبة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'medium'),
('2222161', 'اساسيات علم بيانات', 'year1 more', '3', 'open', '1', 'تراكيب متقطعة للحوسبة', '2222111', 'High'),
('2222231', 'تمييز انماط', 'year3', '3', 'Do not open', '3', 'التعلم الآلي والعميق', '2222364', 'Low'),
('2222232', 'نمذجة البيانات ومحاكاتها', 'year2', '3', 'Do not open', '2', 'اساسيات علم بيانات', '2222161', 'medium'),
('2222233', 'استكشاف واستعراض البيانات', 'year3', '3', 'Do not open', '3', 'مقدمة في الذكاء الاصطناعي', '2222261', 'HIgh'),
('2222241', 'برمجة علوم البيانات والذكاء الاصطناعي', 'year3 more', '3', 'open', '3', 'هندسة البيانات', '2222461', 'medium'),
('2222242', 'مختبر برمجة علوم البيانات والذكاء الاصطناعي', 'year3 more', '1', 'open', '3', 'برمجة علوم البيانات والذكاء الاصطناعي', '2222461', 'Low'),
('2222243', 'معالجة لغات ظبيعية', 'year4', '3', 'Do not open', '4', 'برمجة علوم البيانات والذكاء الاصطناعي', '2222241', 'Low'),
('2222261', 'مقدمة في الذكاء الاصطناعي', 'year2 more', '3', 'open', '2', 'مقدمة في البرمجة', '2211121', 'medium'),
('2222362', 'مختبر مقدمة في الذكاء الاصطناعي', 'year2 more', '1', 'open', '2', 'مقدمة في الذكاء الاصطناعي', '2211121', 'Low'),
('2222364', 'التعلم الآلي والعميق', 'year3 more', '3', 'open', '3', 'مقدمة في الذكاء الاصطناعي', '2222261', 'Low'),
('2222365', 'حوسبة عالية الاداء والبيانات الضخمة', 'year3', '3', 'Do not open', '3', 'هندسة البيانات', '2222461', 'High'),
('2222371', ' \r\nالتدريب الميداني', 'year4', '0', 'Do not open', '4', 'ان يكون الطالب قاطع اكثر من 90 ساعة', '0', 'High'),
('2222441', 'التنقيب عن البيانات', 'year3', '3', 'Do not open', '3', 'هندسة البيانات', '2222461', 'High'),
('2222451', 'شبكات العصبونية', 'year4', '3', 'Do not open', '4', 'التعلم الآلي والعميق\r\n', '2222364', 'High'),
('2222461', 'هندسة البيانات', 'year2', '3', 'open', '2', 'اساسيات علم بيانات', '2222161', 'medium'),
('2222462', 'الربوتات المتنقلة الذكية', 'year3', '3', 'Do not open', '3', 'التعلم الآلي والعميق', '2222364', 'medium'),
('2222491', 'مشروع تخرج (1)', 'year3', '1', 'open', '3', 'ان يكون الطالب قاطع اكثر من 80 ساعة', '0', 'medium'),
('2222492', 'مشروع تخرج (2)\r\n', 'year4', '2', 'Do not open', '4', 'مشروع تخرج (1)', '0', 'High'),
('2231101', 'اخلاقيات الحاسوب', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `ai_enrollments`
--

DROP TABLE IF EXISTS `ai_enrollments`;
CREATE TABLE IF NOT EXISTS `ai_enrollments` (
  `enrollments_id` int(11) NOT NULL,
  `course_id` varchar(150) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `grade` varchar(50) NOT NULL,
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ai_enrollments`
--

INSERT INTO `ai_enrollments` (`enrollments_id`, `course_id`, `student_id`, `grade`) VALUES
(1, '0301101', '120212211008', '70'),
(2, '2100102', '120212211008', '99'),
(3, '0101137', '120212211008', '97'),
(4, '0301131', '120212211008', '36');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL,
  `student_id` varchar(250) NOT NULL,
  `question_id` varchar(250) NOT NULL,
  `answer` varchar(700) NOT NULL,
  `admin_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `student_id`, `question_id`, `answer`, `admin_id`) VALUES
(6, '120212211004', '6', 'و النعم\n', '2'),
(8, '120212211003', '9', 'يجب ان لا يقل عدد الساعات التي تقطعها كل سنة عن 36 ساعة', '2'),
(9, '120212211003', '8', 'logic', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cis_courses`
--

DROP TABLE IF EXISTS `cis_courses`;
CREATE TABLE IF NOT EXISTS `cis_courses` (
  `course_id` varchar(150) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `evaluation` varchar(100) NOT NULL,
  `num_hour` varchar(50) NOT NULL,
  `Open_study_sub` varchar(255) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `have_prerequisite` varchar(250) NOT NULL,
  `num_of_prereq` varchar(150) NOT NULL,
  `Success_rate` varchar(250) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cis_courses`
--

INSERT INTO `cis_courses` (`course_id`, `course_name`, `evaluation`, `num_hour`, `Open_study_sub`, `academic_year`, `have_prerequisite`, `num_of_prereq`, `Success_rate`) VALUES
('0101137', 'العلوم العسكرية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('0301101', 'تفاضل وتكامل1', 'year1', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'medium'),
('0301131', 'مبادى في الاحصاء والاحتمالات', 'year1', '3', 'Do not open', '1', 'تفاضل وتكامل1', '0301101', 'medium'),
('0809103', 'المهارات الحياتية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1600106', 'التربية الوطنية و المسؤوليه المجتمعية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1801102', 'مهارات اللغة الانجليزية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1802103', 'مهارات اللغة العربية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('2100102', 'الريادة و لالبتكار', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('2211121', 'مقدمة في البرمجة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2211122', 'مختبر مقدمة في البرمجة', 'more important', '1', 'open', '1', 'مقدمة في البرمجة', '0', 'High'),
('2211123', 'البرمجة الشيئية الموجهة(الهدفية)', 'year1 more', '3', 'open', '1', 'مقدمة في البرمجة', '2211122', 'High'),
('2211124', 'مختبر البرمجة الشيئية الموجهة(الهدفية)', 'year1 more', '1', 'open', '1', 'البرمجة الشيئية الموجهة(الهدفية)', '2211122', 'High'),
('2211211', 'تركيب بيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجهة(الهدفية)', '2211123', 'medium'),
('2211212', 'خوارزميات', 'year2 more', '3', 'open', '2', 'تركيب بيانات', '2211211', 'medium'),
('2211214', 'مختبر خوارزميات', 'year2 more', '1', 'open', '2', 'خوارزميات', '2211211', 'medium'),
('2211261', 'مقدمة في قواعد البيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجهة(الهدفية)', '2211123', 'High'),
('2211262', 'مختبر مقدمة في قواعد البيانات', 'year2 more', '1', 'open', '2', 'مقدمة في قواعد البيانات', '2211123', 'High'),
('2211263', 'برمجة قواعد البيانات', 'year2', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2211351', 'شبكات الحاسوب', 'year3 more', '3', 'open', '3', 'برمجة قواعد البيانات', '2211261', 'High'),
('2211361', 'رسومات الحاسوب', 'year3 more', '3', 'open', '3', 'خوارزميات', '2211212', 'High'),
('2211431', 'نظم التشغيل', 'year4', '3', 'open', '4', 'خوارزميات', '2211212', 'medium'),
('2212271', 'علم التشفير', 'year2', '3', 'Do not open', '2', 'خوارزميات', '2211212', 'High'),
('2212351', 'أمن الحاسبات والشبكات', 'year3 more', '3', 'open', '3', 'شبكات الحاسوب', '2211351', 'medium'),
('2212353', 'مختبر الشبكات وأمن المعلومات', 'year3 more', '1', 'open', '3', 'أمن الحاسبات والشبكات', '2211351', 'medium'),
('2221111', 'مقدمة في تكنولوجيا المعلومات', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2221223', 'برمجة تطبيقات الانترنت', 'year2', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2221241', 'نظم المعلومات الاداريه', 'year1', '3', 'Do not open', '1', 'مقدمة في تكنولوجيا المعلومات', '2221111', 'medium'),
('2221321', 'البرمجة المرئية', 'year3', '3', 'Do not open', '3', 'برمجة تطبيقات الانترنت', '2221223', 'medium'),
('2221361', 'تحليل وتصميم النظم', 'year3', '3', 'open', '3', 'أساسيات هندسة البرمجيات', '2231261', 'medium'),
('2221362', 'ادارة مشاريع برمجية', 'year3', '3', 'Do not open', '3', 'أساسيات هندسة البرمجيات', '2231261', 'medium'),
('2221363', 'نظم قواعد البيانات الموزعة', 'year3', '3', 'open', '3', 'برمجة قواعد البيانات', '2211263', 'medium'),
('2221371', 'تفاعل الانسان والحاسوب', 'year3', '3', 'Do not open', '3', 'رسومات الحاسوب', '2211361', 'medium'),
('2221381', 'التدريب الميداني', 'year4', '0', 'Do not open', '4', 'ان يكون الطالب قاطع فوق 100 ساعة', '0', 'High'),
('2221441', 'نظم ادارة قواعد البيانات', 'year4', '3', 'open', '4', 'برمجة قواعد البيانات', '2211263', 'medium'),
('2221442', 'مستودع البيانات', 'year4', '3', 'Do not open', '4', 'تحليل وتصميم النظم', '2221361', 'medium'),
('2221461', 'نظم استرجاع المعلومات', 'year4', '3', 'Do not open', '4', 'نظم ادارة قواعد البيانات', '2221441', 'medium'),
('2221462', 'النظم الموزعة والمتوازية', 'year4', '3', 'Do not open', '4', 'مقدمة في الذكاء الاصظناعي', '2222261', 'medium'),
('2221471', 'ابتكارات جديده لتكنولوجيا نظم المعلومات', 'year4', '3', 'Do not open', '4', 'نظم قواعد البيانات الموزعة', '2221363', 'medium'),
('2221491', 'مشروع تخرج1', 'year4', '1', 'open', '4', 'ان يكون الطالب قاطع فوق 80 ساعة', '0', 'medium'),
('2221492', 'مشروع تخرج2', 'year4', '2', 'Do not open', '4', 'مشروع تخرج1', '2221491', 'High'),
('2222111', 'تراكيب متقطعة للحوسبه', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2222243', 'معالجة اللغات الطبيعية', 'year2', '3', 'Do not open', '2', 'مقدمة في الذكاء الاصظناعي', '2222261', 'High'),
('22222441', 'التنقيب عن البيانات', 'year4', '3', 'Do not open', '4', 'مستودع البيانات', '2221442', 'medium'),
('2222261', 'مقدمة في الذكاء الاصظناعي', 'year2 more', '3', 'open', '2', 'نظم التشغيل', '2211431', 'medium'),
('2222362', 'مختبرالذكاء الاصظناعي', 'year2', '1', 'Do not open', '2', 'مقدمة في الذكاء الاصظناعي', '2211431', 'medium'),
('2231101', 'اخلاقيات الحاسوب ومهارات الاتصال', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2231261', 'أساسيات هندسة البرمجيات', 'year2', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `cis_enrollments`
--

DROP TABLE IF EXISTS `cis_enrollments`;
CREATE TABLE IF NOT EXISTS `cis_enrollments` (
  `enrollments_id` int(11) NOT NULL,
  `course_id` varchar(150) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `grade` varchar(50) NOT NULL,
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `compulsory_university`
--

DROP TABLE IF EXISTS `compulsory_university`;
CREATE TABLE IF NOT EXISTS `compulsory_university` (
  `course_id` varchar(150) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `evaluation` varchar(100) NOT NULL,
  `num_hour` varchar(50) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compulsory_university`
--

INSERT INTO `compulsory_university` (`course_id`, `course_name`, `evaluation`, `num_hour`) VALUES
('0101137', 'Military sciences', 'year1', '3'),
('0809103', 'Life skills', 'year1', '3'),
('1600106', 'National education', 'year1', '3'),
('1801102', 'english 1', 'year1', '3'),
('1802103', 'Arabic language 1', 'year1', '3'),
('2100102', 'Leadership and innovation', 'year1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `cs_courses`
--

DROP TABLE IF EXISTS `cs_courses`;
CREATE TABLE IF NOT EXISTS `cs_courses` (
  `course_id` varchar(150) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `evaluation` varchar(255) NOT NULL,
  `num_hour` varchar(50) NOT NULL,
  `Open_study_sub` varchar(255) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `have_prerequisite` varchar(255) NOT NULL,
  `num_of_prereq` varchar(150) NOT NULL,
  `Success_rate` varchar(250) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cs_courses`
--

INSERT INTO `cs_courses` (`course_id`, `course_name`, `evaluation`, `num_hour`, `Open_study_sub`, `academic_year`, `have_prerequisite`, `num_of_prereq`, `Success_rate`) VALUES
('0101137', 'العلوم العسكرية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('0301101', 'تفاضل وتكامل 1', 'year1', '3', 'open', '1', 'لا يوجد متطلب سابق له ', '0', 'medium'),
('0301131', 'مبادئ الاحصاء والاحتمالات', 'year1', '3', 'Do not open', '1', 'تفاضل وتكامل 1', '0301101', 'medium'),
('0301242', 'الجبر الخطي 1', 'year2', '3', 'Do not open', '2', 'مبادئ الاحصاء والاحتمالات', '0301131', 'low'),
('0301323', 'تحليل عددي1', 'year3', '3', 'Do not open', '3', 'تراكيب متقطعة للحوسبه', '2222111', 'low'),
('0302101', 'فيزياء عامة 1', 'year1', '3', 'open', '1', 'لا يوجد متطلب سابق له ', '0', 'medium'),
('030211', 'فيزياء عامة عمليه 1', 'year1', '1', 'Do not open', '1', 'فيزياء عامة 1', '0302101', 'medium'),
('0405131', 'تصميم دوائر منطقية', 'year1 ', '3', 'open', '1', 'مقدمة في تكنولوجيا المعلومات', '222111', 'High'),
('0405231', 'أساسيات معمارية الحاسوب لطلبة IT', 'year2', '3', 'Do not open', '2', 'تصميم دوائر منطقية', '0405131', 'High'),
('0809103', 'المهارات الحياتية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('1600106', 'التربية الوطنية و المسؤوليه المجتمعية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('1801102', 'مهارات اللغة الانجليزية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('1802103', 'مهارات اللغة العربية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2100102', 'الريادة و لالبتكار', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2211121', 'مقدمة في البرمجة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2211122', 'مختبر مقدمة في البرمجة', 'more important', '1', 'Do not open', '1', 'مقدمة في البرمجة', '0', 'High'),
('2211123', 'البرمجة الشيئية الموجه الهدفية', 'year1 more', '3', 'open', '1', 'مقدمة في البرمجة', '2211121', 'High'),
('2211124', 'مختبر البرمجة الشيئية الموجه الهدفية', 'year1 more', '1', 'open', '1', 'مقدمة في البرمجة', '2211121', 'High'),
('2211211', 'تركيب بيانات', 'year2 more', '3', 'open', '2', ' البرمجة الشيئية الموجه الهدفية', '2211123', 'medium'),
('2211212', 'خوارزميات', 'year2 more', '3', 'open', '2', 'تركيب بيانات', '2211211', 'medium\n'),
('2211214', 'مختبر خوارزميات', 'year2 more', '1', 'open', '2', 'خوارزميات', '2211211', 'medium\n'),
('2211261', 'مقدمة في قواعد البيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'High'),
('2211262', 'مختبر مقدمة في قواعد البيانات', 'year2 more', '1', 'open', '2', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'High'),
('2211263', 'برمجة قواعد البيانات', 'year2 more', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2211311', 'نظرية حاسبات', 'year3', '3', 'Do not open', '3', 'خوارزميات', '2211212', 'High'),
('2211351', 'رسومات الحاسوب', 'year3 more', '3', 'open', '3', 'خوارزميات', '2211212', 'High'),
('2211361', 'شبكات الحاسوب', 'year3 more', '3', 'open', '3', 'برمجة قواعد البيانات', '2211263', 'medium'),
('2211362', 'معالجة صور رقميه', 'year4', '2', 'Do not open', '4', 'رسومات الحاسوب', '2211351', 'High'),
('2211381', 'التدريب الميداني', 'year4', '0', 'Do not open', '4', 'ان يكون الطالب قاطع اكثر من 100 ساعة', '0', 'High'),
('2211431', 'نظم تشغيل', 'year3', '3', 'open', '3', 'خوارزميات', '2211212', 'High'),
('2211451', 'شبكات الحاسوب الاسلكيه', 'year4', '3', 'Do not open', '4', 'أمن الحاسبات و الشبكات', '2212351', 'medium'),
('2211491', 'مشروع تخرج 1', 'year3', '1', 'open', '3', 'ان يكون الطالب قاطع 80 ساعة', '0', 'medium'),
('2211492', 'مشروع تخرج 2', 'year4', '2', 'Do not open', '4', 'مشروع تخرج 1', '2211261', 'High'),
('2211493', 'موضوعات خاصة في علم الحاسوب', 'year4', '3', 'Do not open', '4', 'ان يكون الطال قاطع 100 ساعة', '0', 'High'),
('2212251', 'أساسيات الامن السيبراني', 'year4', '3', 'Do not open', '4', 'أمن الحاسبات و الشبكات', '2212351', 'High'),
('2212271', 'علم التشفير', 'year2', '3', 'Do not open', '2', 'خوارزميات', '2211212', 'High'),
('2212351', 'أمن الحاسبات و الشبكات', 'year3 more', '3', 'open', '3', 'شبكات الحاسوب', '2211361', 'medium'),
('2212353', 'مختبر الشبكات و أمن المعلومات', 'year3 more', '1', 'open', '3', 'شبكات الحاسوب', '2211361\n', 'medium'),
('222111', 'مقدمة في تكنولوجيا المعلومات', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2221221', 'البرمحة في لغة جافا', 'year3', '3', 'Do not open', '3', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'High'),
('2221223', 'برمجة تطيبقات الانترنت', 'year2 more', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2221321', 'البرمجة المرئية', 'year3', '3', 'Do not open', '3', 'برمجة تطيبقات الانترنت', '2221223', 'medium'),
('2221462', 'النظم الموزعة المتوازية', 'year4', '3', 'Do not open', '4', 'مقدمة في الذكاء الاصطناعي', '2222261', 'low'),
('2222111', 'تراكيب متقطعة للحوسبه', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2222261', 'مقدمة في الذكاء الاصطناعي', 'year3 more', '3', 'open', '3', 'نظم تشغيل', '2211431', 'medium'),
('2222362', 'مختبر الذكاء الاصطناعي', 'year3 more', '1', 'open', '3', 'مقدمة في الذكاء الاصطناعي', '2211431', 'medium'),
('2231101', 'اخلاقيات الحاسوب و مهارات الاتصال', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2231261', 'أساسيات هندسة البرمجيات', 'year2', '3', 'Do not open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `cs_enrollments`
--

DROP TABLE IF EXISTS `cs_enrollments`;
CREATE TABLE IF NOT EXISTS `cs_enrollments` (
  `enrollments_id` int(250) NOT NULL,
  `course_id` varchar(150) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `grade` varchar(100) NOT NULL,
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cs_enrollments`
--

INSERT INTO `cs_enrollments` (`enrollments_id`, `course_id`, `student_id`, `grade`) VALUES
(1, '0301242', '120212211003', '89'),
(2, '222111', '120212211003', '100'),
(3, '0809103', '120212211003', '99'),
(4, '0301101', '120212211003', '90'),
(5, '2211121', '120212211003', '77'),
(6, '2211122', '120212211003', '88'),
(7, '2222111', '120212211003', '98'),
(8, '0101137', '120212211003', '77'),
(9, '0301101', '120212211003', '100'),
(10, '2231101', '120212211003', '89'),
(11, '030211', '120212211003', '78'),
(12, '0301131', '120212211003', '86'),
(13, '0302101', '120212211003', '74'),
(15, '030211', '1202122110010', '80'),
(16, '030211', '1202122110010', '79'),
(17, '0301242', '1202122110010', '100'),
(18, '0301131', '1202122110010', '70'),
(19, '0405131', '120212211003', '79'),
(20, '2211123', '120212211003', '78');

-- --------------------------------------------------------

--
-- Table structure for table `plane_tree`
--

DROP TABLE IF EXISTS `plane_tree`;
CREATE TABLE IF NOT EXISTS `plane_tree` (
  `plane_id` varchar(150) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`plane_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plane_tree`
--

INSERT INTO `plane_tree` (`plane_id`, `image_path`) VALUES
('ai', 'p6.png'),
('cis', 'p2.png'),
('cs', 'p1.png'),
('sc', 'p4.png'),
('se', 'p3.png');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(250) NOT NULL,
  `std_id` varchar(250) NOT NULL,
  `std_name` varchar(250) NOT NULL,
  `std_email` varchar(250) NOT NULL,
  `msg` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `std_id`, `std_name`, `std_email`, `msg`) VALUES
(6, '120212211004', 'mohamed', 'mobadawi65@gmail.com', 'محمد اياد البدوي'),
(8, '120212211003', 'mohamed', 'mobadwi@gmail.com', 'اي مادة يجب ان انزله بعد ما قطعت 35 logic أو php'),
(9, '120212211003', 'mohamed badawi', 'mobadwi@gmail.com', 'كم عدد الساعات التي يجب ان انزله ك طالب سنة 2'),
(10, '120212211003', 'mohamed badwi', 'mobadwi@gmail.com', 'hi'),
(11, '120212211008', 'tara', 'tara@gmail.com', 'my name is tara');

-- --------------------------------------------------------

--
-- Table structure for table `sc_courses`
--

DROP TABLE IF EXISTS `sc_courses`;
CREATE TABLE IF NOT EXISTS `sc_courses` (
  `course_id` varchar(150) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `evaluation` varchar(100) NOT NULL,
  `num_hour` varchar(50) NOT NULL,
  `Open_study_sub` varchar(255) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `have_prerequisite` varchar(250) NOT NULL,
  `num_of_prereq` varchar(150) NOT NULL,
  `Success_rate` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sc_courses`
--

INSERT INTO `sc_courses` (`course_id`, `course_name`, `evaluation`, `num_hour`, `Open_study_sub`, `academic_year`, `have_prerequisite`, `num_of_prereq`, `Success_rate`) VALUES
('0101137', 'العلوم العسكرية', 'year1 less', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('0301101', 'تفاضل وتكامل 1', 'year1', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'medium'),
('0301131', 'مبادئ الاحصاء والاحتمالات', 'year1', '3', 'open', '1', 'تفاضل وتكامل 1', '0301101', 'medium'),
('0301242', 'الجبر الخطي 1', 'year2', '3', 'Do not open', '2', 'مبادئ الاحصاء والاحتمالات', ' 0301131', 'low'),
('0301323', 'تحليل عددي1', 'year3', '3', 'Do not open', '3', 'تراكيب متقطعة للحوسبة', '2222111', 'medium'),
('0809103', 'المهارات الحياتية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1600106', 'التربية الوطنية و المسؤوليه المجتمعية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1801102', 'مهارات اللغة الانجليزية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('1802103', 'مهارات اللغة العربية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('2100102', 'الريادة و لالبتكار', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له', '0', 'High'),
('2211121', 'مقدمة في البرمجة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2211122', 'مختبر مقدمة في البرمجة', 'more important', '1', 'Do not open', '1', 'مقدمة في البرمجة', '0', 'High'),
('2211123', 'البرمجة الشيئية الموجه الهدفية', 'year1 more', '3', 'open', '1', 'مقدمة في البرمجة', '2211121', 'medium'),
('2211124', 'مختبر البرمجة الشيئية الموجه الهدفية', 'year1 more', '1', 'open', '1', 'البرمجة الشيئية الموجه الهدفية', '2211121', 'medium'),
('2211211', 'تركيب بيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'medium'),
('2211212', 'خوارزميات', 'year2 more', '3', 'open', '2', 'تركيب بيانات', '2211211', 'medium'),
('2211214', 'مختبر خوارزميات', 'year2 more', '1', 'open', '2', 'خوارزميات', '2211211', 'medium'),
('2211261', 'مقدمة في قواعد البيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجه الهدفية', '2211211', 'High'),
('2211262', 'مختبر مقدمة في قواعد البيانات', 'year2 more', '1', 'open', '2', 'مقدمة في قواعد البيانات', '2211211', 'High'),
('2211263', 'برمجة قواعد البيانات', 'year3', '3', 'Do not open', '3', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2211351', 'شبكات الحاسوب', 'year3 more', '3', 'open', '3', 'أساسيات الامن السيبراني', '2212251', 'medium'),
('2211431', 'نظم تشغيل', 'year3 more', '3', 'open', '3', 'خوارزميات', '2211212', 'medium'),
('2211461', 'القياسات الحيوية', 'year4', '3', 'Do not open', '4', 'مقدمة في الذكاء الاصطناعي', '2222261', 'medium'),
('2212141', 'مبادئ الادلة الجنائية الرقمية', 'year3', '3', 'Do not open', '3', 'أساسيات الامن السيبراني', '2212251', 'medium'),
('2212171', 'قانون الجرائم الالكترونية و حقوق الانسان', 'year3 more', '3', 'open', '3', 'أساسيات الامن السيبراني', '2212251', 'High'),
('2212241', 'تقنيات الادله الجنائية الرقميه', 'year3 more', '3', 'open', '3', 'علم التشفير', '2212271', 'medium'),
('2212242', 'مختبر الادله اجنائية الرقميه', 'year3 more', '1', 'open', '3', 'مبادئ الادلة الجنائية الرقمية', ' 2212141', 'High'),
('2212251', 'أساسيات الامن السيبراني', 'year2 more', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2212271', 'علم التشفير', 'year3 more', '3', 'open', '3', 'خوارزميات', '2211211', 'High'),
('2212312', 'البرمجة لمتخصصي الامن', 'year4', '3', 'Do not open', '4', 'نظم المعلومات الامنية و الجنائية', '2212471', 'medium'),
('2212331', 'القرصنة الاخلاقية', 'year4', '3', 'Do not open', '4', 'نظم المعلومات الامنية و الجنائية', '2212471', 'medium'),
('2212351', 'أمن الحاسبات و الشبكات', 'year3 more', '3', 'open', '3', 'شبكات الحاسوب', '2211351', 'High'),
('2212352', 'برتوكولات الاتصال الامن', 'year4', '3', 'open', '4', 'أمن الحاسبات و الشبكات', '2212351', 'medium'),
('2212353', 'مختبر الشبكات و امن المعلومات', 'year3 more', '1', 'open', '3', 'أمن الحاسبات و الشبكات', '2212351', 'High'),
('2212381', 'أمن البنية التحتية باستخدام لينيكس', 'year4', '2', 'open', '4', 'برتوكولات الاتصال الامن', '2212352', 'medium'),
('2212391', 'التدريب الميداني', 'year3', '0', 'Do not open', '3', 'ان كون الطالب قاطع فوق 100 ساعة', '0', 'High'),
('2212451', 'مراقبة امن الشبكات و تقيم المخاطر', 'year4', '3', 'open', '4', 'برتوكولات الاتصال الامن', '2212352', 'medium'),
('2212471', 'نظم المعلومات الامنية و الجنائية', 'year3', '3', 'open', '3', 'قانون الجرائم الالكترونية و حقوق الانسان', '2212171', 'medium'),
('2212474', 'موضوعات خاصة في أمن المعلومات و الادلة الرقميه', 'year4', '3', 'Do not open', '4', 'تقنيات الادله الجنائية الرقميه', '2212241', 'medium'),
('2212476', 'تصميم و تطوير الانظمة الامنه', 'year4', '3', 'Do not open', '4', 'أمن البنية التحتية باستخدام لينيكس', '2212381', 'High'),
('2212491', 'مشروع تخرج 1', 'year4', '1', 'open', '4', 'ان يكون الطالب قاطع فوق 80 ساعة', '0', 'medium'),
('2212492', 'مشروع تخرج 2', 'year4', '2', 'Do not open', '4', 'مشروع تخرج 1', '2212491', 'High'),
('2221111', 'مقدمة في تكنولوجيا المعلومات', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2221223', 'برمجة تطبيقات الانترنت', 'year3', '3', 'Do not open', '3', 'مقدمة في قواعد البيانات', '2211211', 'High'),
('2222111', 'تراكيب متقطعة للحوسبة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2222261', 'مقدمة في الذكاء الاصطناعي', 'year4', '3', 'open', '4', 'نظم تشغيل', '2211431', 'medium'),
('2222362', 'مختبر ذكاء اصطناعي', 'year4', '1', 'open', '4', 'مقدمة في الذكاء الاصطناعي', '2211431', 'medium'),
('2231101', 'أخلاقيات الحاسوب ومهارات الاتصال', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `sc_enrollments`
--

DROP TABLE IF EXISTS `sc_enrollments`;
CREATE TABLE IF NOT EXISTS `sc_enrollments` (
  `enrollments_id` int(15) NOT NULL,
  `course_id` varchar(150) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`enrollments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `se_courses`
--

DROP TABLE IF EXISTS `se_courses`;
CREATE TABLE IF NOT EXISTS `se_courses` (
  `course_id` varchar(150) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `evaluation` varchar(100) NOT NULL,
  `num_hour` varchar(50) NOT NULL,
  `Open_study_sub` varchar(255) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `have_prerequisite` varchar(255) NOT NULL,
  `num_of_prereq` varchar(150) NOT NULL,
  `Success_rate` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `se_courses`
--

INSERT INTO `se_courses` (`course_id`, `course_name`, `evaluation`, `num_hour`, `Open_study_sub`, `academic_year`, `have_prerequisite`, `num_of_prereq`, `Success_rate`) VALUES
('0101137', 'العلوم العسكرية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('0301101', 'تفاضل وتكامل 1', 'year1', '3', 'open', '1', 'لا يوجد متطلب سابق له ', '0', 'medium'),
('0301131', 'مبادئ الاحصاء والاحتمالات', 'year1', '3', 'Do not open', '1', 'تفاضل وتكامل 1', '0301101', 'medium'),
('0405131', 'تصميم الدوائر المنطقية', 'year1', '3', 'open', '1', 'مقدمة في تكنولوجيا المعلومات', '222111', 'medium'),
('0405231', 'خوارزميات', 'year2', '3', 'open', '2', 'تركيب البيانات', '2211211', 'medium'),
('0809103', 'المهارات الحياتية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('1600106', 'التربية الوطنية و المسؤوليه المجتمعية', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('1801102', 'مهارات اللغة الانجليزية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('1802103', 'مهارات اللغة العربية و التواصل', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2100102', 'الريادة و لالبتكار', 'year1 less', '3', 'Do not open', 'any time', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2211121', 'مقدمة في البرمجة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له ', '0', 'High'),
('2211122', 'مختبر مقدمة في البرمجة', 'more important', '1', 'Do not open', '1', 'مقدمة في البرمجة', '0', 'High'),
('2211123', 'البرمجة الشيئية الموجه الهدفية', 'year1 more', '3', 'open', '1', 'مقدمة في البرمجة', '2211121', 'High'),
('2211124', 'مختبر البرمجة الشيئية الموجه الهدفية', 'year1 more', '1', 'open', '1', 'مقدمة في البرمجة', '2211121', 'High'),
('2211211', 'تركيب بيانات', 'year2 more', '3', 'open', '2', ' البرمجة الشيئية الموجه الهدفية', '2211123', 'medium'),
('2211212', 'خوارزميات', 'year2 more', '3', 'open', '2', 'تركيب بيانات', '2211211', 'medium'),
('2211214', 'مختبر خوارزميات', 'year2 more', '1', 'open', '2', 'خوارزميات', '2211211', 'medium'),
('2211261', 'مقدمة في قواعد البيانات', 'year2 more', '3', 'open', '2', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'High'),
('2211262', 'مختبر مقدمة في قواعد البيانات', 'year2 more', '1', 'open', '2', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'High'),
('2211263', 'برمجة قواعد البيانات', 'year2 more', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2211431', 'نظم تشغيل', 'year3', '3', 'open', '3', 'خوارزميات', '2211212', 'High'),
('2211361', 'شبكات الحاسوب', 'year3 more', '3', 'open', '3', 'برمجة قواعد البيانات', '2211263', 'medium'),
('2212351', 'امن حاسبات وشبكات', 'year3 more', '3', 'open', '3', 'شبكات الحاسوب', '2211361', 'medium'),
('2212353', 'مختبر شبكات وامن حاسبات', 'year3 more', '1', 'open', '3', 'امن حاسبات وشبكات', '2212351', 'High'),
('222111', 'مقدمة في تكنولوجيا المعلومات', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2221221', 'برمجة باللغة جافا', 'year3', '3', 'Do not open', '3', 'البرمجة الشيئية الموجه الهدفية', '2211123', 'High'),
('2221223', 'برمجة تطيبقات الانترنت', 'year2 more', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2221321', 'برمجة مرئية', 'year3', '3', 'Do not open', '3', 'برمجة تطبيقات انترنت', '2221223', 'medium'),
('2221362', 'ادارة مشاريع برمجية', 'year3 more', '3', 'open', '3', 'اساسيات هندسة برمجيات ', '2231261', 'High'),
('2221371', 'تفاعل الانسان والحاسوب', 'year3', '3', 'Do not open', '3', 'ادارة مشاريع برمجية', '2221362', 'medium'),
('2221441', 'نظم ادارة قواعد البيانات', 'year3', '3', 'Do not open', '3', 'برمجة قواعد البيانات', '2211263', 'High'),
('2222111', 'تراكيب المتقطعة للحوسبة', 'more important', '3', 'open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2231101', 'اخلاقيات الحاسوب', 'more important', '3', 'Do not open', '1', 'لا يوجد متطلب سابق له', '0', 'High'),
('2231221', 'هندسة المتطلبات', 'year3 more', '3', 'open', '3', 'اساسيات هندسة برمجيات ', '2231261', 'High'),
('2231222', 'توثيق برمجيات', 'year4', '3', 'open', '4', 'هندسة المتطلبات', '2231221', 'medium'),
('2231261', 'اساسيات هندسة برمجيات ', 'year2 more', '3', 'open', '2', 'مقدمة في قواعد البيانات', '2211261', 'High'),
('2231331', 'هيكلية برمجيات وتصميمها', 'year4', '3', 'open', '4', 'هندسة المتطلبات', '2231221', 'medium'),
('2231341', 'نمذجة البرمجيات', 'year4', '3', 'Do not open', '4', 'توثيق برمجيات', '2231222', 'High'),
('2231361', 'هندسة برمجيات لتطبيقات الويب', 'year3', '3', 'Do not open', '3', 'هندسة المتطلبات', '2231221', 'medium'),
('2231381', 'تدريب ميداني', 'year4', '0', 'Do not open', '4', 'ان يكون الطالب قاطع فوق 100 ساعة', '0', 'High'),
('2231391', 'موضوعات خاصة في هندسة البرمجيات', 'year2', '3', 'Do not open', '2', 'ان يكون الطالب قاطع اكثر من 100 ساعة', '0', 'High'),
('2231421', 'صيانة برمجيات وتطويرها', 'year4', '3', 'open', '4', 'هيكلية برمجيات وتصميمها', '2231331', 'High'),
('2231442', 'مختبر تطوير برمجيات', 'year4', '1', 'open', '4', 'ضمان الجودة', '2231443', 'High'),
('2231443', 'ضمان الجودة', 'year4', '3', 'open', '4', 'هيكلية برمجيات وتصميمها', '2231331', 'medium'),
('2211491', 'مشروع تخرج 1', 'year3', '1', 'open', '3', 'ان يكون الطالب قاطع 80 ساعة', '0', 'medium'),
('2211492', 'مشروع تخرج 2', 'year4', '2', 'Do not open', '4', 'مشروع تخرج 1', '2211261', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `se_enrollments`
--

DROP TABLE IF EXISTS `se_enrollments`;
CREATE TABLE IF NOT EXISTS `se_enrollments` (
  `enrollments_id` int(150) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(150) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`enrollments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `std_id` varchar(150) NOT NULL,
  `std_name` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `major` varchar(30) NOT NULL,
  `GPA` varchar(10) NOT NULL,
  `years` varchar(20) NOT NULL,
  `hour_complete` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `std_name`, `email`, `password`, `major`, `GPA`, `years`, `hour_complete`) VALUES
('1202122110010', 'ali', 'ali@gmail.com', '$2y$10$uNIwgDeSCZvzeVlbaD1ueukMViujUBX7MHcfMKBZ/gaUYI8zZGk4y', 'cs', '50', '1', '8'),
('120212211003', 'mohamed badwi', 'mobadwi@gmail.com', '$2y$10$2MCSlz5.fA63oVHsVcwkYueKDHdBt2kr9O.9k4ma2wUMlq5LkYIEG', 'cs', '90', '2', '41'),
('120212211004', 'Mousa eyad badwi', 'mobadawi65@gmail.com', '$2y$10$//MC8.rcSKljxWDxeje90.6ZCbkXoNypobiVkZeHQFlZ2/VemHfvK', 'se', '88', '1', '6'),
('120212211005', 'ali kaled', 'ali@gmail.com', '$2y$10$ZsneucLYqBB8IkKzrXRUb.KbeWYdI73hYxFIVIafI4LK/mB6mOfwu', 'cis', '75', '1', '0'),
('120212211008', 'tara', 'tara@gmail.com', '$2y$10$wwUDgJ0w7EK02kjmo8OiwudyX6YQEPVTZxRZ8ipU0zVfF281rRIOW', 'ai', '79.5', '1', '9'),
('120212211009', 'kaled ayman', 'kaled@gmail.com', '$2y$10$ts.9bRTxmaWgU0gH.ylK9OVioqk1RnR.3zhE.5qEJA5yEEHzAUFlG', 'sc', '81.9', '1', '0');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_enrollments`
--
ALTER TABLE `ai_enrollments`
  ADD CONSTRAINT `ai_enrollments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `ai_courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ai_enrollments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cis_enrollments`
--
ALTER TABLE `cis_enrollments`
  ADD CONSTRAINT `cis_enrollments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `cis_courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cis_enrollments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cs_enrollments`
--
ALTER TABLE `cs_enrollments`
  ADD CONSTRAINT `cs_enrollments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `cs_courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cs_enrollments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
