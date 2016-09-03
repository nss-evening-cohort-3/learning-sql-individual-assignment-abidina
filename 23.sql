SELECT BillingCountry AS 'Country', 
  ROUND(SUM(Total), 2) AS 'Total Sales' 
FROM Invoice 
GROUP BY BillingCountry 
ORDER BY ROUND(SUM(Total), 2) DESC
LIMIT 1;

/* Why does ORDER BY 'Total Sales' break but this works? */