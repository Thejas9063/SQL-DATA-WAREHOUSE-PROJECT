/*
CREATE DATABASE AND SCHEMAS
Script Purpose:
This script creates a new database named 'Datawarehouse' After checking it already exists.
If the database exists,it is dropped and recreated.Additionally the script sets up three schemas
with in database: 'bronze silver and gold'.
Runnning this script may deletes your data in database proceed with caution.
*/

USE master;
GO
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

CREATE DATABASE Datawarehouse;
GO


USE Datawarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
