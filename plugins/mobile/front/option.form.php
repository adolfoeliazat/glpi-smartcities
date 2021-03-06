<?php
/*
 -------------------------------------------------------------------------
 GLPI - Gestionnaire Libre de Parc Informatique
 Copyright (C) 2003-2010 by the INDEPNET Development Team.

 http://indepnet.net/   http://glpi-project.org
 -------------------------------------------------------------------------

 LICENSE
Inventaire
 This file is part of GLPI.

 GLPI is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.

 GLPI is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with GLPI; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 --------------------------------------------------------------------------
 */

// ----------------------------------------------------------------------
// Original Author of file:
// Purpose of file:
// ----------------------------------------------------------------------

// Entry menu case
define('GLPI_ROOT', '../../..'); 
define("MOBILE_EXTRANET_ROOT", GLPI_ROOT . "/plugins/mobile");
include (GLPI_ROOT . "/inc/includes.php"); 


$option = new PluginMobileOption;
$option->save($_REQUEST);

//Html::redirect(MOBILE_EXTRANET_ROOT . "/front/central.php?message=".urlencode($LANG['plugin_mobile']['common'][3]));

Html::redirect($CFG_GLPI['root_doc']."/plugins/mobile/front/central.php?message=".urlencode($LANG['plugin_mobile']['common'][3]));

?>
