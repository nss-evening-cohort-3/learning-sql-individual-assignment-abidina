SELECT COUNT(InvoiceDate) FROM Invoice 
WHERE InvoiceDate Like '2009%';
SELECT SUM(Total) FROM
  (SELECT * FROM Invoice WHERE InvoiceDate LIKE '2009%');


SELECT COUNT(InvoiceDate) FROM Invoice 
WHERE InvoiceDate Like '2011%';
SELECT SUM(Total) FROM
  (SELECT * FROM Invoice WHERE InvoiceDate LIKE '2011%');