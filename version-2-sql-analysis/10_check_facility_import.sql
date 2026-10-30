USE AgriFlow;
GO

SELECT *
FROM dbo.stg_DimFacilit;

SELECT COUNT(*) AS TotalFacilities
FROM dbo.stg_DimFacilit;

EXEC sp_rename
    'dbo.stg_DimFacilit',
    'stg_DimFacility';
GO