WITH issue_rank AS(
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY card_name ORDER BY issue_year,issue_month) AS Ranking
  FROM monthly_cards_issued
)
SELECT card_name,issued_amount 
  FROM issue_rank 
  WHERE Ranking=1
  ORDER BY issued_amount DESC;
