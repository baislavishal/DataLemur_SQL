#Histogram of Tweets - Twitter

WITH tweet_count  AS (
SELECT COUNT(tweet_id) AS tweet_bucket,user_id
FROM tweets
WHERE tweet_date BETWEEN '01-01-2022' AND '12-31-2022'
  GROUP BY user_id
)
SELECT tweet_bucket , COUNT(user_id) AS users_num
  FROM tweet_count
  GROUP BY tweet_bucket