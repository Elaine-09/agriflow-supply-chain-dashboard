USE AgriFlow;
GO

SELECT
    ProductID,
    ProductName,
    Grade,
    MaxMoisturePct
FROM dbo.DimProduct
WHERE Grade = 'Grade 1'
ORDER BY ProductName;

SELECT
    ProductID,
    ProductName,
    Grade,
    MaxBrokenKernelsPct
FROM dbo.DimProduct
WHERE MaxBrokenKernelsPct > 3;