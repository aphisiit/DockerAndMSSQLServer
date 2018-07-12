USE master;  
GO  
-- IF DB_ID (N'GWF') IS NOT NULL  
IF DB_ID (N'GWF') IS NULL  
-- DROP DATABASE GWF;  
-- GO  
CREATE DATABASE GWF
COLLATE Thai_CI_AS
GO  

-- SET DATABASE SUPPORT THAI LANGUAGE --
ALTER DATABASE GWF   
SET COMPATIBILITY_LEVEL = 110
GO

--Verify the collation setting.  
SELECT name, collation_name  
FROM sys.databases
WHERE name = N'GWF';  
GO

-- CREATE USER --
CREATE LOGIN adminewf WITH 
	PASSWORD = 'P@ssw0rd',
	CHECK_POLICY = OFF,
	CHECK_EXPIRATION = OFF,
	DEFAULT_DATABASE = GWF
GO

USE GWF
CREATE USER adminewf FOR LOGIN adminewf WITH DEFAULT_SCHEMA = GWF;
GO

USE GWF
EXEC sp_addsrvrolemember 'adminewf','sysadmin'
GO

USE GWF
EXEC sp_addrolemember 'adminewf','db_owner'
Go

USE GWF
EXEC sp_addrolemember 'adminewf','public'
Go

USE GWF
GRANT CREATE VIEW TO adminewf;
GO 

USE GWF
GRANT ALTER VIEW TO adminewf;
GO 

USE GWF
GRANT CONTROL TO adminewf 
GO

USE GWF
GRANT CREATE TABLE TO adminewf
GO

USE GWF
GRANT DROP TABLE TO adminewf
GO

ALTER AUTHORIZATION ON DATABASE::GWF TO adminwef
GO



