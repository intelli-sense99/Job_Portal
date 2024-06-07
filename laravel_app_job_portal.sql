-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2024 at 09:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_app_job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`) VALUES
(1, 'North and Middle Andaman', 32),
(2, 'South Andaman', 32),
(3, 'Nicobar', 32),
(4, 'Adilabad', 1),
(5, 'Anantapur', 1),
(6, 'Chittoor', 1),
(7, 'East Godavari', 1),
(8, 'Guntur', 1),
(9, 'Hyderabad', 1),
(10, 'Kadapa', 1),
(11, 'Karimnagar', 1),
(12, 'Khammam', 1),
(13, 'Krishna', 1),
(14, 'Kurnool', 1),
(15, 'Mahbubnagar', 1),
(16, 'Medak', 1),
(17, 'Nalgonda', 1),
(18, 'Nellore', 1),
(19, 'Nizamabad', 1),
(20, 'Prakasam', 1),
(21, 'Rangareddi', 1),
(22, 'Srikakulam', 1),
(23, 'Vishakhapatnam', 1),
(24, 'Vizianagaram', 1),
(25, 'Warangal', 1),
(26, 'West Godavari', 1),
(27, 'Anjaw', 3),
(28, 'Changlang', 3),
(29, 'East Kameng', 3),
(30, 'Lohit', 3),
(31, 'Lower Subansiri', 3),
(32, 'Papum Pare', 3),
(33, 'Tirap', 3),
(34, 'Dibang Valley', 3),
(35, 'Upper Subansiri', 3),
(36, 'West Kameng', 3),
(37, 'Barpeta', 2),
(38, 'Bongaigaon', 2),
(39, 'Cachar', 2),
(40, 'Darrang', 2),
(41, 'Dhemaji', 2),
(42, 'Dhubri', 2),
(43, 'Dibrugarh', 2),
(44, 'Goalpara', 2),
(45, 'Golaghat', 2),
(46, 'Hailakandi', 2),
(47, 'Jorhat', 2),
(48, 'Karbi Anglong', 2),
(49, 'Karimganj', 2),
(50, 'Kokrajhar', 2),
(51, 'Lakhimpur', 2),
(52, 'Marigaon', 2),
(53, 'Nagaon', 2),
(54, 'Nalbari', 2),
(55, 'North Cachar Hills', 2),
(56, 'Sibsagar', 2),
(57, 'Sonitpur', 2),
(58, 'Tinsukia', 2),
(59, 'Araria', 4),
(60, 'Aurangabad', 4),
(61, 'Banka', 4),
(62, 'Begusarai', 4),
(63, 'Bhagalpur', 4),
(64, 'Bhojpur', 4),
(65, 'Buxar', 4),
(66, 'Darbhanga', 4),
(67, 'Purba Champaran', 4),
(68, 'Gaya', 4),
(69, 'Gopalganj', 4),
(70, 'Jamui', 4),
(71, 'Jehanabad', 4),
(72, 'Khagaria', 4),
(73, 'Kishanganj', 4),
(74, 'Kaimur', 4),
(75, 'Katihar', 4),
(76, 'Lakhisarai', 4),
(77, 'Madhubani', 4),
(78, 'Munger', 4),
(79, 'Madhepura', 4),
(80, 'Muzaffarpur', 4),
(81, 'Nalanda', 4),
(82, 'Nawada', 4),
(83, 'Patna', 4),
(84, 'Purnia', 4),
(85, 'Rohtas', 4),
(86, 'Saharsa', 4),
(87, 'Samastipur', 4),
(88, 'Sheohar', 4),
(89, 'Sheikhpura', 4),
(90, 'Saran', 4),
(91, 'Sitamarhi', 4),
(92, 'Supaul', 4),
(93, 'Siwan', 4),
(94, 'Vaishali', 4),
(95, 'Pashchim Champaran', 4),
(96, 'Bastar', 36),
(97, 'Bilaspur', 36),
(98, 'Dantewada', 36),
(99, 'Dhamtari', 36),
(100, 'Durg', 36),
(101, 'Jashpur', 36),
(102, 'Janjgir-Champa', 36),
(103, 'Korba', 36),
(104, 'Koriya', 36),
(105, 'Kanker', 36),
(106, 'Kawardha', 36),
(107, 'Mahasamund', 36),
(108, 'Raigarh', 36),
(109, 'Rajnandgaon', 36),
(110, 'Raipur', 36),
(111, 'Surguja', 36),
(112, 'Diu', 29),
(113, 'Daman', 29),
(114, 'Central Delhi', 25),
(115, 'East Delhi', 25),
(116, 'New Delhi', 25),
(117, 'North Delhi', 25),
(118, 'North East Delhi', 25),
(119, 'North West Delhi', 25),
(120, 'South Delhi', 25),
(121, 'South West Delhi', 25),
(122, 'West Delhi', 25),
(123, 'North Goa', 26),
(124, 'South Goa', 26),
(125, 'Ahmedabad', 5),
(126, 'Amreli District', 5),
(127, 'Anand', 5),
(128, 'Banaskantha', 5),
(129, 'Bharuch', 5),
(130, 'Bhavnagar', 5),
(131, 'Dahod', 5),
(132, 'The Dangs', 5),
(133, 'Gandhinagar', 5),
(134, 'Jamnagar', 5),
(135, 'Junagadh', 5),
(136, 'Kutch', 5),
(137, 'Kheda', 5),
(138, 'Mehsana', 5),
(139, 'Narmada', 5),
(140, 'Navsari', 5),
(141, 'Patan', 5),
(142, 'Panchmahal', 5),
(143, 'Porbandar', 5),
(144, 'Rajkot', 5),
(145, 'Sabarkantha', 5),
(146, 'Surendranagar', 5),
(147, 'Surat', 5),
(148, 'Vadodara', 5),
(149, 'Valsad', 5),
(150, 'Ambala', 6),
(151, 'Bhiwani', 6),
(152, 'Faridabad', 6),
(153, 'Fatehabad', 6),
(154, 'Gurgaon', 6),
(155, 'Hissar', 6),
(156, 'Jhajjar', 6),
(157, 'Jind', 6),
(158, 'Karnal', 6),
(159, 'Kaithal', 6),
(160, 'Kurukshetra', 6),
(161, 'Mahendragarh', 6),
(162, 'Mewat', 6),
(163, 'Panchkula', 6),
(164, 'Panipat', 6),
(165, 'Rewari', 6),
(166, 'Rohtak', 6),
(167, 'Sirsa', 6),
(168, 'Sonepat', 6),
(169, 'Yamuna Nagar', 6),
(170, 'Palwal', 6),
(171, 'Bilaspur', 7),
(172, 'Chamba', 7),
(173, 'Hamirpur', 7),
(174, 'Kangra', 7),
(175, 'Kinnaur', 7),
(176, 'Kulu', 7),
(177, 'Lahaul and Spiti', 7),
(178, 'Mandi', 7),
(179, 'Shimla', 7),
(180, 'Sirmaur', 7),
(181, 'Solan', 7),
(182, 'Una', 7),
(183, 'Anantnag', 8),
(184, 'Badgam', 8),
(185, 'Bandipore', 8),
(186, 'Baramula', 8),
(187, 'Doda', 8),
(188, 'Jammu', 8),
(189, 'Kargil', 8),
(190, 'Kathua', 8),
(191, 'Kupwara', 8),
(192, 'Leh', 8),
(193, 'Poonch', 8),
(194, 'Pulwama', 8),
(195, 'Rajauri', 8),
(196, 'Srinagar', 8),
(197, 'Samba', 8),
(198, 'Udhampur', 8),
(199, 'Bokaro', 34),
(200, 'Chatra', 34),
(201, 'Deoghar', 34),
(202, 'Dhanbad', 34),
(203, 'Dumka', 34),
(204, 'Purba Singhbhum', 34),
(205, 'Garhwa', 34),
(206, 'Giridih', 34),
(207, 'Godda', 34),
(208, 'Gumla', 34),
(209, 'Hazaribagh', 34),
(210, 'Koderma', 34),
(211, 'Lohardaga', 34),
(212, 'Pakur', 34),
(213, 'Palamu', 34),
(214, 'Ranchi', 34),
(215, 'Sahibganj', 34),
(216, 'Seraikela and Kharsawan', 34),
(217, 'Pashchim Singhbhum', 34),
(218, 'Ramgarh', 34),
(219, 'Bidar', 9),
(220, 'Belgaum', 9),
(221, 'Bijapur', 9),
(222, 'Bagalkot', 9),
(223, 'Bellary', 9),
(224, 'Bangalore Rural District', 9),
(225, 'Bangalore Urban District', 9),
(226, 'Chamarajnagar', 9),
(227, 'Chikmagalur', 9),
(228, 'Chitradurga', 9),
(229, 'Davanagere', 9),
(230, 'Dharwad', 9),
(231, 'Dakshina Kannada', 9),
(232, 'Gadag', 9),
(233, 'Gulbarga', 9),
(234, 'Hassan', 9),
(235, 'Haveri District', 9),
(236, 'Kodagu', 9),
(237, 'Kolar', 9),
(238, 'Koppal', 9),
(239, 'Mandya', 9),
(240, 'Mysore', 9),
(241, 'Raichur', 9),
(242, 'Shimoga', 9),
(243, 'Tumkur', 9),
(244, 'Udupi', 9),
(245, 'Uttara Kannada', 9),
(246, 'Ramanagara', 9),
(247, 'Chikballapur', 9),
(248, 'Yadagiri', 9),
(249, 'Alappuzha', 10),
(250, 'Ernakulam', 10),
(251, 'Idukki', 10),
(252, 'Kollam', 10),
(253, 'Kannur', 10),
(254, 'Kasaragod', 10),
(255, 'Kottayam', 10),
(256, 'Kozhikode', 10),
(257, 'Malappuram', 10),
(258, 'Palakkad', 10),
(259, 'Pathanamthitta', 10),
(260, 'Thrissur', 10),
(261, 'Thiruvananthapuram', 10),
(262, 'Wayanad', 10),
(263, 'Alirajpur', 11),
(264, 'Anuppur', 11),
(265, 'Ashok Nagar', 11),
(266, 'Balaghat', 11),
(267, 'Barwani', 11),
(268, 'Betul', 11),
(269, 'Bhind', 11),
(270, 'Bhopal', 11),
(271, 'Burhanpur', 11),
(272, 'Chhatarpur', 11),
(273, 'Chhindwara', 11),
(274, 'Damoh', 11),
(275, 'Datia', 11),
(276, 'Dewas', 11),
(277, 'Dhar', 11),
(278, 'Dindori', 11),
(279, 'Guna', 11),
(280, 'Gwalior', 11),
(281, 'Harda', 11),
(282, 'Hoshangabad', 11),
(283, 'Indore', 11),
(284, 'Jabalpur', 11),
(285, 'Jhabua', 11),
(286, 'Katni', 11),
(287, 'Khandwa', 11),
(288, 'Khargone', 11),
(289, 'Mandla', 11),
(290, 'Mandsaur', 11),
(291, 'Morena', 11),
(292, 'Narsinghpur', 11),
(293, 'Neemuch', 11),
(294, 'Panna', 11),
(295, 'Rewa', 11),
(296, 'Rajgarh', 11),
(297, 'Ratlam', 11),
(298, 'Raisen', 11),
(299, 'Sagar', 11),
(300, 'Satna', 11),
(301, 'Sehore', 11),
(302, 'Seoni', 11),
(303, 'Shahdol', 11),
(304, 'Shajapur', 11),
(305, 'Sheopur', 11),
(306, 'Shivpuri', 11),
(307, 'Sidhi', 11),
(308, 'Singrauli', 11),
(309, 'Tikamgarh', 11),
(310, 'Ujjain', 11),
(311, 'Umaria', 11),
(312, 'Vidisha', 11),
(313, 'Ahmednagar', 12),
(314, 'Akola', 12),
(315, 'Amrawati', 12),
(316, 'Aurangabad', 12),
(317, 'Bhandara', 12),
(318, 'Beed', 12),
(319, 'Buldhana', 12),
(320, 'Chandrapur', 12),
(321, 'Dhule', 12),
(322, 'Gadchiroli', 12),
(323, 'Gondiya', 12),
(324, 'Hingoli', 12),
(325, 'Jalgaon', 12),
(326, 'Jalna', 12),
(327, 'Kolhapur', 12),
(328, 'Latur', 12),
(329, 'Mumbai City', 12),
(330, 'Mumbai suburban', 12),
(331, 'Nandurbar', 12),
(332, 'Nanded', 12),
(333, 'Nagpur', 12),
(334, 'Nashik', 12),
(335, 'Osmanabad', 12),
(336, 'Parbhani', 12),
(337, 'Pune', 12),
(338, 'Raigad', 12),
(339, 'Ratnagiri', 12),
(340, 'Sindhudurg', 12),
(341, 'Sangli', 12),
(342, 'Solapur', 12),
(343, 'Satara', 12),
(344, 'Thane', 12),
(345, 'Wardha', 12),
(346, 'Washim', 12),
(347, 'Yavatmal', 12),
(348, 'Bishnupur', 13),
(349, 'Churachandpur', 13),
(350, 'Chandel', 13),
(351, 'Imphal East', 13),
(352, 'Senapati', 13),
(353, 'Tamenglong', 13),
(354, 'Thoubal', 13),
(355, 'Ukhrul', 13),
(356, 'Imphal West', 13),
(357, 'East Garo Hills', 14),
(358, 'East Khasi Hills', 14),
(359, 'Jaintia Hills', 14),
(360, 'Ri-Bhoi', 14),
(361, 'South Garo Hills', 14),
(362, 'West Garo Hills', 14),
(363, 'West Khasi Hills', 14),
(364, 'Aizawl', 15),
(365, 'Champhai', 15),
(366, 'Kolasib', 15),
(367, 'Lawngtlai', 15),
(368, 'Lunglei', 15),
(369, 'Mamit', 15),
(370, 'Saiha', 15),
(371, 'Serchhip', 15),
(372, 'Dimapur', 16),
(373, 'Kohima', 16),
(374, 'Mokokchung', 16),
(375, 'Mon', 16),
(376, 'Phek', 16),
(377, 'Tuensang', 16),
(378, 'Wokha', 16),
(379, 'Zunheboto', 16),
(380, 'Angul', 17),
(381, 'Boudh', 17),
(382, 'Bhadrak', 17),
(383, 'Bolangir', 17),
(384, 'Bargarh', 17),
(385, 'Baleswar', 17),
(386, 'Cuttack', 17),
(387, 'Debagarh', 17),
(388, 'Dhenkanal', 17),
(389, 'Ganjam', 17),
(390, 'Gajapati', 17),
(391, 'Jharsuguda', 17),
(392, 'Jajapur', 17),
(393, 'Jagatsinghpur', 17),
(394, 'Khordha', 17),
(395, 'Kendujhar', 17),
(396, 'Kalahandi', 17),
(397, 'Kandhamal', 17),
(398, 'Koraput', 17),
(399, 'Kendrapara', 17),
(400, 'Malkangiri', 17),
(401, 'Mayurbhanj', 17),
(402, 'Nabarangpur', 17),
(403, 'Nuapada', 17),
(404, 'Nayagarh', 17),
(405, 'Puri', 17),
(406, 'Rayagada', 17),
(407, 'Sambalpur', 17),
(408, 'Subarnapur', 17),
(409, 'Sundargarh', 17),
(410, 'Karaikal', 27),
(411, 'Mahe', 27),
(412, 'Puducherry', 27),
(413, 'Yanam', 27),
(414, 'Amritsar', 18),
(415, 'Bathinda', 18),
(416, 'Firozpur', 18),
(417, 'Faridkot', 18),
(418, 'Fatehgarh Sahib', 18),
(419, 'Gurdaspur', 18),
(420, 'Hoshiarpur', 18),
(421, 'Jalandhar', 18),
(422, 'Kapurthala', 18),
(423, 'Ludhiana', 18),
(424, 'Mansa', 18),
(425, 'Moga', 18),
(426, 'Mukatsar', 18),
(427, 'Nawan Shehar', 18),
(428, 'Patiala', 18),
(429, 'Rupnagar', 18),
(430, 'Sangrur', 18),
(431, 'Ajmer', 19),
(432, 'Alwar', 19),
(433, 'Bikaner', 19),
(434, 'Barmer', 19),
(435, 'Banswara', 19),
(436, 'Bharatpur', 19),
(437, 'Baran', 19),
(438, 'Bundi', 19),
(439, 'Bhilwara', 19),
(440, 'Churu', 19),
(441, 'Chittorgarh', 19),
(442, 'Dausa', 19),
(443, 'Dholpur', 19),
(444, 'Dungapur', 19),
(445, 'Ganganagar', 19),
(446, 'Hanumangarh', 19),
(447, 'Juhnjhunun', 19),
(448, 'Jalore', 19),
(449, 'Jodhpur', 19),
(450, 'Jaipur', 19),
(451, 'Jaisalmer', 19),
(452, 'Jhalawar', 19),
(453, 'Karauli', 19),
(454, 'Kota', 19),
(455, 'Nagaur', 19),
(456, 'Pali', 19),
(457, 'Pratapgarh', 19),
(458, 'Rajsamand', 19),
(459, 'Sikar', 19),
(460, 'Sawai Madhopur', 19),
(461, 'Sirohi', 19),
(462, 'Tonk', 19),
(463, 'Udaipur', 19),
(464, 'East Sikkim', 20),
(465, 'North Sikkim', 20),
(466, 'South Sikkim', 20),
(467, 'West Sikkim', 20),
(468, 'Ariyalur', 21),
(469, 'Chennai', 21),
(470, 'Coimbatore', 21),
(471, 'Cuddalore', 21),
(472, 'Dharmapuri', 21),
(473, 'Dindigul', 21),
(474, 'Erode', 21),
(475, 'Kanchipuram', 21),
(476, 'Kanyakumari', 21),
(477, 'Karur', 21),
(478, 'Madurai', 21),
(479, 'Nagapattinam', 21),
(480, 'The Nilgiris', 21),
(481, 'Namakkal', 21),
(482, 'Perambalur', 21),
(483, 'Pudukkottai', 21),
(484, 'Ramanathapuram', 21),
(485, 'Salem', 21),
(486, 'Sivagangai', 21),
(487, 'Tiruppur', 21),
(488, 'Tiruchirappalli', 21),
(489, 'Theni', 21),
(490, 'Tirunelveli', 21),
(491, 'Thanjavur', 21),
(492, 'Thoothukudi', 21),
(493, 'Thiruvallur', 21),
(494, 'Thiruvarur', 21),
(495, 'Tiruvannamalai', 21),
(496, 'Vellore', 21),
(497, 'Villupuram', 21),
(498, 'Dhalai', 22),
(499, 'North Tripura', 22),
(500, 'South Tripura', 22),
(501, 'West Tripura', 22),
(502, 'Almora', 33),
(503, 'Bageshwar', 33),
(504, 'Chamoli', 33),
(505, 'Champawat', 33),
(506, 'Dehradun', 33),
(507, 'Haridwar', 33),
(508, 'Nainital', 33),
(509, 'Pauri Garhwal', 33),
(510, 'Pithoragharh', 33),
(511, 'Rudraprayag', 33),
(512, 'Tehri Garhwal', 33),
(513, 'Udham Singh Nagar', 33),
(514, 'Uttarkashi', 33),
(515, 'Agra', 23),
(516, 'Allahabad', 23),
(517, 'Aligarh', 23),
(518, 'Ambedkar Nagar', 23),
(519, 'Auraiya', 23),
(520, 'Azamgarh', 23),
(521, 'Barabanki', 23),
(522, 'Badaun', 23),
(523, 'Bagpat', 23),
(524, 'Bahraich', 23),
(525, 'Bijnor', 23),
(526, 'Ballia', 23),
(527, 'Banda', 23),
(528, 'Balrampur', 23),
(529, 'Bareilly', 23),
(530, 'Basti', 23),
(531, 'Bulandshahr', 23),
(532, 'Chandauli', 23),
(533, 'Chitrakoot', 23),
(534, 'Deoria', 23),
(535, 'Etah', 23),
(536, 'Kanshiram Nagar', 23),
(537, 'Etawah', 23),
(538, 'Firozabad', 23),
(539, 'Farrukhabad', 23),
(540, 'Fatehpur', 23),
(541, 'Faizabad', 23),
(542, 'Gautam Buddha Nagar', 23),
(543, 'Gonda', 23),
(544, 'Ghazipur', 23),
(545, 'Gorkakhpur', 23),
(546, 'Ghaziabad', 23),
(547, 'Hamirpur', 23),
(548, 'Hardoi', 23),
(549, 'Mahamaya Nagar', 23),
(550, 'Jhansi', 23),
(551, 'Jalaun', 23),
(552, 'Jyotiba Phule Nagar', 23),
(553, 'Jaunpur District', 23),
(554, 'Kanpur Dehat', 23),
(555, 'Kannauj', 23),
(556, 'Kanpur Nagar', 23),
(557, 'Kaushambi', 23),
(558, 'Kushinagar', 23),
(559, 'Lalitpur', 23),
(560, 'Lakhimpur Kheri', 23),
(561, 'Lucknow', 23),
(562, 'Mau', 23),
(563, 'Meerut', 23),
(564, 'Maharajganj', 23),
(565, 'Mahoba', 23),
(566, 'Mirzapur', 23),
(567, 'Moradabad', 23),
(568, 'Mainpuri', 23),
(569, 'Mathura', 23),
(570, 'Muzaffarnagar', 23),
(571, 'Pilibhit', 23),
(572, 'Pratapgarh', 23),
(573, 'Rampur', 23),
(574, 'Rae Bareli', 23),
(575, 'Saharanpur', 23),
(576, 'Sitapur', 23),
(577, 'Shahjahanpur', 23),
(578, 'Sant Kabir Nagar', 23),
(579, 'Siddharthnagar', 23),
(580, 'Sonbhadra', 23),
(581, 'Sant Ravidas Nagar', 23),
(582, 'Sultanpur', 23),
(583, 'Shravasti', 23),
(584, 'Unnao', 23),
(585, 'Varanasi', 23),
(586, 'Birbhum', 24),
(587, 'Bankura', 24),
(588, 'Bardhaman', 24),
(589, 'Darjeeling', 24),
(590, 'Dakshin Dinajpur', 24),
(591, 'Hooghly', 24),
(592, 'Howrah', 24),
(593, 'Jalpaiguri', 24),
(594, 'Cooch Behar', 24),
(595, 'Kolkata', 24),
(596, 'Malda', 24),
(597, 'Midnapore', 24),
(598, 'Murshidabad', 24),
(599, 'Nadia', 24),
(600, 'North 24 Parganas', 24),
(601, 'South 24 Parganas', 24),
(602, 'Purulia', 24),
(603, 'Uttar Dinajpur', 24);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `country` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `country`) VALUES
(1, 'AD', 'India'),
(2, 'AE', 'USA'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'São Tomé and Príncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`id`, `first_name`, `last_name`) VALUES
(21, 'daniel', 'brown'),
(22, 'mark', 'johnson'),
(24, 'catherine', 'roberts'),
(25, 'sebastian', 'wright'),
(26, 'barbara', 'jones'),
(27, 'matthew', 'smith');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` bigint UNSIGNED NOT NULL,
  `employer_id` int DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci,
  `long` double(10,2) DEFAULT NULL,
  `lat` double(10,2) DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `employer_id`, `company_name`, `company_phone`, `location`, `long`, `lat`, `state_id`, `city_id`, `country_id`, `position`, `experience`, `created_at`, `updated_at`) VALUES
