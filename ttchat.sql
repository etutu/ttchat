-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-31 01:38:39
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ttchat`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password_hash` varchar(255) DEFAULT NULL COMMENT '密码',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `user_mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `portrait` varchar(255) DEFAULT NULL COMMENT '头像文件路径',
  `origin_place` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `living_place` varchar(255) DEFAULT NULL COMMENT '现居地',
  `religious_belief` int(11) DEFAULT NULL COMMENT '宗教信仰',
  `is_member` int(1) NOT NULL DEFAULT '0' COMMENT '是否为会员',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '账号状态',
  `auth_key` varchar(200) NOT NULL COMMENT '验证用的，我也不知道是什么',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`id`, `user_name`, `password_hash`, `user_email`, `user_mobile`, `sex`, `portrait`, `origin_place`, `living_place`, `religious_belief`, `is_member`, `status`, `auth_key`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$13$pXj3PyL7mia1YImaeZQou.IPWVNLzPJ/Acv0c2smYpkOO1bR3twn6', '531165749@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 'EuxDn0xcOxhrnomt25lKiObsnEX9DlIJ', 1501385628, 1501385628),
(2, 'adm', '$2y$13$OIWhuF4v77Ax0l0pGCz7EuQam4JhbolS7HfRcYhkxi7Mh6R0tiXo.', 'admin@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '73FWTl6wA_-N3QhXXhbxPRJEpy7e7tp2', 1501398643, 1501398643);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password_hash` varchar(255) DEFAULT NULL COMMENT '密码',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `user_mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `portrait` varchar(255) DEFAULT NULL COMMENT '头像文件路径',
  `origin_place` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `living_place` varchar(255) DEFAULT NULL COMMENT '现居地',
  `religious_belief` int(11) DEFAULT NULL COMMENT '宗教信仰',
  `is_member` int(1) NOT NULL DEFAULT '0' COMMENT '是否为会员',
  `status` int(1) NOT NULL COMMENT 'yii需要的，我也不知道是什么',
  `auth_key` varchar(200) NOT NULL COMMENT '验证用的，我也不知道是什么',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '账号是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user_name`, `password_hash`, `user_email`, `user_mobile`, `sex`, `portrait`, `origin_place`, `living_place`, `religious_belief`, `is_member`, `status`, `auth_key`, `created_at`, `updated_at`, `is_valid`) VALUES
(1, 'chen', '$2y$13$nIZ5KtL9nt3kAUH3obEtIeNUmCP6VbdaUmk4ZUH2jjODyg/LxYqJy', '531165749@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, 'q1-1BjA7k5z5bq9ORID1aaHLgn7vfWiQ', 1501402173, 1501402173, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
