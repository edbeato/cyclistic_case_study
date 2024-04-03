-- 1.) Comparing total rides for casual riders and annual members

SELECT 
  COUNT(ride_id) AS total_rides,
  member_casual,
  ROUND(COUNT(ride_id)/4331953*100, 2) AS percent_rides
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual;

-- 2.) Ridetype breakdown of casual riders

SELECT
  COUNT(rideable_type) AS count_ride_type,
  ROUND(COUNT(rideable_type)/1531825*100, 2) AS percent_ride_types,
  rideable_type
FROM
  oceanic-beach-410402.Cyclistic.clean_combined_2023
WHERE
  member_casual = 'casual'
GROUP BY
  rideable_type;

-- Ridetype breakdown of annual members

SELECT
  COUNT(rideable_type) AS count_ride_type,
  ROUND(COUNT(rideable_type)/2800128*100, 2) AS percent_ride_types,
  rideable_type
FROM
  oceanic-beach-410402.Cyclistic.clean_combined_2023
WHERE
  member_casual = 'member'
GROUP BY
  rideable_type;

-- 3.) Average ride duration for casual riders and annual members

SELECT
  AVG(ride_duration) AS avg_ride_duration,
  member_casual,
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual;

-- Average ride duration for casual riders and annual members by ride type

SELECT
  AVG(ride_duration) AS avg_ride_duration,
  member_casual,
  rideable_type
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual, rideable_type
ORDER BY 
  member_casual;

-- 4.) Most popular starting stations for casual riders

SELECT
  start_station_name,
  COUNT(start_station_name) AS count_station_name,
  AVG(start_lat) AS avg_start_lat,
  AVG(start_lng) AS avg_start_lng
FROM  
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
WHERE
  member_casual = 'casual'
GROUP BY 
  start_station_name
ORDER BY
  count_station_name DESC
LIMIT 10;

-- Most popular starting stations for annual members

SELECT
  start_station_name,
  COUNT(start_station_name) AS count_station_name,
  AVG(start_lat) AS avg_start_lat,
  AVG(start_lng) AS avg_start_lng
FROM  
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
WHERE
  member_casual = 'member'
GROUP BY 
  start_station_name
ORDER BY
  count_station_name DESC
LIMIT 10;

-- 5.) Total rides per month

SELECT 
  COUNT(ride_id) AS total_rides,
  month,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  month,
  member_casual
ORDER BY 
  member_casual,
  total_rides DESC;

-- 6.) Most popular day of the week

SELECT  
  COUNT(ride_id) AS total_rides,
  day_of_week,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  day_of_week,
  member_casual
ORDER BY
  member_casual,
  total_rides DESC;

-- 7.) Most popular start time

SELECT  
  COUNT(ride_id) AS total_rides,
  start_hour,
  CASE(start_hour)
    WHEN 0 THEN '12 AM'
    WHEN 1 THEN '1 AM'
    WHEN 2 THEN '2 AM'
    WHEN 3 THEN '3 AM'
    WHEN 4 THEN '4 AM'
    WHEN 5 THEN '5 AM'
    WHEN 6 THEN '6 AM'
    WHEN 7 THEN '7 AM'
    WHEN 8 THEN '8 AM'
    WHEN 9 THEN '9 AM'
    WHEN 10 THEN '10 AM'
    WHEN 11 THEN '11 AM'
    WHEN 12 THEN '12 PM'
    WHEN 13 THEN '1 PM'
    WHEN 14 THEN '2 PM'
    WHEN 15 THEN '3 PM'
    WHEN 16 THEN '4 PM'
    WHEN 17 THEN '5 PM'
    WHEN 18 THEN '6 PM'
    WHEN 19 THEN '7 PM'
    WHEN 20 THEN '8 PM'
    WHEN 21 THEN '9 PM'
    WHEN 22 THEN '10 PM'
    WHEN 23 THEN '11 PM'
  END AS start_hour_ampm,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  start_hour,
  member_casual
ORDER BY
  member_casual,
  total_rides DESC;
