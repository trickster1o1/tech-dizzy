-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2022 at 05:11 AM
-- Server version: 10.5.16-MariaDB-cll-lve-log
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `himalaya_sec_nepal`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `slug`, `order_by`, `tagline`, `thumb_image`, `banner_image`, `album_description`, `album_short_description`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Save Environment', 'save-environment', 1, 'Save Environment', 'uploads/blog/world_environment_day.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', NULL, NULL, '2022-06-18 13:04:15', '2022-06-21 04:20:43'),
(2, 'Happy Donation', 'happy-donation', 2, 'Happy Donation', 'uploads/albums/donation.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', NULL, NULL, '2022-06-18 13:09:46', '2022-06-18 13:09:46'),
(3, 'Blood Donation', 'blood-donation', 3, NULL, 'uploads/albums/world_blood_doner_day.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', NULL, NULL, '2022-06-18 13:13:04', '2022-06-18 13:13:04'),
(4, 'Food Safety Day', 'food-safety-day', 4, NULL, 'uploads/albums/food_safety_day.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', NULL, NULL, '2022-06-18 13:13:37', '2022-06-18 13:13:37'),
(5, 'Adolescents Sexual and Reproductive Health program.', 'adolescents-sexual-and-reproductive-health-program-', 5, NULL, 'uploads/FB_IMG_16442540506503186.jpg', NULL, 'A program to promote the Sexual and Reproductive health status of adolescents ASRH was conducted in Devighat, Nuwakot .\r\n\r\nProgram includes : \r\na) Menstrual Health \r\nb) Changes in adolescents\r\nc) personal hygiene and sanitation\r\nd) good env for better health \r\ne) health promotion measures \r\nf) ice breaking session.', 'A program conducted to promote the Sexual and Reproductive health status of adolescents', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 15:35:13', '2022-07-05 16:04:46'),
(11, 'Mask Distribution', 'mask-distribution', 11, NULL, 'uploads/2022-07-06.jpeg', 'uploads/2022-07-06.jpeg', NULL, 'Mask distribution during the escalation of COVID-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-06 12:37:36', '2022-07-06 12:47:53'),
(6, 'COVID -19 awareness', 'covid-19-awareness', 6, 'COVID -19 awareness', 'uploads/IMG_3183.jpg', NULL, 'Amid COVID -19 SEC Nepal successfully conducted a COVID awareness program, where a street drama was performed by the volunteers and hand washing techniques were taught to children and local. information was disseminated through different audio-visual methods people were also taught about health care waste management.', 'Amid COVID -19 SEC Nepal successfully conducted a COVID awareness program, where a street drama was performed by the volunteers and hand washing techniques were taught to children and local.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 15:38:11', '2022-07-15 11:28:45'),
(7, 'Child growth and monitoring', 'child-growth-and-monitoring', 7, 'Child growth and monitoring', 'uploads/IMG-c06712818ff20eb2cbd5e337c5c13c87-V (1).jpg', NULL, 'Different anthropometric measurements and assessments were carried out by the team of volunteers to assess the child\'s growth and monitoring rate. Along with that nutritional counseling to mothers and micronutrient powder ( Baal vita ) was distributed.', 'Different anthropometric measurements and assessments were carried out by the team of volunteers to assess the child\'s growth and monitoring rate.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 15:39:39', '2022-07-13 11:59:47'),
(8, 'Eye Camp', 'eye-camp', 8, 'Eye Camp', 'uploads/IMG_3501.JPG', NULL, 'Free Eye Camp \r\n1. Title: Free Eye Camp\r\n2. Venue: Radha Bhuwaneshowri Ma. Vi, Bidur Municipality, Ward\r\nnumber 3, Nuwakot\r\nThe target audience was adults with a history of non-communicable diseases and old-aged people. We planned of providing service to all people of the Ward but due to COVID-19 we had to limit the number of participants. Adopting all public health safety measures, we became able to provide eye care service to around 100  people of the ward.\r\n\r\nProgram Activities:\r\nEye Screening\r\nVision test\r\nFree glasses and medicines distribution\r\nProvision of 25% discount for cataract patients to be\r\noperated at Dristi Eye Care.', 'The target audience was adults with a history of non-communicable diseases and old-aged people. We planned of providing service to all people of the Ward but due to COVID-19 we had to limit the number of participants. Adopting all public health safety measures, we became able to provide eye care service to around 100  people of the ward.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 15:47:36', '2022-07-13 11:41:59'),
(9, '( Baal vita )', '-baal-vita-', 9, NULL, 'uploads/IMG-fc01fbc65e4e825cd45c72a1b6d8e864-V.jpg', 'uploads/IMG-37c69df171936da5cf3011de7db617b2-V.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 16:02:45', '2022-07-06 12:48:56'),
(10, 'nutritional counselling', 'nutritional-counselling', 10, NULL, 'uploads/IMG-37c69df171936da5cf3011de7db617b2-V.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 16:03:17', '2022-07-13 11:37:06'),
(12, 'Hunger Relief Campaign', 'hunger-relief-campaign-', 12, NULL, 'uploads/14.jpg', 'uploads/2022-07-06', 'Hunger Relief Campaign- For those who suffered food crisis due to lack of employment during COVID-19\'s Lockdown', 'Hunger Relief Campaign- For those who suffered food crisis due to lack of employment during COVID-19\'s Lockdown', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-06 12:44:54', '2022-07-13 11:29:55'),
(13, 'Donation for Earthquake Victims', 'donation-for-earthquake-victims', 13, 'Donation for Earthquake Victims', 'uploads/IMG-0265.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', NULL, '2022-07-24 09:54:59', '2022-07-24 09:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_detail`, `order_by`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, '<p><strong>CITIZEN BANK INTERNATIONAL BANK PVT. LTD.</strong></p>\r\n\r\n<p><strong>A/C NO:</strong> 0101020304050607</p>\r\n\r\n<p><strong>A/C NAME: </strong>SEC NEPAL</p>\r\n\r\n<p><strong>BRANCH:</strong> DURBAR MARG</p>\r\n\r\n<p><strong>SWIFT CODE:</strong> CZBIL-44-02</p>', '1', '2022-06-20 04:18:55', '2022-07-12 11:42:25', 'deleted', NULL, NULL),
(2, '<p><strong>EVEREST BANK LIMITED</strong></p>\r\n\r\n<p><strong>A/C NO:</strong>&nbsp;03500105200666</p>\r\n\r\n<p><strong>A/C NAME:&nbsp;</strong>SAVE ENVIRONMENT SECURE CHILD</p>\r\n\r\n<p><strong>BRANCH:</strong> THAMEL BRANCH</p>\r\n\r\n<p><strong>SWIFT CODE:</strong>&nbsp;EVBLNPKA</p>', '1', '2022-06-20 04:19:35', '2022-07-12 11:47:51', 'active', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_button_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_button_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_button_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_button_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `banner_type`, `image`, `video`, `tag_line`, `primary_button_title`, `primary_button_link`, `secondary_button_title`, `secondary_button_link`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Let the <br> Helping <span>Hands</span> <br> Get Involved.', 'Image', 'uploads/17.jpg', 'https://www.youtube.com/watch?v=E1xkXZs0cAQ', 'We are here to support you every step of the way', 'Share Your Hand With Us', 'become-a-volunteer', NULL, NULL, 1, 'active', NULL, '1', '2022-06-16 13:34:13', '2022-07-12 12:46:09'),
(2, 'Our Goal is to <span>Help</span> <br> Support Children', 'Image', 'uploads/slider/happy_face.png', NULL, 'Welcome to SEC Nepal', 'Know More About Us', 'about', NULL, NULL, 2, 'inactive', NULL, '1', '2022-06-16 13:46:20', '2022-07-04 16:47:46'),
(3, 'Let’s Make a <span>Difference</span> <br> in the Lives of Others', 'Image', 'uploads/IMG_20220109_155527.jpg', NULL, 'Your Donations can Change their Daily Life Style', 'Donate For A Cause', 'donner-form', NULL, NULL, 3, 'active', NULL, '1', '2022-06-16 14:09:52', '2022-07-12 12:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `category`, `sub_category`, `tag_line`, `description`, `short_description`, `thumb_image`, `featured_image`, `banner_image`, `author`, `publish_date`, `tags`, `setting`, `order_by`, `is_featured`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hunger Relief campaign', 'random-act-of-kindness', '2', '0', NULL, '<p>One of SEC Nepal&rsquo;s major project which started with the origin itself was the hunger relief campaign. As the name suggests, the hunger relief campaign was brought forward by the like-minded people to help those who were less fortunate. Providing the basic supplements of food being the main focus of this campaign, SEC Nepal went forward and had many successful projects that were conducted in the lifespan of this organization. With one of the biggest earthquakes recorded striking Nepal, there had been a lot of victims who needed this help. More of these were conducted during the midst of COVID 19 where people had barely any economy to survive on.</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;One of our first project dated back in May of 2021 where SEC Nepal was successfully able to provide food and much needed sanitary products in Nepal. This was met with the warm responses and friendly glimpses of smiles during the tough times. With the help of many volunteers and people who donated, this project succeeded in providing the people with basic requirement of food. Warm food, biscuits, clean water, fruits, vegetables were all provided in this project.<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/14.jpg\" style=\"width: 960px; height: 720px;\" /></p>\r\n\r\n<p>This was then followed by the distribution of care package of over 200 near Bir Hospital and Balaju Bridge infront of the refugee settlement. This was made possible due to the volunteers and ones who supported our cause.&nbsp;<br />\r\n&nbsp;&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/15.jpg\" style=\"width: 699px; height: 523px;\" /><img alt=\"\" src=\"https://secnepal.org/uploads/16.jpg\" style=\"width: 700px; height: 524px;\" /></p>\r\n\r\n<p>COVID brought on a lot of challenges to us, not only as a country but as basic humans. From the people who weren&rsquo;t getting any jobs to the tourists who were forced to stay because of the spread, it was a time where faith and the humanity would be tested. We were able to overcome this and follow up with the project to provide the care packages near People&rsquo;s provident Fund Office at Thamel where the target would be street children, tourists who were stuck and workers who weren&rsquo;t getting any job in these tough times. This too succeeded with the help of the hardworking police administration, volunteers and ones who were able to give what they could. This made sure that the hunger relief campaign was moving smoothly.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/21.jpg\" style=\"width: 958px; height: 1280px;\" /></p>\r\n\r\n<p>With the dire situation in hand, many people still had nothing to eat and were struggling very hard just to survive. These projects were definitely a challenge but looking back, it was very much worth it being able to look at the victims and seeing them smile, even if it was just for a while. SEC Nepal then was able to provided 300 care package and masks in Thamel and around Kathmandu Durbar Square.&nbsp;<br />\r\n&nbsp; <img alt=\"\" src=\"https://secnepal.org/uploads/18.jpg\" style=\"width: 958px; height: 1280px;\" /><img alt=\"\" src=\"https://secnepal.org/uploads/19.jpg\" style=\"width: 958px; height: 1280px;\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>This wasn&rsquo;t the end of this project and SEC Nepal conducted many more in the upcoming days. Some of these were in Thamel and Sesmati Pul providing 300+ care packages. 250+ more care pakcage of rice and lentils at Thamel area, 300+ care packages of mask and food at Bhatkeko pul to Sinamangal area where the refugee camp resided. More was provided as the rations of rice, lentils, biscuits, oil, sugar and fruits to the &ldquo;Parents Care Home&rdquo; for the elderly people in Dhungedhara. This was followed up by the distribution of 300+ packages near Sobha Bhagwati refugee settlements and Thaiti. More was in distributing 300+ of the packages in the banks of Bishnumati river.<br />\r\nSome of the pictures of these events are as follows</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/17.jpg\" style=\"width: 833px; height: 624px;\" /><img alt=\"\" src=\"https://secnepal.org/uploads/20.jpg\" style=\"width: 1280px; height: 958px;\" /><br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/22.jpg\" style=\"width: 677px; height: 507px;\" /><img alt=\"\" src=\"https://secnepal.org/uploads/24.jpg\" style=\"width: 958px; height: 1280px;\" /><img alt=\"\" src=\"https://secnepal.org/uploads/25.jpg\" style=\"width: 958px; height: 1280px;\" /></p>\r\n\r\n<p>With the hardships of people in mind, we were able to succeed in this project of ours with the help of people who were kind enough to help during these tough times. This brought hope to the people who were in the rock bottom of their lives and ensured that at least, a few of them were able to receive what they needed the most. Food to eat, water to drink and people who cared about them. None of these would have been successful without our hardworking team and people who helped us make this successful including the ones who donated as well as volunteered to bring smiles up the faces. SEC Nepal really was able to get up close to the people and made their lives even a little better. With gratitude in our mind, we look forward to creating more of these campaigns to help those who aren&rsquo;t able to help themselves. Thank you everyone for being there as a support and helping those who need it.&nbsp;<br />\r\n&nbsp;</p>', '<p>One of SEC Nepal&rsquo;s major project which started with the origin itself was the hunger relief campaign. As the name suggests, the hunger relief campaign was brought forward by the like-minded people to help those who were less fortunate. Providing the basic supplements of food being the main focus of this campaign, SEC Nepal went forward and had many successful projects that were conducted in the lifespan of this organization. With one of the biggest earthquakes recorded striking Nepal, there had been a lot of victims who needed this help. More of these were conducted during the midst of COVID 19 where people had barely any economy to survive on.</p>', 'uploads/pexels-chella-ravi-1502874.jpg', NULL, NULL, NULL, '2022-06-17', 'charity, save environment,save children,donation', 'yes', 3, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '1', '1', '2022-06-18 11:25:48', '2022-07-05 13:03:46'),
(2, 'Global Warming and Climate Changes', 'world-environment-day', '2', '0', NULL, '<p>Global warming is an increase in the earth&#39;s temperature due to fossil fuels, industry, and agricultural processes caused by human, natural, and other gas emissions. Though this warming trend has been going on for a long time, its pace has significantly increased in the last hundred years due to the burning of fossil fuels. As the human population increased, so has the volume of fossil fuels burned. &nbsp;Global warming occurs when carbon dioxide (CO2) and other air pollutants collect in the atmosphere and absorb sunlight and solar radiation that have bounced off the earth&rsquo;s surface. Normally this radiation would escape into space, but these pollutants, which can last for years to centuries in the atmosphere, trap the heat and cause the planet to get hotter.&nbsp;<br />\r\nThis result is an increased evacuation of greenhouse gases. According to NRDC &ldquo;Since the Industrial Revolution, the global annual temperature has increased in total by a little more than 1 degree Celsius, or about 2 degrees Fahrenheit. Between 1880&mdash;the year that accurate recordkeeping began&mdash;and 1980, it rose on average by 0.07 degrees Celsius (0.13 degrees Fahrenheit) every 10 years.<br />\r\n&nbsp;<br />\r\nSince 1981, however, the rate of increase has more than doubled: For the last 40 years, we&rsquo;ve seen the global annual temperature rise by 0.18 degrees Celsius, or 0.32 degrees Fahrenheit, per decade.&rdquo; Due to global warming we are facing huge problems and among them climate change is one of them which can cause serious issues in near future.<br />\r\nClimate change refers to long-term shifts in temperatures and weather patterns. These shifts maybe natural, but since the 1800s, human activities have been the main driver of climate change, primarily due to the burning of fossil fuels which produces heat-trapping gases. Climate changes occur in our earth&#39;s atmosphere due to a buildup of greenhouse gases. Greenhouse gases can occur naturally as well as a result of human activities. The greenhouse gases are carbon dioxide, methane, and nitrous oxide. &ldquo;Carbon dioxide is released into the atmosphere when solid waste, fossil fuels, and wood are burned. The gases help to warm the surface of the Earth. Each greenhouse gas absorbs heat differently. If natural gases did not occur, the temperature of the earth would be considerably cooler. &ldquo;Problems can occur when higher concentrations of greenhouse gases are present in our atmosphere because they have enhanced our earth&#39;s heat-trapping capability.<br />\r\n&nbsp;<br />\r\nNepal is highly vulnerable to climate change impacts and recent studies by the Asian Development Bank suggested Nepal faces losing 2.2% of its annual GDP due to climate change by 2050. Nepal ratified the Paris Climate Agreement and its second Nationally Determined Communication (NDC) in 2020. Nepal&rsquo;s Second National Communication to the UNFCCC (2014) (NC2) identifies the country&rsquo;s energy, agriculture, water resources, forestry and biodiversity and health sectors as the most at risk to climate change. Human activities add to the levels of these gasses, causing more problems. &ldquo;Automobiles, heat from homes and businesses, and factories are responsible for about 80% of today&#39;s carbon dioxide emissions, 25% of methane emissions, and 20% of the nitrous oxide emissions.&rdquo; The increase in agriculture, deforestation, landfills, industrial production, and mining contribute a significant share of emissions also. These gases that are released into the atmosphere are tracked by emission inventories. An emission inventory counts the amount of air pollutants discharged into the atmosphere. These inventories are important in studying the effects of global warming on the Earth.</p>\r\n\r\n<p><br />\r\n<strong>Effects of global warming:</strong><br />\r\n1. Hotter temperatures<br />\r\n2. Effects on air we breathe, the food we eat/ scarcity of food and depleted water sources.<br />\r\n3. More allergies and more health risks<br />\r\n4. Loss of species<br />\r\n5. More severe storms due to changes in rainfalls and increase flooding.<br />\r\n6. Melting glaciers<br />\r\n7. Increased Drought<br />\r\n8. Increase in the frequency or intensity of some extreme weather events.<br />\r\nHow to control global warming?<br />\r\n1. Save energy by turning off electronic devices when not in use.<br />\r\n2. Awareness and separation of the decomposable and non-decomposable wastes generated from their home. They can use the compost bins to make the compost from the decomposable waste at their home.<br />\r\n3. Reduce, Reuse, Repair and Recycle things to minimize wastage.<br />\r\n4. Government should focus on controlling urbanization.<br />\r\n5. Use of renewable energy and use solar panels to generate electricity.<br />\r\n6. Use of induction stoves rather than using some other ways to make food.<br />\r\n7. Use of electric vehicles rather than fuel vehicles.<br />\r\n8. Use of eco-friendly products.<br />\r\n9. Industries should reduce their carbon footprint by switching fuels.<br />\r\n10. Tree Plantation and start afforestation.</p>\r\n\r\n<p><br />\r\n<em>Source:un.org, northwestern.edu, nrcm.org</em></p>', '<p>Global warming is an increase in the earth&#39;s temperature due to fossil fuels, industry, and agricultural processes caused by human, natural, and other gas emissions.</p>', 'uploads/2022-07-06 (2).jpg', NULL, NULL, NULL, '2022-06-17', 'Save Environment,Environment Day,Charity', 'yes', 2, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-18 11:33:15', '2022-07-13 10:57:31'),
(8, 'GENERATION HOPE - CHILD HEARINGS IN NEPAL', 'generation-hope-child-hearings-in-nepal', '2', '0', NULL, '<p>&nbsp;In Nepal, first in person child hearing was conducted with...</p>\r\n\r\n<p>Click <a href=\"https://nepal.savethechildren.net/news/generation-hope-child-hearings-nepal\">here</a> to&nbsp; read more</p>', '<p>&nbsp;In Nepal, first in person child hearing was conducted with 20....</p>', 'uploads/child hearing.jpg', NULL, NULL, 'Save The Children', NULL, NULL, 'yes', 8, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-26 15:56:42', '2022-07-26 15:58:57'),
(3, 'Children Rights', 'children-rights', '2', '0', NULL, '<p>We all understand what a child is, but when it comes to defining it precisely and separating youngsters from young adults, confusion frequently results. According to the legislation, everyone who is younger than 18 can be regarded as a kid on a global scale. However, in Nepal, as the legal age is 16, that is the last year in which anyone can be regarded as a child. A person who has not reached puberty or is still in that stage is frequently viewed as still a child. Child rights are a subset of human rights that focus on the unique protection and care that minors are entitled to, as rights are a distinct set of laws or protections meant to protect the subject.</p>\r\n\r\n<p>The cornerstones of children&#39;s rights are the right to health, education, family life, play and relaxation, a sufficient quality of living, and protection from abuse. Children can&#39;t fully make rational judgments for themselves, thus their parents or guardians must make the crucial choices on their behalf. Given that childhood is the most imaginative and significant time in a person&#39;s life, it is crucial to foster the proper beliefs without compromising these ideologies. But it actually comes as no surprise that people have a sinister secret that is hidden from view. Issues like child labor, prejudice, and child trafficking are still prevalent in our culture today. There is undoubtedly no difference in the situation in Nepal.&nbsp;</p>\r\n\r\n<p>Although there are laws in place to guard against child abuse, they are merely theoretical and not very effective. To ensure that children&#39;s rights are properly governed and that humanity as a whole can prosper, it is crucial.<br />\r\nIn addition to providing traditional children&#39;s rights internationally, UNICEF is one agency that makes significant efforts to preserve these children&#39;s rights. Numerous safeguards for children are included in their rights, helping to guarantee that they are raised in a supportive environment. It is also made plain that if a nation has its own rules protecting children that are better than the conventional ones, then those laws should be respected.<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/45.png\" style=\"width: 650px; height: 860px;\" />&nbsp; (unicef, n.d.)</p>\r\n\r\n<p><br />\r\nAbout 1 billion children between the ages of 2 and 17 are thought to have been victims of physical, sexual, or emotional abuse or neglect in 2015. 73 million of the 152 million youngsters who work as children do so in dangerous circumstances. In the least developed nations, 41% of females get married before turning 18. 33 of the 47 nations that are the least developed are in Africa. According to a World Bank research, up to three out of ten children with impairments have never attended school. There are 200 million female genital mutilations worldwide. Nearly four times as many children with disabilities will be the victims of physical or sexual abuse. Due to the preference for sons and prenatal sex selection, over 126 million females are &quot;missing&quot; globally.</p>\r\n\r\n<p>About one billion children ages 2 to 17 are estimated to have experienced physical, sexual, or emotional violence or neglect during 2015.&nbsp;Children&#39;s rights are violated by things like child labor, child marriage, kidnapping for armed combat, and other forms of tyranny. In addition, children are denied their rights when forced to flee violent situations or when their birth is not registered, leaving them without a birth certificate. (Worldvision, n.d.)</p>\r\n\r\n<p>The first law or regulation specifically aimed at children in Nepal was the Children&#39;s Act of 1992. This action is primarily focused on children&#39;s rights and issues that affect them. While the status of children has improved since this was implemented, it is still only the bare minimum of what a child should have. The second requirement of the socio-economic framework must be in line in order to support the legal framework, however, this is not done concurrently in the Nepalese context, making implementation fatally flawed.</p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/46.jpg\" style=\"width: 424px; height: 318px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/47.png\" style=\"width: 490px; height: 250px;\" />(Gajurel, 2008)<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\nChildren shouldn&rsquo;t have to burden their shoulder with the world&rsquo;s issues. They should be provided with care and love unconditionally. They are after all our future and should be treated as such. We, as adults must realize that children are in the period where you grow the most and get influenced accordingly. These are the times when they pick up habits and learn about the morality. We should be an example, a role model to them so that they can be a better citizen of the world or as simple as someone who enjoys life.&nbsp;<br />\r\nWith not only having strict rules for those who violate these rights, and also making sure the children gets treated with love, we must learn to accept that children are the most important and the priority must be given to them.&nbsp;<br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/48.jpg\" style=\"width: 1280px; height: 731px;\" /><br />\r\nWith the bar graph provided above of children in Nepal, it is to be noted that these are simply the recorded ones and many more are yet to have been recorded. This shows how the children are getting exploited in all ways and forms and should be stopped immediately.<br />\r\nThese vulnerable children have fallen through the cracks and require urgent support to protect them from dangerous situations. With some help, we can protect children from human trafficking, slavery and child labour. We can bring them back into the community, support them and, ultimately, give them back their childhood. (world vision, n.d.)</p>', '<p>We all know what a child is, but to point out exactly and differentiate between young adults and children is when people often get confused.&nbsp;</p>', 'uploads/IMG-fc01fbc65e4e825cd45c72a1b6d8e864-V (1).jpg', NULL, 'uploads/25.jpg', NULL, '2022-06-17', 'Save Children,donation,support us', 'yes', 1, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-18 11:41:01', '2022-07-12 17:56:47'),
(4, 'Save the environment by using renewable  resources', 'save-the-environment-by-using-renewable-resources', '2', '0', NULL, '<p>An environment is everything that surrounds us, which includes both living (biotic) and non-living (abiotic) organisms. Living things live in the environment and they constantly interact with the changes and adopt the changes of the environment. There are different things that comprise our environment. Land, air, water, plant, soil, animals, plants, etc. comprise our environment. In the context of Nepal, Nepal is rich in natural resources and famous for its natural beauty. Nepal is facing lots of environmental degradation problems. We are facing problems like air pollution, water pollution, land pollution, deforestation, urbanization, etc. which are degrading our environment daily. Nepal is one of the most polluted countries in the world. According to smartairfilters Nepal ranked in top 10 most air polluted countries in the world with (46.0 &mu;g/m3). Due to pollution and global warming Nepal is facing unique challenges. Temperatures are rising fastest at the highest altitudes, causing quick melting of snow and ice, and retreating of glaciers which has threatened the generally poor and isolated communities that depend upon them. Nepal is identified as the 13th most climate-vulnerable country in the world although being responsible for only 0.027% of global greenhouse gas emissions. There are different ways to save our environment and one of it is by using renewable energy.&nbsp;</p>\r\n\r\n<p>WHAT IS RENEWABLE ENERGY?<br />\r\nRenewable energy is energy that is collected from renewable resources that are naturally refilled in a lapse of time. It includes sources such as sunlight, wind, rain, tides, waves, and geothermal heat. Although most renewable energy sources are sustainable, some are not. For example, some biomass sources are considered unsustainable at current rates of exploitation. Renewable energy often provides energy for generating electricity, air and water heating/cooling, and stand-alone power systems. About 20% of humans&#39; global energy consumption is renewables, including almost 30% of electricity. About 7% of energy consumption is traditional biomass, but this is declining. Over 4% of energy consumption is heat energy from modern renewables, such as solar water heating, and over 6% electricity.&nbsp;<br />\r\nSources of renewable energy.</p>\r\n\r\n<p><br />\r\n<strong>1. Hydropower</strong><br />\r\nIn the context of Nepal, We have the huge potential to generate electricity through hydropower. Nepal is a mountainous country also known as the &ldquo;water tower of Asia&rdquo;. Nepal has great sources of water resources.&nbsp;<br />\r\nNepal is known as the second richest country in water resources with as many as 6000 rivers, rivulets and tributaries, Nepal can meet its own electricity needs, but also can serve energy-hungry neighbors like Bangladesh and India. 220 hydropower projects are under construction in Nepal. The upper Tamakoshi Hydroelectric project (UTKHEP) has been placed into operation in Nepal, with its 456MW capacity making it the largest hydropower plant in the country.</p>\r\n\r\n<p><br />\r\n<strong>2. Solar Energy</strong>&nbsp;<br />\r\nSolar energy is by far the largest and most sustainable energy resource in Nepal. The solar resource is two orders of magnitude larger than Nepal will require to meet the 500-TWh goal. The solar potential in Nepal is 50,000 terawatt-hours per year, which is 100 times larger than its hydro resource and 7000 times larger than its current electricity consumption. Nepal receives 3.6 to 3.2 kWh of solar radiation per square meter per day, with roughly 300days of sun a year, making it ideal for solar energy. The country also has a large market of solar water heaters, with 185,000 units installed and operating as of 2009. Devighat Electric Project in Nuwakot is the largest power plant of Nepal. This project added 1.25MW to the national grid, its total output after completion to reach 25MW. The solar panels are installed in six locations within the premises of Devighat Hydropower station. &nbsp;The plant is owned by Nepal Electricity Authority (NEA).</p>\r\n\r\n<p><br />\r\n<strong>3. Biomass&nbsp;</strong></p>\r\n\r\n<p>Biomass is plant-based material used as fuel to produce heat or electricity. Biomass can be burned to create heat, converted into electricity or processed into biofuel. Biomass can be burned by thermal conversion and used for energy. Thermal conversion involves heating the biomass feedstock in order to burn, dehydrate, or stabilize it. About 77% of energy consumption of Nepal is supplied by traditional biomass energy, which includes the firewood, cattle dung and agricultural residues. As per the national Census 2011, nearly 4 million out of 5.4 million households in Nepal are still using the traditional biomass energy including firewood for cooking.</p>\r\n\r\n<p><br />\r\n<strong>4. Wind energy&nbsp;</strong><br />\r\nWind energy describes the process by which the wind is used to generate mechanical power or electricity. Wind turbines convert the kinetic energy in the wind into mechanical power. A generator can convert mechanical power into electricity. The potential area of wind power in Nepal is about 6074 sq. km with a wind power density greater than 300 watt/m2. The commercially viable wind potential of the country is estimated to be only about 448 MW. Nepal started collecting data on wind speed only from 1967. There are 40 wind measurement stations installed all over the country run under the department of hydrology and meteorology; however, presently only 29 stations are properly running. The largest wind-solar hybrid power system was switched on 12 December 2017, in Hariharpurgadi village of Sindhuli district, financed by a project supported by the Asian Development Bank (ADB).</p>\r\n\r\n<p><strong>Benefits of Renewable Energy</strong><br />\r\nEnvironmental and economic benefits of using renewable energy include:<br />\r\n&bull; Generating energy that produces no greenhouse gas emissions from fossil fuels and reduces some types of air pollution<br />\r\n&bull; Diversifying energy supply and reducing dependence on imported fuels<br />\r\n&bull; Creating economic development and jobs in manufacturing, installation, and more<br />\r\n&bull; Renewable energy will provide Nepal energy independence.<br />\r\n&bull; Renewable energy will help in reducing the effects of climate change due to global warming by not using finite resources like fossil fuels that create greenhouse gases and harm the environment.<br />\r\n&bull; Renewable energy lowers your carbon footprints.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Source:&nbsp;smartairfilters, nepalitimes&nbsp;</p>', '<p>An environment is everything that surrounds us, which includes both living (biotic) and non-living&nbsp;(abiotic) organisms. Living things live in the environment and they constantly interact with the changes&nbsp;and adopt the changes of the environment.</p>', 'uploads/IMG-64c5d7d44f0b910ec50c0921f685946b-V (2).jpg', NULL, 'uploads/2022-07-06 (1).jpeg', NULL, '2022-07-12', NULL, 'yes', 4, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 14:59:58', '2022-07-13 10:42:53'),
(7, 'Children in Nepal', 'children-in-nepal', '2', '0', NULL, '<h3>With 40 per cent of the population under the age of 18 years, investments in children and adolescents&nbsp;</h3>\r\n\r\n<p>Click <a href=\"https://www.unicef.org/nepal/children-nepal\">Here</a> to read more</p>', '<h3>With 40 per cent of the population under the age of 18 years, investments in children and adolescents&nbsp;</h3>\r\n\r\n<p>Click <a href=\"https://www.unicef.org/nepal/children-nepal\">Here</a> to read more</p>', 'uploads/IMG_0145.jpg', NULL, NULL, 'UNICEF NEPAL', NULL, NULL, 'yes', 7, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-26 15:51:35', '2022-07-26 15:57:56'),
(5, 'Climate Change', 'climate-change', '2', '0', NULL, '<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">What is the first thing that comes to mind when we talk about climate change? I guess I&#39;d say global warming, which is definitely not a good indication. The current climate change includes both global warming and its impacts on local weather patterns. Although there have been periods of climate change in the past, the current changes are much more extreme and are not the result of natural causes. Instead, the problem is with greenhouse gas emissions, especially those of carbon dioxide (CO2) and methane. The majority of these emissions are created when fossil fuels are used for energy. Deforestation, some industrial activities, and some farming techniques are other causes. By transferring sunlight, greenhouse gases have the potential to warm the earth&#39;s surface.<br />\r\nWith more regular heat waves and wildfires, the desert has grown in size due to climate change. Sea ice loss, glacier retreat, and permafrost thawing are all consequences of increased Arctic warming. Rising temperatures are also a contributing factor to storms, droughts, and other extreme weather conditions. Many species have been displaced by and gone extinct as a result of rapid environmental changes in the Arctic Circle, coral reefs, and hilly regions. Due to climate change, people are more susceptible to water and food shortages, more frequent floods, extreme heat, a rise in sickness, and financial loss. Migrations and conflicts are both possible. Climate change is viewed by the World Health Organization (WHO) as the biggest threat to world health in the twenty-first century. Even successful efforts to slow down global warming will have certain effects that persist for thousands of years.</span></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/44444444444444444444.png\" style=\"width: 400px; height: 345px;\" /><br />\r\n<span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">&nbsp;&nbsp;<br />\r\n<strong>Nepal&#39;s changing climate</strong><br />\r\nDue to its high sensitivity to climate change, Nepal has already seen temperature and precipitation changes more quickly than the typical country. A variety of climate risks and water-related hazards are present in Nepal as a result of its geographic location, which is exacerbated by the rapid melting of snow and ice in the highlands and the monsoon season&#39;s torrential downpours in the foothills. The effects of climate change, including decreased agricultural output, food poverty, strained water supplies, loss of forests and biodiversity, as well as damaged infrastructure, are predicted to put millions of Nepalese at danger. About half of Nepal&#39;s greenhouse gas emissions are produced by the country&#39;s agricultural industry, with the rest coming from the energy, forestry, land-use change, and industrial industries.<br />\r\nCurrent problems like droughts, forest fires, and floods are made worse by climate change. The already unbearable levels of domestic poverty and inequality in Nepal would be greatly exacerbated by changes to the monsoon cycle. Despite the fact that many Nepalese manage the current burden on their own, states must create and implement effective policies for dealing with the effects of climate change in order to promote social and economic growth. A must. To respond to both long-term and short-term climate-related concerns, governments, commercial players, and civic movements must work constructively together. The Hindu Kush Himalayas are the only place where dealing with the many effects of climate change is more challenging. The IPCC Fourth Assessment Report from 2007 refers to the area as a &quot;blank space&quot; because there hasn&#39;t been much scientific research done there, including in Nepal.</span></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/01.png\" style=\"width: 735px; height: 753px;\" /></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><strong>Climate change as to United Nations (UN)</strong><br />\r\nClimate change is the long-term alteration of temperature and weather patterns. These modifications could be brought on naturally, like by oscillations in the solar cycle. However, since the 19th century, human activity has played a substantial role in causing climate change, primarily as a result of the burning of fossil fuels like coal, oil, and gas. The burning of fossil fuels releases greenhouse gases, which wrap the earth like a blanket and trap solar heat, raising its temperature.&nbsp;<br />\r\nExamples of greenhouse gas emissions that contribute to climate change include carbon dioxide and methane. These occur, for example, while burning coal to heat a building or gasoline to drive a car. Forest and land logging may also result in the release of carbon dioxide. And emissions continue to rise. The finding is that the Earth has warmed by 1.1 &deg;C since the end of the 19th century. The ten most recent years (2011&ndash;2020) set a record for warmth. Many people believe that the primary impact of climate change is rising temperatures. However, the story doesn&#39;t start when the temperature rises. Since the Earth is a system in which everything is interrelated, changes in one area may have an effect on changes in all other areas.</span></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/555555555555555555.png\" style=\"width: 395px; height: 394px;\" /></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">We are already experiencing the effects of climate change, which include severe droughts, water shortages, deadly fires, rising sea levels, flooding, melting polar ice, catastrophic storms, and diminished biodiversity. According to many UN reports, thousands of experts and government auditors have avoided the worst climatic effects and preserved a habitable environment by limiting the rise in world temperature to less than 1.5 &deg;C. However, according to the current National Climate Plan, global warming will have risen by about 3.2 &deg;C by the end of this century. Emissions that contribute to climate change are produced on a global scale, however some countries emit significantly more than others. The 100 countries with the lowest emissions contribute 3% of world emissions. The top 10 countries account for 68 percent of the emissions.</span></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/03.png\" style=\"width: 397px; height: 400px;\" /></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">By converting energy systems from fossil fuels to renewable energies like solar and wind, we can reduce the emissions that cause climate change. But we must get started immediately. A group of developing nations that have committed to having net zero emissions by 2050 predict that roughly half of the emission reductions necessary to keep global warming below 1.5 &deg;C will be implemented by 2030. Production of fossil fuels should decrease by about 6% every year between 2020 and 2030. Adapting to the effects of climate change is necessary to protect people, buildings, businesses, livelihoods, infrastructure, and natural ecosystems. The impacts are discussed in both the present and possible futures.</span></span></p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">Source: un.org-climatechange</p>\r\n\r\n<p>&nbsp;</p>', '<p>What is the first thing that comes to mind when we talk about climate change? I guess I&#39;d say global warming, which is definitely not a good indication.</p>', 'uploads/IMG-37bd4b51e8c37f42fb0098a523eeb5ae-V.jpg', NULL, NULL, NULL, NULL, NULL, 'yes', 5, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-12 15:46:16', '2022-07-12 17:35:03'),
(6, 'title', 'title', '2', '0', NULL, '<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p><img alt=\"Help Save Children in Nepal\" src=\"http://127.0.0.1:8000/uploads/blog/blog-details-img-1.jpg\" title=\"Help Save Children in Nepal\" /></p>\r\n\r\n<p>JUNE 17,2022</p>\r\n\r\n<ul>\r\n	<li><a href=\"javascript:void(0);\">&nbsp;0 Comments</a></li>\r\n</ul>\r\n\r\n<h3>Help Save Children in Nepal</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 6, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', '1', NULL, '2022-07-12 16:03:38', '2022-07-12 16:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_comments`
--

CREATE TABLE `blogs_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `category_type`, `tag_line`, `description`, `short_description`, `thumb_image`, `featured_image`, `banner_image`, `order_by`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Events', 'events', 'event', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-14 07:09:23', '2022-07-12 19:13:30'),
(2, 'Children Education', 'children-education', 'blog', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-14 07:09:42', '2022-07-12 19:13:40'),
(3, 'Default', 'default', 'pages', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-14 07:09:59', '2022-07-12 19:12:55'),
(4, 'Faq', 'faq', 'faqs', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', NULL, '2022-06-14 07:10:13', '2022-06-14 07:10:13'),
(5, 'Gallery', 'gallery', 'gallery', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-14 07:10:30', '2022-07-12 19:12:18'),
(6, 'Children', 'children', 'program', NULL, NULL, NULL, 'uploads/IMG-fc01fbc65e4e825cd45c72a1b6d8e864-V.jpg', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-14 07:11:02', '2022-07-20 16:23:56'),
(7, 'Service', 'service', 'service', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-14 07:11:17', '2022-07-12 19:11:57'),
(8, 'Education', 'education', 'pages', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-21 01:31:45', '2022-06-21 05:19:33'),
(9, 'Food', 'food', 'program', NULL, NULL, NULL, 'uploads/2022-07-06 (1).jpeg', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-12 19:14:42', '2022-07-20 16:23:14'),
(10, 'Others', 'others', 'program', NULL, NULL, NULL, 'uploads/IMG-c7a82927f09d1fd33aaeb763f6750583-V.jpg', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-12 19:15:43', '2022-07-20 16:25:01'),
(11, 'Environment', 'environment', 'program', NULL, NULL, NULL, 'uploads/IMG-d0a7a7b710fd97c78a435d0c48ad99a8-V (1).jpg', NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-20 16:17:44', '2022-07-20 16:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_types`
--

CREATE TABLE `category_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_types`
--

INSERT INTO `category_types` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'blog', 'active', NULL, NULL),
(2, 'Pages', 'pages', 'active', NULL, NULL),
(3, 'FAQs', 'faqs', 'active', NULL, NULL),
(4, 'Gallery', 'gallery', 'active', NULL, NULL),
(5, 'Event', 'event', 'active', NULL, NULL),
(6, 'Program', 'program', 'active', NULL, NULL),
(7, 'Service', 'service', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counter_information`
--

CREATE TABLE `counter_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `counter_information`
--

INSERT INTO `counter_information` (`id`, `title`, `short_description`, `icon_class`, `thumb_image`, `counter_number`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Total Campaigns', NULL, 'icon-campaign', NULL, '4850', '1', 'active', NULL, NULL, '2022-06-18 01:17:41', '2022-06-18 01:17:41'),
(2, 'Satisfied Donors', NULL, 'fa fa-users', NULL, '580', '3', 'active', NULL, NULL, '2022-06-18 01:18:20', '2022-06-18 01:18:20'),
(3, 'Happy Volunteers', NULL, 'icon-help', NULL, '2050', '4', 'active', NULL, NULL, '2022-06-18 01:19:01', '2022-06-18 01:19:01'),
(4, 'Raised Funds', NULL, 'icon-budget', NULL, '3456', '2', 'active', NULL, NULL, '2022-06-18 01:19:45', '2022-06-21 05:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `donners`
--

CREATE TABLE `donners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentMethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donationProgram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donners`
--

INSERT INTO `donners` (`id`, `fullName`, `number`, `order_by`, `position`, `image`, `email`, `amount`, `paymentMethod`, `donationProgram`, `remarks`, `attachment`, `bank_id`, `refid`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bill Gates', '9851315445', '0', 'President', NULL, 'elvishthapa@gmail.com', '120000000000000000000000', 'BANK', '10', 'Yo YO', NULL, NULL, NULL, 'pending', NULL, NULL, '2022-07-28 14:27:03', '2022-07-28 14:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `admin_user`, `user_subject`, `custom_email`, `user_message`, `admin_subject`, `admin_message`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'contact-us', NULL, NULL, 'info@secnepal.org', NULL, 'New data has been received through contact us form.', '<table height=\"571\" style=\"margin: 0px auto; font-family: Arial;\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"padding: 30px; color: rgb(255, 255, 255); background-color: #fff; text-align: center;\"><img class=\"img-responsive\" src=\"https://secnepal.org/uploads/secnepal_logo.jpg\" style=\"width: 96px; height: 96px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-weight:400;color:#777;font-size:14px;background-color:#f7f7f7;padding:30px;\">\r\n			<p>Dear Admin User,&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>Following detail has been received through website contact-us web form. Please check te detail given below:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>{{message}}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:#e74c3c;\"><em><strong>*Note: Login to report dashboard for full list and detail.</strong></em></span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>Thank you.</p>\r\n\r\n			<p>{{site_title}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"padding: 30px; font-size: 12px; font-weight: 400; color: rgb(255, 255, 255); background-color: #000; text-align: center;\">Visit us: <a href=\"{{site_link}}\" style=\"color:#fff;text-decoration:none\" target=\"_blank\">{{site_link}}</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'active', NULL, '1', '2022-06-19 08:32:39', '2022-07-27 19:18:10'),
(2, 'become-a-volunteer', NULL, NULL, 'info@secnepal.org', NULL, 'New volunteer request has been received through website.', '<table height=\"571\" style=\"margin: 0px auto; font-family: Arial;\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"padding: 30px; color: rgb(255, 255, 255); background-color: #fff; text-align: center;\"><img class=\"img-responsive\" src=\"https://secnepal.org/uploads/secnepal_logo.jpg\" style=\"width: 96px; height: 96px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-weight:400;color:#777;font-size:14px;background-color:#f7f7f7;padding:30px;\">\r\n			<p>Dear Admin User,&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>Following volunteer detail has been received through website web form. Please check te detail given below:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>{{message}}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n			<p>Thank you.</p>\r\n\r\n			<p>{{site_title}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"padding: 30px; font-size: 12px; font-weight: 400; color: rgb(255, 255, 255); background-color: #000; text-align: center;\">Visit us: <a href=\"{{site_link}}\" style=\"color:#fff;text-decoration:none\" target=\"_blank\">{{site_link}}</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'active', NULL, '1', '2022-06-19 08:48:06', '2022-07-27 19:17:46'),
(3, 'donation-email', NULL, NULL, 'info@secnepal.org', NULL, 'Donation Received', '<table height=\"571\" style=\"margin: 0px auto; font-family: Arial;\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"padding: 30px; color: rgb(255, 255, 255); background-color: #fff; text-align: center;\"><img class=\"img-responsive\" src=\"https://secnepal.org/uploads/secnepal_logo.jpg\" style=\"width: 96px; height: 96px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-weight:400;color:#777;font-size:14px;background-color:#f7f7f7;padding:30px;\">\r\n			<p>Dear Admin User,&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>Doner has made a donation through website. Following detail has been provided by the doner. Please verify the donation status through admin panel.&nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n			<p>{{message}}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<address style=\"color: red;\"><em>*Note: Website collects the doner information only. Please verify the payment manually and update status in admin panel.</em>&nbsp; &nbsp;&nbsp;</address>\r\n\r\n			<p>Thank you.</p>\r\n\r\n			<p>{{site_title}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"padding: 30px; font-size: 12px; font-weight: 400; color: rgb(255, 255, 255); background-color: #000; text-align: center;\">Visit us: <a href=\"{{site_link}}\" style=\"color:#fff;text-decoration:none\" target=\"_blank\">{{site_link}}</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'active', NULL, '1', '2022-06-20 06:21:08', '2022-07-27 19:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_people` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attached_file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `category`, `sub_category`, `thumb_image`, `featured_image`, `banner_image`, `is_featured`, `order_by`, `gallery_id`, `attached_file_url`, `start_date`, `start_time`, `end_date`, `end_time`, `location`, `short_description`, `description`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hunger Relief Campaign', 'hunger-relief-campaign', '1', '0', NULL, NULL, NULL, 'yes', '1', NULL, NULL, NULL, '2:00 PM', NULL, '2:00 PM', NULL, '<p>One of SEC Nepal&rsquo;s major project which started with the origin itself was the hunger relief campaign. As<br />\r\nthe name suggests, the hunger relief campaign was brought forward by the like-minded people to help<br />\r\nthose who were less fortunate.</p>', '<p>One of SEC Nepal&rsquo;s major project which started with the origin itself was the hunger relief campaign. As<br />\r\nthe name suggests, the hunger relief campaign was brought forward by the like-minded people to help<br />\r\nthose who were less fortunate. Providing the basic supplements of food being the main focus of this<br />\r\ncampaign, SEC Nepal went forward and had many successful projects that were conducted in the<br />\r\nlifespan of this organization. With one of the biggest earthquakes recorded striking Nepal, there had<br />\r\nbeen a lot of victims who needed this help. More of these were conducted during the midst of COVID 19<br />\r\nwhere people had barely any economy to survive on.<br />\r\nOne of our first project dated back in May of 2021 where SEC Nepal was successfully able to provide<br />\r\nfood and much needed sanitary products in Nepal. This was met with the warm responses and friendly<br />\r\nglimpses of smiles during the tough times. With the help of many volunteers and people who donated,<br />\r\nthis project succeeded in providing the people with basic requirement of food. Warm food, biscuits,<br />\r\nclean water, fruits, vegetables were all provided in this project.</p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/14.jpg\" style=\"width: 960px; height: 720px;\" /></p>\r\n\r\n<p>This was then followed by the distribution of care package of over 200 near Bir Hospital and Balaju<br />\r\nBridge infront of the refugee settlement. This was made possible due to the volunteers and ones who<br />\r\nsupported our cause.</p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/15.jpg\" style=\"width: 699px; height: 523px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/16.jpg\" style=\"width: 700px; height: 524px;\" /></p>\r\n\r\n<p>COVID brought on a lot of challenges to us, not only as a country but as basic humans. From the people<br />\r\nwho weren&rsquo;t getting any jobs to the tourists who were forced to stay because of the spread, it was a<br />\r\ntime where faith and the humanity would be tested. We were able to overcome this and follow up with<br />\r\nthe project to provide the care packages near People&rsquo;s provident Fund Office at Thamel where the<br />\r\ntarget would be street children, tourists who were stuck and workers who weren&rsquo;t getting any job in<br />\r\nthese tough times. This too succeeded with the help of the hardworking police administration,<br />\r\nvolunteers and ones who were able to give what they could. This made sure that the hunger relief<br />\r\ncampaign was moving smoothly.</p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/17.jpg\" /></p>\r\n\r\n<p>With the dire situation in hand, many people still had nothing to eat and were struggling very hard just<br />\r\nto survive. These projects were definitely a challenge but looking back, it was very much worth it being<br />\r\nable to look at the victims and seeing them smile, even if it was just for a while. SEC Nepal then was able<br />\r\nto provided 300 care package and masks in Thamel and around Kathmandu Durbar Square.</p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/18.jpg\" style=\"width: 958px; height: 1280px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/19.jpg\" style=\"width: 958px; height: 1280px;\" /></p>\r\n\r\n<p>This wasn&rsquo;t the end of this project and SEC Nepal conducted many more in the upcoming days. Some of<br />\r\nthese were in Thamel and Sesmati Pul providing 300+ care packages. 250+ more care pakcage of rice<br />\r\nand lentils at Thamel area, 300+ care packages of mask and food at Bhatkeko pul to Sinamangal area<br />\r\nwhere the refugee camp resided. More was provided as the rations of rice, lentils, biscuits, oil, sugar and<br />\r\nfruits to the &ldquo;Parents Care Home&rdquo; for the elderly people in Dhungedhara. This was followed up by the<br />\r\ndistribution of 300+ packages near Sobha Bhagwati refugee settlements and Thaiti. More was in<br />\r\ndistributing 300+ of the packages in the banks of Bishnumati river.<br />\r\nSome of the pictures of these events are as follows:</p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/20.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/21.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/22.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/23.jpg\" style=\"width: 674px; height: 504px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/24.jpg\" style=\"width: 958px; height: 1280px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/25.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://secnepal.defttree.com/uploads/26.jpg\" style=\"width: 1024px; height: 768px;\" /></p>\r\n\r\n<p>With the hardships of people in mind, we were able to succeed in this project of ours with the help of<br />\r\npeople who were kind enough to help during these tough times. This brought hope to the people who<br />\r\nwere in the rock bottom of their lives and ensured that at least, a few of them were able to receive what<br />\r\nthey needed the most. Food to eat, water to drink and people who cared about them. None of these<br />\r\nwould have been successful without our hardworking team and people who helped us make this<br />\r\nsuccessful including the ones who donated as well as volunteered to bring smiles up the faces. SEC<br />\r\nNepal really was able to get up close to the people and made their lives even a little better. With<br />\r\ngratitude in our mind, we look forward to creating more of these campaigns to help those who aren&rsquo;t<br />\r\nable to help themselves. Thank you everyone for being there as a support and helping those who need<br />\r\nit.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', NULL, '1', '2022-06-27 16:59:10', '2022-07-05 12:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category`, `sub_category`, `question`, `answer`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '4', '0', 'Is the website safe to make online payments?', '<p>Yes, all transactions on the website are secure. Additionally, all information exchanged is protected and under never circumstances exposed. The payment gateway is a third-party payment gateway that has been approved by the Nepal government&#39;s financial institutions. Any transaction is therefore completely secure.</p>', '4', 'active', NULL, '1', '2022-06-19 10:26:16', '2022-07-26 17:32:07'),
(5, 'Select Category', '0', 'Do you share donor’s information with other organizations?', '<p>No, in accordance with our privacy policy, we do not divulge donor information to any other organization.<br />\r\n&nbsp;</p>', '5', 'active', '1', NULL, '2022-07-26 17:32:42', '2022-07-26 17:32:42'),
(2, '4', '0', 'What will SEC Nepal do with my Donation?', '<p>We make sure that people&#39;s contributions are utilized as effectively as possible. We use donations from the public to give children&#39;s books, lunchtime food, and stationery. By boosting enrollment and developing centers in other locations, we also use your donations to provide help to more kids. SEC Nepal has a number of initiatives to help kids in challenging situations. These initiatives mostly concentrate on housing, food, health care, and education. Additionally, we enrol kids in kid-targeted media and make sure they take part in cutting-edge initiatives that will give them the confidence to express their thoughts.</p>', '3', 'active', NULL, '1', '2022-06-19 10:30:09', '2022-07-26 17:31:31'),
(3, '4', '0', 'How can I contribute to this organization?', '<p>You can help by sponsoring a kid, giving a general donation, or persuading your friends, colleagues, or other businesses to donate money on your behalf to SEC Nepal. &nbsp;You are welcome to join us and offer your services on a volunteer basis.</p>', '2', 'active', NULL, '1', '2022-06-19 10:30:49', '2022-07-26 17:31:02'),
(6, 'Select Category', '0', 'Do you accept donations in form of books/ gadgets / furniture?', '<p>Indeed, we gladly appreciate donations of materials like books, laptops, and food.<br />\r\n&nbsp;</p>', '6', 'active', '1', NULL, '2022-07-26 17:33:05', '2022-07-26 17:33:05'),
(7, 'Select Category', '0', 'How long do I have to sponsor the child I am sponsoring?', '<p>Whether you want to sponsor the child for a month, a year, two to three years, five years, or until the youngster completes his or her education is up to you.<br />\r\n&nbsp;</p>', '7', 'active', '1', NULL, '2022-07-26 17:33:17', '2022-07-26 17:33:17'),
(8, 'Select Category', '0', 'Do you offer schooling to kids with physical disabilities?', '<p>Yes, we support and adhere to the inclusive education principle. Children that are physically challenged do receive education from us.<br />\r\n&nbsp;</p>', '8', 'active', '1', NULL, '2022-07-26 17:33:47', '2022-07-26 17:33:47'),
(4, '4', '0', 'What difference does SEC Nepal make?', '<p>SEC Nepal aims to provide disadvantaged kids access to high-quality education. In addition, we raise community awareness of environmental issues. The innovativeness and power to transform children&#39;s lives via the involvement of both the community and the children themselves are the foundations of the projects/services we recognized. In addition to this, SEC Nepal also works on numerous other initiatives, including establishing play schools in rural Nepal, raising awareness of environmental issues, hosting health fairs, and offering remedial education to students in public schools. SEC Nepal strives to remove the obstacles that keep kids from escaping the cycle of poverty and we make sure that kids take an active part in their own development.</p>', '1', 'active', NULL, '1', '2022-06-19 10:31:12', '2022-07-26 17:30:16'),
(9, 'Select Category', '0', 'How can I make sure my donation to the NGO is used effectively?', '<p>When it comes to costs, SEC Nepal is quite open. You are welcome to verify our finances and/or visit programs in order to guarantee complete openness to our contributors and stakeholders. Accounts and programs are routinely audited, and rigorous financial guidelines are upheld in accordance with government regulations.</p>', '9', 'active', '1', NULL, '2022-07-26 17:34:23', '2022-07-26 17:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` smallint(5) UNSIGNED NOT NULL,
  `image_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_url` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `image_url`, `title`, `description`, `order_by`, `created_at`, `updated_at`, `video_url`) VALUES
(11, 1, 'uploads/slider/happy_face.png', 'Children Happy Faces', NULL, 1, NULL, NULL, NULL),
(10, 1, 'uploads/programs/children_environment.png', 'Happy Environment Day', NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=KW9GVEmh4d0'),
(35, 11, 'uploads/2022-07-06 (2).jpeg', NULL, NULL, 0, NULL, NULL, NULL),
(33, 12, 'uploads/IMG-20220705-WA0079.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(32, 12, 'uploads/2022-07-06 (1).jpeg', NULL, NULL, 2, NULL, NULL, NULL),
(31, 12, 'uploads/25.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(30, 12, 'uploads/15.jpg', NULL, NULL, 0, NULL, NULL, NULL),
(34, 12, 'uploads/23.jpg', NULL, NULL, 4, NULL, NULL, NULL),
(36, 11, 'uploads/2022-07-06.jpeg', NULL, NULL, 1, NULL, NULL, NULL),
(37, 10, 'uploads/IMG_20220109_155527 (1).jpg', NULL, NULL, 0, NULL, NULL, NULL),
(38, 10, 'uploads/IMG_20220113_142744.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(39, 10, 'uploads/IMG-c06712818ff20eb2cbd5e337c5c13c87-V.jpg', NULL, NULL, 2, NULL, NULL, NULL),
(40, 10, 'uploads/IMG-872386f8885e9fd6412d5d9f9a295bb7-V.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(41, 10, 'uploads/IMG-fc01fbc65e4e825cd45c72a1b6d8e864-V.jpg', NULL, NULL, 4, NULL, NULL, NULL),
(42, 9, 'uploads/IMG-37c69df171936da5cf3011de7db617b2-V.jpg', NULL, NULL, 0, NULL, NULL, NULL),
(43, 9, 'uploads/FB_IMG_16442540575253708.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(44, 9, 'uploads/FB_IMG_16442541025269755.jpg', NULL, NULL, 2, NULL, NULL, NULL),
(45, 9, 'uploads/IMG-b397b6d32b4f871b0164c187ac52d938-V.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(75, 8, 'uploads/IMG_3501 (1).JPG', NULL, NULL, 2, NULL, NULL, NULL),
(74, 8, 'uploads/1222.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(73, 8, 'uploads/123.jpg', NULL, NULL, 0, NULL, NULL, NULL),
(68, 7, 'uploads/FB_IMG_16442540931209676 (1).jpg', NULL, NULL, 3, NULL, NULL, NULL),
(67, 7, 'uploads/FB_IMG_16442540506503186.jpg', NULL, NULL, 2, NULL, NULL, NULL),
(66, 7, 'uploads/FB_IMG_16442540575253708 (1).jpg', NULL, NULL, 1, NULL, NULL, NULL),
(71, 6, 'uploads/IMG-040041b39ed2b31dfb6345bd05514c1b-V.jpg', NULL, NULL, 2, NULL, NULL, NULL),
(70, 6, 'uploads/IMG-363e3b59c819cc653687ace0c1ebad7f-V (1).jpg', NULL, NULL, 1, NULL, NULL, NULL),
(69, 6, 'uploads/IMG_3144.JPG', NULL, NULL, 0, NULL, NULL, NULL),
(58, 5, 'uploads/IMG-37bd4b51e8c37f42fb0098a523eeb5ae-V (1).jpg', NULL, NULL, 0, NULL, NULL, NULL),
(59, 5, 'uploads/IMG-d0a7a7b710fd97c78a435d0c48ad99a8-V.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(60, 5, 'uploads/IMG-2e54d9b1011dbf98d7f4efac62eb180c-V.jpg', NULL, NULL, 2, NULL, NULL, NULL),
(65, 7, 'uploads/IMG-1d00b481535a0e0f8abdb7c793d0e10d-V.jpg', NULL, NULL, 0, NULL, NULL, NULL),
(72, 6, 'uploads/IMG_3183.JPG', NULL, NULL, 3, NULL, NULL, NULL),
(76, 8, 'uploads/IMG_3561 (1).JPG', NULL, NULL, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_settings`
--

CREATE TABLE `home_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donner_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donner_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donner_short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donner_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_button_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_button_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_url_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_url_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_icon_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_short_description_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_url_link_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_url_title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabA_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabB_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabC_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_programs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_settings`
--

INSERT INTO `home_settings` (`id`, `service_title`, `service_sub_title`, `service_short_description`, `service_content`, `donner_title`, `donner_sub_title`, `donner_short_description`, `donner_content`, `blog_title`, `blog_sub_title`, `blog_content`, `testimonial_title`, `testimonial_sub_title`, `testimonial_content`, `album_title`, `album_sub_title`, `album_short_description`, `album_button_url`, `album_button_title`, `album_content`, `final_icon`, `final_title`, `final_short_description`, `final_url_link`, `final_url_title`, `final_icon_2`, `final_title_2`, `final_short_description_2`, `final_url_link_2`, `final_url_title_2`, `tabA_content`, `tabB_content`, `tabC_content`, `additional_programs`, `final_banner`, `content`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Let\'s work together! Lets be a change agent.', 'Welcome To SEC Nepal', NULL, '', 'Let\'s work together for children and for the environment', 'Save Environment Save Children', NULL, '', 'News & Article', 'Get Latest Updates From SEC Nepal', '', 'What They’re Saying', NULL, '', 'Fundraising for the Children  and Causes you Care About', 'Lets Support Together', NULL, 'donate-now', 'Start Donating Now', '5,6,7,8', 'icon-sponsor', 'Sponsor an Entire Project', 'Generosity leads to Prosperity. Liberate your soul!', 'donate-now', 'Donate Now', 'icon-solidarity', 'Get Inspire and Help', 'You Lift, You Rise and You Inspire. You are a love with motion. Inspire Love!', 'become-a-volunteer', 'Become a Volunteer', '2', '3', '4', '4,5', 'uploads/IMG-c06712818ff20eb2cbd5e337c5c13c87-V.jpg', '1', '2022-06-17 16:08:38', '2022-07-12 14:55:09', 'active', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `internal_links`
--

CREATE TABLE `internal_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `internal_links`
--

INSERT INTO `internal_links` (`id`, `title`, `slug`, `tagline`, `short_description`, `description`, `order_by`, `featured_image`, `banner_image`, `thumb_image`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Introduction', 'introduction', 'We Make The Difference - Save Children Save Environment', NULL, NULL, NULL, NULL, NULL, NULL, 'About SEC Nepal | Save Children | Save Environment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:38:14', '2022-06-20 07:05:31'),
(2, 'Become A Volunteer', 'become-a-volunteer', 'Let’s Make a Difference in the Lives of Others', '<p>Any good heart can join us for the volunteer</p>', '<p>Any good heart can join us for the volunteer</p>', NULL, NULL, NULL, 'uploads/IMG-20220705-WA0079.jpg', 'Become A Volunteer | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-20 06:39:08', '2022-07-26 17:56:05'),
(3, 'Donate Now', 'donate-now', 'Your Donations can Change their Daily Life Style', NULL, NULL, NULL, NULL, NULL, NULL, 'Donate Now | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:40:33', '2022-06-20 07:22:58'),
(4, 'Contact Us', 'contact-us', 'Get in Touch With us', '<p>Let&#39;s communicate, share our thoughts and help each other.</p>', '<p>Let&#39;s communicate, share our thoughts and help each other.</p>', NULL, NULL, NULL, NULL, 'Contact Us | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-20 06:41:05', '2022-07-10 16:00:41'),
(14, 'Thematic', 'area', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-12 14:31:30', '2022-07-19 12:51:34'),
(5, 'Program/Cause', 'program', 'Raise Fund for Clean & Healthy Food', NULL, NULL, NULL, NULL, NULL, NULL, 'SEC Nepal Programs | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:41:45', '2022-06-20 07:50:55'),
(6, 'News & Article', 'blog', 'Get Latest News And Article', NULL, NULL, NULL, NULL, NULL, NULL, 'Latest Updates | News & Article | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:42:53', '2022-06-20 07:52:07'),
(7, 'Albums', 'album', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SEC Nepal Albums | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:43:36', '2022-06-20 06:43:36'),
(8, 'Events', 'event', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Event | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:43:57', '2022-06-20 06:43:57'),
(9, 'Service', 'service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Services | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:44:16', '2022-06-20 06:44:16'),
(10, 'FAQs', 'faq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FAQs | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:44:40', '2022-06-20 06:44:40'),
(11, 'Newsletters', 'newsletter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Newsletters | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:45:02', '2022-06-20 06:45:02'),
(12, 'Volunteers', 'volunteer', NULL, NULL, NULL, NULL, NULL, 'uploads/2022-07-06 (1).jpeg', 'uploads/IMG-20220705-WA0079.jpg', 'Volunteers | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-20 06:47:18', '2022-07-26 17:54:20'),
(13, 'Team Members', 'teammember', 'Our Dedicated Teams Makes The Difference In Life', NULL, NULL, NULL, NULL, NULL, NULL, 'Team Member | Our Team | SEC Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:47:55', '2022-06-21 04:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `introduction_settings`
--

CREATE TABLE `introduction_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabA_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabB_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabC_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supporter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonials` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_banner_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_banner_tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_banner_button_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_banner_button_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volunteer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volunteer_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volunteer_tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `introduction_settings`
--

INSERT INTO `introduction_settings` (`id`, `banner_image`, `thumb_image`, `description`, `title`, `banner_title`, `tagline`, `tabA_content`, `tabB_content`, `tabC_content`, `supporter`, `testimonials`, `second_banner_image`, `second_banner_title`, `second_banner_tagline`, `second_banner_button_title`, `second_banner_button_link`, `volunteer`, `volunteer_title`, `volunteer_tagline`, `testimonial_title`, `testimonial_tagline`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'uploads/17.jpg', '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">As &ldquo;Save Environment Secure Children&rdquo; (SEC Nepal), is a non-profit organization driven by the motivation to mitigate environmental issues as well as improve the lives of children. Having been established in the mid-2012 there have been a lot of campaigns that have been brought forward to help our cause. One of the first few operations we did was a health checkup for pregnant women and children. Further, distribution of the relief materials to the victims of the devastating earthquake in Nepal. With this in mind, there have been plenty of more campaigns we did to help and support the ones who need it. While our primary focus was on the children, with huge help from the volunteers, we were also able to help a few homeless people bring up smiles in their faces. Having collaborated with the Backpackers in Nepal, Haatemalo and other be lovers teams, we were able to finish our programs to help the ones who were in need of the love and support.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">With the start of the New Year in 2013, with most trekking trails being polluted by plastic bags, bottles and other harmful things, we brought on a program to mitigate this. With the help of the volunteers and trekkers to make the trail have a clean environment as well as help the children with something as simple as getting them chocolates and pens to get them to smile and help them with their future endeavors. At the same time, most of the villages that were affected heavily by the earthquake which made children forced to leave their education became our beacon of attention. SEC Nepal was able to provide clothes and food for those victims.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">The other major campaign we organized was during the major outbreak of the covid. Having understood and experienced the negative impact COVID- 19 put on all of us, SEC Nepal decided to help the less fortunate ones by distributing the necessary foods as well as sanitary products. SEC Nepal successfully carried out this project and therefore was able to focus on more campaigns like this thereafter. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">The next project was the distribution of 200- 400 care packages which included basic items of survival food like rice, veggies, salad, fruits etc. in the vicinity of Old Buspark near the Bir Hospital. The main target for this project was the homeless people, street children, and caregivers who were supporting the victims of COVID-19 while risking their lives simultaneously. This was our hunger relief program, the program was mass supported by our volunteers and entities who donated to this cause which was successfully carried out in between 3 of May 2021 to 3 of July 2021 in every alternative days.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Multiple of such programs were conducted thereafter that included serving 200 plus care packages near People&acute;s Provident Fund Office, Thamel. Having the support of volunteers of SECwell-wishers wishers, supporters, and police administration, SEC Nepal was able to successfully conduct this project as well as the project of providing 300+ care packages and masks around the Kathmandu Durbar Square. Many more of these programs were successfully conducted around the Thamel, Sesmati Pul, and more.&nbsp;The program extended to the refugee settlements near Sobha Bhagwati and Thaiti.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Providing&nbsp; 27,654 proper disposable masks and 1200 pairs of surgical gloves, a one-time shipment, from Lights on Charity for distribution around Kathmandu valley and Gorkha were intended to be used for needy people facilitating mandatory use of mask implemented by Nepal Government and ultimately stopping the spread of COVID-19 in community-level was a major effort of cause to help people. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">The next campaign consisted of donating 1500 disposable masks to Sukraraj Tropical and Infectious Disease Hospital; Teku by understanding that this is one of the approachable hospitals to poor and underprivileged people and its significance in the pandemic time. More of these were conducted in our Free Mask Distribution Campaign like ensuring the completion of distributing 20000 disposable masks and surgical gloves in different regions of Gorkha and Kathmandu. This was made successful with to the help of Light on Charity. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Having continued our focus on hunger relief we were also able to distribute 300+ care packages near the banks of Bishnumati River with the help of volunteers and supporters. Followed by this our&nbsp;next program was &ldquo;Child growth monitoring and counseling program&rdquo; aimed to help children in schools by vaccinating them, providing them with the health checkups as well as counselling them.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Having such program become a huge success, we consistently created more of our suport ongoing. Such as&nbsp;Adolescents Sexual and Reproductive Health (ASRH) to support and create awareness among adolescents for a more secure lifestyle in Bidur 3- Nuwakot. SEC Nepal has also conducted &#39;Free Eye Camp&#39; in the same place with the help of the supporting partner Dristi Eye Care as well as the volunteers and support from Team Nepo Bhaktapur.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">As of now, we are focusing on the campaign which focuses on getting children vaccinated against COVID- 19 in nearby schools across the country, including the Kathmandu Valley. Our first phase includes providing the first dose from 23 rd to 9 th of June and the second dose being provided in 18 th to 24 th of July. The second phase focuses on providing for the remaining 50 Districts where the first dose will be provided in 21 st to 27 th of August and the second dose from 12 th to 17 th of September.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">With such campaigns brought on by the SEC Nepal, we truly are grateful for nationwide support and for the volunteers who are able to help our cause in mitigating the problems faced by people in the hardest of times. While we do realize that our effort is minimal work, we do hope this inspires people to help other people and provide them with hope in the darkest of hours. This being said, we are positive that this brings along the change not only in the people who are facing such adversities but also among fortunate people to help those who are in need.</span></span></p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>', 'We Make Difference', NULL, 'GET TO KNOW US', '2', '3', '4', NULL, 'on', 'uploads/IMG-fc01fbc65e4e825cd45c72a1b6d8e864-V (1).jpg', 'Fundraising for the Children and Causes you Care About', 'We’re Here to Support', 'Start Donating Now', 'donate-now', 'on', 'READY TO HELP YOU', 'Happy Volunteers', 'What They’re Talking About Us?', 'OUR TESTIMONIALS', 'active', NULL, '1', '2022-06-19 06:07:32', '2022-07-12 13:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `menu_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `route`, `parent`, `menu_code`, `position`, `icon_class`, `is_module`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Users & Roles', NULL, '0', NULL, 43, 'mdi mdi-settings', 'no', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(2, 'CMS', NULL, '0', NULL, 38, 'mdi mdi-package', 'no', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-07-05 11:48:53'),
(3, 'Settings', NULL, '0', NULL, 45, 'mdi mdi-book', 'no', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(4, 'User', 'users.index', '1', 'USER', 42, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(5, 'Internal Links', 'internal_links.index', '3', 'INTERNALLINK', 37, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(6, 'Role', 'roles.index', '1', 'ROLE', 46, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(7, 'Permission', 'permissions.index', '1', 'PERMISSION', 48, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(8, 'Site Settings', 'site_settings.index', '3', 'SITESETTING', 5, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(9, 'Admin Menu', 'menus.index', '3', 'ADMINMENU', 57, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(10, 'Site Menus', 'site_menus.index', '2', 'SITEMENU', 58, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(11, 'Categories', 'categories.index', '2', 'CATEGORY', 8, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(12, 'Sub-Categories', 'sub_categories.index', '2', 'SUBCATEGORY', 9, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(13, 'Banners', 'banners.index', '2', 'BANNER', 12, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(14, 'Blogs', 'blogs.index', '2', 'BLOG', 16, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(15, 'Media', 'media.index', '2', 'MEDIA', 63, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(16, 'Pages', 'pages.index', '2', 'PAGES', 13, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(17, 'Albums', 'albums.index', '2', 'ALBUM', 23, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:38'),
(18, 'Popup Notice', 'popups.index', '2', 'POPUP', 21, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:29'),
(19, 'Notice', 'notices.index', '2', 'NOTICE', 27, NULL, 'yes', 'deleted', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:53:16'),
(21, 'Team Members', 'team-members.index', '2', 'TEAMMEMBER', 22, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:52:38'),
(22, 'FAQs', 'faqs.index', '2', 'FAQ', 32, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(24, 'Events', 'event.index', '2', 'EVENT', 19, NULL, 'yes', 'inactive', NULL, '1', '2022-06-14 07:00:32', '2022-07-12 19:16:40'),
(25, 'Donner', 'donner.index', '33', 'DONNER', 1, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:39:47'),
(26, 'Supporters', 'supporter.index', '2', 'SUPPORTER', 31, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:53:16'),
(27, 'Introduction', 'introductionsetting.index', '3', 'INTRODUCTION', 11, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-21 04:43:29'),
(28, 'Contacts', 'contact.index', '33', 'CONTACT', 2, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:42:47'),
(29, 'Volunteer', 'volunteer.index', '2', 'VOLUNTEER', 29, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:53:16'),
(30, 'Newsletter', 'newsletter.index', '2', 'NEWSLETTER', 25, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:53:16'),
(31, 'Testimonial', 'testimonial.index', '33', 'TESTIMONIALS', 3, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 15:00:12'),
(32, 'Email Templates', 'email_templates.index', '3', 'EMAILTEMPLATE', 40, NULL, 'yes', 'active', NULL, '1', '2022-06-14 07:00:32', '2022-06-20 14:55:17'),
(33, 'Reports', NULL, '0', NULL, 41, 'fa fa-list', 'no', 'active', '1', '1', '2022-06-20 10:25:21', '2022-06-20 14:55:17'),
(34, 'Home Setting', 'homesetting.index', '3', 'HOMESETTING', 7, NULL, 'yes', 'active', '1', '1', '2022-06-20 10:27:26', '2022-06-21 04:43:15'),
(35, 'Payment Setting', 'paymentsetting.index', '3', 'PAYMENTSETTING', 34, NULL, 'yes', 'active', '1', '1', '2022-06-20 10:28:07', '2022-06-21 04:43:44'),
(36, 'Bank Information', 'bank.index', '3', 'BANKSETTING', 35, NULL, 'yes', 'active', '1', '1', '2022-06-20 10:28:59', '2022-06-21 04:43:57'),
(37, 'Payment Methods', 'paymentmethod.index', '3', 'PAYMENTMETHOD', 36, NULL, 'yes', 'active', '1', '1', '2022-06-20 10:30:39', '2022-06-21 04:44:20'),
(38, 'Counter Setting', 'counter_infos.index', '3', 'COUNTERINFOS', 39, NULL, 'yes', 'active', '1', '1', '2022-06-20 10:33:22', '2022-06-21 04:44:35'),
(39, 'Programs', 'program.index', '2', 'PROGRAMS', 18, NULL, 'yes', 'active', '1', '1', '2022-06-20 13:21:25', '2022-06-21 02:28:14'),
(40, 'Services', 'services.index', '2', 'SERVICE', 17, NULL, 'yes', 'active', '1', '1', '2022-06-20 13:31:07', '2022-06-21 02:28:00'),
(41, 'SMTP Settings', 'smtp.index', '3', 'SMTPSETTING', 6, NULL, 'yes', 'active', '1', '1', '2022-06-20 14:28:06', '2022-06-21 04:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_permission`
--

CREATE TABLE `menu_permission` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_permission`
--

INSERT INTO `menu_permission` (`menu_id`, `permission_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(39, 1),
(39, 2),
(39, 3),
(39, 4),
(39, 5),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(28, 1),
(28, 3),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(8, 2),
(8, 4),
(41, 2),
(41, 4),
(34, 2),
(34, 4),
(27, 2),
(27, 4),
(35, 2),
(35, 4),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(37, 5),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(38, 1),
(38, 2),
(38, 3),
(38, 4),
(38, 5),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `menu_permission_role`
--

CREATE TABLE `menu_permission_role` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_01_07_073615_create_tagged_table', 1),
(2, '2014_01_07_073615_create_tags_table', 1),
(3, '2014_10_11_000000_create_roles_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2016_06_29_073615_create_tag_groups_table', 1),
(7, '2016_06_29_073615_update_tags_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2020_03_13_083515_add_description_to_tags_table', 1),
(11, '2021_12_06_065920_create_menus_table', 1),
(12, '2021_12_12_102547_create_permissions_table', 1),
(13, '2021_12_15_100916_create_menu_permission_table', 1),
(14, '2021_12_16_072045_create_menu_permission_role_table', 1),
(15, '2022_03_02_050546_create_categories_table', 1),
(16, '2022_03_02_091343_create_category_type', 1),
(17, '2022_03_03_090903_create_subcategories_table', 1),
(18, '2022_03_04_063801_create_pages_table', 1),
(19, '2022_03_04_064201_create_blogs_table', 1),
(20, '2022_03_11_042552_create_galleries_table', 1),
(21, '2022_03_11_050114_create_albums_table', 1),
(22, '2022_04_10_051253_create_banners_table', 1),
(23, '2022_04_13_042241_create_internal_links_table', 1),
(24, '2022_04_13_070153_create_site_settings_table', 1),
(25, '2022_04_17_055235_create_site_menus_table', 1),
(26, '2022_04_18_074822_create_reviews_table', 1),
(27, '2022_05_01_095213_create_subscribers_table', 1),
(28, '2022_05_02_064745_create_enquiries_table', 1),
(29, '2022_05_04_062751_create_email_templates_table', 1),
(30, '2022_05_22_082850_create_popups_table', 1),
(31, '2022_05_23_045637_create_notices_table', 1),
(32, '2022_05_23_052100_create_services_table', 1),
(33, '2022_05_23_052715_create_team_members_table', 1),
(34, '2022_05_23_052844_create_faqs_table', 1),
(35, '2022_05_23_053747_create_events_table', 1),
(36, '2022_05_23_054644_create_counter_information_table', 1),
(37, '2022_06_05_081032_create_donners_table', 1),
(38, '2022_06_05_155939_create_payment_methods_table', 1),
(39, '2022_06_06_051933_create_supporters_table', 1),
(40, '2022_06_06_073746_create_contacts_table', 1),
(41, '2022_06_06_081642_create_newsletters_table', 1),
(42, '2022_06_06_091740_create_volunteers_table', 1),
(43, '2022_06_06_161330_create_testimonials_table', 1),
(44, '2022_06_08_045804_create_programs_table', 1),
(45, '2022_06_08_070425_create_home_settings_table', 1),
(46, '2022_06_14_072613_create_blogs_comments_table', 1),
(47, '2022_06_14_174032_create_program_comments_table', 1),
(48, '2022_06_15_064223_create_introduction_settings_table', 1),
(49, '2022_06_15_162917_create_bank_details_table', 1),
(50, '2022_06_16_061829_create_payment_settings_table', 1),
(51, '2022_06_18_145507_create_smtp_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `title`, `slug`, `date`, `description`, `thumb_image`, `attachment`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Climate Change', 'climate-change', NULL, NULL, 'uploads/FB_IMG_16442540931209676 (2).jpg', 'https://www.secnepal.org/blog/climate-change', '1', 'active', NULL, '1', '2022-06-20 09:02:13', '2022-07-27 15:08:35'),
(2, 'Children\'s Day', 'childrens-day', NULL, NULL, 'uploads/IMG-c06712818ff20eb2cbd5e337c5c13c87-V (1).jpg', 'https://www.secnepal.org/blog/children-rights', '1', 'active', NULL, '1', '2022-06-20 09:02:13', '2022-07-27 15:07:46'),
(3, 'Environment Day', 'environment-day', NULL, NULL, 'uploads/FB_IMG_16442541025269755 (1).jpg', 'https://www.secnepal.org/program/7-simple-things-to-do-to-save-environment-', '1', 'active', NULL, '1', '2022-06-20 09:02:13', '2022-07-27 15:07:04'),
(4, 'Change for All', 'change-for-all', NULL, NULL, 'uploads/3.jpg', 'https://www.secnepal.org/program/sec-nepal-for-changeSEC%20Nepal%20for%20Change', '4', 'active', '1', '1', '2022-07-26 17:42:57', '2022-07-27 15:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiary_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiary_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_as_popup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attached_file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `category`, `sub_category`, `tag_line`, `description`, `short_description`, `thumb_image`, `featured_image`, `banner_image`, `order_by`, `video_url`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Our Mission is to Save Children and the Environment', 'our-mission-is-to-protect-children-and-the-environment', '2', '0', 'Welcome To SEC Nepal', '<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">As &ldquo;Save Environment Secure Children&rdquo; (SEC Nepal), is a non-profit organization driven by the motivation to mitigate environmental issues as well as improve the lives of children. Having been established in the mid-2012 there have been a lot of campaigns that have been brought forward to help our cause. One of the first few operations we did was a health checkup for pregnant women and children. Further, distribution of the relief materials to the victims of the devastating earthquake in Nepal. With this in mind, there have been plenty of more campaigns we did to help and support the ones who need it. While our primary focus was on the children, with huge help from the volunteers, we were also able to help a few homeless people bring up smiles in their faces. Having collaborated with the Backpackers in Nepal, Haatemalo and other be lovers teams, we were able to finish our programs to help the ones who were in need of the love and support.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">With the start of the New Year in 2013, with most trekking trails being polluted by plastic bags, bottles and other harmful things, we brought on a program to mitigate this. With the help of the volunteers and trekkers to make the trail have a clean environment as well as help the children with something as simple as getting them chocolates and pens to get them to smile and help them with their future endeavors. At the same time, most of the villages that were affected heavily by the earthquake which made children forced to leave their education became our beacon of attention. SEC Nepal was able to provide clothes and food for those victims.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">The other major campaign we organized was during the major outbreak of the covid. Having understood and experienced the negative impact COVID- 19 put on all of us, SEC Nepal decided to help the less fortunate ones by distributing the necessary foods as well as sanitary products. SEC Nepal successfully carried out this project and therefore was able to focus on more campaigns like this thereafter. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">The next project was the distribution of 200- 400 care packages which included basic items of survival food like rice, veggies, salad, fruits etc. in the vicinity of Old Buspark near the Bir Hospital. The main target for this project was the homeless people, street children, and caregivers who were supporting the victims of COVID-19 while risking their lives simultaneously. This was our hunger relief program, the program was mass supported by our volunteers and entities who donated to this cause which was successfully carried out in between 3 of May 2021 to 3 of July 2021 in every alternative days.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Multiple of such programs were conducted thereafter that included serving 200 plus care packages near People&acute;s Provident Fund Office, Thamel. Having the support of volunteers of SECwell-wishers wishers, supporters, and police administration, SEC Nepal was able to successfully conduct this project as well as the project of providing 300+ care packages and masks around the Kathmandu Durbar Square. Many more of these programs were successfully conducted around the Thamel, Sesmati Pul, and more.&nbsp;The program extended to the refugee settlements near Sobha Bhagwati and Thaiti.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Providing&nbsp; 27,654 proper disposable masks and 1200 pairs of surgical gloves, a one-time shipment, from Lights on Charity for distribution around Kathmandu valley and Gorkha were intended to be used for needy people facilitating mandatory use of mask implemented by Nepal Government and ultimately stopping the spread of COVID-19 in community-level was a major effort of cause to help people. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">The next campaign consisted of donating 1500 disposable masks to Sukraraj Tropical and Infectious Disease Hospital; Teku by understanding that this is one of the approachable hospitals to poor and underprivileged people and its significance in the pandemic time. More of these were conducted in our Free Mask Distribution Campaign like ensuring the completion of distributing 20000 disposable masks and surgical gloves in different regions of Gorkha and Kathmandu. This was made successful with to the help of Light on Charity. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Having continued our focus on hunger relief we were also able to distribute 300+ care packages near the banks of Bishnumati River with the help of volunteers and supporters. Followed by this our&nbsp;next program was &ldquo;Child growth monitoring and counseling program&rdquo; aimed to help children in schools by vaccinating them, providing them with the health checkups as well as counselling them.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">Having such program become a huge success, we consistently created more of our suport ongoing. Such as&nbsp;Adolescents Sexual and Reproductive Health (ASRH) to support and create awareness among adolescents for a more secure lifestyle in Bidur 3- Nuwakot. SEC Nepal has also conducted &#39;Free Eye Camp&#39; in the same place with the help of the supporting partner Dristi Eye Care as well as the volunteers and support from Team Nepo Bhaktapur.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">As of now, we are focusing on the campaign which focuses on getting children vaccinated against COVID- 19 in nearby schools across the country, including the Kathmandu Valley. Our first phase includes providing the first dose from 23 rd to 9 th of June and the second dose being provided in 18 th to 24 th of July. The second phase focuses on providing for the remaining 50 Districts where the first dose will be provided in 21 st to 27 th of August and the second dose from 12 th to 17 th of September.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">With such campaigns brought on by the SEC Nepal, we truly are grateful for nationwide support and for the volunteers who are able to help our cause in mitigating the problems faced by people in the hardest of times. While we do realize that our effort is minimal work, we do hope this inspires people to help other people and provide them with hope in the darkest of hours. This being said, we are positive that this brings along the change not only in the people who are facing such adversities but also among fortunate people to help those who are in need</span></span></p>\r\n\r\n<p>&nbsp;</p>', '<p><em><strong>We aim to Save Children and the Environment. </strong></em></p>\r\n\r\n<p>Having operated our social services since 2012&nbsp;<span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">as a nonprofit organization, SEC Nepal is driven by the motivation to mitigate environmental issues as well as improving the lives of children. </span></span></span></span></span></span></p>', 'uploads/FB_IMG_16442541025269755 (1).jpg', 'uploads/FB_IMG_16442541025269755 (1).jpg', 'uploads/22.jpg', 1, 'https://www.youtube.com/watch?v=X2YgM1Zw4_E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-16 01:34:36', '2022-07-27 14:32:32'),
(2, 'Mission', 'mission', '3', '0', NULL, '<p>SEC Nepal works in both the environmental and children&#39;s sectors. Every child in Nepal should have the chance to study, have a healthy start, and feel supported and safe in their daily lives.</p>\r\n\r\n<p>Whereas SEC Nepal in the sector of the environment has a mission to create green, healthy, and sustainable communities and habitats while also promoting justice and a healthy environment.</p>', '<p>SEC Nepal works in both the environmental and children&#39;s sectors. Every child in Nepal should have the chance to study, have a healthy start, and feel supported and safe in their daily lives.</p>\r\n\r\n<p>Whereas SEC Nepal in the sector of the environment has a mission to create green, healthy, and sustainable communities and habitats while also promoting justice and a healthy environment.</p>', 'uploads/IMG-2e54d9b1011dbf98d7f4efac62eb180c-V.jpg', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-18 01:32:37', '2022-07-04 14:04:23'),
(3, 'Vision', 'vision', '3', '0', NULL, '<p>Making sure that every child has a holistic learning experience and can grow into a &quot;entire person&quot; is a crucial component of all programs offered to kids by SEC Nepal. SEC Nepal seeks to support children in all areas of their development&mdash;physical, emotional, cerebral, and spiritual&mdash;in the hopes that this involvement will help the child comprehend more fully what it means to be a human being and the role they play and the impact they have on the world.</p>\r\n\r\n<p>Not only in the children&#39;s sector but also, SEC Nepal develops or implements programs that improve the environment, offers strategic input, analysis, and guidance to the community and surroundings for the goals of speeding positive change, and generally works to make the most change for the good of people and the earth.</p>', '<p>SEC Nepal seeks to support children in all areas of their development&mdash;physical, emotional, cerebral, and spiritual&mdash;in the hopes that this involvement will help the child comprehend more fully what it means to be a human being and the role they play and the impact they have on the world.</p>', 'uploads/IMG_20220109_155527.jpg', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-18 01:37:05', '2022-07-04 15:50:31'),
(4, 'Core Values', 'core-values', '3', '0', NULL, '<p>SEC Nepal believe to support children by providing a positive, enjoyable, and secure learning environment that is free from the difficulties of daily living. The organization incorporates soft skills into practical learning through a variety of knowledge-sharing approaches.&nbsp;</p>\r\n\r\n<p>Along with this, SEC Nepal strives to create policies and plans on issues relating to environmental protection, energy, nature conservation, and the promotion of sustainable development through community awareness and public support for these causes.</p>\r\n\r\n<p>&nbsp;</p>', '<p>SEC Nepal believe to support children by providing a positive, enjoyable, and secure learning environment that is free from the difficulties of daily living. The organization incorporates soft skills into practical learning through a variety of knowledge-sharing approaches.&nbsp;</p>', 'uploads/IMG-d0a7a7b710fd97c78a435d0c48ad99a8-V (1).jpg', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-18 01:42:22', '2022-07-04 16:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method`, `code`, `order_by`, `created_by`, `updated_by`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ESEWA', 'ESW', '1', NULL, 'superadmin', NULL, 'inactive', '2022-06-14 07:00:32', '2022-06-20 04:16:20'),
(2, 'Paypal (USD)', 'PPL', '2', NULL, 'superadmin', NULL, 'inactive', '2022-06-14 07:00:32', '2022-06-20 04:47:45'),
(3, 'Bank Transfer', 'BANK', '3', 'superadmin', NULL, NULL, 'active', '2022-06-20 04:16:36', '2022-06-20 04:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esewa_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_form` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_qr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `merchant_id`, `esewa_id`, `paypal_form`, `paypal_qr`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'EPAYTEST', NULL, '<form action=\"https://www.sandbox.paypal.com/donate\" method=\"post\" target=\"_top\">\r\n<input type=\"hidden\" name=\"hosted_button_id\" value=\"2B9L96P2SL4SA\" />\r\n<input type=\"image\" src=\"https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif\" border=\"0\" name=\"submit\" title=\"PayPal - The safer, easier way to pay online!\" alt=\"Donate with PayPal button\" />\r\n<img alt=\"\" border=\"0\" src=\"https://www.sandbox.paypal.com/en_NP/i/scr/pixel.gif\" width=\"1\" height=\"1\" />\r\n</form>', NULL, 'active', NULL, NULL, '2022-06-20 04:41:45', '2022-06-20 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `permission_code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'List', 'INDEX', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(2, 'Create', 'CREATE', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(3, 'Read', 'SHOW', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(4, 'Update', 'UPDATE', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(5, 'Delete', 'DESTROY', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(6, 'Assign Permission', 'ASSIGN', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popup_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `title`, `popup_description`, `start_date`, `start_time`, `end_date`, `end_time`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Blood Donation', '<p><img alt=\"\" src=\"https://secnepal.defttree.com/uploads/albums/world_blood_doner_day.jpg\" style=\"width: 370px; height: 306px;\" /></p>\r\n\r\n<p>This is popup notice desinged to give some important information in website.</p>', '2022-06-24', '8:00 AM', '2022-06-26', '9:00 PM', '1', 'deleted', NULL, NULL, '2022-06-26 01:53:20', '2022-06-26 01:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attached_file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donation_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `organizer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title`, `tagline`, `slug`, `category`, `sub_category`, `thumb_image`, `featured_image`, `banner_image`, `is_featured`, `order_by`, `gallery_id`, `attached_file_url`, `start_date`, `start_time`, `end_date`, `end_time`, `location`, `target_amount`, `donation_amount`, `short_description`, `description`, `organizer`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Education Is Everybody Rights', NULL, 'education-is-everybody-rights', '6', '0', 'uploads/programs/education.png', NULL, NULL, 'No', '1', NULL, NULL, NULL, '10:30 PM', NULL, '10:30 PM', NULL, '3000', '1500', '<p>Early childhood education, also known as nursery education, is a branch of education theory that relates to the teaching of children from birth up to the age of eight.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, NULL, '2022-06-17 16:31:21', '2022-07-12 19:18:06'),
(2, 'Save The Environment', NULL, 'save-the-environment', '6', '0', 'uploads/programs/plantation.png', NULL, NULL, 'No', '2', NULL, NULL, NULL, '10:45 PM', NULL, '10:45 PM', NULL, '5000', '1000', '<p>A plantation is an agricultural estate, generally centered on a plantation house, meant for farming that specializes in cash crops, usually mainly planted with a single crop, with perhaps ancillary areas for vegetables.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, NULL, '2022-06-17 16:51:40', '2022-07-12 19:18:10'),
(3, 'Children With The Environment', NULL, 'children-with-the-environment', '6', '0', 'uploads/programs/children_environment.png', NULL, NULL, 'No', '3', NULL, NULL, NULL, '11:00 PM', NULL, '11:00 PM', NULL, '2000', '500', '<p>Children are particularly vulnerable to certain environmental risks, including: air pollution; inadequate water, sanitation and hygiene; hazardous, radiation.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, NULL, '2022-06-17 16:58:34', '2022-07-12 19:18:14'),
(4, 'Healthy Food For Children', NULL, 'health-food-for-childresn', '6', '0', 'uploads/programs/healthy_food.png', NULL, NULL, 'no', '4', NULL, NULL, NULL, '11:00 PM', NULL, '11:00 PM', NULL, NULL, NULL, '<p>This list includes Feeding America&#39;s suggestions for&nbsp;<em>healthful food</em>&nbsp;drive&nbsp;<em>donations</em>. The list includes a variety of fruits and vegetables, proteins, dairy</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, NULL, '2022-06-17 17:17:24', '2022-07-12 19:18:19'),
(5, 'Health Campaign', NULL, 'health-campaign', '6', '0', 'uploads/programs/health_program.png', 'uploads/blog/blog-details-img-1.jpg', NULL, 'no', '5', NULL, 'uploads/newsletters/CharityWebsiteFeatures.pdf', '2022-06-01', '12:45 PM', '2022-06-30', '12:45 PM', 'Lazimpat, Kathmandu, Nepal', '100000', '1000', '<p>This list includes Feeding America&#39;s suggestions for&nbsp;<em>healthful food</em>&nbsp;drive&nbsp;<em>donations</em>. The list includes a variety of fruits and vegetables, proteins, dairy</p>', '<h2>Our Work for Children in Nepal</h2>\r\n\r\n<p>Thanks to supporters like you, Save the Children has been on the ground working for children in Nepal since 1976 &ndash; and providing the opportunity to&nbsp;<a data-di-id=\"di-id-3c1d38d2-a9ae1c49\" data-s-object-id=\"Text|sponsor a child from Nepal|sponsor a child from Nepal\" href=\"https://support.savethechildren.org/site/SPageNavigator/sponsorship.html#!/search?age=&amp;birthday=&amp;birthmonth=&amp;gender=&amp;location=startswith(community%2FimpactArea%2FcountryOffice%2FlocationShortName%2C%20%27Nepal%27)%20eq%20true\" title=\"sponsor a child from Nepal\">sponsor a child from Nepal</a>&nbsp;since 1982. We aim to ensure every Nepali child has the chance to realize their rights and reach their full potential, transforming their lives, their communities and their country.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The largest child-focused charity in Nepal, we work with government ministries and partners at the local, district and national levels across the country to ensure children&rsquo;s health, education and protection. In particular, we&rsquo;ve helped Nepal achieve significant progress in child mortality, malnutrition and child marriage.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Given Nepal&rsquo;s frequent disasters, we respond immediately when children and families are jeopardized by crisis. We also run disaster risk reduction programs to help mitigate the impact of crises and have prepositioned supplies for rapid distribution when time is essential.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>See recent results below made possible by your support.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>A healthy start in life</h3>\r\n\r\n<ul>\r\n	<li>Since 2019, we have led&nbsp;<a data-di-id=\"di-id-92b709e6-4536defd\" data-s-object-id=\"Text|The Healthy Transitions for Nepali Youth Project|Outbound: The Healthy Transitions for Nepali Youth Project\" href=\"https://www.healthynewbornnetwork.org/resource/finding-a-voice-shifts-in-reproductive-health-understanding-attitudes-and-practices-in-nepali-youth/\" target=\"_blank\" title=\"The Healthy Transitions for Nepali Youth Project\">The Healthy Transitions for Nepali Youth Project</a>&nbsp;which supports unmarried and married adolescent girls and young women aged 15&ndash;24 years as they transition to marriage and parenthood, while also improving reproductive, maternal and newborn health services to ensure they are available and responsive to their&nbsp;needs.</li>\r\n	<li>Through the USAID-funded&nbsp;<strong>Systems for Better Health Project (2018-2022)</strong>, we help ensure the availability and quality of maternal, newborn and child health services and family planning offered at both facility and community levels, while also engaging community structures and individuals in support of these services.</li>\r\n	<li>Since 2019 we have also partner on the USAID-funded&nbsp;<strong>Research for Scalable Solutions</strong>&nbsp;consortium project which aims to generate evidence to inform feasible, sustainable strategies for cost-effective, high-impact practices and self-care interventions at scale and with equitable coverage.</li>\r\n	<li>Since 2000, we helped achieve a 59% reduction in child morality.&nbsp;</li>\r\n	<li>We helped develop a national newborn health strategy and package, with plans for nationwide coverage.</li>\r\n	<li>Through our Contraception by Choice approach, we&rsquo;re increasing women&rsquo;s likelihood to use family planning by 3.6 times.</li>\r\n	<li>Across the country, we&rsquo;re helping roll out a community-based program to prevent mother-to-child HIV transmission.</li>\r\n	<li>We&rsquo;re managing a life-changing government cash transfer program for some of Nepal&rsquo;s most marginalized children.&nbsp; &nbsp;</li>\r\n</ul>\r\n\r\n<h3>The opportunity to learn</h3>\r\n\r\n<ul>\r\n	<li>We achieved an up to 25% increase in attendance at Save the Children-supported early learning centers.</li>\r\n	<li>We&rsquo;re educating 500 of Nepal&rsquo;s most marginalized children, with a focus on girls, who now serve as community role models.</li>\r\n	<li>Through our&nbsp;<a data-di-id=\"di-id-5258e650-a644596f\" data-s-object-id=\"Text|Literacy Boost|Literacy Boost\" href=\"https://www.savethechildren.org/us/what-we-do/education/literacy-boost\" title=\"Literacy Boost\">Literacy Boost</a>&nbsp;approach, we&rsquo;re increasing reading comprehension by 12%.</li>\r\n	<li>We&rsquo;re helping increase school hygiene by up to 67% and attendance by 25%.</li>\r\n	<li>We&rsquo;re helping achieve 100% enrollment in hundreds of schools across the country.</li>\r\n</ul>\r\n\r\n<h3>Protection from harm</h3>\r\n\r\n<ul>\r\n	<li>Since 2000, we helped achieve an over 30% reduction in child marriage, from 46% to 10%.</li>\r\n	<li>We&rsquo;ve so far helped secure the commitment of 30% of local authorities to declaring &ldquo;child marriage free zones&rdquo;.</li>\r\n	<li>Our advocacy efforts significantly contributed to Nepal&rsquo;s legal ban on all forms of child corporal punishment.</li>\r\n</ul>\r\n\r\n<h3>Emergency response</h3>\r\n\r\n<ul>\r\n	<li>We&#39;re still supporting post-earthquake recovery and reconstruction, including rebuilding houses, schools and health facilities.</li>\r\n	<li>We responded to several recent monsoons to help families cope with devastating landslides and flooding.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, NULL, '2022-06-17 17:18:37', '2022-07-12 19:18:26'),
(6, 'SEC Nepal for Change', NULL, 'sec-nepal-for-changeSEC Nepal for Change', '6', '0', 'uploads/IMG-37c69df171936da5cf3011de7db617b2-V.jpg', NULL, 'uploads/15.jpg', 'yes', '1', NULL, NULL, NULL, '11:45 AM', NULL, '11:45 AM', NULL, NULL, NULL, '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Having been established in the mid-2012 there have been a lot of campaigns that have been brought forward to....</span></span></p>', '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">As &ldquo;Save Environment Secure Children&rdquo; (SEC Nepal), is a non-profit organization driven by the motivation to mitigate environmental issues as well as improve the lives of children. Having been established in the mid-2012 there have been a lot of campaigns that have been brought forward to help our cause. One of the first few operations we did was a health checkup for pregnant women and children. Further, distribution of the relief materials to the victims of the devastating earthquake in Nepal. With this in mind, there have been plenty of more campaigns we did to help and support the ones who need it. While our primary focus was on the children, with huge help from the volunteers, we were also able to help a few homeless people bring up smiles in their faces. Having collaborated with the Backpackers in Nepal, Haatemalo and other be lovers teams, we were able to finish our programs to help the ones who were in need of the love and support.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">With the start of the New Year in 2013, with most trekking trails being polluted by plastic bags, bottles and other harmful things, we brought on a program to mitigate this. With the help of the volunteers and trekkers to make the trail have a clean environment as well as help the children with something as simple as getting them chocolates and pens to get them to smile and help them with their future endeavors. At the same time, most of the villages that were affected heavily by the earthquake which made children forced to leave their education became our beacon of attention. SEC Nepal was able to provide clothes and food for those victims.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">The other major campaign we organized was during the major outbreak of the covid. Having understood and experienced the negative impact COVID- 19 put on all of us, SEC Nepal decided to help the less fortunate ones by distributing the necessary foods as well as sanitary products. SEC Nepal successfully carried out this project and therefore was able to focus on more campaigns like this thereafter. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">The next project was the distribution of 200- 400 care packages which included basic items of survival food like rice, veggies, salad, fruits etc. in the vicinity of Old Buspark near the Bir Hospital. The main target for this project was the homeless people, street children, and caregivers who were supporting the victims of COVID-19 while risking their lives simultaneously. This was our hunger relief program, the program was mass supported by our volunteers and entities who donated to this cause which was successfully carried out in between 3 of May 2021 to 3 of July 2021 in every alternative days.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Multiple of such programs were conducted thereafter that included serving 200 plus care packages near People&acute;s Provident Fund Office, Thamel. Having the support of volunteers of SECwell-wishers wishers, supporters, and police administration, SEC Nepal was able to successfully conduct this project as well as the project of providing 300+ care packages and masks around the Kathmandu Durbar Square. Many more of these programs were successfully conducted around the Thamel, Sesmati Pul, and more.&nbsp;The program extended to the refugee settlements near Sobha Bhagwati and Thaiti.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Providing&nbsp; 27,654 proper disposable masks and 1200 pairs of surgical gloves, a one-time shipment, from Lights on Charity for distribution around Kathmandu valley and Gorkha were intended to be used for needy people facilitating mandatory use of mask implemented by Nepal Government and ultimately stopping the spread of COVID-19 in community-level was a major effort of cause to help people. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">The next campaign consisted of donating 1500 disposable masks to Sukraraj Tropical and Infectious Disease Hospital; Teku by understanding that this is one of the approachable hospitals to poor and underprivileged people and its significance in the pandemic time. More of these were conducted in our Free Mask Distribution Campaign like ensuring the completion of distributing 20000 disposable masks and surgical gloves in different regions of Gorkha and Kathmandu. This was made successful with to the help of Light on Charity. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Having continued our focus on hunger relief we were also able to distribute 300+ care packages near the banks of Bishnumati River with the help of volunteers and supporters. Followed by this our&nbsp;next program was &ldquo;Child growth monitoring and counseling program&rdquo; aimed to help children in schools by vaccinating them, providing them with the health checkups as well as counselling them.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Having such program become a huge success, we consistently created more of our suport ongoing. Such as&nbsp;Adolescents Sexual and Reproductive Health (ASRH) to support and create awareness among adolescents for a more secure lifestyle in Bidur 3- Nuwakot. SEC Nepal has also conducted &#39;Free Eye Camp&#39; in the same place with the help of the supporting partner Dristi Eye Care as well as the volunteers and support from Team Nepo Bhaktapur.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">As of now, we are focusing on the campaign which focuses on getting children vaccinated against COVID- 19 in nearby schools across the country, including the Kathmandu Valley. Our first phase includes providing the first dose from 23 rd to 9 th of June and the second dose being provided in 18 th to 24 th of July. The second phase focuses on providing for the remaining 50 Districts where the first dose will be provided in 21 st to 27 th of August and the second dose from 12 th to 17 th of September.</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">With such campaigns brought on by the SEC Nepal, we truly are grateful for nationwide support and for the volunteers who are able to help our cause in mitigating the problems faced by people in the hardest of times. While we do realize that our effort is minimal work, we do hope this inspires people to help other people and provide them with hope in the darkest of hours. This being said, we are positive that this brings along the change not only in the people who are facing such adversities but also among fortunate people to help those who are in need.</span></span></p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-27 16:44:16', '2022-07-13 10:34:48'),
(10, 'Hunger Relief Campaign', NULL, 'hunger-relief-campaign', '9', '0', 'uploads/14.jpg', NULL, 'uploads/17.jpg', 'yes', '4', NULL, NULL, NULL, '5:30 PM', NULL, '5:30 PM', NULL, NULL, NULL, '<p>One of SEC Nepal&rsquo;s major projects which started origin itself was the hunger relief campaign.........</p>', '<p>One of SEC Nepal&rsquo;s major projects which started origin itself was the hunger relief campaign. As the name suggests, the hunger relief campaign was brought forward by like-minded people to help those who were less fortunate. Providing the basic supplements of food being the main focus of this campaign, SEC Nepal went forward and had many successful projects that were conducted in the lifespan of this organization. With one of the biggest earthquakes recorded striking Nepal, there had been a lot of victims who needed this help. More of these were conducted during the midst of COVID-19 when people had barely any economy to survive on.<br />\r\n&nbsp; &nbsp;One of our first projects dated back in May of 2021 when SEC Nepal was successfully able to provide food and much-needed sanitary products in Nepal. This was met with warm responses and friendly glimpses of smiles during the tough times. With the help of many volunteers and people who donated, this project succeeded in providing the people with basic requirements of food. Warm food, biscuits, clean water, fruits, and vegetables were all provided in this project.<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/14.jpg\" style=\"width: 960px; height: 720px;\" /></p>\r\n\r\n<p>This was then followed by the distribution of care packages of over 200 near Bir Hospital and Balaju Bridge in front of the refugee settlement. This was made possible due to the volunteers and ones who supported our cause.&nbsp;<br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/15.jpg\" style=\"width: 699px; height: 523px;\" /></p>\r\n\r\n<p>COVID brought on a lot of challenges to us, not only as a country but as basic humans. From the people who weren&rsquo;t getting any jobs to the tourists who were forced to stay because of the spread, it was a time where faith and humanity would be tested. We were able to overcome this and follow up with the project to provide the care packages near People&rsquo;s provident Fund Office at Thamel where the target would be street children, tourists who were stuck and workers who weren&rsquo;t getting any job in these tough times. This too succeeded with the help of the hardworking police administration, volunteers and ones who were able to give what they could. This made sure that the hunger-relief campaign was moving smoothly.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/17.jpg\" style=\"width: 833px; height: 624px;\" /></p>\r\n\r\n<p>With the dire situation in hand, many people still had nothing to eat and were struggling very hard just to survive. These projects were definitely a challenge but looking back, it was very much worth it being able to look at the victims and seeing them smile, even if it was just for a while. SEC Nepal then was able to provide 300 care packages and masks in Thamel and around Kathmandu Durbar Square.&nbsp;<br />\r\n&nbsp; &nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/18.jpg\" style=\"width: 958px; height: 1280px;\" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>This wasn&rsquo;t the end of this project and SEC Nepal conducted many more in the upcoming days. Some of these were in Thamel and Sesmati Pul providing 300+ care packages. 250+ more care package of rice and lentils at Thamel area, 300+ care packages of mask and food at Bhatkeko pul to Sinamangal area where the refugee camp resided. More was provided as the rations of rice, lentils, biscuits, oil, sugar and fruits to the &ldquo;Parents Care Home&rdquo; for the elderly people in Dhungedhara. This was followed up by the distribution of 300+ packages near Sobha Bhagwati refugee settlements and Thaiti. More was in distributing 300+ of the packages in the banks of Bishnumati river.</p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/15.jpg\" style=\"width: 699px; height: 523px;\" /></p>\r\n\r\n<p>With the hardships of people in mind, we were able to succeed in this project of ours with the help of people who were kind enough to help during these tough times. This brought hope to the people who were at the rock bottom of their lives and ensured that at least a few of them were able to receive what they needed the most. Food to eat, water to drink and people who cared about them. None of these would have been successful without our hardworking team and people who helped us make this successful including the ones who donated as well as volunteered to bring smiles up their faces. SEC Nepal really was able to get up close to the people and made their lives even a little better. With gratitude in our mind, we look forward to creating more of these campaigns to help those who aren&rsquo;t able to help themselves. Thank you everyone for being there as a support and helping those who need it.&nbsp;<br />\r\n&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-12 16:55:15', '2022-07-27 16:26:22'),
(7, 'Our Projects', NULL, 'our-projects', '10', '0', 'uploads/1222.jpg', NULL, 'uploads/IMG-2e54d9b1011dbf98d7f4efac62eb180c-V.jpg', 'yes', '2', NULL, NULL, NULL, '11:45 AM', NULL, '11:45 AM', NULL, NULL, NULL, '<p>Being in a third-world country, lots of residents of Nepal have been victims suffering from .....</p>', '<p>Being in a third-world country, lots of residents of Nepal have been victims suffering from harsh conditions such as famine, failing health, homelessness, and much more. We in SEC (Save Environment Secure Children) have been providing for the needy people residing in Nepal. Having operated our social services since June of 2016, we have provided for the needy people of Nepal through different campaigns.<br />\r\n<strong>1)&nbsp;&nbsp; &nbsp;Free Eye Project</strong><br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/123.jpg\" style=\"width: 894px; height: 671px;\" /><br />\r\nUnfortunately, due to being poverty-stricken, many people could not afford to go to hospitals for eye checkups. Due to this the eyesight of elderly people specifically has been affected heavily. With this in mind, SEC has conducted a free eye camp in Bidur Nuwakot in hopes to help provide relief and better eye care to the elderly.&nbsp;<br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/1222.jpg\" style=\"width: 720px; height: 540px;\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n<strong>2)&nbsp;&nbsp; &nbsp;Covid-19 vaccination for children</strong><br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/22-1.jpg\" style=\"width: 1440px; height: 960px;\" /><br />\r\nThe Covid-19 pandemic has created the necessity of being vaccinated for the continuation of daily life. Even to continue common daily activities like going to school, you must be vaccinated. SEC has also been providing on this end. From 23 June to 29 June, children under the age of 5 to 12 are getting the Pfizer Vaccine vaccinated against COVID-19 in vaccination centers in nearby schools in 27 districts across the country, including the Kathmandu Valley. Under the first phase, the first dose is being given in 27 districts from 23 to 29 June and the second dose is being given from 18 to 24 July.</p>\r\n\r\n<p>Province 1: Jhapa, Ilam, Morang, Sunsari<br />\r\nMadhesh Pradesh: Saptari, Dhanusha, Parsa, Siraha, Mahottari<br />\r\nBagmati Pradesh: Kathmandu, Lalitpur, Bhaktapur, Kavre, Chitwan, Sindhuli, Makwanpur<br />\r\nGandaki Pradesh: Kaski, east of Nawalparasi<br />\r\nLumbini Province: Nawalparasi West, Rupandehi, Banke, Dang, Bardia<br />\r\nKarnali Pradesh: Surkhet<br />\r\nFar Western Province: Kailali, Kanchanpur, Dadeldhura<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/3.jpg\" style=\"width: 1080px; height: 721px;\" /></p>\r\n\r\n<p><strong>3)&nbsp;&nbsp; &nbsp;General Health Awareness</strong><br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/4.jpg\" style=\"width: 1200px; height: 900px;\" /><br />\r\nIn schools we are told ways to take care of ourselves through exercise, sanitizing equipment, and eating clean healthy foods. However, due to Nepal being affected by poverty, not everyone has the opportunity to gain this knowledge. So, SEC has also been providing knowledge on Yoga, an exercise that has been known to help fight diseases and help our body function properly.&nbsp;We have also been running campaigns to provide information on how to prevent, detect and manage foodborne risks and improve human health.<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/5.jpg\" style=\"width: 779px; height: 745px;\" /></p>\r\n\r\n<p><br />\r\n<strong>4)&nbsp;&nbsp; &nbsp;Sex Education project&nbsp;</strong><br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/IMG-dbf014907cb2bb7c7d660e64f32a439e-V.jpg\" style=\"width: 1800px; height: 1350px;\" /><br />\r\nAs we all know how sex education and its proper awareness is very important in everyone&rsquo;s life but Due to a lack of proper education, a lot of Nepalese youths are not well educated in Sex Education and Health. There is where SEC comes in as SEC brings forth many campaigns and provides this very necessary information to the youths so that they might have a safe and healthy life</p>\r\n\r\n<p><strong>5)&nbsp;&nbsp; &nbsp;Hunger relief campaigns</strong><br />\r\nAs mentioned previously, our country is affected heavily by famine and to help provide relief to our elderly people SEC has conducted numerous hunger relief campaigns Providing rations including rice, lentils, tea powder, sugar, biscuits, oil, and fruits to Parents Care Home&acute;-Elderly people home in Dhungedhara, serving 250 plus care packages and packed takeaway of beaten rice.<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/20.jpg\" style=\"width: 1280px; height: 958px;\" /></p>\r\n\r\n<p><br />\r\n<strong>6)&nbsp;&nbsp; &nbsp;Care packages and providing basic needs.</strong><br />\r\n&nbsp;&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/14.jpg\" style=\"width: 960px; height: 720px;\" /></p>\r\n\r\n<p>SEC Nepal has been working vigorously ever since its establishment to help provide relief to the people of Nepal in many ways. we have successfully distributed over 300 care packages in Thamel and Sesmati Pul, distributed 300 plus care packages and masks at Bhatkeko Pul-Sinamangal Refugee Camp, and successfully distributed 300 plus care packages near Sobha Bhagwati refugee settlements and Thaiti.</p>\r\n\r\n<p>With the need of having masks and gloves to protect ourselves from the Covid-19 pandemic, we teamed up with Lights on Charity and received 27,654 proper disposable masks and 1200 pairs of surgical gloves, a one-time shipment, for distribution around Kathmandu valley and Gorkha. We distributed it to needy people facilitating mandatory mask use implemented by the Nepal Government and ultimately stopping the spread of Covid-19 at the community level.<br />\r\nAs mentioned in the beginning, our country Nepal, unfortunately, is a third-world country and is far from ideal. A lot of people are suffering every day so as Nepalis, we must play our part, and help provide for our fellow Nepalese.<br />\r\n&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 13:43:06', '2022-07-13 10:36:38'),
(8, '7 simple things to do to save environment!', NULL, '7-simple-things-to-do-to-save-environment-', '11', '0', 'uploads/IMG-b397b6d32b4f871b0164c187ac52d938-V.jpg', NULL, 'uploads/2022-07-06', 'yes', '3', NULL, NULL, NULL, '5:30 PM', NULL, '5:30 PM', NULL, NULL, NULL, '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">As we know much more about the environment, climate change....</span></span></p>', '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">As we know much more about the environment, climate change, global warming, and its cause consequences etc, though, time and again we have to make ourselves realize that an environment is everything that surrounds us, which includes both living (biotic) and nonliving (abiotic) organisms. Living things live in the environment and they constantly interact&nbsp;with the changes and adopt the changes of the environment. There are different things that comprise our environment. Land, air, water, plant, soil,&nbsp;animals, plants, etc. comprise our environment. We human beings so-called the superior with great abilities has been enabled the development of different technologies&nbsp;which made our day-to-day life super easier. But in the rush of development, we started to degrade the&nbsp;environment knowingly or unknowingly. &nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Awareness and implementation should be started to save the environment. In coming to this era we have developed various technologies and methods to protect the environment. Likewise, 3R method minimizes waste and few steps to save the environment.</span></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><em><strong>7 simple things to save the environment&nbsp;</strong></em><br />\r\n<strong>1. Stop deforestation for urbanization.</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img alt=\"https://secnepal.org/uploads/pexels-lukas-296333.jpg\" src=\"https://secnepal.org/uploads/pexels-lukas-296333.jpg\" style=\"width:640px; height:424px\" /><br />\r\nCommon! Stop destroying the forest for urbanization. Do you the fact and calculation the in 2014, the level of urbanization&nbsp;was 18.2 percent, with an urban population of 5,130,000, and a rate of urbanization of 3 percent (UN DESA, 2014). For the period 2014-2050, Nepal will remain amongst the top ten fastest&nbsp;urbanizing countries in the world with a projected annual urbanization rate of 1.9 per cent&nbsp;(ibid). We are facing a lot of challenges due to urbanization like pollution, over populated city&nbsp;areas, poor municipal systems, urban disaster risks etc.</span></span></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">2. Start planting tree to save environment.</span></span></strong></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img alt=\"https://secnepal.org/uploads/pexels-alena-koval-886521.jpg\" src=\"https://secnepal.org/uploads/pexels-alena-koval-886521.jpg\" style=\"width:639px; height:411px\" /><br />\r\nWe know the importance of afforestation. The major step is to start planting&nbsp;trees so that we can control global warming. Tree reduces the amount of storm water runoff,&nbsp;which reduces erosion and pollution in our waterways and may reduce the effect of flooding. By planting trees and protecting forest we can save many wildlife species which depends on&nbsp;trees for habitats.</span></span></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">3. 3R method. (Reduce, Reuse, Recycle)</span></span></strong></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img alt=\"https://secnepal.org/uploads/145.jpg\" src=\"https://secnepal.org/uploads/145.jpg\" style=\"width:1200px; height:800px\" /><br />\r\nWe should start using 3R methods so that we can cut down the amount of waste we throw.&nbsp;Everyone should be aware about reduce, reuse and recycle things. It will help to conserve&nbsp;natural resources, landfill space and energy. The 3R methods helps to save land and money that&nbsp;committees must use to dispose of waste in landfills.</span></span></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">4. Be a civil citizen and don&rsquo;t throw the garbage in land and don&rsquo;t mix the drainage in&nbsp;river.</span></span></strong></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img alt=\"https://secnepal.org/uploads/pexels-cottonbro-6591427.jpg\" src=\"https://secnepal.org/uploads/pexels-cottonbro-6591427.jpg\" style=\"width:640px; height:427px\" /></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Unmanaged dumbing sites and mixing the drainage&nbsp;pipe in the sources of rivers are the major cause of a polluted environment. We should know that keeping our houses&nbsp;clean does not make us healthy unless we keep our environment clean too. Currently we are facing a huge problem managing the waste. Roads were&nbsp;filled with piles of garbage&rsquo;s. Kathmandu Metropolitan is working on managing the&nbsp;waste. According to, &ldquo;Health Ministry data from the last fiscal year show that for every&nbsp;1,000 children under five years of age, 349 suffered from diarrheal diseases.&rdquo; And now it&rsquo;s time to stop the suffering, let&rsquo;s feel the responsibility, let&rsquo;s work together to save our environment.</span></span></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">5. Control pollution (like air pollution, land pollution, water pollution etc.)</span></span></strong></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img alt=\"https://secnepal.org/uploads/pexels-pixabay-247763.jpg\" src=\"https://secnepal.org/uploads/pexels-pixabay-247763.jpg\" style=\"width:640px; height:427px\" /><br />\r\nNepal is one of the most polluted country in the world. According to smartairfilters Nepal&nbsp;ranked in top 10 most air polluted countries in the world with (46.0 &mu;g/m3). Nepal has been&nbsp;once again ranked as one of the most polluted countries in the world. The state of global air&nbsp;report 2020 places Nepal among the top 10 countries with the highest outdoor PM2.5 levels in&nbsp;2019. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">An effort should make to control pollutions like air pollution, water pollution and land&nbsp;pollution. People should be aware about the harm of pollution so that they can work together&nbsp;to solve it. We can do many things to keep our environment. Different cleanness campaigns to clean different&nbsp;rivers should be run. </span></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">6. <strong>Government should focus to develop remote and rural areas</strong> so that it helps to&nbsp;distribute the population in over all areas of Nepal. Government should actively work to develop the whole nation. They should not just&nbsp;focus on a single place or city. In today&rsquo;s context, the major city&nbsp;areas are in developing conditions and the most of the people move to city&nbsp;areas which creates a lot of problems like overpopulated city areas, pollution,&nbsp;urbanization etc.&nbsp;So government should plan properly to develop every place equally so there will be&nbsp;equal distribution of population everywhere.</span></span></p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">7. Save water and electricity.</span></span></strong></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img alt=\"https://secnepal.org/uploads/pexels-artem-podrez-7048012.jpg\" src=\"https://secnepal.org/uploads/pexels-artem-podrez-7048012.jpg\" style=\"width:640px; height:360px\" /><br />\r\nElectricity and water are amongst the foremost essentials and necessary natural resources or&nbsp;derived from natural resources obtainable on earth for use without which life on earth would&nbsp;become impossible. We should be aware about saving energy. We should be aware that we&nbsp;should save water and electricity. Conserving both leads the conservation of resources that we&nbsp;are rapidly running out of and that are non-renewable. Both water and electricity are essential&nbsp;to our lives. Without water, there will be no life. Without electricity, most of our daily&nbsp;necessities and needs will be unattainable. </span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">So, let&rsquo;s save the energy for future.&nbsp;Hence, this are the 7 simple things to make our environment better. There is a saying in Nepali&nbsp;&ldquo;<span style=\"font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;\">एकलेथुकी</span> <span style=\"font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;\">सुकी</span>, <span style=\"font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;\">सयलेथुकी</span> <span style=\"font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;\">नदी</span> (Ek le thuki suki, saya le thuki nadi)&rdquo; Literally: One spit dries but hundreds can make a river. Meaning: Unity is Strength. Small changes from everyone make huge differences. So if everyone is aware then we can&nbsp;work together to stop the environmental pollution and make Nepal a better country.</span></span></p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">Source:worldpopulationreview, ifc.org,&nbsp;oceanservice</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-07-05 14:18:31', '2022-07-20 16:21:11'),
(9, 'Climate change', NULL, 'climate-change-', '6', '0', 'uploads/pexels-min-an-724100.jpg', NULL, 'uploads/pexels-felix-mittermeier-957024.jpg', 'No', '9', NULL, NULL, NULL, '4:30 PM', NULL, '4:30 PM', NULL, NULL, NULL, '<p>When we converse about climate change what is the first thing that comes to your mind? Well, if you ask me, I&rsquo;d say global warming which is not a good sign at all.&nbsp;</p>', '<p>When we converse about climate change what is the first thing that comes to your mind? Well, if you ask me, I&rsquo;d say global warming which is not a good sign at all. Global warming and its effects on regional weather patterns are both parts of the current climate change. Although there have previously been times of climate change, the current changes are significantly more pronounced and not caused by natural factors. Instead, greenhouse gas emissions, particularly those of carbon dioxide (CO2) and methane, are to blame. Most of these emissions are produced by the burning of fossil fuels for energy. Additional factors include deforestation, some industrial operations, and certain agricultural practices. The earth&#39;s surface may be warmed by greenhouse gases, which can transfer sunlight. The gas absorbs the heat that the Earth releases as infrared radiation and holds it close to the planet&#39;s surface. Changes brought on by the planet&#39;s warming, including the disappearance of snow that reflects sunlight and increases global warming.</p>\r\n\r\n<p>Climate change has made the desert larger, with frequent heat waves and wildfires. Permafrost thawing, glacier retreat, and sea ice loss are all the effects of increased Arctic warming. Storms, droughts, and other extreme weather events are also caused by rising temperatures. Rapid environmental changes in the Arctic Circle, coral reefs, and mountainous areas have driven many species out and extinct. People are vulnerable to food and water shortages, increased floods, excessive heat, increased illness, and economic loss from climate change. Conflicts and migrations can occur. The World Health Organization (WHO) considers climate change to be the greatest threat to global health in the 21st century. Some results will last for thousands of years, even effective attempts to reduce future warming.</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/44444444444444444444.png\" style=\"width: 400px; height: 345px;\" /><br />\r\nClimate change in Nepal<br />\r\nClimate change makes current issues like droughts, forest fires, and floods worse. Modifications to the monsoon cycle would considerably increase Nepal&#39;s already intolerable levels of domestic poverty and inequality. Although many Nepalese cope with the current burden on their own, states must develop and put into place efficient policies for adjusting to the consequences of climate change to further social and economic development. A must. Governments, business players, and civic movements must collaborate creatively to adapt to both long-term and short-term climate-related concerns. Nowhere is it more difficult to deal with the various effects of climate change than in the Hindu Kush Himalayas. Due to the scant amount of scientific research undertaken in the region, including Nepal, the IPCC Fourth Assessment Report from 2007 refers to the area as a &quot;blank space.&quot; The geological, climatic, and sociological changes in Nepal are covered in this essay.&nbsp;<br />\r\nsummarizes the outcomes of current modeling-based climate change scenarios. The area&#39;s temperatures may increase, but future rains will be more erratic and unpredictable. The argument made in this study is that increasing uncertainty does not exclude the existence of vulnerabilities or indicators. We&#39;ll talk about two different calamities after that. two onset times. Rapid catastrophes include floods and landslides, whereas slow disasters include droughts, wildfires, snowmelt, and regional sediments. It emphasizes the dangers that climate change brings to both species as well as their influence on how adaptation decisions are made. The results imply that many institutions are needed to address the consequences of climate change and that strategies must look for incremental improvements at the local, regional, and national levels<br />\r\nHigh-level details on the seasonal cycle of average temperature and precipitation in Nepal from 1991 to 2020, as well as the most recent climatology. The K&ouml;ppen-Geiger climatic classification system is used to determine climate zones. Based on seasonal patterns of temperature and precipitation, the method divides climates into five broad climatic categories. A (tropical), B (dry), C (temperate), D (continent), and E are the five main groupings (pole). A seasonal precipitation subgroup is allocated to each climate zone, except the E group (second letter). Hovering the mouse over the legend reveals the climatic classification. A summary of the Nepalese backdrop and climate narrative is provided after the graphic. obligation to take the initiative. 68 percent.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://secnepal.org/uploads/01.png\" style=\"width: 735px; height: 753px;\" /><br />\r\nClimate change as to United Nations (UN)<br />\r\nLong-term changes in temperature and weather patterns are referred to as climate change. These changes may be caused naturally, for instance by variations in the solar cycle. However, human activity has been a significant contributor to climate change since the 19th century, largely as a result of the combustion of fossil fuels like coal, oil, and gas. Fossil fuel combustion produces greenhouse gases that cover the globe like a blanket, trapping solar heat and increasing its temperature.<br />\r\nCarbon dioxide and methane are two examples of greenhouse gas emissions that contribute to climate change. These take place, for instance, while utilizing coal to heat a building or gasoline to power an automobile. Carbon dioxide can also be released during forest and land logging. And emissions are still rising. The result is that the Earth is currently 1.1 &deg;C warmer than it was at the close of the 19th century. The most recent ten years (2011&ndash;2020) were the hottest on record. Many people think that warming temperatures are the main effect of climate change. But the tale doesn&#39;t begin with the temperature increase. Changes in one region might have an impact on changes in all other places since the Earth is a system in which everything is interrelated.<br />\r\n&nbsp;<img alt=\"\" src=\"https://secnepal.org/uploads/555555555555555555.png\" style=\"width: 395px; height: 394px;\" /><br />\r\nSevere droughts, water shortages, destructive fires, rising sea levels, flooding, melting polar ice, catastrophic storms, and decreased biodiversity are just a few of the repercussions of climate change we are already seeing. According to several UN assessments, by keeping the increase in global temperature below 1.5 &deg;C, hundreds of scientists and government auditors have prevented the worst climatic consequences and preserved a habitable environment. I consented to assist you. The present National Climate Plan, however, predicts that by the end of this century, global warming will have increased by around 3.2 &deg;C. All across the world, emissions that cause climate change are produced, although some nations emit far more than others. Three percent of global emissions are produced by the 100 nations with the lowest emissions. 68 percent of the emissions come from the top 10 nations.<br />\r\n<img alt=\"\" src=\"https://secnepal.org/uploads/03.png\" style=\"width: 397px; height: 400px;\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Conclusion<br />\r\nWe can lower the emissions that contribute to climate change by switching energy systems from fossil fuels to renewable energies like solar and wind. But we must begin right away. In order to keep global warming below 1.5 &deg;C, nearly half of emission reductions will be put into place by 2030, according to a coalition of developing countries that have pledged net zero emissions by 2050. I must do it. Between 2020 and 2030, fossil fuel production should decline by around 6% yearly. &nbsp;Protecting people, homes, companies, livelihoods, infrastructure, and natural ecosystems means adapting to the effects of climate change. Both present and potential future effects are covered. Everywhere will need to adapt, but the most vulnerable populations must receive priority now in order to be prepared for climate threats.<br />\r\n&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', '1', '1', '2022-07-05 14:46:27', '2022-07-12 19:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `program_comments`
--

CREATE TABLE `program_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_for` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'SUPERADMIN', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(2, 'Developer', 'DEVELOPER', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(3, 'Editor', 'EDITOR', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32'),
(4, 'Viewer', 'VIEWER', 'active', NULL, NULL, '2022-06-14 07:00:32', '2022-06-14 07:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_services` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `thumb_image`, `banner_image`, `featured_image`, `is_featured`, `gallery_id`, `related_services`, `short_description`, `description`, `order_by`, `icon_class`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Volunteers', 'volunteers', 'uploads/home_slider.avif', NULL, NULL, 'Yes', NULL, NULL, '<p>You may not have enough to donate, we know you have a Heart.</p>', NULL, '2', 'icon-peace-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-17 07:21:13', '2022-07-11 09:22:22'),
(2, 'Donations', 'donations', NULL, NULL, NULL, 'Yes', NULL, NULL, '<p>Donating is not just about giving: It is about making a difference.</p>', NULL, '1', 'icon-heart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-17 08:32:40', '2022-07-05 13:14:44'),
(3, 'Prayers', 'prayers', NULL, NULL, NULL, 'Yes', NULL, NULL, '<p>Have faith! Everyone is capable of great things.</p>', NULL, '3', 'icon-praying', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-17 08:33:45', '2022-07-05 13:18:31'),
(4, 'Support', 'support', NULL, NULL, NULL, 'Yes', NULL, NULL, '<p>Alone we can support so much: Together we can support much more.</p>', NULL, '4', 'icon-peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, '1', '2022-06-17 08:34:27', '2022-07-05 13:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `site_menus`
--

CREATE TABLE `site_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_menus`
--

INSERT INTO `site_menus` (`id`, `link_type`, `parent`, `location`, `category`, `sub_category`, `topic`, `title`, `external_url`, `file`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'external_url', '0', 'header', NULL, NULL, NULL, 'Home', '/', NULL, 'active', NULL, NULL, '2022-06-18 15:43:24', '2022-06-18 15:43:24'),
(2, 'none', '0', 'header', NULL, NULL, NULL, 'About', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:53:06', '2022-06-18 15:53:06'),
(3, 'internal_link', '2', 'header', NULL, NULL, '1', 'Introduction', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:53:21', '2022-06-20 06:45:50'),
(4, 'internal_link', '2', 'header', NULL, NULL, '13', 'Team Members', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:53:47', '2022-06-20 06:48:26'),
(5, 'internal_link', '2', 'header', NULL, NULL, '2', 'Become A Volunteer', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:54:41', '2022-06-20 06:48:40'),
(6, 'internal_link', '0', 'header', NULL, NULL, '9', 'Service', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:56:31', '2022-06-20 06:49:44'),
(7, 'internal_link', '0', 'header', NULL, NULL, '5', 'Programs', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:56:49', '2022-07-05 12:07:27'),
(8, 'internal_link', '0', 'header', NULL, NULL, '8', 'Events', NULL, NULL, 'inactive', NULL, '1', '2022-06-18 15:57:47', '2022-07-05 11:59:31'),
(9, 'internal_link', '0', 'header', NULL, NULL, '6', 'Article', NULL, NULL, 'active', NULL, '1', '2022-06-18 15:57:56', '2022-07-12 19:21:07'),
(10, 'internal_link', '0', 'header', NULL, NULL, '7', 'Gallery', NULL, NULL, 'active', NULL, NULL, '2022-06-18 15:59:05', '2022-06-20 06:51:44'),
(11, 'internal_link', '0', 'header', NULL, NULL, '14', 'Thematic', NULL, NULL, 'active', NULL, '1', '2022-06-18 15:59:14', '2022-07-27 15:57:47'),
(12, 'none', '0', 'footer', NULL, NULL, NULL, 'Quick Links', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:01:03', '2022-06-18 16:01:03'),
(13, 'external_url', '12', 'footer', NULL, NULL, NULL, 'Home', '/', NULL, 'active', NULL, '1', '2022-06-18 16:01:28', '2022-07-27 15:55:54'),
(14, 'internal_link', '12', 'footer', NULL, NULL, '9', 'Services', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:01:51', '2022-06-20 06:53:21'),
(15, 'internal_link', '12', 'footer', NULL, NULL, '6', 'News & Article', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:03:30', '2022-06-20 06:53:40'),
(16, 'internal_link', '12', 'footer', NULL, NULL, '11', 'Newsletters', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:04:10', '2022-06-20 06:53:56'),
(17, 'none', '0', 'footer', NULL, NULL, NULL, 'Help Us', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:05:19', '2022-06-18 16:05:19'),
(18, 'internal_link', '17', 'footer', NULL, NULL, '4', 'Contact Us', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:06:03', '2022-06-20 06:54:19'),
(19, 'internal_link', '17', 'footer', NULL, NULL, '2', 'Become A Volunteer', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:06:32', '2022-06-20 06:54:35'),
(20, 'internal_link', '17', 'footer', NULL, NULL, '3', 'Donate For A Cause', NULL, NULL, 'active', NULL, NULL, '2022-06-18 16:07:03', '2022-06-20 06:54:54'),
(21, 'internal_link', '2', 'header', NULL, NULL, '10', 'FAQs', NULL, NULL, 'active', NULL, NULL, '2022-06-20 06:48:59', '2022-06-20 06:48:59'),
(22, 'internal_link', '0', 'header', NULL, NULL, '4', 'Contact Us', NULL, NULL, 'active', '1', '1', '2022-07-12 14:31:54', '2022-07-27 15:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pri_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pri_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pri_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sec_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sec_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sec_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offline_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ig_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pintrest_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_page_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `android` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ios` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loader` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_map_html` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `title`, `email`, `pri_phone`, `pri_email`, `pri_address`, `sec_phone`, `sec_email`, `sec_address`, `email_verification`, `primary_logo`, `secondary_logo`, `url`, `offline_msg`, `fb_link`, `youtube_link`, `twitter_link`, `ig_link`, `linkedin_link`, `viber`, `pintrest_link`, `skype_link`, `facebook_page_id`, `android`, `ios`, `loader`, `google_map_html`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'SEC Nepal', 'info@secnepal.org', '9851202324/9869195365', 'info@secnepal.org', '<p>Kathamandu, Nepal</p>', NULL, NULL, NULL, NULL, 'uploads/secnepal_logo.jpg', 'uploads/secnepal_logo.jpg', 'http://secnepal.org/', NULL, 'https://www.facebook.com/secnepalorg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/defaults/ripple.svg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113032.64621395394!2d85.25609251320085!3d27.708942727046708!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu%2044600!5e0!3m2!1sen!2snp!4v1655440097545!5m2!1sen!2snp\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Save Environment | Secure Children | Hunger Relief Program | SEC Nepal', 'We aim to Save Children and the Environment. Having operated our social services since 2012 as a nonprofit organization, SEC Nepal is driven by the motivation to mitigate environmental issues as well as improving the lives of children.', NULL, NULL, 'uploads/17.jpg', NULL, NULL, 'uploads/17.jpg', 'online', NULL, '1', '2022-06-14 02:22:58', '2022-07-21 09:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `hostname`, `port`, `auth`, `encryption`, `username`, `password`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'mail.secnepal.org', '465', 'yes', 'ssl', 'smtpemail@secnepal.org', 'secnepal@2022', 1, '2022-06-19 08:26:59', '2022-07-12 15:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `slug`, `category_type`, `tag_line`, `description`, `short_description`, `thumb_image`, `featured_image`, `banner_image`, `category`, `order_by`, `meta_key`, `meta_description`, `fb_title`, `fb_description`, `fb_image`, `twitter_title`, `twitter_description`, `twitter_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Child Education', 'child-education', 'program', NULL, NULL, NULL, NULL, NULL, NULL, '6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '1', '1', '2022-06-21 01:37:45', '2022-06-21 01:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `supporters`
--

CREATE TABLE `supporters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supporters`
--

INSERT INTO `supporters` (`id`, `title`, `description`, `website`, `logo`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Supporter 1', NULL, NULL, 'uploads/suppoters/brand-1-1.png', '1', 'inactive', '1', NULL, '2022-06-18 12:21:20', '2022-06-18 12:21:20'),
(2, 'Supporter 2', NULL, NULL, 'uploads/suppoters/brand-1-2.png', '2', 'inactive', '1', NULL, '2022-06-18 12:21:46', '2022-06-18 12:21:46'),
(3, 'Supporter 3', NULL, NULL, 'uploads/suppoters/brand-1-3.png', '3', 'inactive', '1', NULL, '2022-06-18 12:22:07', '2022-06-18 12:22:07'),
(4, 'Supporter 4', NULL, NULL, 'uploads/suppoters/brand-1-4.png', '4', 'inactive', '1', NULL, '2022-06-18 12:22:29', '2022-06-18 12:22:29'),
(5, 'Supporter 5', NULL, NULL, 'uploads/suppoters/brand-1-5.png', '5', 'inactive', '1', NULL, '2022-06-18 12:22:45', '2022-06-18 12:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tagged`
--

CREATE TABLE `tagging_tagged` (
  `id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tags`
--

CREATE TABLE `tagging_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tag_group_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag_groups`
--

CREATE TABLE `tagging_tag_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `position`, `is_featured`, `member_image`, `message`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Batawaran Aryal', 'Project Coordinator', 'yes', 'uploads/79801698642075.5ee0d547c834a.jpg', '<p>We do not have to have support huge at once, step by step is the greatest step.&nbsp;</p>', '2', 'active', NULL, NULL, '2022-06-19 07:18:15', '2022-07-06 12:14:55'),
(2, 'Suman Aryal', 'President', 'no', 'uploads/015d9398642075.5ee0d547c9153.jpg', '<p>Let&#39;s do our best to bring out the best in you</p>', '1', 'active', NULL, NULL, '2022-06-19 07:19:12', '2022-07-06 12:12:38'),
(3, 'Ashish Aryal', 'Vice President', 'yes', 'uploads/59980798642075.5ee0d547cbfcb.jpg', '<p>Never too late or early to help and support&nbsp;</p>', '3', 'active', NULL, NULL, '2022-06-19 07:19:59', '2022-07-10 15:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `image`, `message`, `name`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, NULL, NULL, 'Never stop doing small acts of kindness for people because sometimes tiny gestures take up the most space in their hearts. Proud of you SEC Nepal', 'Ram Karki', '2022-06-18 12:43:25', '2022-07-26 21:04:17', 'active', NULL, NULL),
(2, NULL, NULL, 'Really happy to see organizations like you supporting and helping needy children. Keep going, Keep Supporting!', 'Sharmila Maharjan', '2022-07-05 15:27:08', '2022-07-05 15:27:08', 'active', NULL, NULL),
(3, NULL, NULL, 'Our environment needs support like you. Keep standing still and keep promoting awareness. Good Job', 'Manmohan Sharma', '2022-07-05 15:28:57', '2022-07-05 15:28:57', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `phone`, `password`, `role_id`, `remember_token`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin', 'superadmin@gmail.com', '2022-06-14 07:00:32', 9841234567, '$2y$10$B51Y3KeGzPvKkHbKampScOsXjOo1xR/c55irAj8Y5iaeLpnWjHqtO', 1, NULL, 'active', NULL, '1', '2022-06-14 07:00:32', '2022-07-24 11:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `accepted_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `fullName`, `number`, `email`, `address`, `dob`, `occupation`, `image`, `attachment`, `message`, `accepted`, `accepted_at`, `accepted_by`, `order_by`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Nischal Tuladhar', '9841000123', 'nischaltuladhar@mail.com', 'Thamel Bazar', NULL, 'Full Stack Developer', 'uploads/team_member/member1.jpg', NULL, NULL, 'No', '2022-07-11 14:14:58', '1', 1, '2022-06-19 07:56:26', '2022-07-11 13:15:07', 'deleted', NULL, NULL),
(2, 'Rajendra Mudbari', '9841000123', 'rajendra.mudbari@mail.com', 'Bidur, Nuwakot, Nepal', NULL, 'MD - Mudbari Construction', 'uploads/team_member/member3.jpg', NULL, NULL, 'No', '2022-07-11 14:14:56', '1', 2, '2022-06-19 08:03:48', '2022-07-11 13:15:11', 'deleted', NULL, NULL),
(3, 'Sita Khanal', '9841000123', 'sita.khanal@mail.com', 'Koteshwor Mahadevsthan, Kathmandu, Nepal', NULL, 'General Manager', 'uploads/team_member/member2.jpg', NULL, NULL, 'No', '2022-07-11 14:14:55', '1', 3, '2022-06-19 08:05:03', '2022-07-11 13:15:14', 'deleted', NULL, NULL),
(4, 'Ram Panta', '9841000123', 'ram.panta@mail.com', 'Dhapadi, Basundhara', NULL, 'Actor', 'uploads/team_member/member4.jpg', NULL, NULL, 'No', '2022-07-11 14:14:53', '1', 4, '2022-06-19 08:08:49', '2022-07-11 13:15:29', 'deleted', NULL, NULL),
(5, 'Surendra Dhital', '9810221123', 'dhital@mail.com', 'Dhital Palace', NULL, 'Boss', 'uploads/team_member/member4.jpg', NULL, 'Dhital Surendra Dhital', 'No', '2022-07-04 21:49:46', '1', 5, '2022-06-24 18:39:47', '2022-07-11 13:15:32', 'deleted', NULL, '1'),
(6, 'Bella Hadid', '9851315445', 'elvishthapa@gmail.com', 'Lazimpat', NULL, 'Student', NULL, NULL, 'Hi Interested for volunteer', 'no', NULL, NULL, NULL, '2022-07-10 16:05:10', '2022-07-11 13:15:35', 'deleted', NULL, NULL),
(7, 'Bella Hadid', '9851315445', 'benuja.magar@gmail.com', 'Lazimpat', NULL, 'Student', 'uploads/Project-Drawing-1915483751501153546.png', NULL, 'ddddddddddddddddddddddddddddddddddddd', 'no', NULL, NULL, NULL, '2022-07-27 15:10:03', '2022-07-27 15:27:33', 'active', NULL, '1'),
(8, 'Sharmila Karki', '9851315445', 'foodtree021@gmail.com', 'Lazimpat', NULL, 'Student', 'uploads/images.jpg', NULL, '44444444444444444444444444444', 'no', NULL, NULL, NULL, '2022-07-27 15:15:58', '2022-07-27 15:27:01', 'active', NULL, '1'),
(9, 'Ronan Malla', '9851315445', 'benuja.magar@gmail.com', 'Lazimpat', NULL, 'Student', 'uploads/istockphoto-1166473029-170667a.jpg', NULL, NULL, 'no', '2022-07-27 16:28:50', '1', 9, '2022-07-27 15:28:32', '2022-07-27 15:33:10', 'active', '1', '1'),
(10, 'Yubraj Thakuri', '9851315445', 'foodtree021@gmail.com', 'Lazimpat', NULL, 'Student', 'uploads/images (1)-1.jpg', NULL, NULL, 'no', '2022-07-27 16:33:46', '1', 10, '2022-07-27 15:33:44', '2022-07-27 15:37:19', 'active', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_comments_blog_id_index` (`blog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_types`
--
ALTER TABLE `category_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter_information`
--
ALTER TABLE `counter_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donners`
--
ALTER TABLE `donners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_album_id_index` (`album_id`);

--
-- Indexes for table `home_settings`
--
ALTER TABLE `home_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_links`
--
ALTER TABLE `internal_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `introduction_settings`
--
ALTER TABLE `introduction_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_permission`
--
ALTER TABLE `menu_permission`
  ADD KEY `menu_permission_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_permission_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `menu_permission_role`
--
ALTER TABLE `menu_permission_role`
  ADD KEY `menu_permission_role_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `menu_permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_comments`
--
ALTER TABLE `program_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_comments_program_id_index` (`program_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_menus`
--
ALTER TABLE `site_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supporters`
--
ALTER TABLE `supporters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  ADD KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  ADD KEY `tagging_tagged_tag_slug_index` (`tag_slug`);

--
-- Indexes for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tags_slug_index` (`slug`),
  ADD KEY `tagging_tags_tag_group_id_foreign` (`tag_group_id`);

--
-- Indexes for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tag_groups_slug_index` (`slug`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_types`
--
ALTER TABLE `category_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counter_information`
--
ALTER TABLE `counter_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donners`
--
ALTER TABLE `donners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `home_settings`
--
ALTER TABLE `home_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `internal_links`
--
ALTER TABLE `internal_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `introduction_settings`
--
ALTER TABLE `introduction_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `program_comments`
--
ALTER TABLE `program_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_menus`
--
ALTER TABLE `site_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supporters`
--
ALTER TABLE `supporters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
