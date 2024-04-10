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
  AVG(ride_duration) AS avg_ride_duration,
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
  AVG(ride_duration) AS avg_ride_duration,
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
  AVG(ride_duration) AS avg_ride_duration,
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
  AVG(ride_duration) AS avg_ride_duration,
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
  AVG(ride_duration) AS avg_ride_duration,
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
  AVG(ride_duration) AS avg_ride_duration,
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
  AVG(ride_duration) AS avg_ride_duration, 
  start_hour,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  start_hour,
  member_casual
ORDER BY
  member_casual,
  total_rides DESC;
