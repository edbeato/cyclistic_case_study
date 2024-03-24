-- Comparing total rides for casual riders and annual members

SELECT 
  COUNT(ride_id) AS total_rides,
  member_casual,
  ROUND(COUNT(ride_id)/4331953*100, 2) AS percent_rides
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual;
