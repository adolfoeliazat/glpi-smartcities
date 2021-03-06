ALTER TABLE `glpi_application` RENAME `glpi_plugin_appweb`;
ALTER TABLE `glpi_dropdown_application_type` RENAME `glpi_dropdown_plugin_appweb_type`;
ALTER TABLE `glpi_application_setup` RENAME `glpi_plugin_appweb_setup`;

CREATE TABLE `glpi_dropdown_plugin_appweb_server_type` (
`ID` int(11) NOT NULL auto_increment,
`name` varchar(255) NOT NULL default '',
`comments` text,
PRIMARY KEY  (`ID`),
KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_dropdown_plugin_appweb_server_type` ( `ID` , `name` , `comments`) VALUES ('1', 'Apache','');
INSERT INTO `glpi_dropdown_plugin_appweb_server_type` ( `ID` , `name` , `comments`) VALUES ('2', 'IIS','');
INSERT INTO `glpi_dropdown_plugin_appweb_server_type` ( `ID` , `name` , `comments`) VALUES ('3', 'Tomcat','');

CREATE TABLE `glpi_dropdown_plugin_appweb_technic` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) NOT NULL default '',
	`comments` text,
	PRIMARY KEY  (`ID`),
	KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_dropdown_plugin_appweb_technic` ( `ID` , `name` , `comments`) VALUES ('1', 'Asp','');
INSERT INTO `glpi_dropdown_plugin_appweb_technic` ( `ID` , `name` , `comments`) VALUES ('2', 'Cgi','');
INSERT INTO `glpi_dropdown_plugin_appweb_technic` ( `ID` , `name` , `comments`) VALUES ('3', 'Java','');
INSERT INTO `glpi_dropdown_plugin_appweb_technic` ( `ID` , `name` , `comments`) VALUES ('4', 'Perl','');
INSERT INTO `glpi_dropdown_plugin_appweb_technic` ( `ID` , `name` , `comments`) VALUES ('5', 'Php','');
INSERT INTO `glpi_dropdown_plugin_appweb_technic` ( `ID` , `name` , `comments`) VALUES ('6', '.Net','');

ALTER TABLE `glpi_plugin_appweb` ADD `server` INT(4) NOT NULL DEFAULT '0';
ALTER TABLE `glpi_plugin_appweb` ADD `technic` INT(4) NOT NULL DEFAULT '0';
ALTER TABLE `glpi_plugin_appweb` ADD `version` VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE `glpi_plugin_appweb` ADD `port` VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE `glpi_plugin_appweb` ADD `protocol` INT(4) NOT NULL DEFAULT '0';
ALTER TABLE `glpi_plugin_appweb` ADD `link_name` varchar(255) NOT NULL DEFAULT '';
ALTER TABLE `glpi_plugin_appweb` ADD `id_editor` SMALLINT(6) NOT NULL;
ALTER TABLE `glpi_plugin_appweb` ADD `notes` LONGTEXT NOT NULL;
ALTER TABLE `glpi_plugin_appweb` ADD `target` ENUM( '0', '1' ) NOT NULL DEFAULT '0';
ALTER TABLE `glpi_plugin_appweb` ADD `FK_glpi_enterprise` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `FK_enterprise` ;

CREATE TABLE `glpi_plugin_appweb_device` (
	`ID` int(11) NOT NULL auto_increment,
	`FK_appweb` int(11) NOT NULL default '0',
	`FK_device` int(11) NOT NULL default '0',
	`device_type` tinyint(4) NOT NULL default '0',
	PRIMARY KEY  (`ID`),
	UNIQUE KEY `FK_compte` (`FK_appweb`,`FK_device`,`device_type`),
	KEY `FK_appweb_2` (`FK_appweb`),
	KEY `FK_device` (`FK_device`,`device_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `glpi_plugin_appweb_documents` (
	`ID` int(11) NOT NULL auto_increment,
	`FK_documents` int(11) NOT NULL default '0',
	`FK_applications` int(11) NOT NULL default '0',
	PRIMARY KEY  (`ID`),
	UNIQUE KEY `FK_documents` (`FK_documents`,`FK_applications`),
	KEY `FK_documents_2` (`FK_documents`),
	KEY `FK_applications` (`FK_applications`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `glpi_plugin_appweb_profiles` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) default NULL,
	`interface` varchar(50) NOT NULL default 'appweb',
	`is_default` enum('0','1') NOT NULL default '0',
	`appweb` char(1) default NULL,
	`create_appweb` char(1) default NULL,
	`update_appweb` char(1) default NULL,
	`delete_appweb` char(1) default NULL,
	PRIMARY KEY  (`ID`),
	KEY `interface` (`interface`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_appweb_profiles` ( `ID`, `name` , `interface`, `is_default`, `appweb`,`create_appweb`,`update_appweb`,`delete_appweb`) VALUES ('1', 'post-only','appweb','1',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_plugin_appweb_profiles` ( `ID`, `name` , `interface`, `is_default`, `appweb`,`create_appweb`,`update_appweb`,`delete_appweb`) VALUES ('2', 'normal','appweb','0','r',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_appweb_profiles` ( `ID`, `name` , `interface`, `is_default`, `appweb`,`create_appweb`,`update_appweb`,`delete_appweb`) VALUES ('3', 'admin','appweb','0','w','1','1','0');
INSERT INTO `glpi_plugin_appweb_profiles` ( `ID`, `name` , `interface`, `is_default`, `appweb`,`create_appweb`,`update_appweb`,`delete_appweb`) VALUES ('4', 'super-admin','appweb','0','w','1','1','1');