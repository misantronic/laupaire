-- phpMyAdmin SQL Dump
-- version 4.2.13.2
-- http://www.phpmyadmin.net
--
-- Host: db1197.mydbserver.com
-- Erstellungszeit: 17. Mai 2015 um 21:04
-- Server Version: 5.5.28
-- PHP-Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `usr_p203814_2`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_679_types`
--

INSERT INTO `rex_679_types` (`id`, `status`, `name`, `description`) VALUES
(1, 1, 'rex_mediapool_detail', 'Zur Darstellung von Bildern in der Detailansicht im Medienpool'),
(2, 1, 'rex_mediapool_maximized', 'Zur Darstellung von Bildern im Medienpool wenn maximiert'),
(3, 1, 'rex_mediapool_preview', 'Zur Darstellung der Vorschaubilder im Medienpool'),
(4, 1, 'rex_mediabutton_preview', 'Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),
(5, 1, 'rex_medialistbutton_preview', 'Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s'),
(6, 0, 'thumbnail', ''),
(7, 0, 'gallery', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_679_type_effects`
--

INSERT INTO `rex_679_type_effects` (`id`, `type_id`, `effect`, `parameters`, `prior`, `updatedate`, `updateuser`, `createdate`, `createuser`) VALUES
(1, 1, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"200";s:24:"rex_effect_resize_height";s:3:"200";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(2, 2, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"600";s:24:"rex_effect_resize_height";s:3:"600";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(3, 3, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:2:"80";s:24:"rex_effect_resize_height";s:2:"80";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(4, 4, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"246";s:24:"rex_effect_resize_height";s:3:"246";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(5, 5, 'resize', 'a:6:{s:15:"rex_effect_crop";a:5:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:24:"rex_effect_crop_position";s:13:"middle_center";}s:22:"rex_effect_filter_blur";a:3:{s:29:"rex_effect_filter_blur_amount";s:2:"80";s:29:"rex_effect_filter_blur_radius";s:1:"8";s:32:"rex_effect_filter_blur_threshold";s:1:"3";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:5:"right";s:28:"rex_effect_insert_image_vpos";s:6:"bottom";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"246";s:24:"rex_effect_resize_height";s:3:"246";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}}', 1, 1429645437, '%USER%', 1429645437, '%USER%'),
(6, 6, 'resize', 'a:9:{s:15:"rex_effect_crop";a:6:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:20:"rex_effect_crop_hpos";s:6:"center";s:20:"rex_effect_crop_vpos";s:6:"middle";}s:22:"rex_effect_filter_blur";a:3:{s:30:"rex_effect_filter_blur_repeats";s:2:"10";s:27:"rex_effect_filter_blur_type";s:8:"gaussian";s:31:"rex_effect_filter_blur_smoothit";s:0:"";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:4:"left";s:28:"rex_effect_insert_image_vpos";s:3:"top";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_mirror";a:5:{s:24:"rex_effect_mirror_height";s:0:"";s:33:"rex_effect_mirror_set_transparent";s:7:"colored";s:22:"rex_effect_mirror_bg_r";s:0:"";s:22:"rex_effect_mirror_bg_g";s:0:"";s:22:"rex_effect_mirror_bg_b";s:0:"";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:3:"380";s:24:"rex_effect_resize_height";s:0:"";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:7:"enlarge";}s:26:"rex_effect_rounded_corners";a:4:{s:34:"rex_effect_rounded_corners_topleft";s:0:"";s:35:"rex_effect_rounded_corners_topright";s:0:"";s:37:"rex_effect_rounded_corners_bottomleft";s:0:"";s:38:"rex_effect_rounded_corners_bottomright";s:0:"";}s:20:"rex_effect_workspace";a:8:{s:26:"rex_effect_workspace_width";s:0:"";s:27:"rex_effect_workspace_height";s:0:"";s:25:"rex_effect_workspace_hpos";s:4:"left";s:25:"rex_effect_workspace_vpos";s:3:"top";s:36:"rex_effect_workspace_set_transparent";s:7:"colored";s:25:"rex_effect_workspace_bg_r";s:0:"";s:25:"rex_effect_workspace_bg_g";s:0:"";s:25:"rex_effect_workspace_bg_b";s:0:"";}}', 1, 1431090957, 'root', 1431090957, 'root'),
(7, 7, 'resize', 'a:9:{s:15:"rex_effect_crop";a:6:{s:21:"rex_effect_crop_width";s:0:"";s:22:"rex_effect_crop_height";s:0:"";s:28:"rex_effect_crop_offset_width";s:0:"";s:29:"rex_effect_crop_offset_height";s:0:"";s:20:"rex_effect_crop_hpos";s:6:"center";s:20:"rex_effect_crop_vpos";s:6:"middle";}s:22:"rex_effect_filter_blur";a:3:{s:30:"rex_effect_filter_blur_repeats";s:2:"10";s:27:"rex_effect_filter_blur_type";s:8:"gaussian";s:31:"rex_effect_filter_blur_smoothit";s:0:"";}s:25:"rex_effect_filter_sharpen";a:3:{s:32:"rex_effect_filter_sharpen_amount";s:2:"80";s:32:"rex_effect_filter_sharpen_radius";s:3:"0.5";s:35:"rex_effect_filter_sharpen_threshold";s:1:"3";}s:15:"rex_effect_flip";a:1:{s:20:"rex_effect_flip_flip";s:1:"X";}s:23:"rex_effect_insert_image";a:5:{s:34:"rex_effect_insert_image_brandimage";s:0:"";s:28:"rex_effect_insert_image_hpos";s:4:"left";s:28:"rex_effect_insert_image_vpos";s:3:"top";s:33:"rex_effect_insert_image_padding_x";s:3:"-10";s:33:"rex_effect_insert_image_padding_y";s:3:"-10";}s:17:"rex_effect_mirror";a:5:{s:24:"rex_effect_mirror_height";s:0:"";s:33:"rex_effect_mirror_set_transparent";s:7:"colored";s:22:"rex_effect_mirror_bg_r";s:0:"";s:22:"rex_effect_mirror_bg_g";s:0:"";s:22:"rex_effect_mirror_bg_b";s:0:"";}s:17:"rex_effect_resize";a:4:{s:23:"rex_effect_resize_width";s:4:"1920";s:24:"rex_effect_resize_height";s:4:"1080";s:23:"rex_effect_resize_style";s:7:"maximum";s:31:"rex_effect_resize_allow_enlarge";s:11:"not_enlarge";}s:26:"rex_effect_rounded_corners";a:4:{s:34:"rex_effect_rounded_corners_topleft";s:0:"";s:35:"rex_effect_rounded_corners_topright";s:0:"";s:37:"rex_effect_rounded_corners_bottomleft";s:0:"";s:38:"rex_effect_rounded_corners_bottomright";s:0:"";}s:20:"rex_effect_workspace";a:8:{s:26:"rex_effect_workspace_width";s:0:"";s:27:"rex_effect_workspace_height";s:0:"";s:25:"rex_effect_workspace_hpos";s:4:"left";s:25:"rex_effect_workspace_vpos";s:3:"top";s:36:"rex_effect_workspace_set_transparent";s:7:"colored";s:25:"rex_effect_workspace_bg_r";s:0:"";s:25:"rex_effect_workspace_bg_g";s:0:"";s:25:"rex_effect_workspace_bg_b";s:0:"";}}', 1, 1431091033, 'root', 1431091033, 'root');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_article`
--

INSERT INTO `rex_article` (`pid`, `id`, `re_id`, `name`, `catname`, `catprior`, `attributes`, `startpage`, `prior`, `path`, `status`, `createdate`, `updatedate`, `template_id`, `clang`, `createuser`, `updateuser`, `revision`, `art_online_from`, `art_online_to`, `art_description`, `art_keywords`, `art_file`, `art_teaser`, `art_type_id`) VALUES
(1, 1, 0, 'Home', 'Home', 1, '', 1, 1, '|', 1, 1429645580, 1431300351, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(2, 2, 0, 'Music', 'Music', 3, '', 1, 1, '|', 1, 1429645581, 1431872934, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(3, 3, 0, 'Video', 'Video', 4, '', 1, 1, '|', 1, 1429645581, 1431094219, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(4, 4, 0, 'Live', 'Live', 6, '', 1, 1, '|', 1, 1429645582, 1431304954, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(6, 6, 0, 'Shop', 'Shop', 7, '', 1, 1, '|', 0, 1431052078, 1429645575, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(7, 7, 0, 'Info', 'Info', 2, '', 1, 1, '|', 1, 1429645584, 1431888984, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(9, 8, 0, 'Photos', 'Photos', 5, '', 1, 1, '|', 1, 1431095131, 1431302158, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', ''),
(10, 9, 0, 'Newsletter', 'Newsletter', 8, '', 1, 1, '|', 1, 1431460010, 1431460216, 1, 0, 'root', 'root', 0, NULL, NULL, NULL, NULL, '', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_article_slice`
--

INSERT INTO `rex_article_slice` (`id`, `clang`, `ctype`, `re_article_slice_id`, `value1`, `value2`, `value3`, `value4`, `value5`, `value6`, `value7`, `value8`, `value9`, `value10`, `value11`, `value12`, `value13`, `value14`, `value15`, `value16`, `value17`, `value18`, `value19`, `value20`, `file1`, `file2`, `file3`, `file4`, `file5`, `file6`, `file7`, `file8`, `file9`, `file10`, `filelist1`, `filelist2`, `filelist3`, `filelist4`, `filelist5`, `filelist6`, `filelist7`, `filelist8`, `filelist9`, `filelist10`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `link7`, `link8`, `link9`, `link10`, `linklist1`, `linklist2`, `linklist3`, `linklist4`, `linklist5`, `linklist6`, `linklist7`, `linklist8`, `linklist9`, `linklist10`, `php`, `html`, `article_id`, `modultyp_id`, `createdate`, `updatedate`, `createuser`, `updateuser`, `next_article_slice_id`, `revision`) VALUES
(28, 0, 1, 0, '<h1>Music</h1>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 11, 1431094322, 1431094322, 'root', 'root', NULL, 0),
(6, 0, 1, 27, 'https://www.youtube.com/embed/XgTEw6ReCSs', 'Rollercoaster Girl (official video)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'video-1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 10, 1430928229, 1431094194, 'root', 'root', NULL, 0),
(38, 0, 1, 37, 'https://open.spotify.com/track/4qEEmRK9xYUn1YmOgvAyLQ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 16, 1431304250, 1431304312, 'root', 'root', NULL, 0),
(25, 0, 1, 24, 'https://www.youtube.com/watch?v=VeeINpadQLI', 'Keep On Steppin Boy live', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'video-4.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 10, 1431093103, 1431094219, 'root', 'root', NULL, 0),
(24, 0, 1, 23, 'https://www.youtube.com/watch?v=hkZFEKaXCg8', 'Always Travelling live', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'video-3.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 10, 1431093057, 1431094212, 'root', 'root', NULL, 0),
(10, 0, 1, 0, '<h2>Info</h2>\r\n<p><a href="mailto:vasb@ynhcnver.pbz" class="email"><span style="display:none"></span>info<span style="display:none"></span>@<span style="display:none"></span>laupaire<span style="display:none"></span>.<span style="display:none"></span>com</a></p>\r\n\r\n<div class="box">\r\n	<h2>Management</h2>\r\n	<address>\r\n		<b>Lapidar Management</b><br/>\r\n		Giulia Hauck<br/>\r\n		Dieffenbachstraße 33<br/>\r\n		10967 Berlin<br/>\r\n		<a href="mailto:tvhyvn@yncvqne-znantrzrag.pbz" class="email"><span style="display:none"></span>giulia<span style="display:none"></span>@<span style="display:none"></span>lapidar-management<span style="display:none"></span>.<span style="display:none"></span>com</a>\r\n	</address>\r\n</div>\r\n\r\n<div class="box">\r\n	<h2>Booking</h2>\r\n	<address>\r\n		<b>Moderne Welt</b><br/>\r\n		Andreas Pese Puscher<br/>\r\n		Warschauer Str. 39/40<br/>\r\n		10243 Berlin<br/>\r\n		<a href="mailto:n.chfpure@zbqrearjryg.qr" class="email"><span style="display:none"></span>a.puscher<span style="display:none"></span>@<span style="display:none"></span>modernewelt<span style="display:none"></span>.<span style="display:none"></span>de</a>\r\n	</address>\r\n</div>\r\n\r\n<div class="box">\r\n	<h2>Label</h2>\r\n	<address>\r\n		<b>Virgin Records</b><br/>\r\n		Köpenicker Str. 154 A<br/>\r\n		10997 Berlin<br/>\r\n		<a href="mailto:vasb@ivetva-erpbeqf.qr" class="email"><span style="display:none"></span>info<span style="display:none"></span>@<span style="display:none"></span>virgin-records<span style="display:none"></span>.<span style="display:none"></span>de</a>\r\n	</address>\r\n</div>\r\n\r\n<br class="clearfix"/>\r\n\r\n<h2>Impressum</h2>\r\n<p>\r\n	Angaben gemäß § 5 TMG:<br/>\r\n	Robert Laupert<br/>\r\n	Kontakt: <br/>\r\n	..\r\n</p>\r\n<p>\r\nVerantwortlich für den Inhalt nach § 55 Abs. 2 RStV:\r\nRobert Laupert\r\n</p>\r\n<p>\r\nHaftungsausschluss: \r\n</p>\r\n<p>\r\nHaftung für Inhalte<br/>\r\nDie Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.\r\n</p>\r\n<p>\r\nHaftung für Links<br/>\r\nUnser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.\r\n</p>\r\n<p>\r\nUrheberrecht<br/>\r\nDie durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.\r\n</p>\r\n<p>\r\nDatenschutz<br/>\r\nPersonenbezogene Daten werden nur mit Ihrem Wissen und Ihrer Einwilligung erhoben, z.B. beim Bestellvorgang im Shop und bei unserem Newsletter-Angebot.\r\nDer Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.\r\n</p>\r\n<p>\r\nGoogle Analytics<br/>\r\nDiese Website benutzt Google Analytics, einen Webanalysedienst der Google Inc. (''''Google''''). Google Analytics verwendet sog. ''''Cookies'''', Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie ermöglicht. Die durch den Cookie erzeugten Informationen über Ihre Benutzung diese Website (einschließlich Ihrer IP-Adresse) wird an einen Server von Google in den USA übertragen und dort gespeichert. Google wird diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports über die Websiteaktivitäten für die Websitebetreiber zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen zu erbringen. Auch wird Google diese Informationen gegebenenfalls an Dritte übertragen, sofern dies gesetzlich vorgeschrieben oder soweit Dritte diese Daten im Auftrag von Google verarbeiten. Google wird in keinem Fall Ihre IP-Adresse mit anderen Daten der Google in Verbindung bringen. Sie können die Installation der Cookies durch eine entsprechende Einstellung Ihrer Browser Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht sämtliche Funktionen dieser Website voll umfänglich nutzen können. Durch die Nutzung dieser Website erklären Sie sich mit der Bearbeitung der über Sie erhobenen Daten durch Google in der zuvor beschriebenen Art und Weise und zu dem zuvor benannten Zweck einverstanden.\r\n</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7, 11, 1431007901, 1431888984, 'root', 'root', NULL, 0),
(11, 0, 1, 0, '2015-05-22', 'Dortmund', 'Way Back When', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074136, 1431304954, 'root', 'root', NULL, 0),
(12, 0, 1, 11, '2015-06-19', 'Duisburg', 'Traumzeit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074187, 1431075441, 'root', 'root', NULL, 0),
(13, 0, 1, 12, '2015-06-20', 'Würzburg', 'U&D', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074217, 1431075461, 'root', 'root', NULL, 0),
(14, 0, 1, 13, '2015-06-21', 'Worms', 'Jazz & Joy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074233, 1431075499, 'root', 'root', NULL, 0),
(15, 0, 1, 14, '2015-07-17', 'Gräfenhainichen', 'Melt!', 'http://www.meltfestival.de/tickets.html', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074248, 1431075517, 'root', 'root', NULL, 0),
(16, 0, 1, 15, '2015-07-18', '', 'Drüben auf dem Hügel Festival', 'http://www.misch-masch-sounds.com/mms/produktkategorie/tickets/', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074279, 1431075537, 'root', 'root', NULL, 0),
(17, 0, 1, 16, '2015-08-01', '', 'Sound of the Forest', 'http://sound-of-the-forest.de/tickets/', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074289, 1431075549, 'root', 'root', NULL, 0),
(18, 0, 1, 17, '2015-08-12', '', 'Sziget Festival, Budapest', 'http://szigetfestival.com/tickets/category/entry-ticket', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074307, 1431075556, 'root', 'root', NULL, 0),
(19, 0, 1, 18, '2015-08-29', 'Wiesbaden', 'Folklore im Garten', 'http://www.folklore-wiesbaden.de/tickets/', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 12, 1431074326, 1431075564, 'root', 'root', NULL, 0),
(22, 0, 1, 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'video-4.jpg,video-3.jpg,video-2_1.jpg,video-1.jpg,video-2_1.jpg,video-4.jpg,video-3.jpg,video-1.jpg,video-3.jpg,video-2_1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8, 13, 1431089898, 1431426821, 'root', 'root', NULL, 0),
(23, 0, 1, 6, 'https://www.youtube.com/watch?v=z1Mt8vrAX6g', 'Rollercoaster Girl live', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'video-2_1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 10, 1431092984, 1431094204, 'root', 'root', NULL, 0),
(26, 0, 1, 0, '<h1>Photos</h1>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8, 11, 1431093427, 1431093427, 'root', 'root', NULL, 0),
(27, 0, 1, 0, '<h1>Video</h1>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 11, 1431093829, 1431093829, 'root', 'root', NULL, 0),
(31, 0, 1, 38, '<a href="https://itunes.apple.com/us/album/rollercoaster-girl-ep/id923084086?uo=6&at=&ct=" target="itunes_store" style="display:inline-block;overflow:hidden;background:url(http://linkmaker.itunes.apple.com/images/badges/en-us/badge_itunes-lrg.png) no-repeat;width:165px;height:40px;@media only screen{background-image:url(http://linkmaker.itunes.apple.com/images/badges/en-us/badge_itunes-lrg.svg);}"></a>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 11, 1431094756, 1431872928, 'root', 'root', NULL, 0),
(36, 0, 1, 28, 'https://open.spotify.com/track/5MpHD0mgEJihrEtemavF5A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 16, 1431303852, 1431304303, 'root', 'root', NULL, 0),
(37, 0, 1, 36, 'https://open.spotify.com/track/27eetGZbp2u0nsTKoawNxg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 16, 1431304236, 1431304308, 'root', 'root', NULL, 0),
(34, 0, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 9, 14, 1431460216, 1431460216, 'root', 'root', NULL, 0),
(39, 0, 1, 31, '<SCRIPT charset="utf-8" type="text/javascript" src="http://ws-na.amazon-adsystem.com/widgets/q?rt=tf_w_mpw&ServiceVersion=20070822&MarketPlace=US&ID=V20070822%2FUS%2Fwidgetsamazon-20%2F8014%2F419e65e9-ce10-4110-9886-11547e629116&Operation=GetScriptTemplate"> </SCRIPT> <NOSCRIPT><A HREF="http://ws-na.amazon-adsystem.com/widgets/q?rt=tf_w_mpw&ServiceVersion=20070822&MarketPlace=US&ID=V20070822%2FUS%2Fwidgetsamazon-20%2F8014%2F419e65e9-ce10-4110-9886-11547e629116&Operation=NoScript">Amazon.com Widgets</A></NOSCRIPT>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 11, 1431872934, 1431872934, 'root', 'root', NULL, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_file`
--

INSERT INTO `rex_file` (`file_id`, `re_file_id`, `category_id`, `attributes`, `filetype`, `filename`, `originalname`, `filesize`, `width`, `height`, `title`, `createdate`, `updatedate`, `createuser`, `updateuser`, `revision`, `med_description`, `med_copyright`) VALUES
(1, 0, 1, NULL, 'image/jpeg', 'vikings_cd.jpg', 'Vikings cd.jpg', '422424', 1500, 1512, 'Album #1', 1429648579, 1429648579, 'root', 'root', 0, '', ''),
(5, 0, 2, NULL, 'image/jpeg', 'video-1.jpg', 'video-1.jpg', '116426', 1280, 719, '', 1431092949, 1431092949, 'root', 'root', 0, '', ''),
(8, 0, 2, NULL, 'image/jpeg', 'video-3.jpg', 'video-3.jpg', '67442', 1280, 719, '', 1431093053, 1431093053, 'root', 'root', 0, '', ''),
(7, 0, 2, NULL, 'image/jpeg', 'video-2_1.jpg', 'video-2.jpg', '60992', 1280, 719, '', 1431093009, 1431093009, 'root', 'root', 0, '', ''),
(9, 0, 2, NULL, 'image/jpeg', 'video-4.jpg', 'video-4.jpg', '61376', 1280, 719, '', 1431093101, 1431093101, 'root', 'root', 0, '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_file_category`
--

INSERT INTO `rex_file_category` (`id`, `name`, `re_id`, `path`, `createdate`, `updatedate`, `createuser`, `updateuser`, `attributes`, `revision`) VALUES
(1, 'shop', 0, '|', 1429648540, 1429648540, 'root', 'root', NULL, 0),
(2, 'videos', 0, '|', 1430928211, 1430928211, 'root', 'root', NULL, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_module`
--

INSERT INTO `rex_module` (`id`, `name`, `category_id`, `ausgabe`, `eingabe`, `createuser`, `updateuser`, `createdate`, `updatedate`, `attributes`, `revision`) VALUES
(1, 'News entry', 0, '<?php\r\n$time = strtotime("REX_VALUE[3]");\r\n$image = "";\r\nif ("REX_MEDIALIST[1]" != "") {\r\n	$arr = explode(",","REX_MEDIALIST[1]");\r\n	foreach ($arr as $value) {\r\n		$image = ''index.php?rex_img_type=thumbnail&rex_img_file=''. $value;\r\n	}\r\n}\r\n?>\r\n<article class="news-entry">\r\n	<time datetime="REX_VALUE[3]"><?= date("d.m.y", $time) ?></time>\r\n	<h1>REX_VALUE[1]</h1>\r\n	<p>\r\n		<?php if(!empty($image)) { ?>\r\n			<img src="<?= $image ?>" class="left">\r\n		<?php } ?>\r\n		REX_VALUE[2]\r\n	</p>\r\n</article>', '<input type="text" size="15" name="VALUE[3]" placeholder="Date..." value="<?= empty("REX_VALUE[2]") ? date(''Y-m-d'') : ''REX_VALUE[3]''; ?>"/>\r\n&nbsp;&nbsp;\r\n<input type="text" size="60" name="VALUE[1]" value="REX_VALUE[1]" placeholder="Headline..." />\r\n<br/><br/>\r\n<textarea placeholder="Text..." cols="100" rows="15" name="VALUE[2]">REX_VALUE[2]</textarea>\r\n\r\n<br/><br/>\r\n<div style="margin-bottom: 5px;">\r\n	Image (optional):\r\n</div>\r\nREX_MEDIALIST_BUTTON[1]', 'root', 'root', 1429645697, 1431093157, NULL, 0),
(10, 'YouTube Video', 0, '<?php\r\nif ("REX_MEDIALIST[1]" != "") {\r\n	$arr = explode(",","REX_MEDIALIST[1]");\r\n	foreach ($arr as $value) {\r\n		$video = str_replace("/watch?v=", "/embed/", "REX_VALUE[1]");\r\n		echo ''<div class="video">'';\r\n		echo ''	<a href="''. $video .''" class="fancybox fancybox.iframe"><img src="index.php?rex_img_type=thumbnail&rex_img_file=''. $value .''" /></a>'';\r\n		echo ''	<span class="title">REX_VALUE[2]</span>'';\r\n		echo ''</div>'';\r\n	}\r\n}\r\n?>', '<input type="text" size="60" name="VALUE[1]" placeholder="YouTube URL..." value="REX_VALUE[1]" />\r\n<br/><br/>\r\n<input type="text" size="60" name="VALUE[2]" placeholder="Title..." value="REX_VALUE[2]" />\r\n<br/><br/>\r\n<div style="margin-bottom: 5px;">Image:</div>\r\nREX_MEDIALIST_BUTTON[1]', 'root', 'root', 1430927630, 1431094174, NULL, 0),
(11, 'HTML', 0, '<div class="block-html">REX_HTML_VALUE[1]</div>', '<textarea cols="100" rows="15" name="VALUE[1]">REX_VALUE[1]</textarea>', 'root', 'root', 1431007610, 1431007702, NULL, 0),
(12, 'Tourdate', 0, '<?php\r\n$time = strtotime("REX_VALUE[1]");\r\n?>\r\n<li class="tourdate">\r\n	<time datetime="REX_VALUE[1]"><?= date("d.m.y", $time) ?></time>\r\n	<div><?php if("REX_VALUE[2]" != "") { ?>REX_VALUE[2] <?php } ?></div>\r\n	<div>\r\n		<?php if("REX_VALUE[5]" != "") { ?>\r\n			<a href="REX_VALUE[5]" target="_blank">REX_VALUE[3]</a>\r\n		<?php } else { ?>\r\n			REX_VALUE[3]\r\n		<?php } ?>\r\n	</div>\r\n	<?php if("REX_VALUE[4]" != "") { ?>\r\n		<a href="REX_VALUE[4]" target="_blank">Tickets</a>\r\n	<?php } ?>\r\n	<br class="clearfix"/>\r\n</li>', '<input type="text" size="15" name="VALUE[1]" value="REX_VALUE[1]" placeholder="Date..." />&nbsp;&nbsp;\r\n<input type="text" size="30" name="VALUE[2]" value="REX_VALUE[2]" placeholder="City..." />&nbsp;&nbsp;\r\n<input type="text" size="30" name="VALUE[3]" value="REX_VALUE[3]" placeholder="Location..." />\r\n<br/><br/>\r\n<input type="text" size="88" name="VALUE[4]" value="REX_VALUE[4]" placeholder="Ticket-Link..." />\r\n<br/><br/>\r\n<input type="text" size="88" name="VALUE[5]" value="REX_VALUE[5]" placeholder="Location-Link..." />', 'root', 'root', 1431074024, 1431888606, NULL, 0),
(13, 'Gallery', 0, '<?php if ("REX_MEDIALIST[1]" != "") { ?>\r\n<ul class="gallery">\r\n<?php\r\n	$arr = explode(",","REX_MEDIALIST[1]");\r\n	foreach ($arr as $value) {\r\n		$image = $REX[''HTDOCS_PATH''] .''/files/''. $value;\r\n		$media = OOMedia::getMediaByName($value); \r\n		$title = $media->getTitle();\r\n		$name = $media->getFileName();\r\n		$description= $media->getdescription();\r\n?>\r\n	<li>\r\n		<a  rel="gallery1" href="index.php?rex_img_type=gallery&rex_img_file=<?= $value ?>" class="link-gallery" title="<?= $title ?>">\r\n			<img src="index.php?rex_img_type=thumbnail&rex_img_file=<?= $value ?>" alt="<?= $title ?>" />\r\n		</a>\r\n	</li>\r\n<?php } ?>\r\n</ul>\r\n<?php } ?>', 'REX_MEDIALIST_BUTTON[1]', 'root', 'root', 1431080270, 1431426728, NULL, 0),
(14, 'Newsletter', 0, 'REX_TEMPLATE[id="5"]', '', 'root', '', 1431460204, 0, NULL, 0),
(15, 'Vorschaltseite mit Video', 0, '<?php\r\npreg_match("/watch\\?v=(.*)/", "REX_VALUE[1]", $matches);\r\n$video_id = $matches[1];\r\n?>\r\n<div id="curtain">\r\n	<div class="bg"></div>\r\n	<div id="curtain-video"><?= $video_id ?></div>\r\n	<i class="arrow glyphicon glyphicon-chevron-up"></i>\r\n</div>', '<input type="text" size="60" name="VALUE[1]" placeholder="YouTube URL..." value="REX_VALUE[1]" />', 'root', 'root', 1431637680, 1431643769, NULL, 0),
(16, 'Spotify Track', 0, '<?php\r\n$value = "REX_VALUE[1]";\r\n// spotify:track:2TpxZ7JUBn3uw46aR7qd6V or http://open.spotify.com/track/2TpxZ7JUBn3uw46aR7qd6V\r\n$value = str_replace("spotify:track:", "", $value);\r\n$valueArr = explode("/", $value);\r\n$value = $valueArr[count($valueArr)-1];\r\n$track = "spotify/track/". $value;\r\n$track = str_replace("/", "%3A", $track);\r\n?>\r\n<iframe class="spotify-track" src="https://embed.spotify.com/?uri=<?= $track; ?>" width="100%" height="80" frameborder="0" allowtransparency="true"></iframe>', '<input type="text" size="60" name="VALUE[1]" placeholder="Spotify Track URL..." value="REX_VALUE[1]" />', 'root', 'root', 1431303826, 1431304363, NULL, 0);

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
(1, 1, '123456789', 'Album #1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget eleifend lorem. Pellentesque vel ex nulla. Pellentesque quis tempor ligula. Mauris urna quam, laoreet ac fringilla quis, imperdiet id tortor. Donec pretium, urna semper egestas fermentum, nisi risus euismod est, quis imperdiet neque mauris at enim. Sed interdum lectus enim, sit amet egestas sapien euismod eget. Praesent sit amet aliquet risus. Praesent erat augue, suscipit at interdum a, cursus sed est. Nunc sit amet est augue. Nunc a imperdiet lorem. In in consectetur augue. Sed porta, felis non porttitor posuere, velit eros commodo nisl, quis lobortis sem elit non augue. Sed diam diam, sagittis quis lacus a, porta pellentesque nibh. Ut nibh lorem, pellentesque ut ex ullamcorper, feugiat tincidunt magna. Donec et efficitur ligula.', 9.99, 'vikings_cd.jpg', 1, 1429648528, 1429648584),
(2, 2, '123456788', 'T-Shirt S', '', 14.99, '', 1, 1429648612, 1429648612);

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rex_template`
--

INSERT INTO `rex_template` (`id`, `label`, `name`, `content`, `active`, `createuser`, `updateuser`, `createdate`, `updatedate`, `attributes`, `revision`) VALUES
(1, NULL, 'Default', '<?php\r\n$name = strtolower($this->getValue("name"));\r\n$article = $this->getArticle();\r\n?>\r\n<!DOCTYPE html>\r\n<html lang="en">\r\n<head>\r\n	<title><?= strtoupper($REX[''SERVERNAME'']) .'' - ''.htmlspecialchars($this->getValue("name")); ?></title>\r\n	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">\r\n	<meta charset="UTF-8">\r\n\r\n	<link href=''http://fonts.googleapis.com/css?family=Raleway'' rel=''stylesheet'' type=''text/css''>\r\n	<link rel="stylesheet" href="<?= $REX[''HTDOCS_PATH''] ?>bower_components/bootstrap/dist/css/bootstrap.min.css">\r\n	<link rel="stylesheet" type="text/css" href="<?= $REX[''HTDOCS_PATH''] ?>bower_components/fancybox/source/jquery.fancybox.css" />\r\n	<link rel="stylesheet" type="text/css" href="<?= $REX[''HTDOCS_PATH''] ?>files/css/main.css" />\r\n	<link rel="stylesheet" type="text/css" href="<?= $REX[''HTDOCS_PATH''] ?>files/css/icons.css" />\r\n	<link rel="stylesheet" type="text/css" href="<?= $REX[''HTDOCS_PATH''] ?>files/css/modules.css" />\r\n	<link rel="stylesheet" type="text/css" href="<?= $REX[''HTDOCS_PATH''] ?>files/css/pages.css" />\r\n\r\n	<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>bower_components/jquery/dist/jquery.min.js"></script>\r\n	<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>files/js/main.js"></script>\r\n	<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>bower_components/benbarnett/jQuery-Animate-Enhanced/jquery.animate-enhanced.min.js"></script>\r\n	<!--script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>node_modules/hammerjs/hammer.min.js"></script-->\r\n	<!--script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>node_modules/jquery-hammerjs/jquery.hammer.js"></script-->\r\n	<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>\r\n	<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>bower_components/fancybox/source/jquery.fancybox.pack.js"></script>\r\n	<script src="//www.youtube.com/player_api"></script>\r\n\r\n	<?php if($name == ''video'') { ?>\r\n		<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>files/js/video.js"></script>\r\n	<?php } ?>\r\n	<script type="text/javascript" src="<?= $REX[''HTDOCS_PATH''] ?>files/js/gallery.js"></script>\r\n</head>\r\n\r\n<body class="page-<?= $name ?>">\r\n<div id="wrapper" class="container">\r\n	<header>\r\n		<div class="bg"></div>\r\n		<div id="logo"><a href="<?php echo $REX[''HTDOCS_PATH''] ?>">L`Aupaire</a></div>\r\n		<!-- NAV -->\r\n		REX_TEMPLATE[id="2"]\r\n	</header>\r\n\r\n	<div id="content" class="<?php if(empty($article)) { ?>empty<?php } ?>">\r\n		<div class="container">\r\n			<?php\r\n			// tourdates\r\n			$tourdate_first_pos = stripos($article, ''<li class="tourdate">'');\r\n			if($tourdate_first_pos > -1) {\r\n				$article = substr_replace($article, ''<ul id="tourdates"><li><span class="bold">Date</span><span class="bold">City</span><span class="bold">Location</span><span class="bold text-right">Tickets</span></li>'', $tourdate_first_pos, 0);\r\n\r\n				// lass occurence\r\n				$tourdate_last_pos = strripos($article, ''</li>'') + 5;\r\n				$article = substr_replace($article, ''</ul>'', $tourdate_last_pos, 0);\r\n			}\r\n\r\n			echo $article;\r\n			?>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<!-- SOCIAL MEDIA -->\r\nREX_TEMPLATE[id="4"]\r\n\r\n<?php if($name != ''newsletter'') { ?>\r\n	<!-- NEWSLETTER -->\r\n	REX_TEMPLATE[id="5"]\r\n<?php } ?>\r\n\r\n<div id="fb-root"></div>\r\n<script src="//cdn.jsdelivr.net/whatsapp-sharing/1.3.2/whatsapp-button.js"></script>\r\n</body>\r\n</html>\r\n', 1, 'root', 'root', 1431888675, 1431888675, 'a:3:{s:10:"categories";a:1:{s:3:"all";s:1:"1";}s:5:"ctype";a:0:{}s:7:"modules";a:1:{i:1;a:1:{s:3:"all";s:1:"1";}}}', 0),
(2, NULL, 'Navigation', '<button type="button" id="navbar-toggle" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">\r\n	<span class="sr-only">Toggle navigation</span>\r\n	<span class="icon-bar"></span>\r\n	<span class="icon-bar"></span>\r\n	<span class="icon-bar"></span>\r\n</button>\r\n<nav id="navbar" class="navbar-collapse collapse">\r\n	<ul class="nav navbar-nav">\r\n		<?php\r\n		$PATH = explode("|",$this->getValue("path").$this->getValue("article_id")."|");\r\n\r\n		foreach (OOCategory::getRootCategories(true) as $category) {\r\n			if ($category->hasTemplate()) {\r\n				$active = $category->getId() == $PATH[1] ? '' active'' : '''';\r\n\r\n				echo ''<li role="presentation" class="''. $active .'' cat-''. strtolower($category->getName()) .''">'';\r\n				echo ''	''. $category->toLink('''');\r\n				echo ''</li>'';\r\n			}\r\n		}\r\n		?>\r\n	</ul>\r\n</nav>', 0, 'root', 'root', 1431302287, 1431302287, 'a:3:{s:10:"categories";a:1:{s:3:"all";s:1:"1";}s:5:"ctype";a:0:{}s:7:"modules";a:1:{i:1;a:1:{s:3:"all";s:1:"1";}}}', 0),
(4, NULL, 'Social Media', '<div id="widgets">\r\n	<div class="widget-whatsapp">\r\n		<a href="whatsapp://send" data-text="Take a look at this awesome website:" data-href="" class="wa_btn wa_btn_s" style="display:none">Share</a>\r\n	</div>\r\n	<div class="widget-spotify"></div>\r\n	<div class="widget-facebook">\r\n		<div class="fb-like" data-href="https://www.facebook.com/laupaire" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>\r\n	</div>\r\n	<div class="widget-twitter">\r\n		<a href="https://twitter.com/laupaire" class="twitter-follow-button" data-show-count="false" data-show-screen-name="false"></a>\r\n	</div>\r\n</div>\r\n<ul id="social-media">\r\n	<li>\r\n		<a href="https://www.facebook.com/laupaire" title="Facebook"><i class="icon-facebook-with-circle"></i></a>\r\n	</li>\r\n	<li>\r\n		<a href="https://www.twitter.com/laupaire" title="Twitter"><i class="icon-twitter-with-circle"></i></a>\r\n	</li>\r\n	<li>\r\n		<a href="https://plus.google.com/106042085947517840852/about" title="Google+"><i class="icon-google-with-circle"></i></a>\r\n	</li>\r\n	<li>\r\n		<a href="https://instagram.com/laupaire/" title="Instagram"><i class="icon-instagram-with-circle"></i></a>\r\n	</li>\r\n		<li>\r\n			<a href="http://www.amazon.de/s/ref=nb_sb_noss_2?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&url=search-alias%3Daps&field-keywords=L%27Aupaire" title="Amazon"><i class="icon-amazon-with-circle"></i></a>\r\n		</li>\r\n	<li>\r\n		<a href="https://www.youtube.com/channel/UCcUNsaSiwvWFGgNKFjWg1kA" title="YouTube"><i class="icon-youtube-with-circle"></i></a>\r\n	</li>\r\n	<li>\r\n		<a href="https://open.spotify.com/artist/6d9XIbBseVi999qdzDEtwE" title="Spotify"><i class="icon-spotify-with-circle"></i></a>\r\n	</li>\r\n</ul>', 0, 'root', 'root', 1431303121, 1431303121, 'a:3:{s:10:"categories";a:1:{s:3:"all";s:1:"1";}s:5:"ctype";a:0:{}s:7:"modules";a:1:{i:1;a:1:{s:3:"all";s:1:"1";}}}', 0),
(5, NULL, 'Newsletter', '<div id="newsletter">\r\n	<div class="newsletter-wrapper">\r\n		<h2>Newsletter</h2>\r\n		<form id="form-subscribe" action="subscribe.php" method="post">\r\n			<div class="form-group">\r\n				<label for="txt-email">\r\n					<input id="txt-email" type="email" class="form-control" autocomplete="off" placeholder="E-Mail address..." required="required" />\r\n				</label>\r\n				<input class="btn-subscribe btn btn-default" type="submit" value="Subscribe"/>\r\n				<span class="icon-loader"></span>\r\n			</div>\r\n		</form>\r\n	</div>\r\n</div>\r\n', 0, 'root', 'root', 1431466166, 1431466166, 'a:3:{s:10:"categories";a:1:{s:3:"all";s:1:"1";}s:5:"ctype";a:0:{}s:7:"modules";a:1:{i:1;a:1:{s:3:"all";s:1:"1";}}}', 0);

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
(1, 'Administrator', '', 'root', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '1', '#admin[]#accesskeys[]#advancedMode[]#article2category[]#article2startpage[]#be_search[mediapool]#be_search[structure]#copyArticle[]#copyContent[]#moveArticle[]#moveCategory[]#moveSlice[]#publishArticle[]#publishCategory[]#textile[help]#', 0, 'setup', 'root', 1429645443, 1431717760, 1431888211, '3agvnrvtemlgeos8fi8d2o1jga68guln', NULL, 0);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `rex_679_type_effects`
--
ALTER TABLE `rex_679_type_effects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `rex_action`
--
ALTER TABLE `rex_action`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `rex_article`
--
ALTER TABLE `rex_article`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `rex_article_slice`
--
ALTER TABLE `rex_article_slice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT für Tabelle `rex_file`
--
ALTER TABLE `rex_file`
MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `rex_file_category`
--
ALTER TABLE `rex_file_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `rex_module`
--
ALTER TABLE `rex_module`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
