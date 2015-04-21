-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Apr 2015 um 23:02
-- Server-Version: 5.6.24
-- PHP-Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `redaxo_laupaire`
--
CREATE DATABASE IF NOT EXISTS `redaxo_laupaire` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `redaxo_laupaire`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_62_params`
--

CREATE TABLE IF NOT EXISTS `rex_62_params` (
  `field_id` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prior` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `restrictions` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_62_params`
--

INSERT INTO `rex_62_params` (`field_id`, `title`, `name`, `prior`, `attributes`, `type`, `default`, `params`, `validate`, `restrictions`, `createuser`, `createdate`, `updateuser`, `updatedate`) VALUES
(1, 'translate:pool_file_description', 'med_description', 1, '', 2, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(2, 'translate:pool_file_copyright', 'med_copyright', 2, '', 1, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(3, 'translate:online_from', 'art_online_from', 1, '', 10, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(4, 'translate:online_to', 'art_online_to', 2, '', 10, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(5, 'translate:description', 'art_description', 3, '', 2, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(6, 'translate:keywords', 'art_keywords', 4, '', 2, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(7, 'translate:metadata_image', 'art_file', 5, '', 6, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(8, 'translate:teaser', 'art_teaser', 6, '', 5, '', '', '', '', '%USER%', 1429645436, '%USER%', 1429645436),
(9, 'translate:header_article_type', 'art_type_id', 7, 'size=1', 3, '', 'Standard|Zugriff fuer alle', '', '', '%USER%', 1429645436, '%USER%', 1429645436);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_62_type`
--

