SELECT BillingCountry AS 'Country', 
  ROUND(SUM(Total), 2) AS 'Total Sales' 
FROM Invoice 
GROUP BY BillingCountry 
ORDER BY "Total Sales" DESC
LIMIT 1;