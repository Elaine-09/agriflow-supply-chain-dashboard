USE AgriFlow;
GO

SELECT *
FROM dbo.stg_DimSupplier;

SELECT COUNT(*) AS TotalSuppliers
FROM dbo.stg_DimSupplier;