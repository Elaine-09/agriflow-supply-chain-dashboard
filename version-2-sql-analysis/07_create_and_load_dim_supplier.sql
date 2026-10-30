USE AgriFlow;
GO

CREATE TABLE dbo.DimSupplier
(
    SupplierID nvarchar(10) NOT NULL PRIMARY KEY,
    SupplierName nvarchar(100) NOT NULL,
    Province nvarchar(50) NOT NULL,
    Town nvarchar(100) NOT NULL,
    FarmSize nvarchar(20) NOT NULL,
    PartnershipStartYear smallint NOT NULL,
    SupplierStatus nvarchar(30) NOT NULL
);
GO

INSERT INTO dbo.DimSupplier
(
    SupplierID,
    SupplierName,
    Province,
    Town,
    FarmSize,
    PartnershipStartYear,
    SupplierStatus
)
SELECT
    TRIM(SupplierID),
    TRIM(SupplierName),
    TRIM(Province),
    TRIM(Town),
    TRIM(FarmSize),
    TRY_CONVERT(smallint, PartnershipStartYear),
    TRIM(SupplierStatus)
FROM dbo.stg_DimSupplier;
GO

SELECT *
FROM dbo.DimSupplier
ORDER BY SupplierID;

SELECT COUNT(*) AS TotalSuppliers
FROM dbo.DimSupplier;