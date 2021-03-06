DROP TABLE IF EXISTS `glpi_plugin_state_profiles`;
CREATE TABLE `glpi_plugin_state_profiles` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) default NULL,
	`interface` varchar(50) NOT NULL default 'state',
	`is_default` enum('0','1') NOT NULL default '0',
	`state` char(1) default NULL,
	PRIMARY KEY  (`ID`),
	KEY `interface` (`interface`)
) TYPE=MyISAM;

DROP TABLE IF EXISTS `glpi_plugin_state_config`;
CREATE TABLE `glpi_plugin_state_config` (
	`ID` INT( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`state` INT( 11 ) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_plugin_state_parameters`;
CREATE TABLE `glpi_plugin_state_parameters` (
	`ID` INT( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`computer` varchar(50),
	`notebook` varchar(50),
	`server` varchar(50),
	`monitor` varchar(50),
	`printer` varchar(50),
	`peripheral` varchar(50),
	`networking` varchar(50),
	`phone` varchar(50)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_state_parameters` ( `computer` , `notebook` , `server`, `monitor`, `printer`, `peripheral`, `networking`, `phone`) VALUES (NULL , NULL, NULL, NULL, NULL, NULL, NULL, NULL);