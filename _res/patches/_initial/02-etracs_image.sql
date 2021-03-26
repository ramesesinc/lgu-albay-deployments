
CREATE DATABASE `etracs_image` CHARACTER SET utf8
;
USE `etracs_image`
;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for image_chunk
-- ----------------------------
DROP TABLE IF EXISTS `image_chunk`;
CREATE TABLE `image_chunk` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `fileno` int(11) NOT NULL,
  `byte` longblob NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for image_header
-- ----------------------------
DROP TABLE IF EXISTS `image_header`;
CREATE TABLE `image_header` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `filesize` int(11) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
