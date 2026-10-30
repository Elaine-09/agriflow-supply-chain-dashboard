USE AgriFlow;
GO

CREATE TABLE dbo.DimTransporter
(
    TransporterID nvarchar(10) NOT NULL PRIMARY KEY,
    TransporterName nvarchar(100) NOT NULL,
    BaseProvince nvarchar(50) NOT NULL,
    FleetSize smallint NOT NULL,
    TransporterStatus nvarchar(30) NOT NULL
);
GO

INSERT INTO dbo.DimTransporter
(
    TransporterID,
    TransporterName,
    BaseProvince,
    FleetSize,
    TransporterStatus
)
SELECT
    TRIM(TransporterID),
    TRIM(TransporterName),
    TRIM(BaseProvince),
    TRY_CONVERT(
        smallint,
        TRY_CONVERT(
            decimal(10,2),
            REPLACE(TRIM(FleetSize), ',', '.')
        )
    ),
    TRIM(TransporterStatus)
FROM dbo.stg_DimTransporter;
GO

SELECT *
FROM dbo.DimTransporter
ORDER BY TransporterID;