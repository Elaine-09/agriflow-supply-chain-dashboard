USE AgriFlow;
GO

SELECT *
FROM dbo.stg_DimProduct;

SELECT COUNT(*) AS TotalProducts
FROM dbo.stg_DimProduct;