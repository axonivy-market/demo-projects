# ---------------------------------------------------------------------------------
# 
# SQL Script to generate ivy system database
# 
# ---------------------------------------------------------------------------------
# 
# This script was automatically generated. Do not edit it. Instead edit the source file
# 
# ---------------------------------------------------------------------------------
# Database: MySQL
# ---------------------------------------------------------------------------------
# Copyright:
# AXON IVY AG, Baarerstrasse 12, 6300 Zug
# ---------------------------------------------------------------------------------

CREATE TABLE IWA_Version
(
  Version INTEGER NOT NULL
) ENGINE={0};

CREATE TABLE IWA_Identifier
(
  IdentifierName VARCHAR(200) NOT NULL,
  IdentifierValue BIGINT NOT NULL,
  PRIMARY KEY (IdentifierName)
) ENGINE={0};

CREATE TABLE IWA_SystemProperty
(
  PropertyName VARCHAR(200) NOT NULL,
  PropertyValue TEXT NOT NULL,
  IsEncrypted BIT NOT NULL DEFAULT 0,
  PRIMARY KEY (PropertyName)
) ENGINE={0};

INSERT INTO IWA_Version (Version) VALUES (44);

