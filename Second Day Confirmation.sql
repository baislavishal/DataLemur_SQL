#Second Day Confirmation - TikTok

SELECT e.user_id 
    FROM emails e
    INNER JOIN texts t  
    ON e.email_id=t.email_id
    WHERE t.action_date=e.signup_date+INTERVAL '1 day';