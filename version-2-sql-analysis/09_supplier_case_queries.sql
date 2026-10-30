USE AgriFlow;
GO

SELECT
    SupplierID,
    SupplierName,
    PartnershipStartYear,
    CASE
        WHEN PartnershipStartYear < 2020 THEN 'Before 2020'
        WHEN PartnershipStartYear <= 2023 THEN '2020 to 2023'
        ELSE '2024 onward'
    END AS PartnershipGroup
FROM dbo.DimSupplier
ORDER BY PartnershipStartYear, SupplierID;

SELECT
    CASE
        WHEN PartnershipStartYear < 2020 THEN 'Before 2020'
        WHEN PartnershipStartYear <= 2023 THEN '2020 to 2023'
        ELSE '2024 onward'
    END AS PartnershipGroup,
    COUNT(*) AS SupplierCount
FROM dbo.DimSupplier
GROUP BY
    CASE
        WHEN PartnershipStartYear < 2020 THEN 'Before 2020'
        WHEN PartnershipStartYear <= 2023 THEN '2020 to 2023'
        ELSE '2024 onward'
    END
ORDER BY MIN(PartnershipStartYear);