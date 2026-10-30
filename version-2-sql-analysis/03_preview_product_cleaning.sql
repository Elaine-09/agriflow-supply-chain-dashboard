USE AgriFlow;
GO

SELECT
    ProductID,
    ProductName,
    Grade,
    TRY_CONVERT(decimal(5,2),
        REPLACE(MaxMoisturePct, ',', '.')
    ) AS MaxMoisturePct,
    TRY_CONVERT(decimal(5,2),
        REPLACE(MaxForeignMatterPct, ',', '.')
    ) AS MaxForeignMatterPct,
    TRY_CONVERT(decimal(5,2),
        REPLACE(MaxBrokenKernelsPct, ',', '.')
    ) AS MaxBrokenKernelsPct
FROM dbo.stg_DimProduct;