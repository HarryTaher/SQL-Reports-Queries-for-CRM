-- گزارش مشتریان برتر بر اساس مجموع فاکتورهای صادر شده

SELECT TOP 10
    AccountId,
    Name AS CustomerName,
    SUM(TotalAmount) AS TotalRevenue
FROM
    Invoices
GROUP BY
    AccountId, Name
ORDER BY
    TotalRevenue DESC;
