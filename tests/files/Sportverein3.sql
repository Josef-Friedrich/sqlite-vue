-- phpMyAdmin SQL Dump
-- version 2.7.0-pl1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Erstellungszeit: 17. Januar 2007 um 15:18
-- Server Version: 5.0.18
-- PHP-Version: 5.1.1

SET FOREIGN_KEY_CHECKS=0;

SET AUTOCOMMIT=0;
START TRANSACTION;

-- 
-- Datenbank: `sportverein2`
-- 

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `abteilung`
-- 

DROP TABLE IF EXISTS `abteilung`;
CREATE TABLE `abteilung` (
  `Sport_ID` int(4) NOT NULL,
  `Sportart` varchar(20) NOT NULL,
  `Beitrag` decimal(8,2) NOT NULL,
  PRIMARY KEY  (`Sport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Daten für Tabelle `abteilung`
-- 

INSERT IGNORE INTO `abteilung` VALUES (1, 'Fußball', 150.00);
INSERT IGNORE INTO `abteilung` VALUES (2, 'Handball', 110.00);
INSERT IGNORE INTO `abteilung` VALUES (3, 'Turnen', 140.00);
INSERT IGNORE INTO `abteilung` VALUES (4, 'Schwimmen', 160.00);
INSERT IGNORE INTO `abteilung` VALUES (5, 'Boxen', 210.00);
INSERT IGNORE INTO `abteilung` VALUES (6, 'Ringen', 200.00);
INSERT IGNORE INTO `abteilung` VALUES (7, 'Basketball', 120.00);
INSERT IGNORE INTO `abteilung` VALUES (8, 'Judo', 240.00);
INSERT IGNORE INTO `abteilung` VALUES (9, 'Leichtathletik', 180.00);
INSERT IGNORE INTO `abteilung` VALUES (10, 'Volleyball', 240.00);
INSERT IGNORE INTO `abteilung` VALUES (11, 'Aerobic', 200.00);
INSERT IGNORE INTO `abteilung` VALUES (12, 'Badminton', 180.00);
INSERT IGNORE INTO `abteilung` VALUES (13, 'Tennis', 500.00);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `ist_mitglied_von`
-- 

DROP TABLE IF EXISTS `ist_mitglied_von`;
CREATE TABLE `ist_mitglied_von` (
  `M_ID` int(4) NOT NULL,
  `Sport_ID` int(4) NOT NULL,
  PRIMARY KEY  (`M_ID`,`Sport_ID`),
  KEY `Sport_ID` (`Sport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Daten für Tabelle `ist_mitglied_von`
-- 

INSERT IGNORE INTO `ist_mitglied_von` VALUES (1, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (2, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (6, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (7, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (8, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (12, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (13, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (15, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (16, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (17, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (20, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (22, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (34, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (40, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (43, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (45, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (46, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (49, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (50, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (52, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (53, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (54, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (57, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (58, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (59, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (60, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (63, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (64, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (65, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (66, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (67, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (68, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (73, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (75, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (78, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (80, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (82, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (83, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (84, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (86, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (88, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (89, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (90, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (93, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (95, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (96, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (97, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (98, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (100, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (104, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (105, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (106, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (107, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (108, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (109, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (111, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (114, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (116, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (118, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (119, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (120, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (123, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (126, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (128, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (131, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (132, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (133, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (135, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (136, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (138, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (140, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (141, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (144, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (146, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (149, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (150, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (151, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (152, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (154, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (159, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (160, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (161, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (163, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (164, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (165, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (166, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (167, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (169, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (171, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (173, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (175, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (176, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (177, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (178, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (179, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (182, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (183, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (185, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (186, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (187, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (188, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (190, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (192, 1);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (3, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (4, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (5, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (9, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (10, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (11, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (14, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (18, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (19, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (44, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (49, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (53, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (65, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (66, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (67, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (72, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (83, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (85, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (89, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (135, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (163, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (180, 2);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (23, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (24, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (25, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (26, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (27, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (30, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (31, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (32, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (33, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (36, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (37, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (39, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (41, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (42, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (56, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (94, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (98, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (102, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (105, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (116, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (119, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (125, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (127, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (131, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (166, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (169, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (173, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (181, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (198, 3);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (1, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (2, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (4, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (6, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (10, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (11, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (12, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (13, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (26, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (29, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (47, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (51, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (55, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (61, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (62, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (63, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (74, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (77, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (79, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (81, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (87, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (92, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (96, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (99, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (104, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (109, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (113, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (120, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (121, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (122, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (124, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (126, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (128, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (129, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (132, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (133, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (136, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (137, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (138, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (139, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (141, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (144, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (146, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (149, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (151, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (152, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (164, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (168, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (170, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (180, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (185, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (188, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (190, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (191, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (193, 4);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (8, 6);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (28, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (57, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (58, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (60, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (68, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (70, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (73, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (75, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (80, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (82, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (84, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (86, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (88, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (115, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (148, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (153, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (156, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (157, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (168, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (184, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (189, 7);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (48, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (50, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (52, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (54, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (74, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (78, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (97, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (100, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (103, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (106, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (108, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (111, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (112, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (114, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (117, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (134, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (140, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (142, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (145, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (150, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (172, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (174, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (183, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (192, 8);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (4, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (13, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (27, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (33, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (36, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (38, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (42, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (44, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (45, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (48, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (59, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (69, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (71, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (76, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (91, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (93, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (94, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (101, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (107, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (110, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (118, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (123, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (130, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (135, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (143, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (147, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (154, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (159, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (160, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (161, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (165, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (167, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (171, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (172, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (174, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (175, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (176, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (177, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (182, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (187, 9);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (9, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (22, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (29, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (38, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (42, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (51, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (55, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (63, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (70, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (79, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (85, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (90, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (91, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (95, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (153, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (155, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (156, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (157, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (170, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (179, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (186, 10);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (24, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (28, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (35, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (39, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (41, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (61, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (62, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (87, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (158, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (162, 11);
INSERT IGNORE INTO `ist_mitglied_von` VALUES (9, 12);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `ort`
-- 

DROP TABLE IF EXISTS `ort`;
CREATE TABLE `ort` (
  `Ort_ID` int(4) NOT NULL,
  `PLZ` varchar(5) NOT NULL,
  `Ortsname` varchar(20) NOT NULL,
  PRIMARY KEY  (`Ort_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Daten für Tabelle `ort`
-- 

INSERT IGNORE INTO `ort` VALUES (1, '85368', 'Brugschlag');
INSERT IGNORE INTO `ort` VALUES (2, '85405', 'Nandlstadt');
INSERT IGNORE INTO `ort` VALUES (3, '85395', 'Attenkirchen');
INSERT IGNORE INTO `ort` VALUES (4, '85402', 'Kranzberg');
INSERT IGNORE INTO `ort` VALUES (5, '85395', 'Wolfersdorf');
INSERT IGNORE INTO `ort` VALUES (6, '85375', 'Neufarn');
INSERT IGNORE INTO `ort` VALUES (7, '85414', 'Kirchdorf');
INSERT IGNORE INTO `ort` VALUES (8, '84079', 'Bruckberg');
INSERT IGNORE INTO `ort` VALUES (9, '85406', 'Zolling');
INSERT IGNORE INTO `ort` VALUES (10, '85368', 'Moosburg');
INSERT IGNORE INTO `ort` VALUES (11, '85408', 'Daberg');
INSERT IGNORE INTO `ort` VALUES (12, '85419', 'Mauern');
INSERT IGNORE INTO `ort` VALUES (13, '85391', 'Allershausen');
INSERT IGNORE INTO `ort` VALUES (14, '85368', 'Wang');
INSERT IGNORE INTO `ort` VALUES (15, '85399', 'Halbergmoos');
INSERT IGNORE INTO `ort` VALUES (16, '85416', 'Langenbach');
INSERT IGNORE INTO `ort` VALUES (17, '85408', 'Gammelsdorf');
INSERT IGNORE INTO `ort` VALUES (18, '85417', 'Marzling');
INSERT IGNORE INTO `ort` VALUES (19, '85413', 'Hörgertshausen');
INSERT IGNORE INTO `ort` VALUES (20, '85410', 'Haag');
INSERT IGNORE INTO `ort` VALUES (21, '86150', 'Augsburg');
INSERT IGNORE INTO `ort` VALUES (22, '86159', 'Augsburg');
INSERT IGNORE INTO `ort` VALUES (23, '86161', 'Augsburg');
INSERT IGNORE INTO `ort` VALUES (24, '86343', 'Königsbrunn');
INSERT IGNORE INTO `ort` VALUES (25, '86399', 'Bobingen');
INSERT IGNORE INTO `ort` VALUES (26, '86179', 'Augsburg');
INSERT IGNORE INTO `ort` VALUES (27, '89404', 'Dillingen');
INSERT IGNORE INTO `ort` VALUES (28, '81739', 'München');
INSERT IGNORE INTO `ort` VALUES (29, '86830', 'Schwabmünchen');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `person`
-- 

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `M_ID` int(4) NOT NULL auto_increment,
  `Vorname` varchar(20) NOT NULL,
  `Nachname` varchar(20) NOT NULL,
  `Geburtsdatum` date NOT NULL,
  `Geschlecht` char(1) NOT NULL,
  `Strasse` varchar(20) NOT NULL,
  `Ort_ID` int(4) NOT NULL,
  `Telefon` varchar(20) NOT NULL,
  PRIMARY KEY  (`M_ID`),
  KEY `Ort_ID` (`Ort_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=204 ;

-- 
-- Daten für Tabelle `person`
-- 

INSERT IGNORE INTO `person` VALUES (1, 'Hans', 'Huber', '1981-03-12', 'm', 'Postweg 12', 1, '08XBG / AB C0 01');
INSERT IGNORE INTO `person` VALUES (2, 'Klaus', 'Maier', '1982-02-20', 'm', 'Gartenweg 2', 2, '08XND / AB 02');
INSERT IGNORE INTO `person` VALUES (3, 'Inge', 'Schmidt', '1987-08-03', 'w', 'Hauptstr. 1', 5, '08XWO / AB C0 03');
INSERT IGNORE INTO `person` VALUES (4, 'Anita', 'Klaubmann', '1980-06-01', 'w', 'Graben 22', 4, '08XKR / AB 04');
INSERT IGNORE INTO `person` VALUES (5, 'Julia', 'Berger', '1982-12-11', 'w', 'Fischerweg 22', 3, '08XAT / AB C0 05');
INSERT IGNORE INTO `person` VALUES (6, 'Otto', 'Fischer', '1980-07-18', 'm', 'Karlweg 123', 6, '08XNF / AB 06');
INSERT IGNORE INTO `person` VALUES (7, 'Peter', 'Hutmann', '1984-01-07', 'm', 'Ottostr. 17', 7, '08XKI / AB C0 07');
INSERT IGNORE INTO `person` VALUES (8, 'Vera', 'Köhler', '1983-12-07', 'w', 'Ring 99', 8, '08XBG / AB 08');
INSERT IGNORE INTO `person` VALUES (9, 'Manuela', 'Fiedmann', '1986-02-02', 'w', 'Bahnhofplatz 23', 9, '08XZO / AB C0 09');
INSERT IGNORE INTO `person` VALUES (10, 'Walter', 'Fildler', '1981-08-09', 'm', 'Lindenweg 87', 14, '08XWG / AB 10');
INSERT IGNORE INTO `person` VALUES (11, 'Ulrich', 'Becker', '1984-12-23', 'm', 'Maxweg 14', 17, '08XGD / AB C0 11');
INSERT IGNORE INTO `person` VALUES (12, 'Petra', 'Müller', '1983-05-12', 'w', 'Hutterstr. 33', 12, '08XMN / AB 12');
INSERT IGNORE INTO `person` VALUES (13, 'Karl', 'Seifert', '1980-06-23', 'm', 'Winterweg 12', 13, '08XAL / AB C0 13');
INSERT IGNORE INTO `person` VALUES (14, 'Friedrich', 'Klein', '1985-04-26', 'm', 'Hirtensteig 23', 10, '08XMB / AB 14');
INSERT IGNORE INTO `person` VALUES (15, 'Maria', 'Brucker', '1986-11-30', 'w', 'Winkelstraße 233', 15, '08XHM / AB 15');
INSERT IGNORE INTO `person` VALUES (16, 'Josef', 'Groß', '1987-10-23', 'm', 'Hafenstraße 7', 16, '08XLG / AB 16');
INSERT IGNORE INTO `person` VALUES (17, 'Georg', 'Frohmann', '1982-09-29', 'm', 'Meierweg 99', 11, '08XDB / AB C0 17');
INSERT IGNORE INTO `person` VALUES (18, 'Sieglinde', 'Liebel', '1986-06-11', 'w', 'Grubenstr. 33', 18, '08XMZ / AB 18');
INSERT IGNORE INTO `person` VALUES (19, 'Susanne', 'Glotz', '1983-12-01', 'w', 'Leibnitz Str. 22', 19, '08XHÖ / AB C0 19');
INSERT IGNORE INTO `person` VALUES (20, 'Martin', 'Glanzmann', '1985-10-22', 'm', 'Fußweg 33', 20, '08XHG / AB 20');
INSERT IGNORE INTO `person` VALUES (21, 'Pumuckl', 'Malefiz', '1982-08-27', 'm', 'Poststr. 4', 2, '08XND / AB 21');
INSERT IGNORE INTO `person` VALUES (22, 'Eder', 'Meister', '1985-11-11', 'm', 'Poststr. 6', 2, '08XND / AB C0 22');
INSERT IGNORE INTO `person` VALUES (23, 'Andreas', 'Sebald', '1963-05-23', 'm', 'Freiburgerstr. 3', 24, '08XKÖ / AB C0 23');
INSERT IGNORE INTO `person` VALUES (24, 'Martina', 'Kirchner', '1965-07-14', 'w', 'Dieselstraße 27', 21, '08XA / AB C0 24');
INSERT IGNORE INTO `person` VALUES (25, 'Karl-Heinz', 'Seefried', '1959-04-12', 'm', 'Hubertusstr. 5', 24, '08XKÖ / AB C0 25');
INSERT IGNORE INTO `person` VALUES (26, 'Elfriede', 'Schneider', '1941-05-13', 'w', 'Richard-Strauß-Str. ', 22, '08XA / AB C0 26');
INSERT IGNORE INTO `person` VALUES (27, 'Eva', 'Birkner', '1979-10-07', 'w', 'Eulenhorst 7a', 24, '08XKÖ / AB 27');
INSERT IGNORE INTO `person` VALUES (28, 'Erika', 'Niederlechner', '1956-11-12', 'w', 'Leipzigerstr. 93', 24, '08XKÖ / AB C0 28');
INSERT IGNORE INTO `person` VALUES (29, 'Winfried', 'Zach', '1981-05-01', 'm', 'Keltenstr. 7', 23, '08XA / AB C0 29');
INSERT IGNORE INTO `person` VALUES (30, 'Jürgen', 'Mayer', '1955-07-13', 'm', 'Alpenstr. 49', 22, '08XA / AB C0 300');
INSERT IGNORE INTO `person` VALUES (31, 'Anton', 'Ebert', '1939-05-12', 'm', 'Keltenstr. 22', 24, '08XKÖ / AB 31');
INSERT IGNORE INTO `person` VALUES (32, 'Elisabeth', 'Hintermayer', '1954-06-03', 'w', 'Hauptstraße 12', 24, '08XKÖ / AB C0 321');
INSERT IGNORE INTO `person` VALUES (33, 'Markus', 'Engelhardt', '1976-07-01', 'm', 'Von-Richthofen-Str. ', 22, '08XA / AB C0 33');
INSERT IGNORE INTO `person` VALUES (34, 'Winfried', 'Ulmann', '1969-06-23', 'm', 'Kneipstr. 23', 24, '08XKÖ / AB C0 345');
INSERT IGNORE INTO `person` VALUES (35, 'Josephine', 'Reissner', '1963-12-11', 'w', 'Fichtenstraße 27', 21, '08XA / AB C0 35');
INSERT IGNORE INTO `person` VALUES (36, 'Christine', 'Wohlhüter', '1975-05-04', 'w', 'Am Bahnhof 2a', 24, '08XKÖ / AB 36');
INSERT IGNORE INTO `person` VALUES (37, 'Irmgard', 'Deichsel', '1942-09-03', 'w', 'Eppanerstr. 3', 24, '08XKÖ / AB C0 347');
INSERT IGNORE INTO `person` VALUES (38, 'Richard', 'Tuschler', '1972-10-05', 'm', 'Untere Laube 13', 22, '08XA / AB C0 38');
INSERT IGNORE INTO `person` VALUES (39, 'Gabriele', 'Oswald', '1966-04-30', 'w', 'Brahmsstr. 57', 24, '08XKÖ / AB C0 39');
INSERT IGNORE INTO `person` VALUES (40, 'Gerhard', 'Hubich', '1959-10-20', 'm', 'Teichweg 11', 23, '08XA / AB C0 40');
INSERT IGNORE INTO `person` VALUES (41, 'Irene', 'Pohlmann', '1962-02-02', 'w', 'Promenadenweg 33', 24, '08XKÖ / AB C0 41');
INSERT IGNORE INTO `person` VALUES (42, 'Markus', 'Lechner', '1970-07-23', 'm', 'Weidenstraße 27', 24, '08XKÖ / AB 42');
INSERT IGNORE INTO `person` VALUES (43, 'Klaus', 'Bach', '1981-10-01', 'm', 'Lechallee 5', 25, '08XBO / AB 49');
INSERT IGNORE INTO `person` VALUES (44, 'Maria', 'Kunst', '1981-06-19', 'w', 'Am Ende 2', 15, '08XHM / AB 44');
INSERT IGNORE INTO `person` VALUES (45, 'Peter', 'Fluß', '1981-05-17', 'm', 'Benz Str. 27', 19, '08XHÖ / AB 45');
INSERT IGNORE INTO `person` VALUES (46, 'Dieter', 'Strom', '1981-01-19', 'm', 'Kirchstr. 17', 11, '08XDB / AB C0 46');
INSERT IGNORE INTO `person` VALUES (47, 'Marianne', 'See', '1980-01-31', 'w', 'Fichtenweg 16', 10, '08XMB / AB C0 47');
INSERT IGNORE INTO `person` VALUES (48, 'Rosa', 'Himmel', '1981-03-16', 'w', 'Hechtweg 1', 8, '08XBK / AB 48');
INSERT IGNORE INTO `person` VALUES (49, 'Josef', 'Bach', '1980-12-30', 'm', 'Lechallee 5', 25, '08XBO / AB 49');
INSERT IGNORE INTO `person` VALUES (50, 'Werner', 'Weiher', '1979-12-15', 'm', 'Waldweg 3', 17, '08XGD / AB C0 50');
INSERT IGNORE INTO `person` VALUES (51, 'Christina', 'Meer', '1980-08-28', 'w', 'Seestr. 45', 22, '08XA / AB C0 51');
INSERT IGNORE INTO `person` VALUES (52, 'Maximilian', 'Altenburger', '1980-07-10', 'm', 'Forststr 45', 22, '08XA / AB C0 52');
INSERT IGNORE INTO `person` VALUES (53, 'Willi', 'Bogner', '1981-04-19', 'm', 'Lechalle 34', 25, '08XBO / AB C0 53');
INSERT IGNORE INTO `person` VALUES (54, 'Helmut', 'Braun', '1980-03-03', 'm', 'Illerstr. 4', 25, '08XBO / AB C0 54');
INSERT IGNORE INTO `person` VALUES (55, 'Jasmin', 'Schwarz', '1980-09-03', 'w', 'Flussweg 7', 12, '08XMN / AB C0 55');
INSERT IGNORE INTO `person` VALUES (56, 'Albertine', 'Weiß', '1982-10-25', 'w', 'Blumenweg 8', 18, '08XMZ / AB C0 56');
INSERT IGNORE INTO `person` VALUES (57, 'Wolfgang', 'Bochtler', '1981-06-30', 'm', 'Goethe Str. 54', 24, '08XKÖ / AB C0 57');
INSERT IGNORE INTO `person` VALUES (58, 'Albert', 'Fesl', '1981-08-31', 'm', 'Müllerweg 3', 11, '08XDB / AB C0 58');
INSERT IGNORE INTO `person` VALUES (59, 'Gerd', 'Schmitz', '1981-06-18', 'm', 'Bachweg 1', 2, '08XND / AB C0 59');
INSERT IGNORE INTO `person` VALUES (60, 'Stefan', 'Zorn', '1980-11-15', 'm', 'Nebenstr. 3', 20, '08XHG / AB C0 60');
INSERT IGNORE INTO `person` VALUES (61, 'Ulrike', 'Amann', '1980-09-22', 'w', 'Wertachstr. 10', 25, '08XBO / AB C0 61');
INSERT IGNORE INTO `person` VALUES (62, 'Claudia', 'Späth', '1980-01-17', 'w', 'Bayernweg 1', 3, '08XAT / AB C0 62');
INSERT IGNORE INTO `person` VALUES (63, 'Bernd', 'Hecht', '1981-08-27', 'm', 'Karpfenstr. 3', 5, '08XWO / AB 63');
INSERT IGNORE INTO `person` VALUES (64, 'Günther', 'Stein', '1980-01-22', 'm', 'Pfarrweg 3', 7, '08XKI / AB C0 64');
INSERT IGNORE INTO `person` VALUES (65, 'Hans', 'Schmitz', '1981-07-07', 'm', 'Flussweg 3', 12, '08XMN / AB C0 65');
INSERT IGNORE INTO `person` VALUES (66, 'Tobias', 'Sirch', '1980-11-29', 'm', 'Blumenweg 4', 1, '08XBG / AB 66');
INSERT IGNORE INTO `person` VALUES (67, 'Volker', 'Schäfer', '1981-08-10', 'm', 'Nebenstr. 3', 14, '08XWG / AB C0 67');
INSERT IGNORE INTO `person` VALUES (68, 'Florian', 'Bauer', '1981-07-07', 'm', 'Robert Koch Str. 8', 24, '08XKÖ / AB C0 68');
INSERT IGNORE INTO `person` VALUES (69, 'Martina', 'Meier', '1981-06-25', 'w', 'Seestr. 40', 22, '08XA / AB C0 69');
INSERT IGNORE INTO `person` VALUES (70, 'Silvia', 'Achter', '1980-09-27', 'w', 'Wertachstr. 20', 25, '08XBO / AB 70');
INSERT IGNORE INTO `person` VALUES (71, 'Andrea', 'Eder', '1981-07-06', 'w', 'Leibnitz Str. 16', 19, '08XHÖ / AB 71');
INSERT IGNORE INTO `person` VALUES (72, 'Maria', 'Huber', '1980-11-24', 'w', 'Bachweg 5', 13, '08XAL / AB 72');
INSERT IGNORE INTO `person` VALUES (73, 'Albert', 'Loy', '1981-05-15', 'm', 'Auweg 12', 15, '08XHM / AB C0 73');
INSERT IGNORE INTO `person` VALUES (74, 'Lena', 'Hauser', '1980-09-11', 'w', 'Ottostr. 10', 7, '08XKI / AB 74');
INSERT IGNORE INTO `person` VALUES (75, 'Wolfgang', 'Bayer', '1980-10-25', 'm', 'Stefan Zeig Str 7a', 23, '08XA / AB C0 75');
INSERT IGNORE INTO `person` VALUES (76, 'Susanne', 'Biller', '1981-06-25', 'w', 'Jahnstr. 12', 22, '08XA / AB C0 76');
INSERT IGNORE INTO `person` VALUES (77, 'Lisa', 'Klein', '1980-09-26', 'w', 'Auweg 3', 15, '08XHM / AB 77');
INSERT IGNORE INTO `person` VALUES (78, 'Klaus', 'Lutz', '1980-02-27', 'm', 'Alte Strasse 13', 21, '08XA / AB C0 78');
INSERT IGNORE INTO `person` VALUES (79, 'Petra', 'Renz', '1980-09-08', 'w', 'Auweg 7', 3, '08XAT / AB 79');
INSERT IGNORE INTO `person` VALUES (80, 'Stefan', 'Ott', '1981-03-26', 'm', 'Werachstr. 12', 25, '08XBO / AB C0 80');
INSERT IGNORE INTO `person` VALUES (81, 'Gertraud', 'Reim', '1981-08-27', 'w', 'Donaustr 25', 25, '08XBO / AB C0 81');
INSERT IGNORE INTO `person` VALUES (82, 'Karl', 'Richter', '1980-10-26', 'm', 'Postweg 5', 4, '08XKR / AB 82');
INSERT IGNORE INTO `person` VALUES (83, 'Dieter', 'Schuster', '1980-12-13', 'm', 'Tannenweg 5', 6, '08XNF / AB C0 83');
INSERT IGNORE INTO `person` VALUES (84, 'Manfred', 'Pfeifer', '1981-03-11', 'm', 'Illerstr 15', 25, '08XBO / AB C0 84');
INSERT IGNORE INTO `person` VALUES (85, 'Helga', 'Ruf', '1981-05-03', 'w', 'Regenstr. 8', 25, '08XBO / AB C0 85');
INSERT IGNORE INTO `person` VALUES (86, 'Arno', 'Ritzer', '1980-10-16', 'm', 'Postweg 7', 4, '08XKR / AB C0 86');
INSERT IGNORE INTO `person` VALUES (87, 'Elise', 'Ruile', '1980-11-11', 'w', 'Fuchsweg 1', 5, '08XWO / AB C0 87');
INSERT IGNORE INTO `person` VALUES (88, 'Rainer', 'Kraus', '1980-09-07', 'm', 'Am Anfang 1', 16, '08XLG / AB C0 88');
INSERT IGNORE INTO `person` VALUES (89, 'Holger', 'Frisch', '1980-12-19', 'm', 'Bahnstr. 8', 16, '08XLG / AB 89');
INSERT IGNORE INTO `person` VALUES (90, 'Peter', 'Lang', '1981-08-23', 'm', 'Wiesenstr. 14', 20, '08XHG / AB C0 90');
INSERT IGNORE INTO `person` VALUES (91, 'Petra', 'Kurz', '1981-03-05', 'w', 'Hippieweg 3', 17, '08XGD / AB C0 91');
INSERT IGNORE INTO `person` VALUES (92, 'Magdalena', 'Hübsch', '1986-10-28', 'w', 'Gartenstr. 5', 25, '08XBO / AB C0 92');
INSERT IGNORE INTO `person` VALUES (93, 'Dracula', 'Häßlich', '1987-02-03', 'm', 'Ludwigstr. 5', 7, '08XKI / AB 93');
INSERT IGNORE INTO `person` VALUES (94, 'Lena', 'Schön', '1987-03-28', 'w', 'Tannenweg 3', 6, '08XNF / AB C0 94');
INSERT IGNORE INTO `person` VALUES (95, 'Klaus', 'Furz', '1986-10-29', 'm', 'Bahnhofstr. 8', 25, '08XBO / AB C0 95');
INSERT IGNORE INTO `person` VALUES (96, 'Sepp', 'Anfang', '1987-07-28', 'm', 'Fuggerstr. 8', 24, '08XKÖ / AB 96');
INSERT IGNORE INTO `person` VALUES (97, 'Günter', 'Ende', '1987-07-30', 'm', 'Inninger Str. 25', 22, '08XA / AB C0 97');
INSERT IGNORE INTO `person` VALUES (98, 'Karl', 'Mitte', '1987-08-06', 'm', 'Donaustr. 36', 25, '08XBO / AB C0 98');
INSERT IGNORE INTO `person` VALUES (99, 'Gerda', 'Eins', '1987-07-28', 'w', 'Fußweg 27', 20, '08XHG / AB 99');
INSERT IGNORE INTO `person` VALUES (100, 'Hans', 'Letzt', '1986-08-22', 'm', 'Weg 6', 19, '08XHÖ / AB C1 00');
INSERT IGNORE INTO `person` VALUES (101, 'Geraldine', 'Huber', '1987-03-29', 'w', 'Poststr. 2', 10, '08XMB / AB C1 01');
INSERT IGNORE INTO `person` VALUES (102, 'Daniela', 'Meier', '1986-11-11', 'w', 'Seestr. 40', 22, '08XA / AB C0 69');
INSERT IGNORE INTO `person` VALUES (103, 'Traudl', 'Mayr', '1987-05-31', 'w', 'Poststr. 11', 21, '08XA / AB C1 03');
INSERT IGNORE INTO `person` VALUES (104, 'Josef', 'Huber', '1987-03-29', 'm', 'Bachweg 5', 13, '08XAL / AB 72');
INSERT IGNORE INTO `person` VALUES (105, 'Heinz', 'Mai', '1986-11-16', 'm', 'Hutterstr. 17', 12, '08XMN / AB 05');
INSERT IGNORE INTO `person` VALUES (106, 'Bernd', 'Meyer', '1987-05-22', 'm', 'Brahmsstr. 57', 24, '08XKÖ / AB C1 06');
INSERT IGNORE INTO `person` VALUES (107, 'Martin', 'Neu', '1986-09-12', 'm', 'Auweg 14', 25, '08XBO / AB C1 07');
INSERT IGNORE INTO `person` VALUES (108, 'Walter', 'Alt', '1987-08-25', 'm', 'Blumenweg 7', 25, '08XBO / AB C1 08');
INSERT IGNORE INTO `person` VALUES (109, 'Jörg', 'Peters', '1986-11-22', 'm', 'Postweg 4', 4, '08XKR / AB C1 09');
INSERT IGNORE INTO `person` VALUES (110, 'Walli', 'Peer', '1986-08-25', 'w', 'Auweg 3', 3, '08XAT / AB C1 10');
INSERT IGNORE INTO `person` VALUES (111, 'Manfred', 'Renz', '1987-07-30', 'm', 'Isarstr. 17', 25, '08XBO / AB C1 11');
INSERT IGNORE INTO `person` VALUES (112, 'Vreni', 'Benz', '1987-06-19', 'w', 'Gartenweg 2', 1, '08XBG / AB 12');
INSERT IGNORE INTO `person` VALUES (113, 'Mercedes', 'Daimler', '1987-03-31', 'w', 'Lindenweg 52', 14, '08XWG / AB 13');
INSERT IGNORE INTO `person` VALUES (114, 'Otto', 'Diesel', '1987-07-16', 'm', 'Karlweg 99', 6, '08XNF / AB C1 14');
INSERT IGNORE INTO `person` VALUES (115, 'Ottilie', 'Motor', '1987-02-12', 'w', 'Benz Str. 1', 21, '08XA / AB C1 15');
INSERT IGNORE INTO `person` VALUES (116, 'Franz', 'Stecker', '1986-12-19', 'm', 'Donauweg 3', 13, '08XAL / AB C1 16');
INSERT IGNORE INTO `person` VALUES (117, 'Calda', 'Winter', '1987-05-19', 'w', 'Haupstr. 17', 16, '08XLG / AB C1 17');
INSERT IGNORE INTO `person` VALUES (118, 'Werner', 'Sommer', '1987-03-25', 'm', 'Gartenstr. 23', 8, '08XBK / AB 18');
INSERT IGNORE INTO `person` VALUES (119, 'Walter', 'Braun', '1987-02-22', 'm', 'Bahnhofplatz 12', 9, '08XZO / AB 19');
INSERT IGNORE INTO `person` VALUES (120, 'Klaus', 'Fromm', '1986-10-29', 'm', 'Hauptstr. 123', 24, '08XKÖ / AB 20');
INSERT IGNORE INTO `person` VALUES (121, 'Christa', 'Träumer', '1987-02-04', 'w', 'Kirchstr. 21', 11, '08XDB / AB C1 21');
INSERT IGNORE INTO `person` VALUES (122, 'Thea', 'Biermann', '1987-03-29', 'w', 'Auweg 9', 24, '08XKÖ / AB C1 22');
INSERT IGNORE INTO `person` VALUES (123, 'Helmut', 'Mayer', '1986-10-30', 'm', 'Alpenstr. 49', 26, '08XA / AB C0 300');
INSERT IGNORE INTO `person` VALUES (124, 'Maike', 'Bommer', '1987-07-29', 'w', 'Eppanerstr. 17', 24, '08XKÖ / AB 24');
INSERT IGNORE INTO `person` VALUES (125, 'Kathrin', 'Altmann', '1987-07-31', 'w', 'Bachweg 7', 21, '08XA / AB C1 256');
INSERT IGNORE INTO `person` VALUES (126, 'Karl', 'Neufrau', '1987-08-07', 'm', 'Poststr. 33', 22, '08XA / AB C1 26');
INSERT IGNORE INTO `person` VALUES (127, 'Theodor', 'Weinfrau', '1987-07-29', 'm', 'Waldweg 5', 17, '08XGD / AB C1 27');
INSERT IGNORE INTO `person` VALUES (128, 'Gunther', 'Durstig', '1986-08-23', 'm', 'Illerstr. 8', 25, '08XBO / AB C1 28');
INSERT IGNORE INTO `person` VALUES (129, 'Gundula', 'Hungrig', '1987-03-30', 'w', 'Essenstr. 8', 14, '08XWG / AB C1 29');
INSERT IGNORE INTO `person` VALUES (130, 'Maria', 'Windisch', '1986-11-12', 'w', 'Blumenweg 12', 18, '08XMZ / AB C1 30');
INSERT IGNORE INTO `person` VALUES (131, 'Klaus', 'Maurer', '1987-06-01', 'm', 'Leipzigerstr. 80', 24, '08XKÖ / AB C1 31');
INSERT IGNORE INTO `person` VALUES (132, 'Robert', 'Graf', '1987-03-30', 'm', 'Wertachstr. 27', 24, '08XKÖ / AB 32');
INSERT IGNORE INTO `person` VALUES (133, 'Franz', 'Münzer', '1986-11-17', 'm', 'Ottostr. 13', 21, '08XA / AB C1 33');
INSERT IGNORE INTO `person` VALUES (134, 'Anna', 'Ortmann', '1987-05-23', 'w', 'Tannenweg 17', 23, '08XA / AB C1 34');
INSERT IGNORE INTO `person` VALUES (135, 'Georg', 'Hackl', '1986-09-13', 'm', 'Isarstr 8', 25, '08XBO / AB C1 35');
INSERT IGNORE INTO `person` VALUES (136, 'Dieter', 'Nuller', '1987-08-26', 'm', 'Poststr. 23', 22, '08XA / AB C1 36');
INSERT IGNORE INTO `person` VALUES (137, 'Rosa', 'Sachs', '1986-11-23', 'w', 'Hauptstr. 8', 5, '08XWO / AB C1 37');
INSERT IGNORE INTO `person` VALUES (138, 'Peter', 'Sichermann', '1986-08-26', 'm', 'Blumenweg 3', 1, '08XBG / AB 38');
INSERT IGNORE INTO `person` VALUES (139, 'Marianne', 'Groß', '1987-07-31', 'w', 'Teichweg 5', 23, '08XA / AB C1 39');
INSERT IGNORE INTO `person` VALUES (140, 'Xaver', 'Mischer', '1987-06-20', 'm', 'Donaustr. 35', 25, '08XBO / AB C1 40');
INSERT IGNORE INTO `person` VALUES (141, 'Ulf', 'Kellermann', '1987-04-01', 'm', 'Endenweg 8', 9, '08XZO / AB C1 41');
INSERT IGNORE INTO `person` VALUES (142, 'Ulrike', 'Kellerfrau', '1987-07-17', 'w', 'Endeweg 6', 9, '08XZO / AB 42');
INSERT IGNORE INTO `person` VALUES (143, 'Ute', 'Kindler', '1987-02-03', 'w', 'Grubenstr. 17', 18, '08XMZ / AB 43');
INSERT IGNORE INTO `person` VALUES (144, 'Reinhard', 'Jeschke', '1986-12-20', 'm', 'Fichtenweg 17', 10, '08XMB / AB 44');
INSERT IGNORE INTO `person` VALUES (145, 'Beate', 'Sonnig', '1987-05-20', 'w', 'Gartenstr. 24', 8, '08XBK / AB 45');
INSERT IGNORE INTO `person` VALUES (146, 'Dieter', 'Frostig', '1987-03-26', 'm', 'Augsburger Str. 52', 25, '08XBO / AB C1 46');
INSERT IGNORE INTO `person` VALUES (147, 'Rosa', 'Blumig', '1987-02-23', 'w', 'Eckstr. 23', 15, '08XHM / AB C1 47');
INSERT IGNORE INTO `person` VALUES (148, 'Maria', 'Germania', '1960-10-27', 'w', 'Hauptstr. 56', 24, '08XKÖ / AB 48');
INSERT IGNORE INTO `person` VALUES (149, 'Carl-Friedrich', 'Kalkulus', '1990-04-23', 'm', 'Benzstr. 23', 25, '08XBO / AB C1 49');
INSERT IGNORE INTO `person` VALUES (150, 'Josef', 'Spieking', '1990-06-21', 'm', 'Sommerweg 3', 25, '08XBO / AB C1 50');
INSERT IGNORE INTO `person` VALUES (151, 'Daniel', 'Tüftel', '1990-05-12', 'm', 'Herbststr. 2', 25, '08XBO / AB C1 51');
INSERT IGNORE INTO `person` VALUES (152, 'Franz', 'Zähler', '1990-06-11', 'm', 'Hauptstr. 17', 24, '08XKÖ / AB C1 52');
INSERT IGNORE INTO `person` VALUES (153, 'Marie', 'Nenner', '1963-03-01', 'w', 'Ottostr. 15', 21, '08XA / AB C1 53');
INSERT IGNORE INTO `person` VALUES (154, 'Wolfgang', 'Goethschi', '1990-05-01', 'm', 'Dorfstr. 4', 25, '08XBO / AB C1 54');
INSERT IGNORE INTO `person` VALUES (155, 'Eusebia', 'Bavaria', '1967-04-05', 'w', 'Gartenweg 1', 23, '08XA / AB C1 555');
INSERT IGNORE INTO `person` VALUES (156, 'Klara', 'Hiermi', '1966-03-03', 'w', 'Blumenstr.24', 23, '08XA / AB C1 567');
INSERT IGNORE INTO `person` VALUES (157, 'Rosemarie', 'Siemie', '1965-07-02', 'w', 'Herbststr. 23', 22, '08XA / AB C1 57');
INSERT IGNORE INTO `person` VALUES (158, 'Hanna', 'Börse', '1963-08-07', 'w', 'Illerstr. 3', 25, '08XBO / AB C1 58');
INSERT IGNORE INTO `person` VALUES (159, 'Klaus', 'Manny', '1984-03-02', 'm', 'Bildstr. 6', 25, '08XBO / AB C1 59');
INSERT IGNORE INTO `person` VALUES (160, 'Hans', 'Käsch', '1990-05-04', 'm', 'Benzstr. 25', 25, '08XBO / AB C1 60');
INSERT IGNORE INTO `person` VALUES (161, 'Jan', 'Spring', '1990-07-06', 'm', 'Winterweg 2', 25, '08XBO / AB C1 61');
INSERT IGNORE INTO `person` VALUES (162, 'Johanna', 'Hüpf', '1968-09-05', 'w', 'Postweg 5', 22, '08XA / AB C1 62');
INSERT IGNORE INTO `person` VALUES (163, 'Gustav', 'Überallem', '1952-08-27', 'm', 'Dieselstr. 1', 25, '08XBO / AB C1 63');
INSERT IGNORE INTO `person` VALUES (164, 'Traugott', 'Glaube', '1988-08-08', 'm', 'Auweg 21', 25, '08XBO / AB C1 64');
INSERT IGNORE INTO `person` VALUES (165, 'Gottfried', 'Bastel', '1988-07-07', 'm', 'Wertachstr. 44', 25, '08XBO / AB C1 65');
INSERT IGNORE INTO `person` VALUES (166, 'Bastian', 'Strom', '1988-03-03', 'm', 'Blumenweg 12', 24, '08XKÖ / AB 66');
INSERT IGNORE INTO `person` VALUES (167, 'Fridolin', 'Seel', '1988-05-04', 'm', 'Sommerweg 1', 25, '08XBO / AB C1 67');
INSERT IGNORE INTO `person` VALUES (168, 'Eva', 'Blume', '1980-06-05', 'w', 'Stefan Zweig Str. 5', 23, '08XA / AB C1 68');
INSERT IGNORE INTO `person` VALUES (169, 'Franz', 'Pinke', '1988-06-12', 'm', 'Uferstr. 2', 25, '08XBO / AB 70');
INSERT IGNORE INTO `person` VALUES (170, 'Eva', 'Pinke', '1980-08-07', 'w', 'Uferstr. 2', 25, '08XBO / AB 70');
INSERT IGNORE INTO `person` VALUES (171, 'Gerhard', 'Noir', '1988-04-25', 'm', 'Meerstr. 5', 25, '08XBO / AB C1 71');
INSERT IGNORE INTO `person` VALUES (172, 'Gerda', 'Blanc', '1977-07-07', 'w', 'Gartenweg 3', 23, '08XA / AB C1 72');
INSERT IGNORE INTO `person` VALUES (173, 'Ludwig', 'Maler', '1988-06-06', 'm', 'Bildstr. 12', 25, '08XBO / AB C1 73');
INSERT IGNORE INTO `person` VALUES (174, 'Barbara', 'Palette', '1975-12-05', 'w', 'Waldweg 17', 21, '08XA / AB C1 74');
INSERT IGNORE INTO `person` VALUES (175, 'Friedrich', 'Pinsel', '1988-09-03', 'm', 'Fuggerstr. 32', 24, '08XKÖ / AB 75');
INSERT IGNORE INTO `person` VALUES (176, 'Edgar', 'Histoire', '1988-06-04', 'm', 'Dorfstr. 8', 25, '08XBO / AB 76');
INSERT IGNORE INTO `person` VALUES (177, 'Werner', 'Genau', '1990-06-11', 'm', 'Fuggerstr. 29', 24, '08XKÖ / AB 77');
INSERT IGNORE INTO `person` VALUES (178, 'Amadeus', 'Tralala', '1963-08-11', 'm', 'Fuggerstr. 36', 24, '08XKÖ / AB 78');
INSERT IGNORE INTO `person` VALUES (179, 'Hans', 'Mayer', '1984-05-14', 'm', 'Alpenstr. 49', 22, '08XA / AB C0 300');
INSERT IGNORE INTO `person` VALUES (180, 'Lena', 'Huber', '1981-04-30', 'w', 'Frischstr. 17', 26, '08XA / AB C1 80');
INSERT IGNORE INTO `person` VALUES (181, 'Bettina', 'Blume', '1982-01-23', 'w', 'Hochstr. 30', 25, '08XBO / AB C1 81');
INSERT IGNORE INTO `person` VALUES (182, 'Egon', 'Baum', '1984-06-12', 'm', 'Schertlinstr. 9', 26, '08XA / AB C1 82');
INSERT IGNORE INTO `person` VALUES (183, 'Wilhelm', 'Busch', '1983-10-10', 'm', 'Bahnhofstr. 8', 26, '08XA / AB C1 83');
INSERT IGNORE INTO `person` VALUES (184, 'Gertraud', 'Mathe', '1963-10-27', 'w', 'Wertachstr. 33', 25, '08XBO / AB 84');
INSERT IGNORE INTO `person` VALUES (185, 'Karl', 'Malefiz', '1984-04-08', 'm', 'Poststr. 4', 2, '08XND / AB C1 85');
INSERT IGNORE INTO `person` VALUES (186, 'Paul', 'Weis', '1984-06-06', 'm', 'Habsburgerstr. 4', 27, '09XDI / AB C1 21');
INSERT IGNORE INTO `person` VALUES (187, 'Tobias', 'Kinler', '1984-07-10', 'm', 'Gustav-Heinemann-Rin', 28, '08X / ABC 12 888');
INSERT IGNORE INTO `person` VALUES (188, 'Kilian', 'Mathe', '1990-10-24', 'm', 'Wertachstr. 33', 25, '08XBO / AB 84');
INSERT IGNORE INTO `person` VALUES (189, 'Ute', 'Buche', '1960-04-04', 'w', 'Wertachstr. 41 A', 25, '08XBO / AB C1 89');
INSERT IGNORE INTO `person` VALUES (190, 'Hans', 'Trux', '1984-05-04', 'm', 'Wertachstr. 36 A', 25, '08XBO / AB C1 90');
INSERT IGNORE INTO `person` VALUES (191, 'Gerda', 'Bach', '1958-05-23', 'w', 'Lechalle 5', 25, '08XBO / AB 49');
INSERT IGNORE INTO `person` VALUES (192, 'Wolfgang', 'Mathe', '1960-08-27', 'm', 'Wertachstr. 33', 25, '08XBO / AB 84');
INSERT IGNORE INTO `person` VALUES (193, 'Magdalena', 'Mathe', '1992-06-11', 'w', 'Wertachstr. 33', 25, '08XBO / AB 84');
INSERT IGNORE INTO `person` VALUES (195, 'Heinz', 'Bayerlein', '1949-09-21', 'm', 'Sollenberger Str. 11', 27, '09XDI / AB C2 345');
INSERT IGNORE INTO `person` VALUES (198, 'Hubert', 'Kalusen', '1975-09-21', 'm', 'Sollenweg 3', 27, '09XDI / AB C3 45');
INSERT IGNORE INTO `person` VALUES (199, 'Helmut', 'Schön', '1948-06-17', 'm', 'Sachsenring 5', 25, '08XBO / AB C1 96');
INSERT IGNORE INTO `person` VALUES (200, 'Sepp', 'Maier', '1950-02-02', 'm', 'Bayernstr. 10', 24, '08XKÖ / AB C1 97');
INSERT IGNORE INTO `person` VALUES (201, 'Heiner', 'Schustermann', '1955-05-01', 'm', 'Sachsenring 3', 25, '08XBO / AB C1 98');
INSERT IGNORE INTO `person` VALUES (202, 'Detlev', 'Schrempp', '1954-04-03', 'm', 'Korbweg 24', 25, '08XBO / AB C1 99');
INSERT IGNORE INTO `person` VALUES (203, 'Hashimoto', 'Tatami', '1961-07-06', 'm', 'Mattenweg 2', 13, '08XAL / AB C2 00');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `personneu`
-- 

DROP TABLE IF EXISTS `personneu`;
CREATE TABLE `personneu` (
  `Nachname` varchar(30) NOT NULL,
  `Vorname` varchar(30) NOT NULL,
  `Geburtsdatum` date NOT NULL,
  `Strasse` varchar(30) NOT NULL,
  `Wohnort` varchar(30) NOT NULL,
  `Telefon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Daten für Tabelle `personneu`
-- 

INSERT IGNORE INTO `personneu` VALUES ('Neumann', 'Herbert', '1966-01-13', 'XY-Straße 6', 'Neustadt', '090909/6666\r');
INSERT IGNORE INTO `personneu` VALUES ('Neumann', 'Beate', '1971-05-17', 'XY-Straße 6', 'Neustadt', '090909/6666\r');
INSERT IGNORE INTO `personneu` VALUES ('Neumann', 'Ingrid', '1995-01-07', 'XY-Straße 6', 'Neustadt', '090909/6666\r');
INSERT IGNORE INTO `personneu` VALUES ('Altmann', 'Dieter', '1938-05-03', 'Ahornweg 5', 'Altendorf', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Altmann', 'Norbert', '1968-05-23', 'Ahornweg 5', 'Altendorf', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Bergmann', 'Frauke', '1978-11-17', 'Schwalbennest 4', 'Vogelstadt', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Kowalski', 'Gunther', '1988-07-06', 'Dorfstraße 33', 'Oberndorf', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Böller', 'Peter', '1944-04-04', 'Gartenweg 15', 'Neustadt', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Artmann', 'Anneliese', '1966-05-04', 'Zufallsweg 6', 'Hintertupfing', '09888/1234\r');
INSERT IGNORE INTO `personneu` VALUES ('Artmann', 'Hubert', '1967-09-04', 'Zufallsweg 6', 'Hintertupfing', '09888/1234\r');
INSERT IGNORE INTO `personneu` VALUES ('Artmann', 'Kerstin', '1996-07-13', 'Zufallsweg 6', 'Hintertupfing', '09888/1234\r');
INSERT IGNORE INTO `personneu` VALUES ('Siebert', 'Karolin', '1923-07-05', 'Hubertusstr. 88', 'Altendorf', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Siebert', 'Fritz', '1955-07-29', 'Hubertusstr. 86', 'Altendorf', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Siebert', 'Marianne', '1955-03-12', 'Hubertusstr. 86', 'Altendorf', '\r');
INSERT IGNORE INTO `personneu` VALUES ('Siebert', 'Chantal', '1980-06-03', 'Hubertusstr. 86', 'Altendorf', '\r');

-- 
-- Constraints der exportierten Tabellen
-- 

-- 
-- Constraints der Tabelle `ist_mitglied_von`
-- 
ALTER TABLE `ist_mitglied_von`
  ADD CONSTRAINT `ist_mitglied_von_ibfk_3` FOREIGN KEY (`Sport_ID`) REFERENCES `abteilung` (`Sport_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ist_mitglied_von_ibfk_2` FOREIGN KEY (`M_ID`) REFERENCES `person` (`M_ID`) ON UPDATE CASCADE;

-- 
-- Constraints der Tabelle `person`
-- 
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`Ort_ID`) REFERENCES `ort` (`Ort_ID`) ON UPDATE CASCADE;

SET FOREIGN_KEY_CHECKS=1;

COMMIT;
