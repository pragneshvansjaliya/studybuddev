-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 12:20 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studybud`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add room', 7, 'add_room'),
(26, 'Can change room', 7, 'change_room'),
(27, 'Can delete room', 7, 'delete_room'),
(28, 'Can view room', 7, 'view_room'),
(29, 'Can add topic', 8, 'add_topic'),
(30, 'Can change topic', 8, 'change_topic'),
(31, 'Can delete topic', 8, 'delete_topic'),
(32, 'Can view topic', 8, 'view_topic'),
(33, 'Can add message', 9, 'add_message'),
(34, 'Can change message', 9, 'change_message'),
(35, 'Can delete message', 9, 'delete_message'),
(36, 'Can view message', 9, 'view_message'),
(37, 'Can add user profile', 10, 'add_userprofile'),
(38, 'Can change user profile', 10, 'change_userprofile'),
(39, 'Can delete user profile', 10, 'delete_userprofile'),
(40, 'Can view user profile', 10, 'view_userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$m6VcIrIkotcsfclclVf4Yw$LAo8HJC1cl+01pyTB9XokNKJ2iCXSM7DNRAom2u/epA=', '2021-10-15 09:41:42.349877', 1, 'pragnesh', '', '', 'patelpragnesh50@gmail.com', 1, 1, '2021-10-07 11:45:57.435925'),
(2, 'pbkdf2_sha256$260000$RG4ggGUlQXtLVjGgF5fCmx$WnbF8pxsw2N+eN/F2QoHYGwmHDkeFnuGP3XyaWFMutQ=', '2021-10-14 06:18:04.014036', 0, 'admin', 'admin', 'Patel', 'patelpragnesh50@gmail.com', 0, 1, '2021-10-13 10:56:58.000000'),
(3, 'pbkdf2_sha256$260000$uIKdGzLmVUL7G9Q3X3a2cG$FR3zp/bvmJDNzSkN1REdSs2NA+R1Xm4iH8p5CElbwr4=', '2021-10-14 05:28:54.253563', 0, 'userone', '', '', '', 0, 1, '2021-10-14 05:28:53.365492'),
(4, 'pbkdf2_sha256$260000$JWBOpVEOi2dXLuruKjcnvl$ojjXOpPbGfJInPCrau2TdPc09CJaakwP3UI88NvGDfI=', '2021-10-15 09:56:24.380237', 0, 'usertwo', '', '', 'test11@mysegmentor.com', 0, 1, '2021-10-15 09:56:23.512668');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_message`
--

