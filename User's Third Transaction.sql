WITH ride_rank AS (
SELECT
  *,ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY transaction_date) AS Ranking
FROM transactions
)
SELECT 
user_id,spend,transaction_date 
from ride_rank 
where Ranking=3