(1, 3, 'TCS', '8527417895', 'tcs office, barrister rajni patel marg, Nariman Point', 72.82, 18.93, 12, 329, 1, 'Senior Manager', '7.5 years', '2024-05-12 10:38:34', '2024-05-12 10:38:34'),
(2, 4, 'Ansh InfoTech', '9417168347', 'CF-4, 3rd Floor, Model Town Ext. D-Block, Ludhiana,', 30.88, 75.85, 18, 423, 1, 'Senior Manager', '5 years', '2024-05-12 11:42:50', '2024-05-12 11:42:50'),
(3, 8, 'LN WebWorks Ltd', '8527417895', '306, Model Town Rd, Pritm Nagar, Model Town', 30.88, 18.93, 10, 9, 1, 'Senior Manager', '5 years', '2024-05-15 02:48:24', '2024-05-15 12:54:10'),
(4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 00:30:08', '2024-05-17 00:30:08'),
(5, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 00:33:53', '2024-05-17 00:33:53'),
(6, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 00:36:49', '2024-05-17 00:36:49'),
(7, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 00:49:59', '2024-05-17 00:49:59'),
(8, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 01:10:01', '2024-05-17 01:10:01'),
(9, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 01:16:10', '2024-05-17 01:16:10'),
(10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 01:19:02', '2024-05-17 01:19:02'),
(11, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 02:15:27', '2024-05-17 02:15:27'),
(12, 17, 'IB infotect Pvt', '8527417895', 'CF-4, 3rd Floor, Model Town Ext. D-Block', 72.82, 75.85, 18, 423, 1, 'Senior Manager', '5 years', '2024-05-20 23:39:10', '2024-05-20 23:40:39'),
(13, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-26 10:20:58', '2024-05-26 10:20:58'),
(14, 19, 'IBM India Pvt', '8527417895', '306, Model Town Rd, Pritm Nagar, Model Town', 30.88, 75.85, 1, 5, 1, 'HR', '7.5 years', '2024-05-26 10:22:35', '2024-05-26 10:24:24'),
(15, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-31 02:47:09', '2024-05-31 02:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `experience`, `created_at`, `updated_at`) VALUES
(1, '0-1 year', NULL, NULL),
(2, '2-3 year', NULL, NULL),
(3, '3-4 year', NULL, NULL),
(4, '4-5 year', NULL, NULL),
(5, '5-6 year', NULL, NULL),
(6, 'more then 6 year', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frameworks`
--

CREATE TABLE `frameworks` (
  `id` bigint UNSIGNED NOT NULL,
  `frameworks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frameworks`
--

INSERT INTO `frameworks` (`id`, `frameworks`, `created_at`, `updated_at`) VALUES
(1, 'Django', NULL, NULL),
(2, 'Flask', NULL, NULL),
(3, 'Pyramid', NULL, NULL),
(4, 'FastAPI', NULL, NULL),
(5, 'CherryPy', NULL, NULL),
(6, 'Node.js', NULL, NULL),
(7, 'React.js', NULL, NULL),
(8, 'Angular', NULL, NULL),
(9, 'Vue.js', NULL, NULL),
(10, 'Express.js', NULL, NULL),
(11, 'Spring Framework', NULL, NULL),
(12, 'Hibernate', NULL, NULL),
(13, 'Apache Struts', NULL, NULL),
(14, 'JavaServer Faces (JSF)', NULL, NULL),
(15, 'Play Framework', NULL, NULL),
(16, 'Qt', NULL, NULL),
(17, 'Boost', NULL, NULL),
(18, 'POCO C++ Libraries', NULL, NULL),
(19, 'Apache Thrift', NULL, NULL),
(20, 'wxWidgets', NULL, NULL),
(21, 'ASP.NET Core', NULL, NULL),
(22, 'Entity Framework', NULL, NULL),
(23, 'Xamarin', NULL, NULL),
(24, 'Unity', NULL, NULL),
(25, 'WPF (Windows Presentation Foundation)', NULL, NULL),
(26, 'Ruby on Rails', NULL, NULL),
(27, 'Sinatra', NULL, NULL),
(28, 'Hanami', NULL, NULL),
(29, 'Grape', NULL, NULL),
(30, 'Padrino', NULL, NULL),
(31, 'Laravel', NULL, NULL),
(32, 'Symfony', NULL, NULL),
(33, 'CodeIgniter', NULL, NULL),
(34, 'Yii', NULL, NULL),
(35, 'Zend Framework', NULL, NULL),
(36, 'SwiftUI', NULL, NULL),
(37, 'Vapor', NULL, NULL),
(38, 'Kitura', NULL, NULL),
(39, 'Perfect', NULL, NULL),
(40, 'Helium', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` longtext COLLATE utf8mb4_unicode_ci,
  `experience_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_id` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_validity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_description`, `experience_id`, `salary_id`, `employer_id`, `created_at`, `updated_at`, `job_validity`, `job_status`) VALUES
(1, 'PHP Developer', 'Seeking a skilled PHP developer adept at crafting efficient, scalable web solutions. Join our dynamic team to innovate and drive our projects forward with your expertise.', '1', '1', '8', '2024-05-16 04:31:08', '2024-05-16 04:31:08', '01-08-2024', NULL),
(2, 'Backend Developer', 'Seeking a skilled backend developer proficient in server-side programming languages and database management, to drive the development of robust and scalable software solutions.', '1', '1', '8', '2024-05-16 04:51:13', '2024-05-16 04:51:13', '01-08-2024', NULL),
(3, 'PHP laravel Developer', 'Collaborate with cross-functional teams to understand and translate project requirements into technical solutions. Design and implement efficient, scalable, and secure code for web applications.', '2', '1', '7', '2024-05-20 21:53:27', '2024-05-20 21:53:27', '01-08-2024', NULL),
(4, 'dot net developer', '. NET Developer is a professional who builds software applications using languages and technologies of the . NET framework. They are responsible for designing, coding, testing, and deploying applications, as well as providing technical support and maintaining software throughout its lifecycle.', '2', '4', '7', '2024-05-20 22:31:12', '2024-05-20 22:31:12', '01-08-2024', NULL),
(5, 'Frontend Developer', 'A front-end web developer is responsible for implementing visual elements that users see and interact with in a web application. They are usually supported by back-end web developers, who are responsible for server-side application logic and integration of the work front-end developers do', '3', '3', '17', '2024-05-20 23:43:33', '2024-05-20 23:43:33', '30-05-2024', NULL),
(6, 'PHP Developer', 'A PHP developer is responsible for writing server-side web application logic. PHP developers usually develop back-end components, connect the application with the other (often third-party) web services, and support the front-end developers by integrating their work with the application.', '1', '1', '17', '2024-05-21 03:01:14', '2024-05-21 03:01:14', '01-08-2024', NULL),
(7, 'PHP Developer', 'In our digital world, nearly every company has a website, or uses software and IT systems. Backend development helps these systems run. Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system.', '2', '2', '17', '2024-05-22 02:21:21', '2024-05-22 02:21:21', '01-06-2024', NULL),
(8, 'React developer', 'In our digital world, nearly every company has a website, or uses software and IT systems. Backend development helps these systems run. Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system.', '3', '3', '17', '2024-05-22 02:23:35', '2024-05-22 02:23:35', '01-06-2024', NULL),
(9, 'laravel developer', 'In our digital world, nearly every company has a website, or uses software and IT systems. Backend development helps these systems run. Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system.', '4', '5', '17', '2024-05-22 02:24:21', '2024-05-22 02:24:21', '01-06-2024', NULL),
(10, 'NODE JS Developer', 'In our digital world, nearly every company has a website, or uses software and IT systems. Backend development helps these systems run. Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system.', '2', '2', '17', '2024-05-22 02:25:24', '2024-05-22 02:25:24', '01-08-2024', NULL),
(11, 'PHP Developer', 'web developers are responsible for creating and maintaining websites. Typically, they will spend their time developing code languages like HTML5, which is used by many mobile devices and maintaining the site\'s technical elements, such as its ability to manage traffic without crashing.', '2', '2', '17', '2024-05-23 02:21:06', '2024-05-23 02:21:06', '01-06-2024', NULL),
(12, 'PHP Developer', 'web developers are responsible for creating and maintaining websites. Typically, they will spend their time developing code languages like HTML5, which is used by many mobile devices and maintaining the site\'s technical elements, such as its ability to manage traffic without crashing.', '2', '3', '17', '2024-05-23 02:21:40', '2024-05-23 02:21:40', '01-08-2024', NULL),
(13, 'Backend Developer', 'web developers are responsible for creating and maintaining websites. Typically, they will spend their time developing code languages like HTML5, which is used by many mobile devices and maintaining the site\'s technical elements, such as its ability to manage traffic without crashing.', '2', '3', '17', '2024-05-23 02:22:50', '2024-05-23 02:22:50', '01-06-2024', NULL),
(14, 'React developer', 'A job developer is responsible for seeking out or creating jobs for potential candidates. These human resources professionals may work in the public sector, such as for a social service agency, or for private employers or hiring agencies.', '2', '4', '19', '2024-05-26 10:26:10', '2024-05-26 10:26:10', '01-08-2024', NULL),
(15, '.net developer', 'A job developer is responsible for seeking out or creating jobs for potential candidates. These human resources professionals may work in the public sector, such as for a social service agency, or for private employers or hiring agencies.', '3', '5', '19', '2024-05-26 10:26:45', '2024-05-26 10:26:45', '01-08-2024', NULL),
(16, 'python programmer', 'A job developer is responsible for seeking out or creating jobs for potential candidates. These human resources professionals may work in the public sector, such as for a social service agency, or for private employers or hiring agencies.', '2', '3', '19', '2024-05-26 11:17:02', '2024-05-26 11:17:02', '01-08-2024', NULL),
(17, 'Drupal Developer', 'Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system. This includes the core application logic, databases, data and application integration, API, and other processes taking place behind the scenes.', '2', '3', '19', '2024-05-30 11:21:27', '2024-05-30 11:21:27', '01-08-2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_inquiries`
--

CREATE TABLE `job_inquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `employee_id` int DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_inquiries`
--

INSERT INTO `job_inquiries` (`id`, `job_id`, `name`, `email`, `phone`, `created_at`, `updated_at`, `is_read`, `employee_id`, `resume`) VALUES
(1, '5', 'vikas kumar', 'vikas1999@gmail.com', '1234567896', '2024-05-23 05:12:12', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(2, '4', 'Sumit Kumar', 'sumit59@gmail.com', '1234567896', '2024-05-23 05:20:33', '2024-05-23 05:20:33', 0, NULL, '1717349215.pdf'),
(3, '4', 'gurnam Kaur', 'kaur55@gmail.com', '1234567896', '2024-05-23 05:23:09', '2024-05-23 05:23:09', 0, NULL, '1717349215.pdf'),
(4, '9', 'harpreet', 'harpreet555@gmail.com', '8527417894', '2024-05-23 05:24:44', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(5, '9', 'harpreet', 'harpreet555@gmail.com', '8527417894', '2024-05-23 05:25:57', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(6, '9', 'harpreet', 'harpreet555@gmail.com', '8527417894', '2024-05-23 05:25:59', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(7, '9', 'harpreet', 'harpreet555@gmail.com', '8527417894', '2024-05-23 05:26:02', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(8, '8', 'nikhil', 'nik563@gmail.com', '8889638855', '2024-05-23 05:27:03', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(9, '6', 'khih', 'ddd@ss.com', '3344512345', '2024-05-23 05:29:47', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(10, '6', 'test', 'test@ss.com', '7788212345', '2024-05-23 05:31:24', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(11, '6', 'test', 'test@ss.com', '7788212345', '2024-05-23 05:31:31', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(12, '7', 'test', 'test222@ss.com', '7788212345', '2024-05-23 05:32:35', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(13, '7', 'test', 'test222@ss.com', '7788212345', '2024-05-23 05:34:09', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(14, '10', 'testss', 'test546@com', '7788212345', '2024-05-23 05:34:55', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(15, '13', 'vikas', 'vik8856@gmail.com', '8527417895', '2024-05-23 05:37:19', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(16, '11', 'guri', 'guri22@gmail.com', '1234567896', '2024-05-23 05:48:26', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(17, '8', 'harpreet', 'harpreet59@gmail.com', '8527417894', '2024-05-23 05:49:23', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(18, '7', 'gurpreet', 'gurprret59@gmail.com', '8527417894', '2024-05-23 05:51:46', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(19, '6', 'gurpreet', 'gurprret999@gmail.com', '8527417894', '2024-05-23 05:53:01', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(20, '9', 'gurpreekumar', 'kumar999@gmail.com', '8527417894', '2024-05-23 05:53:37', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(21, '6', 'gurpreekumar', 'kumar999@gmail.com', '8527417894', '2024-05-23 05:54:47', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(22, '8', 'gurpreekumar', 'kumar999@gmail.com', '8527417894', '2024-05-23 05:55:04', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(23, '7', 'gurpreet', 'kumar999@gmail.com', '8527417894', '2024-05-23 05:56:38', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(24, '7', 'kaur', 'kaur66@gmail.com', '8527417895', '2024-05-23 05:57:18', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(25, '7', 'kaur', 'kaur66@gmail.com', '8527417895', '2024-05-23 05:57:19', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(26, '6', 'kaur', 'kaur66@gmail.com', '8527417895', '2024-05-23 05:57:29', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(27, '6', 'kaur', 'kaur66@gmail.com', '8527417895', '2024-05-23 05:57:37', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(31, '1', 'hardeep', 'hardeep55@gmail.com', '7788212345', '2024-05-23 23:42:38', '2024-05-23 23:42:38', 0, NULL, '1717349215.pdf'),
(32, '8', 'laxmi', 'laxmi866@gmail.com', '7788212345', '2024-05-24 00:26:17', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(33, '16', 'kapil', 'kapil885@gmail.com', '8527419635', '2024-05-27 05:34:10', '2024-05-30 04:20:00', 1, NULL, '1717349215.pdf'),
(34, '15', 'arun', 'arun55@gmail.com', '8527419635', '2024-05-27 05:57:30', '2024-05-30 04:20:00', 1, NULL, '1717349215.pdf'),
(35, '12', 'kapil sharma', 'kapil663@gmail.com', '8527419635', '2024-05-27 06:00:21', '2024-05-30 10:26:13', 1, NULL, '1717349215.pdf'),
(36, '16', 'Rahul', 'rahul552@gmail.com', '8527419635', '2024-05-28 05:36:10', '2024-05-30 04:20:00', 1, NULL, '1717349215.pdf'),
(37, '15', 'vikas', 'vikas963@gmail.com', '1234567896', '2024-05-29 05:49:48', '2024-05-30 04:20:00', 1, NULL, '1717349215.pdf'),
(38, '14', 'Gurmit', 'gurmit5563@gmail.com', '8527419635', '2024-05-30 04:54:02', '2024-05-30 04:55:17', 1, NULL, '1717349215.pdf'),
(39, '15', 'harpreet', 'harpreet528@gmail.com', '8527419635', '2024-05-30 04:54:46', '2024-05-30 04:55:17', 1, NULL, '1717349215.pdf'),
(40, '14', 'kapil singh', 'kapil855@gmail.com', '8527419635', '2024-05-30 04:58:06', '2024-05-30 04:58:38', 1, NULL, '1717349215.pdf'),
(41, '16', 'Gurmit', 'gurmit5563@gmail.com', '8527419635', '2024-05-30 04:59:55', '2024-05-30 05:00:13', 1, NULL, '1717349215.pdf'),
(42, '2', 'Vikas Kumar', 'vik33@gmail.com', '8527419635', '2024-06-03 04:42:35', '2024-06-03 04:42:35', 0, 20, '1717349215.pdf'),
(43, '16', 'Vikas Kumar', 'vik33@gmail.com', '8527419635', '2024-06-03 04:46:30', '2024-06-03 04:47:51', 1, 20, '1717349215.pdf'),
(44, '14', 'Guri', 'gur55@gmail.com', '8527419635', '2024-06-03 05:05:27', '2024-06-03 05:08:57', 1, 22, '1717349215.pdf'),
(45, '17', 'Guri', 'gur55@gmail.com', '8527419635', '2024-06-07 02:44:09', '2024-06-07 02:44:09', 0, 22, '1717585682.pdf'),
(46, '16', 'Guri', 'gur55@gmail.com', '8527419635', '2024-06-07 03:52:50', '2024-06-07 03:52:50', 0, 22, '1717585682.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `job_languages`
--

CREATE TABLE `job_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_languages`
--

INSERT INTO `job_languages` (`id`, `job_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '2024-05-16 04:51:13', '2024-05-16 04:51:13'),
(2, '2', '2', '2024-05-16 04:51:13', '2024-05-16 04:51:13'),
(3, '3', '1', '2024-05-20 21:53:27', '2024-05-20 21:53:27'),
(4, '3', '2', '2024-05-20 21:53:27', '2024-05-20 21:53:27'),
(5, '3', '3', '2024-05-20 21:53:27', '2024-05-20 21:53:27'),
(6, '4', '1', '2024-05-20 22:31:12', '2024-05-20 22:31:12'),
(7, '4', '2', '2024-05-20 22:31:12', '2024-05-20 22:31:12'),
(8, '5', '2', '2024-05-20 23:43:33', '2024-05-20 23:43:33'),
(9, '6', '1', '2024-05-21 03:01:14', '2024-05-21 03:01:14'),
(10, '7', '1', '2024-05-22 02:21:21', '2024-05-22 02:21:21'),
(11, '7', '3', '2024-05-22 02:21:21', '2024-05-22 02:21:21'),
(12, '8', '1', '2024-05-22 02:23:35', '2024-05-22 02:23:35'),
(13, '9', '1', '2024-05-22 02:24:21', '2024-05-22 02:24:21'),
(14, '10', '1', '2024-05-22 02:25:24', '2024-05-22 02:25:24'),
(15, '11', '1', '2024-05-23 02:21:06', '2024-05-23 02:21:06'),
(16, '12', '1', '2024-05-23 02:21:40', '2024-05-23 02:21:40'),
(17, '13', '1', '2024-05-23 02:22:50', '2024-05-23 02:22:50'),
(18, '13', '2', '2024-05-23 02:22:50', '2024-05-23 02:22:50'),
(19, '14', '1', '2024-05-26 10:26:10', '2024-05-26 10:26:10'),
(20, '15', '1', '2024-05-26 10:26:45', '2024-05-26 10:26:45'),
(21, '16', '1', '2024-05-26 11:17:02', '2024-05-26 11:17:02'),
(22, '17', '1', '2024-05-30 11:21:27', '2024-05-30 11:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `job_id`, `skill_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, '2', '8', NULL, '2024-05-16 04:51:13', '2024-05-16 04:51:13'),
(2, '2', '20', NULL, '2024-05-16 04:51:13', '2024-05-16 04:51:13'),
(3, '3', '1', NULL, '2024-05-20 21:53:27', '2024-05-20 21:53:27'),
(4, '3', '5', NULL, '2024-05-20 21:53:27', '2024-05-20 21:53:27'),
(5, '3', '8', NULL, '2024-05-20 21:53:27', '2024-05-20 21:53:27'),
(6, '4', '2', NULL, '2024-05-20 22:31:12', '2024-05-20 22:31:12'),
(7, '5', '6', NULL, '2024-05-20 23:43:33', '2024-05-20 23:43:33'),
(8, '5', '16', NULL, '2024-05-20 23:43:33', '2024-05-20 23:43:33'),
(9, '5', '20', NULL, '2024-05-20 23:43:33', '2024-05-20 23:43:33'),
(10, '6', '1', NULL, '2024-05-21 03:01:14', '2024-05-21 03:01:14'),
(11, '7', '5', NULL, '2024-05-22 02:21:21', '2024-05-22 02:21:21'),
(12, '8', '6', NULL, '2024-05-22 02:23:35', '2024-05-22 02:23:35'),
(13, '8', '11', NULL, '2024-05-22 02:23:35', '2024-05-22 02:23:35'),
(14, '9', '8', NULL, '2024-05-22 02:24:21', '2024-05-22 02:24:21'),
(15, '9', '10', NULL, '2024-05-22 02:24:21', '2024-05-22 02:24:21'),
(16, '10', '14', NULL, '2024-05-22 02:25:24', '2024-05-22 02:25:24'),
(17, '10', '16', NULL, '2024-05-22 02:25:24', '2024-05-22 02:25:24'),
(18, '11', '1', NULL, '2024-05-23 02:21:06', '2024-05-23 02:21:06'),
(19, '11', '5', NULL, '2024-05-23 02:21:06', '2024-05-23 02:21:06'),
(20, '12', '5', NULL, '2024-05-23 02:21:40', '2024-05-23 02:21:40'),
(21, '12', '8', NULL, '2024-05-23 02:21:40', '2024-05-23 02:21:40'),
(22, '13', '1', NULL, '2024-05-23 02:22:50', '2024-05-23 02:22:50'),
(23, '13', '5', NULL, '2024-05-23 02:22:50', '2024-05-23 02:22:50'),
(24, '13', '8', NULL, '2024-05-23 02:22:50', '2024-05-23 02:22:50'),
(25, '14', '6', NULL, '2024-05-26 10:26:10', '2024-05-26 10:26:10'),
(26, '14', '11', NULL, '2024-05-26 10:26:10', '2024-05-26 10:26:10'),
(27, '14', '14', NULL, '2024-05-26 10:26:10', '2024-05-26 10:26:10'),
(28, '15', '2', NULL, '2024-05-26 10:26:45', '2024-05-26 10:26:45'),
(29, '16', '22', NULL, '2024-05-26 11:17:02', '2024-05-26 11:17:02'),
(30, '16', '40', NULL, '2024-05-26 11:17:02', '2024-05-26 11:17:02'),
(31, '17', '18', NULL, '2024-05-30 11:21:27', '2024-05-30 11:21:27'),
(36, NULL, '3', '22', '2024-06-05 05:38:02', '2024-06-05 05:38:02'),
(37, NULL, '5', '22', '2024-06-05 05:38:02', '2024-06-05 05:38:02'),
(38, NULL, '8', '22', '2024-06-05 05:38:02', '2024-06-05 05:38:02'),
(39, NULL, '12', '22', '2024-06-05 05:38:02', '2024-06-05 05:38:02'),
(40, NULL, '41', '22', '2024-06-05 05:38:02', '2024-06-05 05:38:02'),
(41, NULL, '11', '23', '2024-06-05 06:08:33', '2024-06-05 06:08:33'),
(42, NULL, '15', '23', '2024-06-05 06:08:33', '2024-06-05 06:08:33'),
(43, NULL, '16', '23', '2024-06-05 06:08:33', '2024-06-05 06:08:33'),
(44, NULL, '20', '23', '2024-06-05 06:08:33', '2024-06-05 06:08:33'),
(45, NULL, '2', '20', '2024-06-06 03:00:14', '2024-06-06 03:00:14'),
(46, NULL, '10', '20', '2024-06-06 03:00:14', '2024-06-06 03:00:14'),
(47, NULL, '15', '20', '2024-06-06 03:00:14', '2024-06-06 03:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `languages`, `created_at`, `updated_at`) VALUES
(1, 'english', NULL, NULL),
(2, 'hindi', NULL, NULL),
(3, 'punjabi', NULL, NULL),
(4, 'german', NULL, NULL),
(5, 'spanish', NULL, NULL),
(6, 'russian', NULL, NULL),
(7, 'portuguese', NULL, NULL),
(8, 'Prof. Richard Cole', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(9, 'Madonna Herzog', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(10, 'Freida Runte', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(11, 'Pearl Doyle', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(12, 'Fleta O\'Conner', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(13, 'Rylee Nikolaus', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(14, 'Monty Jones III', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(15, 'Dave Jacobi', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(16, 'Cordelia Block', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(17, 'Raina Keeling', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(18, 'Carey Bauch', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(19, 'Peyton Herzog', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(20, 'Elta Gleichner', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(21, 'Heber Goldner DDS', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(22, 'Mrs. Dannie Waelchi V', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(23, 'Taryn Eichmann', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(24, 'Eileen Connelly', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(25, 'Jakayla Luettgen', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(26, 'Kenneth Lowe', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(27, 'Mr. Davonte Daniel V', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(28, 'Efrain Marks II', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(29, 'Abby Koss', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(30, 'Prof. Lenna Rutherford I', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(31, 'Ahmed Pacocha', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(32, 'Brittany O\'Keefe PhD', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(33, 'Haylee Oberbrunner', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(34, 'Jefferey Spinka', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(35, 'Jessyca Koelpin V', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(36, 'Elody Welch I', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(37, 'Prof. Lonny Pfannerstill', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(38, 'Emiliano Stanton', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(39, 'Jermaine Block IV', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(40, 'Ms. Bernadette Spinka V', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(41, 'Ramona Trantow', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(42, 'Carlo Schulist', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(43, 'Miss Tanya Rohan', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(44, 'Bessie Kuhic', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(45, 'Guido Dickens', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(46, 'Jace Bogan PhD', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(47, 'Jamison Steuber', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(48, 'Reyes Kautzer IV', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(49, 'Frederic Leuschke', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(50, 'Mr. Florencio Witting II', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(51, 'Prof. Shanna Walter', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(52, 'Miss Rosalia Schmeler', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(53, 'Vanessa Considine', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(54, 'Dr. Blaise Murphy', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(55, 'Mr. Martin Grant PhD', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(56, 'Jackie Trantow', '2024-05-20 02:46:46', '2024-05-20 02:46:46'),
(57, 'Prof. Jeffery Gottlieb II', '2024-05-20 02:46:46', '2024-05-20 02:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_05_09_081639_alter_users_table', 2),
(7, '2024_05_09_091612_alter_users_table', 3),
(8, '2024_05_12_143029_create_employers_table', 4),
(9, '2024_05_15_081036_alter_employer_table', 5),
(10, '2024_05_15_095159_create_programming_languages_table', 6),
(11, '2024_05_15_100820_create_frameworks_table', 7),
(12, '2024_05_16_073957_create_jobs_table', 8),
(13, '2024_05_16_075033_alter_programming_languages_table', 9),
(14, '2024_05_16_075914_alter_skills_table', 10),
(15, '2024_05_16_080750_create_languages_table', 11),
(16, '2024_05_16_082016_create_experiences_table', 12),
(17, '2024_05_16_085713_alter_jobs_table', 13),
(18, '2024_05_16_093044_atler_jobs_table', 14),
(19, '2024_05_16_093246_create_job_languages_table', 15),
(20, '2024_05_16_093508_create_job_skills_table', 16),
(21, '2024_05_21_030654_alter_job_table', 17),
(22, '2024_05_21_031159_alter_job_table', 18),
(23, '2024_05_21_034605_create_salaries_table', 19),
(24, '2024_05_21_035711_alter_job_table', 20),
(25, '2024_05_23_102320_create_job_inquiries_table', 21),
(26, '2024_05_23_102713_alter_job_inquiries_table', 22),
(27, '2024_05_29_082157_alter_job_inquiries_table', 23),
(28, '2024_05_30_164218_alter_jobs_table', 24),
(29, '2024_06_02_104829_create_user_profiles_table', 25),
(30, '2024_06_02_112039_alter_user_profiles_table', 26),
(31, '2024_06_02_162321_alter_user_profiles_table', 27),
(32, '2024_06_02_164334_alter_user_profiles_table', 28),
(33, '2024_06_03_093744_alter__job_inquiries_table', 29),
(34, '2024_06_03_102735_alter__job_inquiries_table', 30),
(35, '2024_06_04_050310_alter_job_skills_table', 31),
(36, '2024_06_07_080407_alter_jobs_table', 32);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `salary`, `created_at`, `updated_at`) VALUES
(1, '10-15k', NULL, NULL),
(2, '20-25k', NULL, NULL),
(3, '30-35k', NULL, NULL),
(4, '40-45k', NULL, NULL),
(5, '60-75k', NULL, NULL),
(6, '80-85k', NULL, NULL),
(7, '90-95k', NULL, NULL),
(8, '1-1.5 lac', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint UNSIGNED NOT NULL,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skills`, `created_at`, `updated_at`) VALUES
(1, 'php + laravel', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(2, 'dot net', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(3, 'php oops', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(4, 'dot net', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(5, 'php core', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(6, 'react', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(7, 'php core', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(8, 'laravel', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(9, 'dot net', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(10, 'php + sql', '2024-05-20 03:15:19', '2024-05-20 03:15:19'),
(11, 'react + js', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(12, 'php + laravel', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(13, 'react + js', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(14, 'node js', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(15, 'node js', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(16, 'react + js', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(17, 'laravel nodejs', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(18, 'php drupal', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(19, 'laravel + react', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(20, 'javascript', '2024-05-20 03:17:04', '2024-05-20 03:17:04'),
(21, 'Flask ', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(22, 'Django', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(23, 'Angular ', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(24, 'Django', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(25, 'Angular ', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(26, 'Vue.js', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(27, 'Flask ', '2024-05-26 11:08:42', '2024-05-26 11:08:42'),
(28, 'Go', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(29, 'ruby ', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(30, 'C', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(31, 'TypeScript', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(32, 'TypeScript', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(33, 'C++', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(34, 'TypeScript', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(35, 'Sql', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(36, 'ruby ', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(37, 'Sql', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(38, 'c#', '2024-05-26 11:12:28', '2024-05-26 11:12:28'),
(39, 'ruby', '2024-05-26 11:14:58', '2024-05-26 11:14:58'),
(40, 'python', '2024-05-26 11:14:58', '2024-05-26 11:14:58'),
(41, 'mysqli', '2024-05-26 11:14:58', '2024-05-26 11:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `state` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105),
(36, 'Iowa', 118),
(37, 'Alabama', 55),
(38, 'District of Columbia', 248),
(39, 'Montana', 128),
(40, 'Arkansas', 99);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `phone`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', 'vikas', 'vik88@gmail.com', '8527417895', '1715245028.jpg', NULL, '$2y$12$Qo3KLrvdBbJgJOLRw3wleOs2uy3Flj3FGzvcp4Brt7uldS7RzxTjS', NULL, '2024-05-09 03:27:08', '2024-05-09 03:27:08'),
(2, '1', 'guri', 'guri999@gmail.com', '8527417894', '1715247293.jpg', NULL, '$2y$12$NmT5un9I6BjM0l9spOgPwug2wFdpNATzC13Lhurw76tyXFhQL1aUC', NULL, '2024-05-09 04:04:54', '2024-05-09 04:04:54'),
(3, '2', 'navi', 'navi885@gmail.com', '8527417899', '1715247348.jpg', NULL, '$2y$12$Dn5g0GjUbQrFOK2FYL1t1OOd9QQA0Idlo7Re4cFe8N4F6JaCGsS/.', NULL, '2024-05-09 04:05:48', '2024-05-09 04:05:48'),
(4, '2', 'Sumit Kumar', 'sumit123@gmail.com', '8855447766', '1715541109.jpg', NULL, '$2y$12$b4EEZ6/7yCGTCIX6oM2TpugADp5lr9yml8Wz/Ng3/YAO7k7BvM0iW', NULL, '2024-05-12 13:41:51', '2024-05-12 13:41:51'),
(5, '2', 'Gurleen', 'gur123@gmail.com', '8855447766', '1715575914.jpg', NULL, '$2y$12$OaOdHYETF4DHj1bcng.vYugkcgKm3Bt0TtENGYV6r/uMI8E4SeDv2', NULL, '2024-05-12 23:21:55', '2024-05-12 23:21:55'),
(6, '2', 'nikhil', 'nik123@gmail.com', '8527417894', '1715760500.jpg', NULL, '$2y$12$QvGaFqRA55koCFKu5kRchuhRKx7Mor67Htht6476pvrxX911ZMBwC', NULL, '2024-05-15 02:38:21', '2024-05-15 02:38:21'),
(7, '2', 'nik', 'nik555@gmail.com', '8527417894', '1715760956.jpg', NULL, '$2y$12$OHi3P5CaJICtFRcXMiTQY.kr4QaFS62.euFXNUSOcMyOPpGf4tlnW', NULL, '2024-05-15 02:45:56', '2024-05-15 02:45:56'),
(8, '2', 'nik', 'nik5559@gmail.com', '8527417894', '1715761103.jpg', NULL, '$2y$12$xv3FGGGyOYk3rjDGRkxgH.3kkkvWJ98RJoeWxdThGI2smPF.6I.me', NULL, '2024-05-15 02:48:24', '2024-05-15 02:48:24'),
(9, '2', 'vikas', 'hlo000kumar@gmail.com', '8889638855', '1715925606.jpg', NULL, '$2y$12$SwX8yKF7hoV4rJyiiwHyZOduCCygnuieoe//HN3vlOezkvjC5IlvO', NULL, '2024-05-17 00:30:08', '2024-05-17 00:30:08'),
(10, '2', 'vikas', 'er@gmail.com', '8889638855', '1715925832.jpg', NULL, '$2y$12$CiUMC11VItr9ZIBFhYLr6e8Zsy6jZhKcZ1Ov7E6VcI2Vsdwu6f9BS', NULL, '2024-05-17 00:33:53', '2024-05-17 00:33:53'),
(11, '2', 'vikas kumar', 'vik8963@gmail.com', '8527417894', '1715926009.jpg', NULL, '$2y$12$RbEJJGLFhTSVuanmDEM6Ou/XNTUB6rsnmAX810yPJWF06gFQT9oF2', NULL, '2024-05-17 00:36:49', '2024-05-17 00:36:49'),
(12, '2', 'vikas', 'vikas1963kondal@gmail.com', '8527417894', '1715926799.jpg', NULL, '$2y$12$4H8GjGEgVmqoj369Pe7DUuRxcolZwLS0Bnui2Md2Sp.piZ8b2ikYC', NULL, '2024-05-17 00:49:59', '2024-05-17 00:49:59'),
(13, '2', 'laxmi', 'gur55mit22@gmail.com', '8527417895', '1715928000.jpg', NULL, '$2y$12$A9YdaW5obQcbUm4/WcXuBeIKWPCIbcv6nx44RRtkcE6GTbQwza3Hq', NULL, '2024-05-17 01:10:01', '2024-05-17 01:10:01'),
(14, '2', 'lovepreet', 'lovep9709@gmail.com', '8889638855', '1715928369.jpg', NULL, '$2y$12$Ldt9wzK3yc8Q1HsEXIgT3OrcFUAZRzAJqON6cLUO6zeyvpU15ZzVK', NULL, '2024-05-17 01:16:10', '2024-05-17 01:16:10'),
(15, '2', 'pankaj', 'pankaj.sood205@gmail.com', '8527417895', '1715928542.jpg', NULL, '$2y$12$g3tXE3rxAORu2sk/TaRy0uAjY8Ows4OfAqJMzWnAfLvVa1X.phVOe', NULL, '2024-05-17 01:19:02', '2024-05-17 01:19:02'),
(16, '2', 'pranshu', 'pranshu732.206@gmail.com', '8527417895', '1715931926.jpg', NULL, '$2y$12$0F9MnvnyQMIiduz7k.7v8.y//YAzPkRRW3npTq2QUKooBprQ7Gee.', NULL, '2024-05-17 02:15:27', '2024-05-17 02:15:27'),
(17, '2', 'Vikas', 'vik22@gmail.com', '8527417895', '1716268148.jpg', NULL, '$2y$12$6MqcjLC6gnDNJv1YgTrASO.mA9dxxBCvhws7c8HOHbH0XkD3cyrwm', 'PjQlRwLxkIcHtmHWnLe5vys1N0njrT6JrVGfpHZUqR8N6lfnTmlI1dOrPKOz', '2024-05-20 23:39:10', '2024-05-20 23:39:10'),
(18, '1', 'gurmit', 'gurmit22@gmail.com', '8527417894', '1716738657.jpg', NULL, '$2y$12$VLxHv5YrR/t2pZ5gqBaMjen8OhOQXcpopeqlgg58x6OFLNOXhCHFe', NULL, '2024-05-26 10:20:58', '2024-05-26 10:20:58'),
(19, '2', 'test', 'test22@gmail.com', '8527417895', '1716738754.jpg', NULL, '$2y$12$U5uGdtturmk2FtZ1QQDh2uuynjjqyhVepGKMK5mjuiVYdZAx41Ww6', 'juMwiScVLWo1SCV0lkwXf022vXMm6ZuMP9gGTx8RFVqNhj492D951UUqOsjR', '2024-05-26 10:22:35', '2024-05-26 10:22:35'),
(20, '1', 'Vikas Kumar', 'vik33@gmail.com', '8527419635', '1717143428.jpg', NULL, '$2y$12$P1zjjrqv.LVmZuvRN2EqxexDGPobT.le.kpqRk/SDvlVA1bD.23lC', NULL, '2024-05-31 02:47:09', '2024-05-31 02:47:09'),
(21, '1', 'Vikas', 'vik55@gmail.com', '8527419635', '1717326813.jpg', NULL, '$2y$12$odqzmAq9m7mREvAdGFbxweqnajKGrI6TkPeQJtLt3QBeMvSSHEUx2', NULL, '2024-06-02 05:43:34', '2024-06-02 05:43:34'),
(22, '1', 'Guri', 'gur55@gmail.com', '8527419635', '1717327091.jpg', NULL, '$2y$12$/LI9PiG8mGNtCXxfwWBlNuoK/2Hpdpl.GY/5jf.AnxS9r4uMW/e8O', NULL, '2024-06-02 05:48:11', '2024-06-02 05:48:11'),
(23, '1', 'gurleen', 'gurleen55@gmail.com', '8527419635', '1717585873.jpg', NULL, '$2y$12$g9coVzIUPAWMvldR6gpSTe1x0SByCQDAVVlKEielaDa.gSenDjSXa', NULL, '2024-06-05 05:41:13', '2024-06-05 05:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `experience_id` int DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `portfolio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `employee_id`, `address`, `gender`, `city_id`, `state_id`, `country_id`, `experience_id`, `company_name`, `position`, `resume`, `github`, `created_at`, `updated_at`, `portfolio`, `twitter`) VALUES
(1, 20, 'st.256, pritam nagar', 'male', 8, 3, 1, 3, 'TBB infotect pvt.', 'HR', '1717662613.pdf', 'intelli-sense99', NULL, '2024-06-06 03:00:13', 'https://www.google.com', '@intelli666'),
(2, 22, 'st.256, pritam nagar', 'male', 6, 8, 1, 3, 'BI infotect pvt.', 'Senior Developer', '1717585682.pdf', 'intelli-sense99', '2024-06-02 05:48:11', '2024-06-05 05:38:02', 'https://www.google.com', '@intelli666'),
(3, 23, '3A, Model Town Rd, Institutional Area, Phase 3', 'male', 4, 25, 1, 3, 'parveen infotect pvt.', 'Senior Developer', '1717587513.pdf', 'intelli-sense99', '2024-06-05 05:41:13', '2024-06-05 06:08:33', 'https://www.google.com', '@intelli666');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frameworks`
--
ALTER TABLE `frameworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_inquiries`
--
ALTER TABLE `job_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_languages`
--
ALTER TABLE `job_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frameworks`
--
ALTER TABLE `frameworks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `job_inquiries`
--
ALTER TABLE `job_inquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `job_languages`
--
ALTER TABLE `job_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
