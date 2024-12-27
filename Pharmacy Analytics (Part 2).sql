#Pharmacy Analytics (Part 2) - CVS Health

SELECT manufacturer,COUNT(drug),
SUM(cogs)-SUM(total_sales) AS total_loss
FROM pharmacy_sales
WHERE total_sales-cogs<=0
GROUP BY manufacturer
ORDER BY total_loss DESC;