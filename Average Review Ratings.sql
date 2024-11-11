#Average Review Ratings - Amazon

SELECT EXTRACT(MONTH FROM submit_date) AS mth,product_id,
ROUND(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY 2,1
ORDER BY 1;