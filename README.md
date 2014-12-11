glpi-smartcities
================

GLPI for Smart Cities

Features
========


General
=======

- Multi-entities management (multi-park, multi-structure) 
- Multi-users management 
- Multiple Authentication System (local, LDAP, AD, Pop/Imap, CAS, x509...) and multiple servers 
- Multilingual management (45 languages available ) 
- Permissions and profiles system 
- Pagination system 
- Complex search module 
- Bookmark search system 
- Publishing system for public or personal reminders 
- Publishing system for public or personal RSS feeds 
- Configurability of display fields in lists 
- Export System in PDF, CSV, SLK (spreadsheet), PNG and SVG 
- Saving/restoration module of the database to the SQL format 
- Exportation of the database to the XML format 
- Configurable dropdowns 
- Dictionary 
- System of notifications on events (consumable stock, expiry of contracts and licenses), customizable and by entity 
- Customizable cron tasks 
- Updates check system 
- UTF8 interface 
- HTML 4.01 compatibility

Inventory
=========

- Import inventory’s datas from OCS Inventory NG servers with the plugin OCS Inventory NG 
- Import inventory’s datas from FusionInventory agents with the plugin FusionInventory 
- Inventory of the computers fleet with management of its components, disk space and TCO management 
- Inventory of the monitors with management of the connections to the computers 
- Inventory of the network hardware fleet with management of the connections to the devices (IP, Mac addresses, VLANs...). 
- Inventory of printers fleet with management of connections to the computers and management of consumable associated and consumption and the thresholds of alarm.

- Inventory of the external devices (scanners, graphical tables...) with management of the connections to the computers - Inventory of the telephones fleet with management of connections to the computers 
- Inventory if the software fleet with license and expiration dates management 
- Assignment of the hardware by geographic area (room, floor...) 
- Typing models management to make the insertion of equal configurations easier 
- Administrative and financial Information management (purchase, guarantee and extension, damping) 
- Filing of the materials left the inventory 
- Management of the status of the hardwares 
- Management of the various states for the materials (in repair...) - Management of generic peripherals and monitors being able to be associated several computers 
- Management of external bonds towards other applications 
- History of the modifications on the elements of the inventory

Servicedesk ITIL compliant
==========================

- Management of the tracking requests for all the types of material of the inventory 
- Management of recurrent tracking requests for regular maintenance 
- Problems management 
- Change management 
- Project management with Gantt graphs 
- Tracking requests opened using web interface or email 
- Business rules when opening tickets (customizable by entity) 
- SLA with escalation (customizable by entity)

Final user
==========

- Final user front-end for intervention demand 
- Mail tracking of the intervention demand feature 
- Interventions history consultation 
- Possibility of adding comments at the request of intervention using web interface or email 
- Approval of the solution 
- Satisfaction survey

Technicians
===========

- Interventions demands priority management 
- Interventions demands templates with management of hidden, mandatory and predefined fields 
- Tracking of interventions demands 
- Link between interventions demands management 
- Mail tracking of interventions 
- Request validation 
- Assignment of interventions demands 
- Opening/Closing/Re-opening of interventions 
- Assignment of a real time of interventions 
- History of done interventions 
- Displaying of the interventions to do by a technician 
- Displaying of the history of the interventions for a given hardware 
- Posting of the interventions to be realized by technician 
- Check availability of technicians before assignment of an intervention 
- Posting of the history of the interventions for a given material 
- Management of planning of intervention 
- Define the solution

Statistics
==========

Statistics reports by month, year, total in PNG, SVG or CSV.

- Global 
- By technician or enterprise 
- By hardware, location or type 
- By user 
- By category 
- By priority

Management
==========

- Management of enterprises (manufacturers, suppliers, conveyors, people receiving benefits...) and associated contacts 
- Management of the contracts (loan, hiring, leasing, insurance, maintenance and service) 
- Management of the documents related to the elements of inventories, contracts... 
- Management of the types of authorized documents 
- Budget management

Reservation
===========

- Management of the reservations for the material in affected inventory with the park of loan 
- User interface (calendar) for reservation

Knowledge Database
==================

- Management of a basic system of knowledge hierarchical 
- Management of a public FAQ 
- Content management by targets

Reports
=======

Reports generation about the devices

- By device-type 
- By associated contract 
- By commercial informations
- Network Reports

TECHNICALS ASPECTS
==================
GLPI use the following technologies :

- PHP 
Link PHP: http://php.net/manual/en/install.php
- MySQL/MariaDB for the database
Link MySQL : http://dev.mysql.com/doc/refman/5.7/en/installing-source-distribution.html
Link MariaDB: https://mariadb.com/kb/en/mariadb/documentation/getting-started/compiling-mariadb-from-source/
- HTML for the Web pages 
- CSS for style sheets 
- XML for report generation
 
Native support in:

- Linux
- xBSD

Compatible or SO Compliant

- - A/UX
- - AIX
- - BSD/OS
- - DSPnano
- - HP-UX
- - INTEGRITY
- - IRIX
- - LynxOS
- - MPE/iX
- - OS X Yosemite
- - QNX
- - RTEMS
- - Solaris
- - Tru64
- - Unison RTOS
- - UnixWare
- - BeOS
- - Haiku
- - Contiki
- - Darwin
- - FreeBSD
- - illumos
- - GNU/Linux LSB
- - MINIX3
- - NetBSD
- - Nucleus
- - RTOS
- - NuttX
- - OpenBSD
- - OpenSolaris
- - PikeOS RTOS
- - RTEMS
- – Sanos
- - SkyOS
- - Syllable
- - VSTa
- - VxWorks
- - Android