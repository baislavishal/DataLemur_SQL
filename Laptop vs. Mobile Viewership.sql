#Laptop vs. Mobile Viewership - New York Times

SELECT 
  COUNT(*) FILTER (WHERE device_type='laptop') AS laptop_views,
  COUNT(*) FILTER (WHERE device_type IN ('tablet','phone')) AS mobile_views
FROM viewership;