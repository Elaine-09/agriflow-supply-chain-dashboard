USE AgriFlow;
GO

SELECT
    FacilityName,
    DailyCapacityTonnes,
    OperatingHoursPerDay,
    CAST(
        DailyCapacityTonnes / NULLIF(OperatingHoursPerDay, 0)
        AS decimal(10,2)
    ) AS CapacityTonnesPerHour
FROM dbo.DimFacility
ORDER BY CapacityTonnesPerHour DESC;