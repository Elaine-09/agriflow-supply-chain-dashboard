USE AgriFlow;
GO

SELECT
    Province,
    COUNT(*) AS SupplierCount
FROM dbo.DimSupplier
GROUP BY Province
ORDER BY SupplierCount DESC, Province;

SELECT
    Province,
    COUNT(*) AS ActiveSupplierCount
FROM dbo.DimSupplier
WHERE SupplierStatus = 'Active'
GROUP BY Province
ORDER BY ActiveSupplierCount DESC, Province;

SELECT
    Province,
    COUNT(*) AS SupplierCount
FROM dbo.DimSupplier
GROUP BY Province
HAVING COUNT(*) >= 5
ORDER BY SupplierCount DESC, Province;

SELECT
    Province,
    COUNT(*) AS ActiveSupplierCount
FROM dbo.DimSupplier
WHERE SupplierStatus = 'Active'
GROUP BY Province
HAVING COUNT(*) >= 3
ORDER BY ActiveSupplierCount DESC, Province;