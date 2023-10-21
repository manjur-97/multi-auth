-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 11:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hall_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(86) DEFAULT NULL,
  `lastname` varchar(86) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `email` varchar(124) DEFAULT NULL,
  `password` varchar(124) DEFAULT NULL,
  `status_id` tinyint(1) DEFAULT 1 COMMENT '1=Active,0=Inactive,2=Deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `lastname`, `mobile`, `email`, `password`, `status_id`, `created_at`, `created_by`, `updated_at`, `version`, `remember_token`, `role_id`, `type`) VALUES
(92, 'Super Admin', '', '01761955765', 'admin@gmail.com', '$2y$10$qBVDA/DLRKUVAS9bW39H9OBorvEDhS6MJGIqut.eZPCidaDLz4MEC', 1, '2021-02-07 11:07:04', 85, '2021-12-23 09:07:10', 1, 'wP08GSQoDRRemIf1cceBUUKVAxiRJEbZmH7yQPVk8hOeSi9GIiLuzdMBdu1N', 11, 'admin'),
(111, 'job fair admin', NULL, '01761955765', 'job_fair_admin@gmail.com', '$2y$10$LiZ4t.Jx06GzrQzJ5rDx9unFOKWN6rR5.apPnz1SIPDnd/M3Nh0xS', 1, '2022-05-19 05:44:13', 92, '2022-05-19 05:44:13', NULL, NULL, 11, 'admin'),
(112, 'asdad', NULL, '123123', 'shuvo@gmail.com', '$2y$10$6zgT/gZSe8Nm8AgFiWLk6uMosN7kgc9HO8FJ4QNpBqFSA2ZcOfmEe', 1, '2023-09-12 03:45:44', 92, '2023-09-12 03:45:44', NULL, NULL, 11, 'admin'),
(113, 'happy', NULL, '123123', 'shuvo@gmail.com', '$2y$10$WlWmbKIUQ7hR6GnJbRe/A.I73bDRk/7aBDigIrPFWd5bGShc58oxm', 1, '2023-09-12 03:46:56', 92, '2023-09-12 03:46:56', NULL, NULL, 12, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_routes`
--

CREATE TABLE `dynamic_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `controller_action` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL COMMENT 'get,post',
  `route_type` tinyint(1) DEFAULT 1 COMMENT '1=main,0=public',
  `parameter` varchar(255) DEFAULT NULL,
  `route_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active,0=not active',
  `show_in_menu` int(11) DEFAULT 0 COMMENT '0=no,1=yes',
  `ajax` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dynamic_routes`
--

INSERT INTO `dynamic_routes` (`id`, `title`, `url`, `model_name`, `content`, `controller_action`, `function_name`, `method`, `route_type`, `parameter`, `route_status`, `show_in_menu`, `ajax`, `created_at`, `updated_at`) VALUES
(1, 'adminDashboard', 'adminDashboard', 'AdminDashboard', NULL, 'AdminDashboarController', 'index', 'get', 1, NULL, 1, 0, '0', NULL, '2021-01-17 22:36:57'),
(3, 'Show Routs', 'dynamic_route', 'Route', NULL, 'RouteController', 'dynamic_route', 'get', 1, NULL, 1, 1, '0', '2020-12-23 17:11:03', '2021-03-18 09:19:43'),
(4, 'ADD Route', 'dynamic_route', 'Route', NULL, 'RouteController', 'save_dynamic_route', 'Post', 1, NULL, 1, 0, '0', '2020-12-23 17:13:07', '2020-12-23 17:13:07'),
(5, 'Roles', 'role/all_role', 'Role', NULL, 'RoleController', 'all_role', 'get', 1, NULL, 1, 1, '0', '2020-12-23 17:35:33', '2021-06-10 07:00:32'),
(6, 'Add Role', 'role/add_role', 'Role', NULL, 'RoleController', 'add_role', 'get', 1, NULL, 1, 1, '0', '2020-12-23 17:36:01', '2021-06-10 06:59:12'),
(8, 'save role', 'save_role', 'Role', NULL, 'RoleController', 'save_role', 'Post', 1, NULL, 1, 0, '0', '2020-12-23 21:10:26', '2020-12-26 17:36:28'),
(9, 'Show Users', 'all_user', 'User', NULL, 'UserController', 'all_user', 'get', 1, NULL, 1, 1, '0', '2020-12-23 21:40:53', '2021-03-18 09:20:11'),
(10, 'save user', 'save_user', 'User', NULL, 'UserController', 'save_user', 'Post', 1, NULL, 1, 0, '0', '2020-12-23 21:54:33', '2020-12-23 21:54:33'),
(11, 'Edit Role', 'edit_role', 'Role', NULL, 'RoleController', 'edit_role', 'get', 1, '{id}', 1, 0, '0', '2020-12-26 16:22:10', '2020-12-26 17:28:54'),
(12, 'Update Role', 'update_role', 'Role', NULL, 'RoleController', 'update_role', 'Post', 1, '{id}', 1, 0, '0', '2020-12-26 16:46:07', '2021-01-11 22:25:35'),
(13, 'Delete Role', 'delete_role', 'Role', NULL, 'RoleController', 'delete_role', 'get', 1, '{id}', 1, 0, '0', '2020-12-26 16:56:05', '2020-12-26 16:56:05'),
(14, 'Delete Route', 'delete_route', 'Route', NULL, 'RouteController', 'delete_route', 'get', 1, '{id}', 1, 0, '0', '2020-12-26 16:59:22', '2020-12-26 16:59:22'),
(16, 'Edit Route', 'edit_route', 'Route', NULL, 'RouteController', 'edit_route', 'get', 0, '{id}', 1, 0, '0', '2020-12-26 17:03:02', '2020-12-26 17:16:35'),
(19, 'Update Route', 'update_route', 'Route', NULL, 'RouteController', 'update_route', 'Post', 1, '{id}', 1, 0, '0', '2020-12-26 17:13:20', '2020-12-26 17:13:20'),
(91, 'Chnage Password', 'admin/change_password', 'AdminDashboard', NULL, 'AdminDashboarController', 'change_password', 'get', 1, NULL, 1, 0, '0', '2021-01-17 22:38:34', '2021-01-18 18:20:41'),
(92, 'Save Change Password', 'admin/save_change_password', 'AdminDashboard', NULL, 'AdminDashboarController', 'save_change_password', 'Post', 1, NULL, 1, 0, '0', '2021-01-19 18:04:46', '2021-01-19 18:04:46'),
(93, 'Edit User', 'edit_user', 'User', NULL, 'UserController', 'edit_user', 'get', 1, '{id}', 1, 0, '1', '2021-01-20 21:42:58', '2021-01-20 21:42:58'),
(94, 'Upadte User', 'upadte_user', 'User', NULL, 'UserController', 'upadte_user', 'Post', 1, NULL, 1, 0, '0', '2021-01-20 22:11:40', '2021-01-20 22:27:28'),
(95, 'Suspend user', 'suspend_user', 'User', NULL, 'UserController', 'suspend_user', 'get', 1, '{id}', 1, 0, '0', '2021-01-20 22:34:00', '2021-01-20 22:34:00'),
(96, 'unsuspend user', 'unsuspend_user', 'User', NULL, 'UserController', 'unsuspend_user', 'get', 1, '{id}', 1, 0, '0', '2021-01-20 22:58:06', '2021-01-20 22:58:06'),
(127, 'Delete user', 'delete_user', 'User', NULL, 'UserController', 'delete_user', 'get', 1, '{id}', 1, 0, '0', '2021-06-10 06:50:43', '2021-06-10 06:50:43'),
(130, 'Test Menu', 'test', 'ModelMenu', NULL, 'MenuController', 'getLevel3Childern', 'get', 1, '{id}', 1, 1, '1', '2021-06-24 06:27:04', '2021-06-24 06:27:04'),
(131, 'Create menu', 'menu/menu_create', 'Menu', NULL, 'MenuController', 'create_menu', 'get', 1, NULL, 1, 1, '0', '2021-06-29 17:33:06', '2021-06-29 17:33:06'),
(133, 'Save Menu', 'menu/menu_save', 'Menu', NULL, 'MenuController', 'menu_save', 'Post', 1, NULL, 1, 0, '0', '2021-07-04 15:03:45', '2021-07-04 15:49:37'),
(134, 'ALL Menu', 'menu/all_menu', 'Menu', NULL, 'MenuController', 'all_menu', 'get', 1, NULL, 1, 1, '0', '2021-07-04 16:03:13', '2021-07-04 16:03:13'),
(135, 'Search Menu', 'menu/menu_search', 'Menu', NULL, 'MenuController', 'menu_search', 'Post', 1, NULL, 1, 0, '1', '2021-07-04 17:15:11', '2021-07-04 17:15:11'),
(138, 'Edit Menu', 'menu/edit_menu', 'Menu', NULL, 'MenuController', 'edit_menu', 'get', 1, '{id}', 1, 0, '0', '2021-07-05 11:49:25', '2021-07-05 11:49:25'),
(139, 'Update Menu', 'menu/update_menu', 'Menu', NULL, 'MenuController', 'update_menu', 'Post', 1, '{id}', 1, 0, '0', '2021-07-05 11:50:06', '2021-07-05 11:58:36'),
(274, 'Change Password form', 'password/change_pasword', 'passwordChange', NULL, 'AdminDashboarController', 'change_pasword', 'get', 1, NULL, 1, 1, '0', '2021-12-23 02:34:00', '2021-12-23 02:34:00'),
(275, 'Save Change Password', 'password/save_change_password', 'passwordChange', NULL, 'AdminDashboarController', 'save_change_password', 'Post', 1, NULL, 1, 0, '0', '2021-12-23 02:34:57', '2021-12-23 03:05:49'),
(288, 'allHalls', 'hall', 'Hall', NULL, 'HallController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-16 20:37:50', '2023-09-19 01:39:20'),
(289, 'hallAllData', 'hall/all_data', 'Hall', NULL, 'HallController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-16 23:57:06', '2023-09-19 01:40:17'),
(290, 'hallStore', 'hall/store', 'Hall', NULL, 'HallController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-17 01:37:04', '2023-09-17 01:37:04'),
(291, 'hallEdit', 'hall/edit', 'Hall', NULL, 'HallController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-17 02:01:08', '2023-09-17 02:03:53'),
(292, 'hallUpdate', 'hall/update', 'Hall', NULL, 'HallController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-17 02:24:19', '2023-09-17 02:24:19'),
(293, 'hallDelete', 'hall/delete', 'Hall', NULL, 'HallController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-17 02:33:52', '2023-09-17 02:33:52'),
(294, 'floorIndex', 'floor', 'Floor', NULL, 'FloorController', 'index', 'get', 1, NULL, 1, 1, '0', '2023-09-17 20:54:11', '2023-09-17 20:54:11'),
(295, 'floorAllData', 'floor/all_data', 'Floor', NULL, 'FloorController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-17 20:55:27', '2023-09-17 21:42:08'),
(296, 'floorStore', 'floor/store', 'Floor', NULL, 'FloorController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-17 20:58:53', '2023-09-17 20:58:53'),
(297, 'floorEdit', 'floor/edit', 'Floor', NULL, 'FloorController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-17 21:01:03', '2023-09-17 21:01:03'),
(298, 'floorUpdate', 'floor/update', 'Floor', NULL, 'FloorController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-17 21:02:06', '2023-09-17 21:02:06'),
(299, 'floorDelete', 'floor/delete', 'Floor', NULL, 'FloorController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-17 21:03:07', '2023-09-17 21:03:07'),
(300, 'hallCreate', 'hall/create', 'Hall', NULL, 'HallController', 'create', 'get', 1, NULL, 1, 1, '0', '2023-09-19 01:38:07', '2023-09-19 01:38:07'),
(301, 'floorCreate', 'floor/create', 'Floor', NULL, 'FloorController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-19 20:54:21', '2023-09-19 20:54:21'),
(302, 'shiftIndex', 'shift', 'Shift', NULL, 'ShiftController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-19 22:33:21', '2023-09-19 22:33:21'),
(303, 'shiftAllData', 'shift/all_data', 'Shift', NULL, 'ShiftController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-19 22:34:16', '2023-09-19 22:34:35'),
(304, 'shiftCreate', 'shift/create', 'Shift', NULL, 'ShiftController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-19 22:35:36', '2023-09-19 22:35:36'),
(305, 'shiftStore', 'shift/store', 'Shift', NULL, 'ShiftController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-19 22:36:22', '2023-09-19 22:36:22'),
(306, 'shiftEdit', 'shift/edit', 'Shift', NULL, 'ShiftController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-19 22:37:32', '2023-09-19 22:37:32'),
(307, 'shiftUpdate', 'shift/update', 'Shift', NULL, 'ShiftController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-19 22:38:29', '2023-09-19 22:38:29'),
(308, 'shiftDelete', 'shift/delete', 'Shift', NULL, 'ShiftController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-19 22:39:46', '2023-09-19 22:40:07'),
(309, 'hall_accessories_facilitiesIndex', 'hall_accessories_facilities', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-20 01:27:05', '2023-09-20 01:27:05'),
(310, 'hall_accessories_facilitiesCreate', 'hall_accessories_facilities/create', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-20 01:28:41', '2023-09-20 01:28:41'),
(311, 'hall_accessories_facilitiesStore', 'hall_accessories_facilities/store', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 01:29:39', '2023-09-20 01:29:39'),
(312, 'hall_accessories_facilitiesEdit', 'hall_accessories_facilities/edit', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-20 01:31:20', '2023-09-20 01:31:20'),
(313, 'hall_accessories_facilitiesUpdate', 'hall_accessories_facilities/update', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 01:32:34', '2023-09-20 01:32:34'),
(314, 'hall_accessories_facilitiesDelete', 'hall_accessories_facilities/delete', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-20 01:34:09', '2023-09-20 01:34:09'),
(315, 'hall_accessories_facilitiesAllData', 'hall_accessories_facilities/all_data', 'HallAccessoriesFacility', NULL, 'HallAccessoriesFacilityController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 01:35:44', '2023-09-20 01:35:44'),
(316, 'getHallFloor', 'hall/get_floor', 'Hall', NULL, 'HallController', 'get_floor', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 01:48:39', '2023-09-20 01:48:39'),
(317, 'userCategoryIndex', 'user_category', 'UserCategory', NULL, 'UserCategoryController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-20 21:56:10', '2023-09-20 21:56:10'),
(318, 'userCategoryAllData', 'user_category/all_data', 'UserCategory', NULL, 'UserCategoryController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 21:57:18', '2023-09-20 21:57:18'),
(319, 'userCategoryCreate', 'user_category/create', 'UserCategory', NULL, 'UserCategoryController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-20 21:57:52', '2023-09-20 21:57:52'),
(320, 'userCategoryStore', 'user_category/store', 'UserCategory', NULL, 'UserCategoryController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 21:58:31', '2023-09-20 21:58:31'),
(321, 'userCategoryEdit', 'user_category/edit', 'UserCategory', NULL, 'UserCategoryController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-20 21:59:02', '2023-09-20 21:59:02'),
(322, 'userCategoryUpdate', 'user_category/update', 'UserCategory', NULL, 'UserCategoryController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 21:59:51', '2023-09-20 21:59:51'),
(323, 'userCategoryDelete', 'user_category/delete', 'UserCategory', NULL, 'UserCategoryController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-20 22:00:38', '2023-09-20 22:00:38'),
(324, 'hall_priceIndex', 'hall_price', 'HallPrice', NULL, 'HallPriceController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-20 23:37:56', '2023-09-20 23:37:56'),
(325, 'hall_priceAllData', 'hall_price/all_data', 'HallPrice', NULL, 'HallPriceController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 23:38:56', '2023-09-20 23:38:56'),
(326, 'hall_priceCreate', 'hall_price/create', 'HallPrice', NULL, 'HallPriceController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-20 23:42:12', '2023-09-20 23:42:12'),
(327, 'hall_priceStore', 'hall_price/store', 'HallPrice', NULL, 'HallPriceController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 23:44:27', '2023-09-20 23:44:27'),
(328, 'hall_priceEdit', 'hall_price/edit', 'HallPrice', NULL, 'HallPriceController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-20 23:45:47', '2023-09-20 23:45:47'),
(329, 'hall_priceUpdate', 'hall_price/update', 'HallPrice', NULL, 'HallPriceController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-20 23:46:20', '2023-09-20 23:46:20'),
(330, 'hall_priceDelete', 'hall_price/delete', 'HallPrice', NULL, 'HallPriceController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-20 23:46:49', '2023-09-20 23:46:49'),
(331, 'hallGetUserCategory', 'hall/get_user_category', 'Hall', NULL, 'HallController', 'get_user_category', 'Post', 1, NULL, 1, 1, '1', '2023-09-21 00:21:58', '2023-09-21 00:21:58'),
(332, 'hallGetShift', 'hall/get_shift', 'Hall', NULL, 'HallController', 'get_shift', 'Post', 1, NULL, 1, 1, '1', '2023-09-21 02:17:29', '2023-09-21 02:19:28'),
(333, 'others_pricesIndex', 'others_prices', 'OthersPrice', NULL, 'OthersPriceController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-23 23:42:25', '2023-09-23 23:42:25'),
(334, 'others_pricesAllData', 'others_prices/all_data', 'OthersPrice', NULL, 'OthersPriceController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-23 23:43:29', '2023-09-23 23:43:29'),
(335, 'others_pricesCreate', 'others_prices/create', 'OthersPrice', NULL, 'OthersPriceController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-23 23:44:12', '2023-09-23 23:44:12'),
(336, 'others_pricesStore', 'others_prices/store', 'OthersPrice', NULL, 'OthersPriceController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-23 23:45:14', '2023-09-23 23:45:14'),
(337, 'others_pricesEdit', 'others_prices/edit', 'OthersPrice', NULL, 'OthersPriceController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-23 23:45:45', '2023-09-23 23:45:45'),
(338, 'others_pricesUpdate', 'others_prices/update', 'OthersPrice', NULL, 'OthersPriceController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-23 23:46:18', '2023-09-23 23:46:18'),
(339, 'others_pricesDelete', 'others_prices/delete', 'OthersPrice', NULL, 'OthersPriceController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-23 23:47:42', '2023-09-23 23:47:42'),
(340, 'settingsIndex', 'settings', 'Settings', NULL, 'SettingsController', 'index', 'get', 1, NULL, 1, 1, '1', '2023-09-24 00:58:46', '2023-09-24 00:58:46'),
(341, 'settingsAllData', 'settings/all_data', 'Settings', NULL, 'SettingsController', 'all_data', 'Post', 1, NULL, 1, 1, '1', '2023-09-24 00:59:36', '2023-09-24 00:59:36'),
(342, 'settingsCreate', 'settings/create', 'Settings', NULL, 'SettingsController', 'create', 'get', 1, NULL, 1, 1, '1', '2023-09-24 01:00:12', '2023-09-24 01:00:12'),
(343, 'settingsStore', 'settings/store', 'Settings', NULL, 'SettingsController', 'store', 'Post', 1, NULL, 1, 1, '1', '2023-09-24 01:01:04', '2023-09-24 01:01:04'),
(344, 'settingsEdit', 'settings/edit', 'Settings', NULL, 'SettingsController', 'edit', 'get', 1, '{id}', 1, 1, '1', '2023-09-24 01:02:15', '2023-09-24 01:02:15'),
(345, 'settingsUpdate', 'settings/update', 'Settings', NULL, 'SettingsController', 'update', 'Post', 1, NULL, 1, 1, '1', '2023-09-24 01:02:43', '2023-09-24 01:03:43'),
(346, 'settingsDelete', 'settings/delete', 'Settings', NULL, 'SettingsController', 'delete', 'get', 1, '{id}', 1, 1, '1', '2023-09-24 01:03:09', '2023-09-24 01:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_one` longtext DEFAULT NULL,
  `image_two` longtext DEFAULT NULL,
  `image_three` longtext DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `hall_id`, `name`, `description`, `image_one`, `image_two`, `image_three`, `capacity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 2, '1st Floor', 'capacity: 1200+', '1695093934.senamalancha-is-one-of-the-best-convention.webp', '1695093934.2021-10-16.jpg', '1695093934.06-12-2021-SENAMALANCHO-06.jpg', '1200', '1', 92, 92, '2023-09-18 21:25:34', '2023-09-19 22:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_one` longtext DEFAULT NULL,
  `image_two` longtext DEFAULT NULL,
  `image_three` longtext DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `description`, `image_one`, `image_two`, `image_three`, `location`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Senamalancha', 'Senamalancha – a spectacular world class Convention Hall and Conference Centre, located at the heart of Dhaka city, is on the western side of Naval HQ on Airport Road, Dhaka Cantonment. This is an exclusive venue where your dream for a grand celebration comes into reality.', '1695178321.senamalancha-is-one-of-the-best-convention.webp', '1695178321.61YI9748xGL._AC_SL1000_.jpg', '1695178321.2911c27cc5629ae6d1d7a100bd011ebaff1b29d0.webp', 'RC32+74F, Dhaka Cantonment, (Western Side of Naval Headquarters on airport road, Dhaka', '1', 92, 92, '2023-09-18 21:39:12', '2023-09-19 20:52:01'),
(2, 'Sena Kunja', 'Senakunja is the official auditoriam / convention centre of Bangladesh Armed Forces and is located in Dhaka Cantonment. The venue holds official events of Bangladesh Armed Forces. as well as used for wedding ceremonies and other social gatherings.', '1695100090.download.jfif', '1695100090.17256178622_e63492a663_b.jpg', '1695100090.Sena-Convention-Hall.jpg', 'R93X+9MG, Shaheed Sharani, Dhaka', '1', 92, 92, '2023-09-18 23:08:10', '2023-09-19 21:11:02'),
(11, 'Petra Decker', 'Do velit mollit obc', '', '', '', 'Incidunt consectetu', '0', 92, 92, '2023-09-19 21:29:53', '2023-09-19 21:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `hallsss`
--

CREATE TABLE `hallsss` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hallsss`
--

INSERT INTO `hallsss` (`id`, `name`, `description`, `image`, `location`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Sena Kunjo', 'Senakunja is the official auditoriam / convention centre of Bangladesh Armed Forces and is located in Dhaka Cantonment. The venue holds official events of Bangladesh Armed Forces. as well as used for wedding ceremonies and other social gatherings.', NULL, 'R93X+9MG, Shaheed Sharani, Dhaka', '1', 92, 92, '2023-09-17 01:46:18', '2023-09-17 01:46:18'),
(3, 'Sena Malancha', 'SENA MALANCHA – a spectacular world class Convention Hall and Conference Centre, located at the heart of Dhaka city, is on the western side of Naval HQ on Airport Road, Dhaka Cantonment. This is an exclusive venue where your dream for a grand celebration comes into reality. Social or corporate gathering will find the most spacious place with a secured atmosphere. Aesthetically designed this Convention Hall is ready to host 5,000 (with dining capacity of 1300 guests at a time) guests. Satisfaction of the guests is guaranteed by the mouth-watering dishes prepared by a group of specialized catering service provider. Exceptional hospitality offered by a highly professional team of Management will create an unforgettable memory in your mind. SENA MALANCHA is an enterprise of Army Welfare Trust.', NULL, 'Cantonment, Western Side of Naval Headquarters on Airport Road, Dhaka', '1', 92, 92, '2023-09-17 01:48:15', '2023-09-17 01:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `hall_accessories_facilities`
--

CREATE TABLE `hall_accessories_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `floor_id` int(11) DEFAULT 12,
  `num_of_extra_room` varchar(255) DEFAULT NULL,
  `num_of_chair` varchar(255) DEFAULT NULL,
  `num_of_table` varchar(255) DEFAULT NULL,
  `num_of_sofa` varchar(255) DEFAULT NULL,
  `car_parking_limit` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hall_accessories_facilities`
--

INSERT INTO `hall_accessories_facilities` (`id`, `hall_id`, `floor_id`, `num_of_extra_room`, `num_of_chair`, `num_of_table`, `num_of_sofa`, `car_parking_limit`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '5', '1000', '50', '10', '150', 92, 92, '2023-09-20 21:00:19', '2023-09-20 21:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `hall_prices`
--

CREATE TABLE `hall_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `floor_id` int(11) DEFAULT 12,
  `user_category_id` int(11) DEFAULT 12,
  `specify_event` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `specify_month` varchar(255) DEFAULT NULL,
  `months` varchar(255) DEFAULT NULL,
  `specify_ramadan` varchar(255) DEFAULT NULL,
  `specify_holiday` varchar(255) DEFAULT NULL,
  `specify_shift_charge` varchar(255) DEFAULT NULL,
  `shift_id` int(11) DEFAULT 12,
  `price` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hall_prices`
--

INSERT INTO `hall_prices` (`id`, `hall_id`, `floor_id`, `user_category_id`, `specify_event`, `event_name`, `specify_month`, `months`, `specify_ramadan`, `specify_holiday`, `specify_shift_charge`, `shift_id`, `price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 1, NULL, NULL, 'on', '[\"January\",\"February\",\"March\",\"April\"]', NULL, 'on', 'on', 1, '50000', '1', 92, 92, '2023-09-23 21:47:17', '2023-09-23 21:47:17'),
(3, 2, 2, 1, 'on', 'Birthday', 'on', '[\"January\",\"February\",\"March\",\"April\",\"May\"]', 'on', 'on', 'on', 1, '600000', '1', 92, 92, '2023-09-23 22:29:44', '2023-09-23 23:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `master_menu`
--

CREATE TABLE `master_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_name_bn` varchar(100) NOT NULL,
  `menu_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_is_active` int(11) DEFAULT NULL,
  `menu_icon_class` varchar(100) DEFAULT NULL,
  `menu_dynamic_route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `master_menu`
--

INSERT INTO `master_menu` (`id`, `menu_name`, `menu_name_bn`, `menu_parent_id`, `menu_is_active`, `menu_icon_class`, `menu_dynamic_route_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Dashboard', 'ড্যাশবোর্ড', NULL, 0, 'ik-home', 1, '2023-09-11 17:27:05', '2023-09-11 11:27:05', 1, 92);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_09_18_033200_create_floors_table', 2),
(6, '2023_09_19_032952_create_halls_table', 3),
(7, '2023_09_20_042546_create_shifts_table', 4),
(8, '2023_09_20_062818_create_hall_accessories_facilities_table', 5),
(9, '2023_09_21_034616_create_user_categories_table', 6),
(10, '2023_09_21_052021_create_hall_prices_table', 7),
(11, '2023_09_24_051424_create_others_prices_table', 8),
(12, '2023_09_24_063127_create_settings_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `others_prices`
--

CREATE TABLE `others_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `security_amount` varchar(255) DEFAULT NULL,
  `extra_amount_per_hour` varchar(255) DEFAULT NULL,
  `service_charge_for_defence` varchar(255) DEFAULT NULL,
  `service_charge_for_non_defence` varchar(255) DEFAULT NULL,
  `vat_in_percentage` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `others_prices`
--

INSERT INTO `others_prices` (`id`, `hall_id`, `security_amount`, `extra_amount_per_hour`, `service_charge_for_defence`, `service_charge_for_non_defence`, `vat_in_percentage`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '70000', '1000', '80', '100', '15', 92, 92, '2023-09-24 00:10:27', '2023-09-24 00:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', 'kOhs7z3ESVOCZMtRtya5ZcYkfwk8GVRBIprSLHZyM6KY9LaAcTaXQ3apZv4TP7YY', '2022-05-22 00:37:08'),
('user@gmail.com', 'MMmiu9fBl8IRGkf6PJA6SDjff4GSPGHIoEp8DIHTFIXSkeh6kubDy4Lga68lAS7r', '2022-05-22 00:38:19'),
('user@gmail.com', 'LIfTsKgvWNigkwFxonbhtUrBFTKzId908bLirwRThMY9D6w5kN4NZHLDzvXfQjoU', '2022-05-22 00:38:29'),
('user@gmail.com', 'rBuNN7X6pdcRYGrXtFVjbbbwTkSiksQfKoDDsZh2zWhaeUhSHhDMNYcH2peJWkQd', '2022-05-22 00:39:06'),
('user@gmail.com', 'apMaBrO9CbSFvCRVG26bVC85QcTyv3JsLXB1cHuCT53rNommbFWAdpIBTmqwRHqq', '2022-05-22 00:39:35'),
('user@gmail.com', 'XXO1M6XBaEfzvNabByWfYVu307KCTQl6FU8bkN6qxHEFZb6REa733fLj5LOYEn8v', '2022-05-22 00:40:02'),
('rhythms@outlook.com', 'bxlrulG4eG7yTv3nXTBtcWxvuHbILWlCpDfzq6L2SjDrBnS6XQ1gDIw95kNiaexE', '2022-05-22 22:01:00'),
('rhythms@outlook.com', '6lvEqaGysQpuy2JbN0OVoXvmGWaDtgeAK5MyRuNwZT4fpLRxHqXyUSLFcnMRvdir', '2022-05-22 22:05:28'),
('rhythms@outlook.com', 'jJ1oE2sPFjsgmf0DwPlm1fbRxxAeIDgojxvkMhYSGzQi9dcwo3qsO2C9sYDCHa2V', '2022-05-22 22:06:17'),
('rhythms@outlook.com', 'WqytRUclAiNYmjWTMYKst3pSzGOvXnyzCpc4TlcvTp6eaHydPPPt9lr7xBfSTQyH', '2022-05-22 22:07:17'),
('rhythms@outlook.com', 'RTS5zKRx7LqaCEwMXknmcYzoJcYLUmK6Jj5mbec5I0NjNI4KDihIYqYqosINcu7I', '2022-05-22 22:07:20'),
('rhythms@outlook.com', 'KscypHsHe6KYtNFOxEEwDs2pQZefDNCknfuqIcTa6ChpJgcECpbildRAqYHZjYiN', '2022-05-22 22:07:47'),
('khasrur8@gmail.com', 'CrhW9E75ckpPk2VgdztcMMumQZ9UzZtVCfX23IVHrVpltOM8gN23gog6BnxLpWP8', '2022-05-22 22:42:17'),
('3434@sdds', 'qJxuVUaWRWbD4T68keMzT80HdzGWh3mK7P7dSRYUXDrbmzdpgkIxPesLQneklyxZ', '2022-05-22 22:45:11'),
('khasrur8@gmail.com', 'fDTT1sso1nMPvV0zKWjUTuTfLun9vZQFLRtvodYgTdv4eaItF2vOeyfRQggBaBQj', '2022-05-22 22:46:06'),
('khasrur8@gmail.com', 'cGUqE3BHV5dP8Hh30wFigi6SUpjCQ4xFhBfEjarFWcEDcAHj4pJGScN44E0bk0JB', '2022-05-22 22:58:46'),
('khasrur8@gmail.com', 'vxCGETQiYA7CgEzrMCbzMLJklnWF5jJGfOpjI3GprWUzDMJckfCnz4xlZeVUb0s7', '2022-05-22 22:59:22'),
('rhythms@outlook.com', 'b3N8UaLnESp8aI7W3DQjybSOnu5omgghRCJrWcOW26GiyZdh27d1h61eRR8NE45h', '2022-05-22 23:03:27'),
('rhythms@outlook.com', 'wYm92Gv1hbEbPE1H9fZVmU06bsrU0wtd4weO1hXzKdVnmLqpClkB3YMUQbcXR56q', '2022-05-22 23:03:50'),
('rhythms@outlook.com', 'hb680E4eXdfLBWU9DcOBBCXUToJGSaGq3C5cX93iyasgaafDtsp6r67fRmRZm2cK', '2022-05-22 23:05:34'),
('rhythms@outlook.com', 'a4Jhba5fmZ8okVHJGfOICtLGY80nJvMQpdmdsWhr8jPl0xpfPeqC2G6dnLHkSYGw', '2022-05-22 23:11:14'),
('rhythms@outlook.com', 'ksA3kgPwy2u6sD9wi7WE7bzs0jBWFhnucnNu6EPivclr9Mcjih2G89VUm3rcVIwD', '2022-05-22 23:11:53'),
('rhythms@outlook.com', 'arGpG0T640t7GuONcjoCEcQMqTzDbtcU37JFgcB3547cu1p4Zx9plDUDnv5aruBj', '2022-05-22 23:12:22'),
('khasrur8@gmail.com', 'zPkQFcgaHvf3sU2coXIPZx7X6e3OoYcziAb6lz8O1o3ijBysCocJjIq7AgPyDjFJ', '2022-05-22 23:12:50'),
('khasrur8@gmail.com', '5tfnIjLw2bSfuKmTY8aVjcz2Rlg9XvfUkIDVAoQujsIUbKx1zGpC5lwjokEsWALS', '2022-05-22 23:33:35'),
('user@gmail.com', 'kOhs7z3ESVOCZMtRtya5ZcYkfwk8GVRBIprSLHZyM6KY9LaAcTaXQ3apZv4TP7YY', '2022-05-22 00:37:08'),
('user@gmail.com', 'MMmiu9fBl8IRGkf6PJA6SDjff4GSPGHIoEp8DIHTFIXSkeh6kubDy4Lga68lAS7r', '2022-05-22 00:38:19'),
('user@gmail.com', 'LIfTsKgvWNigkwFxonbhtUrBFTKzId908bLirwRThMY9D6w5kN4NZHLDzvXfQjoU', '2022-05-22 00:38:29'),
('user@gmail.com', 'rBuNN7X6pdcRYGrXtFVjbbbwTkSiksQfKoDDsZh2zWhaeUhSHhDMNYcH2peJWkQd', '2022-05-22 00:39:06'),
('user@gmail.com', 'apMaBrO9CbSFvCRVG26bVC85QcTyv3JsLXB1cHuCT53rNommbFWAdpIBTmqwRHqq', '2022-05-22 00:39:35'),
('user@gmail.com', 'XXO1M6XBaEfzvNabByWfYVu307KCTQl6FU8bkN6qxHEFZb6REa733fLj5LOYEn8v', '2022-05-22 00:40:02'),
('rhythms@outlook.com', 'bxlrulG4eG7yTv3nXTBtcWxvuHbILWlCpDfzq6L2SjDrBnS6XQ1gDIw95kNiaexE', '2022-05-22 22:01:00'),
('rhythms@outlook.com', '6lvEqaGysQpuy2JbN0OVoXvmGWaDtgeAK5MyRuNwZT4fpLRxHqXyUSLFcnMRvdir', '2022-05-22 22:05:28'),
('rhythms@outlook.com', 'jJ1oE2sPFjsgmf0DwPlm1fbRxxAeIDgojxvkMhYSGzQi9dcwo3qsO2C9sYDCHa2V', '2022-05-22 22:06:17'),
('rhythms@outlook.com', 'WqytRUclAiNYmjWTMYKst3pSzGOvXnyzCpc4TlcvTp6eaHydPPPt9lr7xBfSTQyH', '2022-05-22 22:07:17'),
('rhythms@outlook.com', 'RTS5zKRx7LqaCEwMXknmcYzoJcYLUmK6Jj5mbec5I0NjNI4KDihIYqYqosINcu7I', '2022-05-22 22:07:20'),
('rhythms@outlook.com', 'KscypHsHe6KYtNFOxEEwDs2pQZefDNCknfuqIcTa6ChpJgcECpbildRAqYHZjYiN', '2022-05-22 22:07:47'),
('khasrur8@gmail.com', 'CrhW9E75ckpPk2VgdztcMMumQZ9UzZtVCfX23IVHrVpltOM8gN23gog6BnxLpWP8', '2022-05-22 22:42:17'),
('3434@sdds', 'qJxuVUaWRWbD4T68keMzT80HdzGWh3mK7P7dSRYUXDrbmzdpgkIxPesLQneklyxZ', '2022-05-22 22:45:11'),
('khasrur8@gmail.com', 'fDTT1sso1nMPvV0zKWjUTuTfLun9vZQFLRtvodYgTdv4eaItF2vOeyfRQggBaBQj', '2022-05-22 22:46:06'),
('khasrur8@gmail.com', 'cGUqE3BHV5dP8Hh30wFigi6SUpjCQ4xFhBfEjarFWcEDcAHj4pJGScN44E0bk0JB', '2022-05-22 22:58:46'),
('khasrur8@gmail.com', 'vxCGETQiYA7CgEzrMCbzMLJklnWF5jJGfOpjI3GprWUzDMJckfCnz4xlZeVUb0s7', '2022-05-22 22:59:22'),
('rhythms@outlook.com', 'b3N8UaLnESp8aI7W3DQjybSOnu5omgghRCJrWcOW26GiyZdh27d1h61eRR8NE45h', '2022-05-22 23:03:27'),
('rhythms@outlook.com', 'wYm92Gv1hbEbPE1H9fZVmU06bsrU0wtd4weO1hXzKdVnmLqpClkB3YMUQbcXR56q', '2022-05-22 23:03:50'),
('rhythms@outlook.com', 'hb680E4eXdfLBWU9DcOBBCXUToJGSaGq3C5cX93iyasgaafDtsp6r67fRmRZm2cK', '2022-05-22 23:05:34'),
('rhythms@outlook.com', 'a4Jhba5fmZ8okVHJGfOICtLGY80nJvMQpdmdsWhr8jPl0xpfPeqC2G6dnLHkSYGw', '2022-05-22 23:11:14'),
('rhythms@outlook.com', 'ksA3kgPwy2u6sD9wi7WE7bzs0jBWFhnucnNu6EPivclr9Mcjih2G89VUm3rcVIwD', '2022-05-22 23:11:53'),
('rhythms@outlook.com', 'arGpG0T640t7GuONcjoCEcQMqTzDbtcU37JFgcB3547cu1p4Zx9plDUDnv5aruBj', '2022-05-22 23:12:22'),
('khasrur8@gmail.com', 'zPkQFcgaHvf3sU2coXIPZx7X6e3OoYcziAb6lz8O1o3ijBysCocJjIq7AgPyDjFJ', '2022-05-22 23:12:50'),
('khasrur8@gmail.com', '5tfnIjLw2bSfuKmTY8aVjcz2Rlg9XvfUkIDVAoQujsIUbKx1zGpC5lwjokEsWALS', '2022-05-22 23:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_route_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `dynamic_route_id`, `url`, `created_at`, `updated_at`) VALUES
(6978, 14, 1, 'adminDashboard', '2021-03-25 05:12:19', '2021-03-25 05:12:19'),
(6979, 14, 91, 'admin/change_password', '2021-03-25 05:12:19', '2021-03-25 05:12:19'),
(6980, 14, 92, 'admin/save_change_password', '2021-03-25 05:12:19', '2021-03-25 05:12:19'),
(10432, 17, 1, 'adminDashboard', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(10433, 17, 91, 'admin/change_password', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(10434, 17, 92, 'admin/save_change_password', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(10467, 16, 1, 'adminDashboard', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10468, 16, 91, 'admin/change_password', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10469, 16, 92, 'admin/save_change_password', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10470, 16, 9, 'all_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10471, 16, 93, 'edit_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10472, 16, 94, 'upadte_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10473, 16, 95, 'suspend_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10474, 16, 96, 'unsuspend_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10475, 16, 130, 'test', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(13259, 18, 1, 'adminDashboard', '2021-09-27 00:27:50', '2021-09-27 00:27:50'),
(13260, 18, 91, 'admin/change_password', '2021-09-27 00:27:50', '2021-09-27 00:27:50'),
(13261, 18, 92, 'admin/save_change_password', '2021-09-27 00:27:50', '2021-09-27 00:27:50'),
(13970, 12, 1, 'adminDashboard', '2021-12-29 22:37:31', '2021-12-29 22:37:31'),
(13971, 12, 91, 'admin/change_password', '2021-12-29 22:37:31', '2021-12-29 22:37:31'),
(13972, 12, 92, 'admin/save_change_password', '2021-12-29 22:37:31', '2021-12-29 22:37:31'),
(13986, 12, 274, 'password/change_pasword', '2021-12-29 22:37:31', '2021-12-29 22:37:31'),
(13987, 12, 275, 'password/save_change_password', '2021-12-29 22:37:31', '2021-12-29 22:37:31'),
(13990, 19, 1, 'adminDashboard', '2022-01-12 02:02:39', '2022-01-12 02:02:39'),
(13991, 19, 91, 'admin/change_password', '2022-01-12 02:02:39', '2022-01-12 02:02:39'),
(13992, 19, 92, 'admin/save_change_password', '2022-01-12 02:02:39', '2022-01-12 02:02:39'),
(13996, 19, 274, 'password/change_pasword', '2022-01-12 02:02:39', '2022-01-12 02:02:39'),
(13997, 19, 275, 'password/save_change_password', '2022-01-12 02:02:39', '2022-01-12 02:02:39'),
(15164, 11, 1, 'adminDashboard', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15165, 11, 91, 'admin/change_password', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15166, 11, 92, 'admin/save_change_password', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15167, 11, 3, 'dynamic_route', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15168, 11, 4, 'dynamic_route', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15169, 11, 14, 'delete_route', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15170, 11, 16, 'edit_route', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15171, 11, 19, 'update_route', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15172, 11, 5, 'role/all_role', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15173, 11, 6, 'role/add_role', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15174, 11, 8, 'save_role', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15175, 11, 11, 'edit_role', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15176, 11, 12, 'update_role', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15177, 11, 13, 'delete_role', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15178, 11, 9, 'all_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15179, 11, 10, 'save_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15180, 11, 93, 'edit_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15181, 11, 94, 'upadte_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15182, 11, 95, 'suspend_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15183, 11, 96, 'unsuspend_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15184, 11, 127, 'delete_user', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15185, 11, 130, 'test', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15186, 11, 131, 'menu/menu_create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15187, 11, 133, 'menu/menu_save', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15188, 11, 134, 'menu/all_menu', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15189, 11, 135, 'menu/menu_search', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15190, 11, 138, 'menu/edit_menu', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15191, 11, 139, 'menu/update_menu', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15192, 11, 274, 'password/change_pasword', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15193, 11, 275, 'password/save_change_password', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15194, 11, 288, 'hall', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15195, 11, 289, 'hall/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15196, 11, 290, 'hall/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15197, 11, 291, 'hall/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15198, 11, 292, 'hall/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15199, 11, 293, 'hall/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15200, 11, 300, 'hall/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15201, 11, 316, 'hall/get_floor', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15202, 11, 331, 'hall/get_user_category', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15203, 11, 332, 'hall/get_shift', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15204, 11, 294, 'floor', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15205, 11, 295, 'floor/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15206, 11, 296, 'floor/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15207, 11, 297, 'floor/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15208, 11, 298, 'floor/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15209, 11, 299, 'floor/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15210, 11, 301, 'floor/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15211, 11, 302, 'shift', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15212, 11, 303, 'shift/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15213, 11, 304, 'shift/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15214, 11, 305, 'shift/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15215, 11, 306, 'shift/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15216, 11, 307, 'shift/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15217, 11, 308, 'shift/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15218, 11, 309, 'hall_accessories_facilities', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15219, 11, 310, 'hall_accessories_facilities/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15220, 11, 311, 'hall_accessories_facilities/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15221, 11, 312, 'hall_accessories_facilities/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15222, 11, 313, 'hall_accessories_facilities/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15223, 11, 314, 'hall_accessories_facilities/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15224, 11, 315, 'hall_accessories_facilities/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15225, 11, 317, 'user_category', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15226, 11, 318, 'user_category/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15227, 11, 319, 'user_category/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15228, 11, 320, 'user_category/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15229, 11, 321, 'user_category/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15230, 11, 322, 'user_category/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15231, 11, 323, 'user_category/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15232, 11, 324, 'hall_price', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15233, 11, 325, 'hall_price/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15234, 11, 326, 'hall_price/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15235, 11, 327, 'hall_price/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15236, 11, 328, 'hall_price/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15237, 11, 329, 'hall_price/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15238, 11, 330, 'hall_price/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15239, 11, 333, 'others_prices', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15240, 11, 334, 'others_prices/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15241, 11, 335, 'others_prices/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15242, 11, 336, 'others_prices/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15243, 11, 337, 'others_prices/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15244, 11, 338, 'others_prices/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15245, 11, 339, 'others_prices/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15246, 11, 340, 'settings', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15247, 11, 341, 'settings/all_data', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15248, 11, 342, 'settings/create', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15249, 11, 343, 'settings/store', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15250, 11, 344, 'settings/edit', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15251, 11, 345, 'settings/update', '2023-09-24 01:04:38', '2023-09-24 01:04:38'),
(15252, 11, 346, 'settings/delete', '2023-09-24 01:04:38', '2023-09-24 01:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slag`, `created_at`, `updated_at`) VALUES
(11, 'Super Admin', 'super_admin', '2021-01-12 00:43:52', '2021-01-12 00:43:52'),
(12, 'Admin', 'admin', '2021-01-21 02:25:27', '2021-01-21 02:25:27'),
(14, 'Accounts', 'accounts', '2021-01-21 02:31:02', '2021-01-21 02:31:02'),
(16, 'SubAdmin', 'subadmin', '2021-04-26 17:53:50', '2021-04-26 17:53:50'),
(17, 'test', 'test', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(18, 'ratin_update', 'ratin_update', '2021-09-27 00:27:50', '2021-09-27 00:27:50'),
(19, 'Pdf generate', 'pdf_generate', '2022-01-12 02:02:39', '2022-01-12 02:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `logo` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_information` longtext DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `facebook_link` longtext DEFAULT NULL,
  `instagram_link` longtext DEFAULT NULL,
  `youtube_link` longtext DEFAULT NULL,
  `about_us` longtext DEFAULT NULL,
  `policy` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `hall_id`, `logo`, `email`, `contact_information`, `location`, `facebook_link`, `instagram_link`, `youtube_link`, `about_us`, `policy`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, '1695544328.avater3.png', 'cubodu@mailinator.com', 'Ipsam autem incididu', 'Voluptas sit quidem', 'Incididunt vero veli', 'Pariatur Ad porro i', 'Excepteur molestias', 'Illo aut in quibusda', 'Dolor incididunt qui', 92, 92, '2023-09-24 02:32:08', '2023-09-24 03:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `name` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `hall_id`, `name`, `start_time`, `end_time`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Day Shift', '10:00', '15:00', '1', 92, 92, '2023-09-19 23:00:11', '2023-09-21 02:18:13'),
(2, 2, 'Evening Shift', '17:00', '23:00', '1', 92, 92, '2023-09-19 23:00:25', '2023-09-21 02:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(86) DEFAULT NULL,
  `lastname` varchar(86) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(124) DEFAULT NULL,
  `password` varchar(124) DEFAULT NULL,
  `submit_status` varchar(255) DEFAULT '0' COMMENT '1=sumited, 0=not submited, 2=pending , 3 = Approved',
  `gender` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Active,0=Inactive,2=Deleted',
  `country` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `disapproval_reason` longtext DEFAULT NULL,
  `passport_status` varchar(255) DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `mobile`, `email`, `password`, `submit_status`, `gender`, `status`, `country`, `course`, `year`, `disapproval_reason`, `passport_status`, `submit_date`, `created_at`, `created_by`, `updated_at`, `version`, `remember_token`) VALUES
(109, 'Test course Member', NULL, NULL, 'user@gmail.com', '$2y$10$aYztU1Lijx81Z8OW9LRe2OiSpORhbaFSPh6/rvd7IYWCmCF22BIba', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-28 04:00:05', NULL, '2021-11-28 04:00:05', NULL, NULL),
(238, 'Jayme Morton', NULL, 'Ex sit sint duis of', 'rycecuwi@mailinator.com', '$2y$10$EguyK5cWKbem8a6st7glCOMZxriB9okfZNaPcaAgl51Aic9UG8OQ6', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 13:08:45', NULL, '2022-05-18 13:08:45', NULL, NULL),
(239, 'MD Nazmus Sadat', NULL, '01769006627', 'sadat0311@gmail.com', '$2y$10$aU6tqkD.X8RndGzLiUORDOb8rJfVyIMlzB1Eqn77H6lL1OAcgSB8q', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 15:50:52', NULL, '2022-05-18 15:50:52', NULL, NULL),
(240, 'sss', NULL, '01761955765', 'labony277@gmail.com', '$2y$10$KKErUAYQnP.6FW6Pro.vX.66bd9elN2G53B9KNSQ2X7t.aVxAWkh2', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 03:32:05', NULL, '2022-05-19 03:32:05', NULL, NULL),
(241, 'Md.imam hossain', NULL, '01623898455', 'imam7bir@gmail.com', '$2y$10$MnWNk86WpHDPtbDbIvSbjuSKMaS0t0sUMDelriCIB6Y6k0yXOqTaW', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 03:34:08', NULL, '2022-05-19 03:34:08', NULL, NULL),
(242, 'Scarlett Stafford', NULL, 'Exercitation saepe e', 'kareva@mailinator.com', '$2y$10$aKxvd.0uUiZbIM7b6jI0HOOHUP6KwP0I0zamaFrsGUuvGf3Hk.4yy', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 03:39:13', NULL, '2022-05-19 03:39:13', NULL, NULL),
(243, 'Md Sahadad Bin Arif', NULL, '01811111820', 'bushratasin@gmail.com', '$2y$10$qv9D0Qgr.OOhAW2aT0LM6uny9e0A5xNguAzM5PDPvxxAbbxgIKKu6', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:55:41', NULL, '2022-05-19 07:55:41', NULL, NULL),
(244, 'Md Delwar Hossain', NULL, '01720944859', 'delwarhossain28606@gmail.com', '$2y$10$CQy.BE22FRXskg4VPubqTey325w4KHhdI0vdRuUc9gVWzKdJpZMrG', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 07:58:35', NULL, '2022-05-19 07:58:35', NULL, NULL),
(245, 'Md Enamul Haque', NULL, '01714707331', 'enamulhaque32453@gmail.com', '$2y$10$co64uKDtrysQYi3ErfqoEO7hGDHck6faYjVl5wReximYzNpfYF2CW', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 08:13:57', NULL, '2022-05-19 08:13:57', NULL, NULL),
(246, 'MD. REZAUL KARIM', NULL, '01724731547', 'rezaulkarim45593@gmail.com', '$2y$10$WrghEIzkor3TBFF8kUeK4ura2vy/GaAKv0sxZ/qjk5iTrtFBp9YRi', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 16:10:48', NULL, '2022-05-19 16:10:48', NULL, NULL),
(247, 'Mohammad Jakir Hossen', NULL, '01740738421', 'jakirchowdhury00848@gmail.com', '$2y$10$wtGZppFroqb9IgwtBLLWnuqtG/CVK10hAuZJi.rNYLGSlLeTSICN2', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 16:58:44', NULL, '2022-05-19 16:58:44', NULL, NULL),
(248, 'Sumaiya Yesmin', NULL, '01762205907', 'sumaiya1096@gmail.com', '$2y$10$mQ/XGHTPDQ/9O6MTUS8q..bLD4gNV4m/POsrCqTfu6tPDPKLPbUNW', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-22 07:21:18', NULL, '2022-05-22 07:21:18', NULL, NULL),
(249, 'Muhammad Rasel Mia', NULL, '01716-086829', 'raselahmed1823@gmail.com', '$2y$10$2q7Mr/3nDlKt5YonN7rzfuFMqP7a04.U3ncpEiE8feSCl5xHI6ify', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-22 07:57:20', NULL, '2022-05-22 07:57:20', NULL, NULL),
(250, 'BADRUL ALAM', NULL, '008801616095116', 'badruluae@gmail.com', '$2y$10$EIo1.KNpOW5utbYDN/e16.F9ZTLLbN3Lkz9t24UEYnXxp8w0MyqV6', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-22 10:49:04', NULL, '2022-05-22 10:49:04', NULL, NULL),
(251, 'Shazzadul Islam', NULL, '01914402850', 'shazzadbd@gmail.com', '$2y$10$GUMQKvLUyHk6jBfKp1X0VO7cH3kVkiVCO3Z7CbsExKK5R2iiuxEum', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 03:20:51', NULL, '2022-05-23 03:20:51', NULL, NULL),
(252, 'Fardin Sabahat Khan', NULL, '01798324475', 'fardin41@gmail.com', '$2y$10$eIKL/X3M0KJKlqFuBmRpIuGrP/8mAnGoLK72JWgQKRlXJeJrjHil2', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:56:15', NULL, '2022-05-23 04:56:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_categories`
--

CREATE TABLE `user_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hall_id` int(11) DEFAULT 12,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_categories`
--

INSERT INTO `user_categories` (`id`, `hall_id`, `name`, `code`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Civil', 'Civil', 'Civilian Person', '1', 92, 92, '2023-09-20 22:10:01', '2023-09-20 22:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `role_id` (`role_id`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `url` (`url`) USING BTREE,
  ADD KEY `model_name` (`model_name`) USING BTREE,
  ADD KEY `controller_action` (`controller_action`) USING BTREE,
  ADD KEY `method` (`method`) USING BTREE,
  ADD KEY `show_in_menu` (`show_in_menu`) USING BTREE,
  ADD KEY `ajax` (`ajax`) USING BTREE;

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hallsss`
--
ALTER TABLE `hallsss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_accessories_facilities`
--
ALTER TABLE `hall_accessories_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_prices`
--
ALTER TABLE `hall_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_menu`
--
ALTER TABLE `master_menu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_menu_parent_id` (`menu_parent_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others_prices`
--
ALTER TABLE `others_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permission_roles_role_id_foreign` (`role_id`) USING BTREE,
  ADD KEY `permission_roles_dynamic_route_id_foreign` (`dynamic_route_id`) USING BTREE,
  ADD KEY `dynamic_route_id` (`dynamic_route_id`) USING BTREE,
  ADD KEY `role_id` (`role_id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hallsss`
--
ALTER TABLE `hallsss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hall_accessories_facilities`
--
ALTER TABLE `hall_accessories_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hall_prices`
--
ALTER TABLE `hall_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `others_prices`
--
ALTER TABLE `others_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15253;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_categories`
--
ALTER TABLE `user_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_menu`
--
ALTER TABLE `master_menu`
  ADD CONSTRAINT `fk_menu_parent_id` FOREIGN KEY (`menu_parent_id`) REFERENCES `master_menu` (`id`);

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_ibfk_1` FOREIGN KEY (`dynamic_route_id`) REFERENCES `dynamic_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
