#Cards Issued Difference - JP Morgan

SELECT card_name,
MAX(issued_amount)-MIN(issued_amount) AS differnce
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY differnce DESC