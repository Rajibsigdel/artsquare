-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2016 at 07:13 PM
-- Server version: 5.6.27-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `artsquare_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
`id` int(11) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'kulchan.kaushal@gmail.com', '$2a$10$cpyOHRnTPMOxR4Mvz4PEM.E78CHZwFGUO3EgbLNgi0ijcy.cDWNLG', NULL, NULL, '2016-01-22 05:15:37', 15, '2016-02-25 05:12:30', '2016-02-15 06:32:16', '127.0.0.1', '127.0.0.1', '2016-01-14 07:54:09', '2016-02-25 05:12:30'),
(2, 'kulchan.sobitmaan@gmail.com', '$2a$10$EGdy6l82tPG2D4R/F1VUJ.LU9E5ZREw.MSJ2yORxeJqg46kYkdkA6', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-01-14 07:56:04', '2016-01-14 07:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE IF NOT EXISTS `airports` (
`id` int(11) NOT NULL,
  `airport_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `details`, `image_url`, `created_at`, `updated_at`, `slug`, `views`) VALUES
(15, 'new test blog', '<p>this is test blog</p>\r\n', NULL, '2016-01-29 10:02:49', '2016-01-29 10:02:49', 'new-test-blog', 4),
(16, 'Building The Office Space Of Tomorrow', '<div id="lipsum">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sem eu augue scelerisque vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed sed tempus nulla. Integer dapibus eget lectus id hendrerit. In pharetra volutpat nibh, eget laoreet ligula luctus id. Etiam ac sodales orci, vel ullamcorper velit. Donec lacus nulla, vestibulum quis consectetur vel, sodales ut lacus. Donec eleifend ante a tellus congue efficitur.</p>\r\n\r\n<p>Donec vehicula suscipit velit, non varius diam maximus sed. Maecenas pharetra pulvinar faucibus. Suspendisse vel finibus diam, quis rutrum sapien. Morbi eget mi fermentum, dignissim nibh et, placerat mauris. Donec vitae sem facilisis, accumsan erat vitae, commodo lorem. Sed nec faucibus mi. Duis quis nisi imperdiet lacus ultricies blandit sit amet sed leo. Morbi euismod cursus libero vel ultrices. Vivamus id tempus felis, laoreet tempor ipsum. Mauris fermentum est mauris, ac efficitur quam tristique non. Nulla varius lacus eget metus blandit, et lacinia mauris luctus. Ut nisi neque, accumsan vitae nulla quis, efficitur auctor ipsum. Nam rhoncus risus augue, vitae maximus velit cursus porttitor. Etiam a urna eu est egestas mattis. Proin tristique odio ultricies semper semper.</p>\r\n\r\n<p>Nam sit amet sapien nulla. Ut at arcu vitae felis mollis porta eu id dui. Mauris vel arcu imperdiet, pellentesque eros nec, tempus magna. Mauris pellentesque finibus metus sed mollis. Integer mattis, nibh sit amet fermentum mollis, justo orci ultricies risus, vitae pharetra augue dolor id elit. Phasellus ornare quam ut malesuada interdum. Cras ultricies nisi a mauris viverra tempor. Proin consequat consequat congue. Phasellus ullamcorper turpis sed tortor eleifend, ac ultrices lectus lacinia. Quisque placerat in augue ac semper. Maecenas at velit id dui mollis tristique sed at neque. Nunc bibendum nisl eget erat venenatis accumsan in eu dui.</p>\r\n\r\n<p>Quisque id mattis mauris. Aenean ligula lacus, aliquam feugiat leo quis, placerat vulputate dolor. Aliquam erat volutpat. Nunc elementum aliquam tristique. Pellentesque mauris libero, pretium at consequat vitae, euismod quis diam. Cras auctor libero eget mollis commodo. Quisque in porttitor ligula, eget condimentum arcu. In suscipit euismod leo, et sodales quam iaculis id. Etiam enim ipsum, tristique at felis ac, tincidunt accumsan ante. Mauris aliquet euismod accumsan. Duis pellentesque elit neque, quis maximus lectus bibendum eu.</p>\r\n\r\n<p>Aenean ullamcorper neque erat, vitae pellentesque leo porta in. Nullam eget nisi posuere, eleifend purus eget, sollicitudin mauris. Maecenas sed justo diam. Morbi lectus nunc, pharetra sit amet fermentum sit amet, iaculis et nisi. Aenean quam velit, consequat id arcu eget, ultricies rhoncus est. Aliquam tristique euismod sem at tincidunt. Integer tristique velit sapien, id faucibus lacus placerat id. Fusce vitae sem eget sem malesuada luctus sed ut ante. Morbi mi justo, posuere sed congue id, fringilla a quam. In vulputate scelerisque dui eget varius.</p>\r\n</div>\r\n', 'blg1.jpg', '2016-01-29 10:04:49', '2016-01-29 10:04:49', 'building-the-office-space-of-tomorrow', 12),
(17, 'Generated blog for test', '<div id="lipsum">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sem eu augue scelerisque vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed sed tempus nulla. Integer dapibus eget lectus id hendrerit. In pharetra volutpat nibh, eget laoreet ligula luctus id. Etiam ac sodales orci, vel ullamcorper velit. Donec lacus nulla, vestibulum quis consectetur vel, sodales ut lacus. Donec eleifend ante a tellus congue efficitur.</p>\r\n\r\n<p>Donec vehicula suscipit velit, non varius diam maximus sed. Maecenas pharetra pulvinar faucibus. Suspendisse vel finibus diam, quis rutrum sapien. Morbi eget mi fermentum, dignissim nibh et, placerat mauris. Donec vitae sem facilisis, accumsan erat vitae, commodo lorem. Sed nec faucibus mi. Duis quis nisi imperdiet lacus ultricies blandit sit amet sed leo. Morbi euismod cursus libero vel ultrices. Vivamus id tempus felis, laoreet tempor ipsum. Mauris fermentum est mauris, ac efficitur quam tristique non. Nulla varius lacus eget metus blandit, et lacinia mauris luctus. Ut nisi neque, accumsan vitae nulla quis, efficitur auctor ipsum. Nam rhoncus risus augue, vitae maximus velit cursus porttitor. Etiam a urna eu est egestas mattis. Proin tristique odio ultricies semper semper.</p>\r\n\r\n<p>Nam sit amet sapien nulla. Ut at arcu vitae felis mollis porta eu id dui. Mauris vel arcu imperdiet, pellentesque eros nec, tempus magna. Mauris pellentesque finibus metus sed mollis. Integer mattis, nibh sit amet fermentum mollis, justo orci ultricies risus, vitae pharetra augue dolor id elit. Phasellus ornare quam ut malesuada interdum. Cras ultricies nisi a mauris viverra tempor. Proin consequat consequat congue. Phasellus ullamcorper turpis sed tortor eleifend, ac ultrices lectus lacinia. Quisque placerat in augue ac semper. Maecenas at velit id dui mollis tristique sed at neque. Nunc bibendum nisl eget erat venenatis accumsan in eu dui.</p>\r\n\r\n<p>Quisque id mattis mauris. Aenean ligula lacus, aliquam feugiat leo quis, placerat vulputate dolor. Aliquam erat volutpat. Nunc elementum aliquam tristique. Pellentesque mauris libero, pretium at consequat vitae, euismod quis diam. Cras auctor libero eget mollis commodo. Quisque in porttitor ligula, eget condimentum arcu. In suscipit euismod leo, et sodales quam iaculis id. Etiam enim ipsum, tristique at felis ac, tincidunt accumsan ante. Mauris aliquet euismod accumsan. Duis pellentesque elit neque, quis maximus lectus bibendum eu.</p>\r\n\r\n<p>Aenean ullamcorper neque erat, vitae pellentesque leo porta in. Nullam eget nisi posuere, eleifend purus eget, sollicitudin mauris. Maecenas sed justo diam. Morbi lectus nunc, pharetra sit amet fermentum sit amet, iaculis et nisi. Aenean quam velit, consequat id arcu eget, ultricies rhoncus est. Aliquam tristique euismod sem at tincidunt. Integer tristique velit sapien, id faucibus lacus placerat id. Fusce vitae sem eget sem malesuada luctus sed ut ante. Morbi mi justo, posuere sed congue id, fringilla a quam. In vulputate scelerisque dui eget varius.</p>\r\n</div>\r\n', 'blg2.jpg', '2016-01-29 10:05:55', '2016-01-29 10:05:55', 'generated-blog-for-test', 2),
(18, 'Blog test title', '<div id="lipsum">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sem eu augue scelerisque vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed sed tempus nulla. Integer dapibus eget lectus id hendrerit. In pharetra volutpat nibh, eget laoreet ligula luctus id. Etiam ac sodales orci, vel ullamcorper velit. Donec lacus nulla, vestibulum quis consectetur vel, sodales ut lacus. Donec eleifend ante a tellus congue efficitur.</p>\r\n\r\n<p>Donec vehicula suscipit velit, non varius diam maximus sed. Maecenas pharetra pulvinar faucibus. Suspendisse vel finibus diam, quis rutrum sapien. Morbi eget mi fermentum, dignissim nibh et, placerat mauris. Donec vitae sem facilisis, accumsan erat vitae, commodo lorem. Sed nec faucibus mi. Duis quis nisi imperdiet lacus ultricies blandit sit amet sed leo. Morbi euismod cursus libero vel ultrices. Vivamus id tempus felis, laoreet tempor ipsum. Mauris fermentum est mauris, ac efficitur quam tristique non. Nulla varius lacus eget metus blandit, et lacinia mauris luctus. Ut nisi neque, accumsan vitae nulla quis, efficitur auctor ipsum. Nam rhoncus risus augue, vitae maximus velit cursus porttitor. Etiam a urna eu est egestas mattis. Proin tristique odio ultricies semper semper.</p>\r\n\r\n<p>Nam sit amet sapien nulla. Ut at arcu vitae felis mollis porta eu id dui. Mauris vel arcu imperdiet, pellentesque eros nec, tempus magna. Mauris pellentesque finibus metus sed mollis. Integer mattis, nibh sit amet fermentum mollis, justo orci ultricies risus, vitae pharetra augue dolor id elit. Phasellus ornare quam ut malesuada interdum. Cras ultricies nisi a mauris viverra tempor. Proin consequat consequat congue. Phasellus ullamcorper turpis sed tortor eleifend, ac ultrices lectus lacinia. Quisque placerat in augue ac semper. Maecenas at velit id dui mollis tristique sed at neque. Nunc bibendum nisl eget erat venenatis accumsan in eu dui.</p>\r\n\r\n<p>Quisque id mattis mauris. Aenean ligula lacus, aliquam feugiat leo quis, placerat vulputate dolor. Aliquam erat volutpat. Nunc elementum aliquam tristique. Pellentesque mauris libero, pretium at consequat vitae, euismod quis diam. Cras auctor libero eget mollis commodo. Quisque in porttitor ligula, eget condimentum arcu. In suscipit euismod leo, et sodales quam iaculis id. Etiam enim ipsum, tristique at felis ac, tincidunt accumsan ante. Mauris aliquet euismod accumsan. Duis pellentesque elit neque, quis maximus lectus bibendum eu.</p>\r\n\r\n<p>Aenean ullamcorper neque erat, vitae pellentesque leo porta in. Nullam eget nisi posuere, eleifend purus eget, sollicitudin mauris. Maecenas sed justo diam. Morbi lectus nunc, pharetra sit amet fermentum sit amet, iaculis et nisi. Aenean quam velit, consequat id arcu eget, ultricies rhoncus est. Aliquam tristique euismod sem at tincidunt. Integer tristique velit sapien, id faucibus lacus placerat id. Fusce vitae sem eget sem malesuada luctus sed ut ante. Morbi mi justo, posuere sed congue id, fringilla a quam. In vulputate scelerisque dui eget varius.</p>\r\n</div>\r\n', 'blg3.jpg', '2016-01-29 10:06:17', '2016-01-29 10:06:17', 'blog-test-title', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ckeditor_assets`
--

CREATE TABLE IF NOT EXISTS `ckeditor_assets` (
`id` int(11) NOT NULL,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ckeditor_assets`
--

INSERT INTO `ckeditor_assets` (`id`, `data_file_name`, `data_content_type`, `data_file_size`, `assetable_id`, `assetable_type`, `type`, `width`, `height`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'image/png', 19810, 1, 'AdminUser', 'Ckeditor::Picture', 400, 70, '2016-01-28 10:51:17', '2016-01-28 10:51:17'),
(2, 'eShop-logo.png', 'image/png', 20234, 1, 'AdminUser', 'Ckeditor::Picture', 672, 343, '2016-01-28 10:51:32', '2016-01-28 10:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectimages`
--

CREATE TABLE IF NOT EXISTS `projectimages` (
`id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectimages`
--

INSERT INTO `projectimages` (`id`, `image_url`, `project_id`) VALUES
(14, 'caro1.jpg', 18),
(15, 'caro2.jpg', 18),
(16, 'caro3.jpg', 18),
(17, 'caro4.jpg', 18),
(18, 'caro5.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
`id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `thumbnail` varchar(255) DEFAULT NULL,
  `is_adult` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `title`, `slug`, `description`, `thumbnail`, `is_adult`, `status`, `created_at`, `updated_at`) VALUES
(18, 8, 'project 1', 'slug', 'this is descripption hhhh', 'blg1.jpg', 0, 1, '2016-02-10 06:19:54', '2016-02-11 07:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160114073558'),
('20160114073609'),
('20160114094219'),
('20160126073427'),
('20160126074235'),
('20160128154512'),
('20160129091922'),
('20160129094224'),
('20160129102555'),
('20160131040157'),
('20160201064451'),
('20160201070108'),
('20160201073435'),
('20160201093836'),
('20160201101629'),
('20160208073613'),
('20160208095456'),
('20160208104026'),
('20160210044102'),
('20160210044339'),
('20160211064840'),
('20160225051608');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE IF NOT EXISTS `sitesettings` (
`id` int(11) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_url', '#', '2016-02-01 09:43:28', '2016-02-01 09:43:28'),
(2, 'twitter_url', '#', '2016-02-01 09:52:03', '2016-02-01 09:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) DEFAULT NULL,
  `biography` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `about_me` text,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `city`, `biography`, `country`, `avatar`, `encrypted_password`, `status`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `about_me`, `facebook_url`, `twitter_url`) VALUES
(8, 'binod', 'binod', 'pariyar', 'binodpari@gmail.com', 'kathmandu', 'Production designer,concept artist @Chiyan Workshop', 'Nepal', 'artist-prof-img.jpg', '$2a$10$a9.pH.jtcGcH4jzCuWxHgexT3sMzKb9kX9Ae2f3fw3O1HRpHaHXaW', 1, NULL, NULL, '2016-02-10 04:36:41', 6, '2016-02-15 06:34:41', '2016-02-11 07:00:57', '127.0.0.1', '127.0.0.1', '2016-02-01 11:01:15', '2016-02-15 06:34:41', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'facebook.com', '#'),
(9, 'bimal', 'bimal', 'pariyaar', 'bimal.pariyaar@gmail.com', 'kathmand', 'freelancer', 'Nepal', NULL, '$2a$10$5ODUhUaWJTBT03qU/UqEU./mBqVuugvAc09hEzKg4vlAwpuqNBze2', 1, NULL, NULL, NULL, 1, '2016-02-08 07:18:41', '2016-02-08 07:18:41', '127.0.0.1', '127.0.0.1', '2016-02-08 07:18:25', '2016-02-08 07:18:41', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `index_active_admin_comments_on_namespace` (`namespace`), ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`), ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_admin_users_on_email` (`email`), ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ckeditor_assets`
--
ALTER TABLE `ckeditor_assets`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`), ADD KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectimages`
--
ALTER TABLE `projectimages`
 ADD PRIMARY KEY (`id`), ADD KEY `index_projectimages_on_project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
 ADD PRIMARY KEY (`id`), ADD KEY `index_projects_on_user_id` (`user_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
 ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_users_on_email` (`email`), ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`), ADD UNIQUE KEY `index_users_on_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ckeditor_assets`
--
ALTER TABLE `ckeditor_assets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projectimages`
--
ALTER TABLE `projectimages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `projectimages`
--
ALTER TABLE `projectimages`
ADD CONSTRAINT `fk_rails_c0d6ac1ccb` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
ADD CONSTRAINT `fk_rails_b872a6760a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
