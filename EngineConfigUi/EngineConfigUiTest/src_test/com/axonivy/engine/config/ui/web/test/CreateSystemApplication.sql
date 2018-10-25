-- ---------------------------------------------------------------------------------
-- MYSQL SERVER
-- ---------------------------------------------------------------------------------
--
-- SQL Script to generate system application and system administrator
--
-- ---------------------------------------------------------------------------------
-- Author:   Reto Weiss
-- ---------------------------------------------------------------------------------
-- Version:  ReW, 11.12.2007 created
-- Database: MySql 5
-- ---------------------------------------------------------------------------------
-- Copyright:
-- ivyTeam AG, Alpenstrasse 9, 6304 Zug
-- ---------------------------------------------------------------------------------

INSERT INTO IWA_Language VALUES (0, 'en', '', 'en');

INSERT INTO IWA_SecurityDescriptor VALUES (1, 1, NULL);

INSERT INTO IWA_Application VALUES (0, 'System', 'System Application', 'System', '', NULL, NULL, 'Xpert.ivy', 1, 2, 'applications/System', NULL);

INSERT INTO IWA_Role VALUES (0, 'Everybody', 'Everybody', 'Top level role', NULL, 0, NULL, 0);

INSERT INTO IWA_Role VALUES (1, 'SystemAdministrator', 'System Administrator', 'Technical ivy system role', 0, 0, NULL, 0);

INSERT INTO IWA_SystemProperty VALUES ('Internal.TableContentVersion.User', '1');
