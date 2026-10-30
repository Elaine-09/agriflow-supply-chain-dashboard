USE master;
GO

IF DB_ID('AgriFlow') IS NULL
BEGIN
    CREATE DATABASE AgriFlow;
END;
GO

USE AgriFlow;
GO

SELECT DB_NAME() AS CurrentDatabase;