CREATE TABLE IF NOT EXISTS `rex_62_type` (
  `id` int(10) unsigned NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_62_type`
--

INSERT INTO `rex_62_type` (`id`, `label`, `dbtype`, `dblength`) VALUES
(1, 'text', 'text', 0),
(2, 'textarea', 'text', 0),
(3, 'select', 'varchar', 255),
(4, 'radio', 'varchar', 255),
(5, 'checkbox', 'varchar', 255),
(10, 'date', 'text', 0),
(13, 'time', 'text', 0),
(11, 'datetime', 'text', 0),
(12, 'legend', 'text', 0),
(6, 'REX_MEDIA_BUTTON', 'varchar', 255),
(7, 'REX_MEDIALIST_BUTTON', 'text', 0),
(8, 'REX_LINK_BUTTON', 'varchar', 255),
(9, 'REX_LINKLIST_BUTTON', 'text', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_375_archive`
--

CREATE TABLE IF NOT EXISTS `rex_375_archive` (
  `id` smallint(4) unsigned NOT NULL,
  `clang` tinyint(4) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `htmlbody` text NOT NULL,
  `textbody` text NOT NULL,
  `format` varchar(10) NOT NULL,
  `recipients` longtext NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gid` smallint(4) unsigned NOT NULL,
  `setupdate` int(11) NOT NULL,
  `sentdate` int(11) NOT NULL,
  `sentby` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_375_group`
--

CREATE TABLE IF NOT EXISTS `rex_375_group` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_375_user`
--

CREATE TABLE IF NOT EXISTS `rex_375_user` (
  `id` smallint(4) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `grad` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `title` tinyint(4) NOT NULL,
  `clang` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `article_id` smallint(4) unsigned NOT NULL,
  `send_group` smallint(4) unsigned NOT NULL,
  `createdate` int(11) NOT NULL,
  `createip` varchar(16) NOT NULL,
  `activationdate` int(11) NOT NULL,
  `activationip` varchar(16) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `updateip` varchar(16) NOT NULL,
  `subscriptiontype` varchar(16) NOT NULL,
  `key` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_375_user2group`
--

CREATE TABLE IF NOT EXISTS `rex_375_user2group` (
  `uid` smallint(4) unsigned NOT NULL,
  `gid` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_679_types`
--

CREATE TABLE IF NOT EXISTS `rex_679_types` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_679_types`
--

INSERT INTO `rex_679_types` (`id`, `status`, `name`, `description`) VALUES
(1, 1, 'rex_mediapool_detail', 'Zur Darstellung von Bildern in der Detailansicht im Medienpool'),
(2, 1, 'rex_mediapool_maximized', 'Zur Darstellung von Bildern im Medienpool wenn maximiert'),
(3, 1, 'rex_mediapool_preview', 'Zur Darstellung der Vorschaubilder im Medienpool'),
(4, 1, 'rex_mediabutton_preview', 'Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),
(5, 1, 'rex_medialistbutton_preview', 'Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_679_type_effects`
--

CREATE TABLE IF NOT EXISTS `rex_679_type_effects` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `prior` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_679_type_effects`
--

INSERT INTO `rex_679_type_effects` (`id`, `type_id`, `effect`, `parameters`, `prior`, `updatedate`, `updateuser`, `createdate`, `createuser`) VALUES
(1, 1, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"200";s:24:"rex_effect_resize_height";s:3:"200";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(2, 2, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"600";s:24:"rex_effect_resize_height";s:3:"600";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(3, 3, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:2:"80";s:24:"rex_effect_resize_height";s:2:"80";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(4, 4, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"246";s:24:"rex_effect_resize_height";s:3:"246";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(5, 5, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"246";s:24:"rex_effect_resize_height";s:3:"246";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_action`
--

CREATE TABLE IF NOT EXISTS `rex_action` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_action`
--

INSERT INTO `rex_action` (`id`, `name`, `preview`, `presave`, `postsave`, `previewmode`, `presavemode`, `postsavemode`, `createuser`, `createdate`, `updateuser`, `updatedate`, `revision`) VALUES
(1, 'Multinewsletter Array-Save-Action', '<?php\n  global $rex_array_values;\n  $devider = ''|,|'';\n  \n  for($i=1; $i<21; $i++)\n    if(isset($REX_ACTION[''VALUE''][strval($i)]) && substr($REX_ACTION[''VALUE''][strval($i)], 0, 7)=='':array:'')\n    {\n      if(!isset($rex_array_values))\n        $rex_array_values = array();\n      $temp = substr($REX_ACTION[''VALUE''][strval($i)], 7, strlen($REX_ACTION[''VALUE''][strval($i)])-8);\n      if(strpos($temp,$devider))\n        $temp = explode($devider,$temp);\n      else\n        $temp = array($temp);\n      \n      $rex_array_values[strval($i)] = $temp;\n    }\n    else\n    {\n      if(!isset($rex_array_values[strval($i)]))\n        $rex_array_values[strval($i)] = $REX_ACTION[''VALUE''][strval($i)];\n    }\n?>\n', '<?php\n  global $rex_array_values;\n  $rex_array_values = array();\n\n  $devider = ''|,|'';\n\n  for($i=1; $i<21; $i++)\n  {\n    $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n\n    if(isset($_REQUEST[''VALUE''][$i]))\n    {\n      $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n      if(is_array($_REQUEST[''VALUE''][$i]))\n        $REX_ACTION[''VALUE''][strval($i)] = ":array:".join($devider,$_REQUEST[''VALUE''][$i]).":";\n    }\n  }\n?>\n', '', 2, 3, 0, 'Multinewsletter Addon Installer', 1429647149, '', 0, 0),
(2, 'Multinewsletter Array-Save-Action', '<?php\n  global $rex_array_values;\n  $devider = ''|,|'';\n  \n  for($i=1; $i<21; $i++)\n    if(isset($REX_ACTION[''VALUE''][strval($i)]) && substr($REX_ACTION[''VALUE''][strval($i)], 0, 7)=='':array:'')\n    {\n      if(!isset($rex_array_values))\n        $rex_array_values = array();\n      $temp = substr($REX_ACTION[''VALUE''][strval($i)], 7, strlen($REX_ACTION[''VALUE''][strval($i)])-8);\n      if(strpos($temp,$devider))\n        $temp = explode($devider,$temp);\n      else\n        $temp = array($temp);\n      \n      $rex_array_values[strval($i)] = $temp;\n    }\n    else\n    {\n      if(!isset($rex_array_values[strval($i)]))\n        $rex_array_values[strval($i)] = $REX_ACTION[''VALUE''][strval($i)];\n    }\n?>\n', '<?php\n  global $rex_array_values;\n  $rex_array_values = array();\n\n  $devider = ''|,|'';\n\n  for($i=1; $i<21; $i++)\n  {\n    $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n\n    if(isset($_REQUEST[''VALUE''][$i]))\n    {\n      $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n      if(is_array($_REQUEST[''VALUE''][$i]))\n        $REX_ACTION[''VALUE''][strval($i)] = ":array:".join($devider,$_REQUEST[''VALUE''][$i]).":";\n    }\n  }\n?>\n', '', 2, 3, 0, 'Multinewsletter Addon Installer', 1429647160, '', 0, 0),
(3, 'Multinewsletter Array-Save-Action', '<?php\n  global $rex_array_values;\n  $devider = ''|,|'';\n  \n  for($i=1; $i<21; $i++)\n    if(isset($REX_ACTION[''VALUE''][strval($i)]) && substr($REX_ACTION[''VALUE''][strval($i)], 0, 7)=='':array:'')\n    {\n      if(!isset($rex_array_values))\n        $rex_array_values = array();\n      $temp = substr($REX_ACTION[''VALUE''][strval($i)], 7, strlen($REX_ACTION[''VALUE''][strval($i)])-8);\n      if(strpos($temp,$devider))\n        $temp = explode($devider,$temp);\n      else\n        $temp = array($temp);\n      \n      $rex_array_values[strval($i)] = $temp;\n    }\n    else\n    {\n      if(!isset($rex_array_values[strval($i)]))\n        $rex_array_values[strval($i)] = $REX_ACTION[''VALUE''][strval($i)];\n    }\n?>\n', '<?php\n  global $rex_array_values;\n  $rex_array_values = array();\n\n  $devider = ''|,|'';\n\n  for($i=1; $i<21; $i++)\n  {\n    $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n\n    if(isset($_REQUEST[''VALUE''][$i]))\n    {\n      $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n      if(is_array($_REQUEST[''VALUE''][$i]))\n        $REX_ACTION[''VALUE''][strval($i)] = ":array:".join($devider,$_REQUEST[''VALUE''][$i]).":";\n    }\n  }\n?>\n', '', 2, 3, 0, 'Multinewsletter Addon Installer', 1429647204, '', 0, 0),
(4, 'Multinewsletter Array-Save-Action', '<?php\n  global $rex_array_values;\n  $devider = ''|,|'';\n  \n  for($i=1; $i<21; $i++)\n    if(isset($REX_ACTION[''VALUE''][strval($i)]) && substr($REX_ACTION[''VALUE''][strval($i)], 0, 7)=='':array:'')\n    {\n      if(!isset($rex_array_values))\n        $rex_array_values = array();\n      $temp = substr($REX_ACTION[''VALUE''][strval($i)], 7, strlen($REX_ACTION[''VALUE''][strval($i)])-8);\n      if(strpos($temp,$devider))\n        $temp = explode($devider,$temp);\n      else\n        $temp = array($temp);\n      \n      $rex_array_values[strval($i)] = $temp;\n    }\n    else\n    {\n      if(!isset($rex_array_values[strval($i)]))\n        $rex_array_values[strval($i)] = $REX_ACTION[''VALUE''][strval($i)];\n    }\n?>\n', '<?php\n  global $rex_array_values;\n  $rex_array_values = array();\n\n  $devider = ''|,|'';\n\n  for($i=1; $i<21; $i++)\n  {\n    $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n\n    if(isset($_REQUEST[''VALUE''][$i]))\n    {\n      $rex_array_values[strval($i)] = $_REQUEST[''VALUE''][$i];\n      if(is_array($_REQUEST[''VALUE''][$i]))\n        $REX_ACTION[''VALUE''][strval($i)] = ":array:".join($devider,$_REQUEST[''VALUE''][$i]).":";\n    }\n  }\n?>\n', '', 2, 3, 0, 'Multinewsletter Addon Installer', 1429647527, '', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_article`
--

CREATE TABLE IF NOT EXISTS `rex_article` (
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `re_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catprior` int(11) NOT NULL,
  `attributes` text NOT NULL,
  `startpage` tinyint(1) NOT NULL,
  `prior` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `art_online_from` text,
  `art_online_to` text,
  `art_description` text,
  `art_keywords` text,
  `art_file` varchar(255) DEFAULT '',
  `art_teaser` varchar(255) DEFAULT '',
  `art_type_id` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_article`
--

INSERT INTO `rex_article` (`pid`, `id`, `re_id`, `name`, `catname`, `catprior`, `attributes`, `startpage`, `prior`, `path`, `status`, `createdate`, `updatedate`, `template_id`, `clang`, `createuser`, `updateuser`, `revision`, `art_online_from`, `art_online_to`, `art_description`, `art_keywords`, `art_file`, `art_teaser`, `art_type_id`) VALUES
(1, 1, 0, 'News', 'News', 1, '', 1, 1, '|', 1, 1429645580, 1429645740, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(2, 2, 0, 'Music', 'Music', 2, '', 1, 1, '|', 1, 1429645581, 1429646568, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(3, 3, 0, 'Video', 'Video', 3, '', 1, 1, '|', 1, 1429645581, 1429645556, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(4, 4, 0, 'Live', 'Live', 4, '', 1, 1, '|', 1, 1429645582, 1429645558, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(5, 5, 0, 'About', 'About', 5, '', 1, 1, '|', 1, 1429645582, 1429645567, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(6, 6, 0, 'Shop', 'Shop', 6, '', 1, 1, '|', 1, 1429645583, 1429645575, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(7, 7, 0, 'Contact', 'Contact', 7, '', 1, 1, '|', 1, 1429645584, 1429645577, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_article_slice`
--

CREATE TABLE IF NOT EXISTS `rex_article_slice` (
  `id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `ctype` int(11) NOT NULL,
  `re_article_slice_id` int(11) NOT NULL,
  `value1` text,
  `value2` text,
  `value3` text,
  `value4` text,
  `value5` text,
  `value6` text,
  `value7` text,
  `value8` text,
  `value9` text,
  `value10` text,
  `value11` text,
  `value12` text,
  `value13` text,
  `value14` text,
  `value15` text,
  `value16` text,
  `value17` text,
  `value18` text,
  `value19` text,
  `value20` text,
  `file1` varchar(255) DEFAULT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `file4` varchar(255) DEFAULT NULL,
  `file5` varchar(255) DEFAULT NULL,
  `file6` varchar(255) DEFAULT NULL,
  `file7` varchar(255) DEFAULT NULL,
  `file8` varchar(255) DEFAULT NULL,
  `file9` varchar(255) DEFAULT NULL,
  `file10` varchar(255) DEFAULT NULL,
  `filelist1` text,
  `filelist2` text,
  `filelist3` text,
  `filelist4` text,
  `filelist5` text,
  `filelist6` text,
  `filelist7` text,
  `filelist8` text,
  `filelist9` text,
  `filelist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `php` text,
  `html` text,
  `article_id` int(11) NOT NULL,
  `modultyp_id` int(11) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `next_article_slice_id` int(11) DEFAULT NULL,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_article_slice`
--

INSERT INTO `rex_article_slice` (`id`, `clang`, `ctype`, `re_article_slice_id`, `value1`, `value2`, `value3`, `value4`, `value5`, `value6`, `value7`, `value8`, `value9`, `value10`, `value11`, `value12`, `value13`, `value14`, `value15`, `value16`, `value17`, `value18`, `value19`, `value20`, `file1`, `file2`, `file3`, `file4`, `file5`, `file6`, `file7`, `file8`, `file9`, `file10`, `filelist1`, `filelist2`, `filelist3`, `filelist4`, `filelist5`, `filelist6`, `filelist7`, `filelist8`, `filelist9`, `filelist10`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `link7`, `link8`, `link9`, `link10`, `linklist1`, `linklist2`, `linklist3`, `linklist4`, `linklist5`, `linklist6`, `linklist7`, `linklist8`, `linklist9`, `linklist10`, `php`, `html`, `article_id`, `modultyp_id`, `createdate`, `updatedate`, `createuser`, `updateuser`, `next_article_slice_id`, `revision`) VALUES
(1, 0, 1, 0, 'New website', 'YoLO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1429645711, 1429645711, 'root', 'root', NULL, 0),
(2, 0, 1, 0, 'Music', 'the music text', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 1429646568, 1429646568, 'root', 'root', NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_clang`
--

CREATE TABLE IF NOT EXISTS `rex_clang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_clang`
--

INSERT INTO `rex_clang` (`id`, `name`, `revision`) VALUES
(0, 'deutsch', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_file`
--

CREATE TABLE IF NOT EXISTS `rex_file` (
  `file_id` int(11) NOT NULL,
  `re_file_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `med_description` text,
  `med_copyright` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_file`
--

INSERT INTO `rex_file` (`file_id`, `re_file_id`, `category_id`, `attributes`, `filetype`, `filename`, `originalname`, `filesize`, `width`, `height`, `title`, `createdate`, `updatedate`, `createuser`, `updateuser`, `revision`, `med_description`, `med_copyright`) VALUES
(1, 0, 1, NULL, 'image/jpeg', 'vikings_cd.jpg', 'Vikings cd.jpg', '422424', 1500, 1512, 'Album #1', 1429648579, 1429648579, 'root', 'root', 0, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_file_category`
--

CREATE TABLE IF NOT EXISTS `rex_file_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `re_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_file_category`
--

INSERT INTO `rex_file_category` (`id`, `name`, `re_id`, `path`, `createdate`, `updatedate`, `createuser`, `updateuser`, `attributes`, `revision`) VALUES
(1, 'shop', 0, '|', 1429648540, 1429648540, 'root', 'root', NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_module`
--

CREATE TABLE IF NOT EXISTS `rex_module` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ausgabe` text NOT NULL,
  `eingabe` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_module`
--

INSERT INTO `rex_module` (`id`, `name`, `category_id`, `ausgabe`, `eingabe`, `createuser`, `updateuser`, `createdate`, `updatedate`, `attributes`, `revision`) VALUES
(1, 'news - entry', 0, '<h1>REX_VALUE[1]</h1>\r\n<p>REX_VALUE[2]</p>', 'Headline: <input type="text" size="20" name="VALUE[1]" value="REX_VALUE[1]" />\r\n<br/>\r\nBody: <textarea cols="100" rows="5" name="VALUE[2]">REX_VALUE[2]</textarea>', 'root', 'root', 1429645697, 1429646638, NULL, 0),
(2, 'Multinewsletter Anmeldeformular', 0, '<?php\n  global $rex_array_values;\n\n  $rex_375_file = $REX[''INCLUDE_PATH''].''/addons/''.$REX[''ADDON375''][''addon_name''].''/functions/redaxo_modules.inc.php'';\n  if(file_exists($rex_375_file))\n  {\n  \n    $rex_375_devider = ''|,|'';\n    $rex_array_values = array(\n      ''1''=>''REX_VALUE[1]'',\n      ''2''=>''REX_VALUE[2]'',\n      ''3''=>''REX_VALUE[3]'',\n      ''4''=>''REX_VALUE[4]'',\n      ''5''=>''REX_VALUE[5]'',\n      ''6''=>''REX_VALUE[6]'',\n      ''7''=>''REX_VALUE[7]'',\n      ''8''=>''REX_VALUE[8]'',\n      ''9''=>''REX_VALUE[9]'',\n      ''10''=>''REX_VALUE[10]''\n    );\n\n    foreach($rex_array_values as $key => $value)\n    {\n      if(substr($value, 0, 7)=='':array:'')\n      {\n        $temp = substr($value, 7, strlen($value)-8);\n        if(strpos($temp,$rex_375_devider))\n          $temp = explode($rex_375_devider,$temp);\n        else\n          $temp = array($temp);\n        \n        $rex_array_values[$key] = $temp;\n      }\n      else\n        $rex_array_values[$key] = $value;\n    }\n    unset($rex_375_devider,$key,$value,$temp);\n    # print_r($rex_array_values);\n\n    include_once($rex_375_file);\n    print(rex_a375_module_output($rex_array_values));\n  }\n  else\n    print($REX[''ADDON375''][''I18N'']->msg(''module_not_found''));\n?>\n', '<?php\n  global $rex_array_values;\n\n  $rex_375_file = $REX[''INCLUDE_PATH''].''/addons/''.$REX[''ADDON375''][''addon_name''].''/functions/redaxo_modules.inc.php'';\n  if(file_exists($rex_375_file))\n  {\n    include_once($rex_375_file);\n    print(rex_a375_module_input($rex_array_values));\n  }\n  else\n    print($REX[''ADDON375''][''I18N'']->msg(''module_not_found''));\n?>\n', 'Multinewsletter Addon Installer', '', 1429647149, 0, NULL, 0),
(3, 'Multinewsletter Abmeldeformular', 0, '<?php\n$hide_subscription_form = 1;\n\nif($REX[''REDAXO'']) {\n	echo ''<p>Multinewsletter Abmeldung</p>'';\n}\nelse {\n	$style = '' style="color:#ba333f;"''; # Style for a wrong parameter-field\n     \n	if(!function_exists( ''add_newsletter_user'')):\n		function add_newsletter_user($vorname, $name, $email) {\n			global $REX;\n			$sql = new rex_sql();\n\n			$qry = "SELECT `id` FROM `".$REX[''TABLE_PREFIX'']."375_user`\n					WHERE `email` = ''".$email ."''";\n        	$sql -> setQuery($qry);\n			if($sql -> getRows() > 0) {\n				$userid = $sql->getValue(''id'');\n				$qry = "UPDATE `".$REX[''TABLE_PREFIX'']."375_user`\n						SET `firstname`=''".$vorname . "'', `name`=''". $name ."'',\n                        	`status`=''1'', `updatedate`=''".time()."''\n                   		WHERE `email` = ''". $email ."''";\n          		$sql->setQuery($qry);\n        	}\n        	else {\n          		$qry = "INSERT INTO `".$REX[''TABLE_PREFIX'']."375_user`\n						SET `firstname`=''". $vorname . "'', `lastname`=''". $name ."'',\n                        	`clang` = ''". $REX[''CUR_CLANG''] ."'', `email` = ''". $email ."'' ,\n                        	`status`=''1'', `updatedate` = ''".time()."''";\n				$sql->setQuery($qry);\n        	}\n        	     \n			return $sql->getError() == '''';\n      	}\n	endif;\n     \n     \n      if (!function_exists( ''valid_email'')):\n      function valid_email( $email) {\n		if(filter_var($email, FILTER_VALIDATE_EMAIL) === false) {\n			return false;\n		}\n		else {\n			return true;\n		}\n      }\n      endif;\n     \n     \n      if (!function_exists( ''remove_newsletter_user'')):\n      function remove_newsletter_user( $email) {\n        global $REX;\n       \n        $qry = "UPDATE `".$REX[''TABLE_PREFIX'']."375_user`\n                   SET `status`=''0'' WHERE `email` = ''". $email ."''";\n        $sql = new rex_sql();\n        $sql->setQuery($qry);\n     \n        return $sql->getError() == '''';\n      }\n      endif;\n     \n      //------------------------------> Formularauswerten\n      $warningstyles = array(''surname''=>'''',''lastname''=>'''',''email''=>'''',''signoff_email''=>'''');\n     \n     \n      if ( !empty($_POST[''subscribe'']) && $_POST[''subscribe'']==''true'')\n      {\n     \n        if($_POST[''newsletter_firstname'']!='''' && $_POST[''newsletter_name'']!='''' && valid_email($_POST[''newsletter_email'']))\n          $result = add_newsletter_user($_POST[''newsletter_firstname''],$_POST[''newsletter_name''],$_POST[''newsletter_email'']);\n        else\n          $result = false;\n     \n        if($_POST[''newsletter_firstname'']=='''')\n          $warningstyles[''surname''] = $style;\n        if($_POST[''newsletter_name'']=='''')\n          $warningstyles[''lastname''] = $style;\n        if(!valid_email($_POST[''newsletter_email'']))\n          $warningstyles[''email''] = $style;\n         \n        if ( $result === true)\n        {\n           $message .= "REX_VALUE[1]";\n           $hide_subscription_form = true;\n        } else {\n           $message .= "REX_VALUE[2]";\n           $hide_subscription_form = false;\n        }\n      }\n      else if( !empty($_POST[''subscribe'']) && $_POST[''subscribe'']==''false'')\n      {\n        if(valid_email($_POST[''newsletter_email'']))\n          $result = remove_newsletter_user( $_POST[''newsletter_email'']);\n        else\n        {\n          $warningstyles[''signoff_email''] = $style;\n        }\n       \n        if ($result === true)\n        {\n          $message .= "REX_VALUE[3]";\n          $hide_unsubscription_form = true;\n        }\n        else\n        {\n          $message .= "REX_VALUE[4]";\n          $hide_unsubscription_form = false;\n        }\n      }\n     \n     \n      //------------------------------> Formular\n      ?>\n    <?php\n    if($hide_unsubscription_form)\n    {   if ($message!="")\n       {\n       echo ''\n          <div class="nl-form">\n          <h2>REX_VALUE[6]</h2>\n          <p class="warning">''. $message .''</p>\n          </div>'';\n          }\n    }\n    ?>\n\n\n    <?php if(!$hide_subscription_form) {\n\n      } // ENDIF $hide_subscription_form\n      if(!$hide_unsubscription_form) { ?>\n      <div class="nl-form">\n        <h2>REX_VALUE[6]</h2>\n        <form id="abmelden" class="formation" action="<?php print rex_getURL($this->article_id,$REX[''CUR_CLANG'']); ?>"\n              method="post" name="sign_newsletter">\n         \n          <?php\n          if ($message != '''') {\n          echo ''\n          <p class="warning">''. $message .''</p>'';\n          }\n          ?>\n\n         \n          <input type="hidden" name="article_id" value="REX_ARTICLE_ID"/>\n          <input type="hidden" name="clang" value="REX_CLANG_ID"/>\n          <input type="hidden" name="subscribe" value="false"/>\n\n            <p>\n              <label for="newsletter_email2">E-Mail</label>\n              <input type="text" class="text" name="newsletter_email"\n                     id="newsletter_email2" value="<?php echo $_POST[''newsletter_email'']; ?>" />\n            </p>\n            <p>\n              <input type="submit" class="submit" name="unsubscribe_newsletter"\n                     value="REX_VALUE[12]" />\n            </p>\n        </form>\n      </div>\n    <?php\n      }\n    }\n    unset($message);\n    ?> \n', '    <fieldset>\n      <legend><strong>Abmeldung</strong></legend>\n      <label style="width: 25%; display: bock; float: left;">Überschrift</label>\n      <input name="VALUE[6]" value="REX_VALUE[6]" style="width: 70%; float: left;" /><br /><br />\n\n      <label style="width: 25%; display: bock; float: left;">Erfolg</label>\n      <input name="VALUE[3]" value="REX_VALUE[3]" style="width: 70%; float: left;" /><br /><br />\n\n      <label style="width: 25%; display: bock; float: left;">Fehler</label>\n      <input name="VALUE[4]" value="REX_VALUE[4]" style="width: 70%; float: left;" /><br /><br />\n\n      <label style="width: 25%; display: bock; float: left;">Abbestellen Button</label>\n      <input name="VALUE[12]" value="REX_VALUE[12]" style="width: 70%; float: left;" /><br /><br />\n    </fieldset>\n', 'Multinewsletter Addon Installer', '', 1429647149, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_module_action`
--

CREATE TABLE IF NOT EXISTS `rex_module_action` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_module_action`
--

INSERT INTO `rex_module_action` (`id`, `module_id`, `action_id`, `revision`) VALUES
(1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_square_shop_article`
--

CREATE TABLE IF NOT EXISTS `rex_square_shop_article` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `no` varchar(45) DEFAULT NULL,
  `title0` varchar(60) DEFAULT NULL,
  `description0` text,
  `price` decimal(10,2) DEFAULT '0.00',
  `images` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `createdate` int(11) DEFAULT NULL,
  `updatedate` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_square_shop_article`
--

INSERT INTO `rex_square_shop_article` (`id`, `category_id`, `no`, `title0`, `description0`, `price`, `images`, `status`, `createdate`, `updatedate`) VALUES
(1, 1, '123456789', 'Album #1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget eleifend lorem. Pellentesque vel ex nulla. Pellentesque quis tempor ligula. Mauris urna quam, laoreet ac fringilla quis, imperdiet id tortor. Donec pretium, urna semper egestas fermentum, nisi risus euismod est, quis imperdiet neque mauris at enim. Sed interdum lectus enim, sit amet egestas sapien euismod eget. Praesent sit amet aliquet risus. Praesent erat augue, suscipit at interdum a, cursus sed est. Nunc sit amet est augue. Nunc a imperdiet lorem. In in consectetur augue. Sed porta, felis non porttitor posuere, velit eros commodo nisl, quis lobortis sem elit non augue. Sed diam diam, sagittis quis lacus a, porta pellentesque nibh. Ut nibh lorem, pellentesque ut ex ullamcorper, feugiat tincidunt magna. Donec et efficitur ligula.', '9.99', 'vikings_cd.jpg', 1, 1429648528, 1429648584),
(2, 2, '123456788', 'T-Shirt S', '', '14.99', '', 1, 1429648612, 1429648612);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_square_shop_category`
--

CREATE TABLE IF NOT EXISTS `rex_square_shop_category` (
  `id` int(10) unsigned NOT NULL,
  `title0` varchar(60) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `createdate` int(11) DEFAULT NULL,
  `updatedate` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_square_shop_category`
--

INSERT INTO `rex_square_shop_category` (`id`, `title0`, `status`, `createdate`, `updatedate`) VALUES
(1, 'CDs', 1, 1429648491, 1429648491),
(2, 'Merch', 1, 1429648497, 1429648497);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_square_shop_customer`
--

CREATE TABLE IF NOT EXISTS `rex_square_shop_customer` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT '0',
  `street` varchar(60) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `telephone` varchar(60) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `createdate` int(11) DEFAULT NULL,
  `updatedate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_square_shop_order`
--

CREATE TABLE IF NOT EXISTS `rex_square_shop_order` (
  `id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `paypal_txn_id` varchar(255) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `billing_title` varchar(20) DEFAULT NULL,
  `billing_company` varchar(20) DEFAULT NULL,
  `billing_firstname` varchar(60) DEFAULT NULL,
  `billing_lastname` varchar(60) DEFAULT '0',
  `billing_street` varchar(60) DEFAULT NULL,
  `billing_zip` varchar(20) DEFAULT NULL,
  `billing_city` varchar(60) DEFAULT NULL,
  `billing_telephone` varchar(60) DEFAULT NULL,
  `billing_email` varchar(90) DEFAULT NULL,
  `delivery_title` varchar(20) DEFAULT NULL,
  `delivery_company` varchar(20) DEFAULT NULL,
  `delivery_firstname` varchar(60) DEFAULT NULL,
  `delivery_lastname` varchar(60) DEFAULT '0',
  `delivery_street` varchar(60) DEFAULT NULL,
  `delivery_zip` varchar(20) DEFAULT NULL,
  `delivery_city` varchar(60) DEFAULT NULL,
  `delivery_telephone` varchar(60) DEFAULT NULL,
  `delivery_email` varchar(90) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `createdate` int(11) DEFAULT NULL,
  `updatedate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_square_shop_order_item`
--

CREATE TABLE IF NOT EXISTS `rex_square_shop_order_item` (
  `id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  `no` varchar(45) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT '0.00',
  `images` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `createdate` int(11) DEFAULT NULL,
  `updatedate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_template`
--

CREATE TABLE IF NOT EXISTS `rex_template` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_template`
--

INSERT INTO `rex_template` (`id`, `label`, `name`, `content`, `active`, `createuser`, `updateuser`, `createdate`, `updatedate`, `attributes`, `revision`) VALUES
(1, NULL, 'Default', '<!DOCTYPE html>\r\n<html lang="en">\r\n<head>\r\n	<title><?= $REX[''SERVERNAME''].'' | ''.htmlspecialchars($this->getValue("name")); ?></title>\r\n	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">\r\n\r\n	<link rel="stylesheet" type="text/css" href="<?php echo $REX[''HTDOCS_PATH''] ?>files/css/main.css" />\r\n	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">\r\n</head>\r\n\r\n<body>\r\n	<div class="container">\r\n		<!-- NAV -->\r\n		REX_TEMPLATE[id="2"]\r\n\r\n		<div id="content">\r\n			<?= $this->getArticle(); ?>\r\n		</div>\r\n	</div>\r\n</body>\r\n\r\n</html>', 1, 'root', 'root', 1429649657, 1429649657, 'a:3:{s:10:"categories";a:1:{s:3:"all";s:1:"1";}s:5:"ctype";a:0:{}s:7:"modules";a:1:{i:1;a:1:{s:3:"all";s:1:"1";}}}', 0),
(2, NULL, 'Navigation', '<nav>\r\n	<ul class="nav nav-pills">\r\n		<?php\r\n		$PATH = explode("|",$this->getValue("path").$this->getValue("article_id")."|");\r\n\r\n		foreach (OOCategory::getRootCategories(true) as $category) {\r\n			if ($category->hasTemplate()) {\r\n				$active = $category->getId() == $PATH[1] ? '' active'' : '''';\r\n\r\n				echo ''<li role="presentation" class="''. $active .''">'';\r\n				echo ''	''. $category->toLink('''');\r\n				echo ''</li>'';\r\n			}\r\n		}\r\n		?>\r\n	</ul>\r\n</nav>', 0, 'root', 'root', 1429649929, 1429649929, 'a:3:{s:10:"categories";a:1:{s:3:"all";s:1:"1";}s:5:"ctype";a:0:{}s:7:"modules";a:1:{i:1;a:1:{s:3:"all";s:1:"1";}}}', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rex_user`
--

CREATE TABLE IF NOT EXISTS `rex_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `login` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL,
  `rights` text NOT NULL,
  `login_tries` tinyint(4) DEFAULT '0',
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `lasttrydate` int(11) DEFAULT '0',
  `session_id` varchar(255) DEFAULT NULL,
  `cookiekey` varchar(255) DEFAULT NULL,
  `revision` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_user`
--

INSERT INTO `rex_user` (`user_id`, `name`, `description`, `login`, `psw`, `status`, `rights`, `login_tries`, `createuser`, `updateuser`, `createdate`, `updatedate`, `lasttrydate`, `session_id`, `cookiekey`, `revision`) VALUES
(1, 'Administrator', NULL, 'root', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '1', '#admin[]#', 0, 'setup', '', 1429645443, 0, 1429645447, 'eahdmobcjob6gm5qvj5d6qe3g2', NULL, 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `rex_62_params`
--
ALTER TABLE `rex_62_params`
  ADD PRIMARY KEY (`field_id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `rex_62_type`
--
ALTER TABLE `rex_62_type`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_375_archive`
--
ALTER TABLE `rex_375_archive`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `setupdate` (`setupdate`,`clang`);

--
-- Indizes für die Tabelle `rex_375_group`
--
ALTER TABLE `rex_375_group`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `rex_375_user`
--
ALTER TABLE `rex_375_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indizes für die Tabelle `rex_375_user2group`
--
ALTER TABLE `rex_375_user2group`
  ADD UNIQUE KEY `uid` (`uid`,`gid`);

--
-- Indizes für die Tabelle `rex_679_types`
--
ALTER TABLE `rex_679_types`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `rex_679_type_effects`
--
ALTER TABLE `rex_679_type_effects`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_action`
--
ALTER TABLE `rex_action`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_article`
--
ALTER TABLE `rex_article`
  ADD PRIMARY KEY (`pid`), ADD UNIQUE KEY `find_articles` (`id`,`clang`), ADD KEY `id` (`id`), ADD KEY `clang` (`clang`), ADD KEY `re_id` (`re_id`);

--
-- Indizes für die Tabelle `rex_article_slice`
--
ALTER TABLE `rex_article_slice`
  ADD PRIMARY KEY (`id`,`re_article_slice_id`,`article_id`,`modultyp_id`), ADD KEY `id` (`id`), ADD KEY `clang` (`clang`), ADD KEY `re_article_slice_id` (`re_article_slice_id`), ADD KEY `article_id` (`article_id`), ADD KEY `find_slices` (`clang`,`article_id`);

--
-- Indizes für die Tabelle `rex_clang`
--
ALTER TABLE `rex_clang`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_file`
--
ALTER TABLE `rex_file`
  ADD PRIMARY KEY (`file_id`), ADD KEY `re_file_id` (`re_file_id`), ADD KEY `category_id` (`category_id`);

--
-- Indizes für die Tabelle `rex_file_category`
--
ALTER TABLE `rex_file_category`
  ADD PRIMARY KEY (`id`), ADD KEY `re_id` (`re_id`);

--
-- Indizes für die Tabelle `rex_module`
--
ALTER TABLE `rex_module`
  ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indizes für die Tabelle `rex_module_action`
--
ALTER TABLE `rex_module_action`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_square_shop_article`
--
ALTER TABLE `rex_square_shop_article`
  ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`);

--
-- Indizes für die Tabelle `rex_square_shop_category`
--
ALTER TABLE `rex_square_shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_square_shop_customer`
--
ALTER TABLE `rex_square_shop_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_square_shop_order`
--
ALTER TABLE `rex_square_shop_order`
  ADD PRIMARY KEY (`id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indizes für die Tabelle `rex_square_shop_order_item`
--
ALTER TABLE `rex_square_shop_order_item`
  ADD PRIMARY KEY (`id`), ADD KEY `order_id` (`order_id`), ADD KEY `article_id` (`article_id`);

--
-- Indizes für die Tabelle `rex_template`
--
ALTER TABLE `rex_template`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rex_user`
--
ALTER TABLE `rex_user`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `rex_62_params`
--
ALTER TABLE `rex_62_params`
  MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `rex_62_type`
--
ALTER TABLE `rex_62_type`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `rex_375_archive`
--
ALTER TABLE `rex_375_archive`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `rex_375_group`
--
ALTER TABLE `rex_375_group`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `rex_375_user`
--
ALTER TABLE `rex_375_user`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `rex_679_types`
--
ALTER TABLE `rex_679_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `rex_679_type_effects`
--
ALTER TABLE `rex_679_type_effects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `rex_action`
--
ALTER TABLE `rex_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `rex_article`
--
ALTER TABLE `rex_article`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `rex_article_slice`
--
ALTER TABLE `rex_article_slice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `rex_file`
--
ALTER TABLE `rex_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `rex_file_category`
--
ALTER TABLE `rex_file_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `rex_module`
--
ALTER TABLE `rex_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `rex_module_action`
--
ALTER TABLE `rex_module_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `rex_square_shop_article`
--
ALTER TABLE `rex_square_shop_article`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `rex_square_shop_category`
--
ALTER TABLE `rex_square_shop_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `rex_square_shop_customer`
--
ALTER TABLE `rex_square_shop_customer`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `rex_square_shop_order`
--
ALTER TABLE `rex_square_shop_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `rex_square_shop_order_item`
--
ALTER TABLE `rex_square_shop_order_item`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `rex_template`
--
ALTER TABLE `rex_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `rex_user`
--
ALTER TABLE `rex_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `rex_square_shop_article`
--
ALTER TABLE `rex_square_shop_article`
ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `rex_square_shop_category` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `rex_square_shop_order`
--
ALTER TABLE `rex_square_shop_order`
ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `rex_square_shop_customer` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `rex_square_shop_order_item`
--
ALTER TABLE `rex_square_shop_order_item`
ADD CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `rex_square_shop_article` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `rex_square_shop_order` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
