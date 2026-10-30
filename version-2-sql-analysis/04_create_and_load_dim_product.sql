USE AgriFlow;
GO

CREATE TABLE dbo.DimProduct
(
    ProductID nvarchar(10) NOT NULL PRIMARY KEY,
    ProductName nvarchar(100) NOT NULL,
    Grade nvarchar(50) NOT NULL,
    MaxMoisturePct decimal(5,2) NOT NULL,
    MaxForeignMatterPct decimal(5,2) NOT NULL,
    MaxBrokenKernelsPct decimal(5,2) NOT NULL
);
GO

INSERT INTO dbo.DimProduct
(
    ProductID,
    ProductName,
    Grade,
    MaxMoisturePct,
    MaxForeignMatterPct,
    MaxBrokenKernelsPct
)
SELECT
    TRIM(ProductID),
    TRIM(ProductName),
    TRIM(Grade),
    TRY_CONVERT(decimal(5,2), REPLACE(MaxMoisturePct, ',', '.')),
    TRY_CONVERT(decimal(5,2), REPLACE(MaxForeignMatterPct, ',', '.')),
    TRY_CONVERT(decimal(5,2), REPLACE(MaxBrokenKernelsPct, ',', '.'))
FROM dbo.stg_DimProduct;
GO

SELECT *
FROM dbo.DimProduct
ORDER BY ProductID;