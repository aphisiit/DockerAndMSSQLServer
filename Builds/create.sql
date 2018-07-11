USE master;  
GO  
IF DB_ID (N'GWF') IS NOT NULL  
DROP DATABASE GWF;  
GO  
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

CREATE USER adminewf FOR LOGIN adminewf WITH DEFAULT_SCHEMA = GWF;
GO


GRANT CREATE VIEW TO adminewf;  
GO 

GRANT CONTROL TO adminewf 
GO

-- EXEC sp_addrolemember 'db_owner', 'adminewf'
-- Go

-- EXEC sp_addrolemember 'public', 'adminewf'
-- Go