USE AgriFlow;
GO

CREATE TABLE dbo.DimFacility
(
    FacilityID nvarchar(10) NOT NULL PRIMARY KEY,
    FacilityName nvarchar(100) NOT NULL,
    Province nvarchar(50) NOT NULL,
    City nvarchar(100) NOT NULL,
    DailyCapacityTonnes decimal(10,2) NOT NULL,
    OperatingHoursPerDay tinyint NOT NULL
);
GO

INSERT INTO dbo.DimFacility
(
    FacilityID,
    FacilityName,
    Province,
    City,
    DailyCapacityTonnes,
    OperatingHoursPerDay
)
SELECT
    TRIM(FacilityID),
    TRIM(FacilityName),
    TRIM(Province),
    TRIM(City),
    TRY_CONVERT(
        decimal(10,2),
        REPLACE(DailyCapacityTonnes, ',', '.')
    ),
    TRY_CONVERT(
    tinyint,
    TRY_CONVERT(
        decimal(10,2),
        REPLACE(TRIM(OperatingHoursPerDay), ',', '.')
    )
)
FROM dbo.stg_DimFacility;
GO

SELECT *
FROM dbo.DimFacility
ORDER BY FacilityID;