CREATE TABLE `base_message` (
  `id` bigint(20) NOT NULL,
  `body` longtext DEFAULT NULL,
  `updated` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_message`
--

INSERT INTO `base_message` (`id`, `body`, `updated`, `created`, `room_id`, `user_id`) VALUES
(1, 'Hey', '2021-10-13 10:58:44.013035', '2021-10-13 10:58:44.013035', 1, 2),
(3, 'whats upp!!!', '2021-10-14 06:19:17.393856', '2021-10-14 06:19:17.393856', 1, 2),
(4, 'hello', '2021-10-14 06:53:37.529221', '2021-10-14 06:53:37.529221', 1, 1),
(6, 'whats up !!', '2021-10-14 07:00:10.000776', '2021-10-14 07:00:10.000776', 3, 1),
(8, 'look\'s cool', '2021-10-15 04:32:57.193432', '2021-10-15 04:32:57.193432', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_room`
--

CREATE TABLE `base_room` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `updated` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_room`
--

INSERT INTO `base_room` (`id`, `name`, `description`, `updated`, `created`, `host_id`, `topic_id`) VALUES
(1, 'lets learn python', 'Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.', '2021-10-14 15:49:54.269134', '2021-10-13 10:23:36.281754', 1, 5),
(2, 'Design with Me!', 'Web design encompasses many different skills and disciplines in the production and maintenance of websites. The different areas of web design include web graphic design; user interface design; authoring, including standardised code and proprietary software; user experience design; and search engine optimization.', '2021-10-13 10:58:09.111339', '2021-10-13 10:24:20.565366', 2, 4),
(3, 'lets learn JAVA', 'The Java Development Kit is an implementation of either one of the Java Platform, Standard Edition, Java Platform, Enterprise Edition, or Java Platform, Micro Edition platforms released by Oracle Corporation in the form of a binary product aimed at Java developers on Solaris, Linux, macOS or Windows.', '2021-10-13 10:57:58.001226', '2021-10-13 10:24:55.358986', 1, 3),
(4, 'React Development', 'React (also known as React. js or ReactJS) is a free and open-source front-end JavaScript library for building user interfaces or UI components. It is maintained by Facebook and a community of individual developers and companies.', '2021-10-13 10:57:46.450236', '2021-10-13 10:25:22.460933', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `base_room_participants`
--

CREATE TABLE `base_room_participants` (
  `id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_room_participants`
--

INSERT INTO `base_room_participants` (`id`, `room_id`, `user_id`) VALUES
(5, 1, 1),
(1, 1, 2),
(2, 1, 3),
(4, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_topic`
--

CREATE TABLE `base_topic` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_topic`
--

INSERT INTO `base_topic` (`id`, `name`) VALUES
(1, 'Python'),
(2, 'JavaScript'),
(3, 'Web Development'),
(4, 'Design'),
(5, 'Pythons');

-- --------------------------------------------------------

--
-- Table structure for table `base_userprofile`
--

CREATE TABLE `base_userprofile` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_userprofile`
--

INSERT INTO `base_userprofile` (`id`, `avatar`, `user_id`) VALUES
(1, '0G1A8907.JPG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-13 10:23:36.529534', '1', 'lets learn python', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-10-13 10:24:20.604261', '2', 'Design with Me!', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-10-13 10:24:55.407601', '3', 'lets learn JAVA', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-10-13 10:25:22.496647', '4', 'React Development', 1, '[{\"added\": {}}]', 7, 1),
(5, '2021-10-13 10:54:16.226502', '1', 'Python', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-10-13 10:54:28.624922', '2', 'JavaScript', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-10-13 10:54:42.634327', '3', 'Web Development', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-10-13 10:54:49.430314', '4', 'Design', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-10-13 10:56:59.103324', '2', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(10, '2021-10-13 10:57:26.719091', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(11, '2021-10-13 10:57:46.503848', '4', 'React Development', 2, '[{\"changed\": {\"fields\": [\"Host\", \"Topic\"]}}]', 7, 1),
(12, '2021-10-13 10:57:58.017814', '3', 'lets learn JAVA', 2, '[{\"changed\": {\"fields\": [\"Host\", \"Topic\"]}}]', 7, 1),
(13, '2021-10-13 10:58:09.165397', '2', 'Design with Me!', 2, '[{\"changed\": {\"fields\": [\"Host\", \"Topic\"]}}]', 7, 1),
(14, '2021-10-13 10:58:16.094503', '1', 'lets learn python', 2, '[{\"changed\": {\"fields\": [\"Host\", \"Topic\"]}}]', 7, 1),
(15, '2021-10-13 10:58:44.059332', '1', 'Hey', 1, '[{\"added\": {}}]', 9, 1),
(16, '2021-10-13 10:59:46.658592', '2', 'Hello', 1, '[{\"added\": {}}]', 9, 1),
(17, '2021-10-14 06:35:52.753615', '1', 'lets learn python', 2, '[{\"changed\": {\"fields\": [\"Participants\"]}}]', 7, 1),
(18, '2021-10-15 06:42:23.943920', '1', 'UserProfile object (1)', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'base', 'message'),
(7, 'base', 'room'),
(8, 'base', 'topic'),
(10, 'base', 'userprofile'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-06 13:00:19.098145'),
(2, 'auth', '0001_initial', '2021-10-06 13:00:27.409062'),
(3, 'admin', '0001_initial', '2021-10-06 13:00:30.524873'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-06 13:00:30.577812'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-06 13:00:30.613787'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-06 13:00:31.685413'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-06 13:00:32.451429'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-06 13:00:32.578197'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-06 13:00:32.619502'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-06 13:00:33.155986'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-06 13:00:33.182068'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-06 13:00:33.230041'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-06 13:00:33.342056'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-06 13:00:33.482056'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-06 13:00:33.638217'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-06 13:00:33.690218'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-06 13:00:33.838084'),
(18, 'sessions', '0001_initial', '2021-10-06 13:00:34.219468'),
(19, 'base', '0001_initial', '2021-10-07 11:43:21.719496'),
(20, 'base', '0002_auto_20211013_1621', '2021-10-13 10:51:53.423425'),
(21, 'base', '0003_auto_20211014_1203', '2021-10-14 06:33:42.733994'),
(22, 'base', '0004_auto_20211015_1210', '2021-10-15 06:40:47.979063');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('96limetb2qfj4w8w2n5fl2he61urp1dt', '.eJxVjDEOwjAMRe-SGUV2m0DLyM4ZIjt2SAElUtNOiLtDpQ6w_vfef5lA65LD2nQOk5izcebwuzHFh5YNyJ3KrdpYyzJPbDfF7rTZaxV9Xnb37yBTy98aGI80EgAqg4sJxYvogK5TL3QSkggDcRLxkTuGnjHC6Po--USMzrw_DTE5HQ:1mbJwu:-szPwWgN8xKB0bBkoelYtwifF18E0T98ezXAJsFrXU0', '2021-10-29 09:56:24.414426');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_message`
--
ALTER TABLE `base_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_message_room_id_6b04a640_fk_base_room_id` (`room_id`),
  ADD KEY `base_message_user_id_46a57e37_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_room`
--
ALTER TABLE `base_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_room_host_id_6c009082_fk_auth_user_id` (`host_id`),
  ADD KEY `base_room_topic_id_42a6b2b8_fk_base_topic_id` (`topic_id`);

--
-- Indexes for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_room_participants_room_id_user_id_2e298648_uniq` (`room_id`,`user_id`),
  ADD KEY `base_room_participants_user_id_2a86ea9a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_topic`
--
ALTER TABLE `base_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_userprofile`
--
ALTER TABLE `base_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_message`
--
ALTER TABLE `base_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `base_room`
--
ALTER TABLE `base_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_topic`
--
ALTER TABLE `base_topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_userprofile`
--
ALTER TABLE `base_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_message`
--
ALTER TABLE `base_message`
  ADD CONSTRAINT `base_message_room_id_6b04a640_fk_base_room_id` FOREIGN KEY (`room_id`) REFERENCES `base_room` (`id`),
  ADD CONSTRAINT `base_message_user_id_46a57e37_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_room`
--
ALTER TABLE `base_room`
  ADD CONSTRAINT `base_room_host_id_6c009082_fk_auth_user_id` FOREIGN KEY (`host_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `base_room_topic_id_42a6b2b8_fk_base_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `base_topic` (`id`);

--
-- Constraints for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  ADD CONSTRAINT `base_room_participants_room_id_8701ee11_fk_base_room_id` FOREIGN KEY (`room_id`) REFERENCES `base_room` (`id`),
  ADD CONSTRAINT `base_room_participants_user_id_2a86ea9a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_userprofile`
--
ALTER TABLE `base_userprofile`
  ADD CONSTRAINT `base_userprofile_user_id_f259b2d7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
