/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'sql_datawarehouse_project')
BEGIN
    ALTER DATABASE sql_datawarehouse_project SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE sql_datawarehouse_project;
END;
GO

-- Create the 'sql_datawarehouse_project' database
CREATE DATABASE sql_datawarehouse_project;
GO

USE sql_datawarehouse_project;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
