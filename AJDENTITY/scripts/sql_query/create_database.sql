--------------------------- CREATE DATABASE ---------------------------
USE master;
GO

IF DB_ID('SBD_DB') IS NOT NULL
DROP DATABASE SBD_DB;
GO

CREATE DATABASE SBD_DB;
GO

USE SBD_DB;