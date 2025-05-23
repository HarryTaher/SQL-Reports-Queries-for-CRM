-- گزارش سرنخ‌های غیرفعال بیش از ۶۰ روز

SELECT
    LeadId,
    FullName,
    CreatedOn,
    DATEDIFF(DAY, CreatedOn, GETDATE()) AS DaysInactive
FROM
    Leads
WHERE
    StateCode = 0 AND
    DATEDIFF(DAY, CreatedOn, GETDATE()) > 60;
