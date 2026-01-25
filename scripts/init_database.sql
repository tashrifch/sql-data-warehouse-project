-- Create Database 'DataWarehouse'

/*

Create a new database and schemas

Creates a Datawarehouse database and 3 Schemas for the medalion architecture

*/



-- Go to the master database before creating the database
Use master;
GO

-- Drop and Create the tutorial Datawarehouse if it exists

--check if it exists
IF EXISTS (Select 1 from sys.databases where name = 'tutorialDataWarehouse')
--Now if it exists kick out everyone connected to it then drop the database
BEGIN
	ALTER DATABASE tutorialDataWarehouse SET SINGLE_USER with rollback immediate;
	drop database tutorialDataWarehouse;
END;
GO

-- Create the database
CREATE DATABASE tutorialDataWarehouse;
GO

USE tutorialDataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
