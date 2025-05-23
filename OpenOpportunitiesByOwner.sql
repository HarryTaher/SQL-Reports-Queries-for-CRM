-- فرصت‌های فروش باز گروه‌بندی شده بر اساس کارشناس فروش

SELECT
    OwnerId,
    COUNT(*) AS OpenOpportunities
FROM
    Opportunities
WHERE
    StateCode = 0
GROUP BY
    OwnerId
ORDER BY
    OpenOpportunities DESC;
