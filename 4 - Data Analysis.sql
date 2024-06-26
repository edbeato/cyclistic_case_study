-- 1.) Comparing total rides

SELECT 
  COUNT(ride_id) AS total_rides,
  ROUND(COUNT(ride_id)/4331953*100, 2) AS percent_rides,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual;

-- 2.) Average ride duration

SELECT
  AVG(ride_duration) AS avg_ride_duration,
  member_casual,
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual;

-- 3.) Ridetype breakdown

SELECT
  rideable_type,
  COUNT(rideable_type) AS total_rides,
  AVG(ride_duration) AS avg_ride_duration,
  member_casual
FROM
  oceanic-beach-410402.Cyclistic.clean_combined_2023
GROUP BY
  rideable_type,
  member_casual
ORDER BY
  rideable_type;

-- 4.) Most popular start time

SELECT  
  start_hour,
  COUNT(ride_id) AS total_rides,
  AVG(ride_duration) AS avg_ride_duration, 
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  start_hour,
  member_casual
ORDER BY
  member_casual,
  total_rides DESC;

-- 5.) Most popular day of the week

SELECT  
  day_of_week,
  COUNT(ride_id) AS total_rides,
  AVG(ride_duration) AS avg_ride_duration,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  day_of_week,
  member_casual
ORDER BY
  member_casual,
  total_rides DESC;

-- 6.) Total rides per month

SELECT 
  month,
  COUNT(ride_id) AS total_rides,
  AVG(ride_duration) AS avg_ride_duration,
  member_casual
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY
  month,
  member_casual
ORDER BY 
  member_casual,
  total_rides DESC;

-- 7.) Most popular starting stations for casual riders

SELECT
  start_station_name,
  COUNT(start_station_name) AS total_rides,
  AVG(ride_duration) AS avg_ride_duration
FROM  
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
WHERE
  member_casual = 'casual'
GROUP BY 
  start_station_name
ORDER BY
  total_rides DESC
LIMIT 10;

-- Most popular starting stations for annual members

SELECT
  start_station_name,
  COUNT(start_station_name) AS total_rides,
  AVG(ride_duration) AS avg_ride_duration
FROM  
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
WHERE
  member_casual = 'member'
GROUP BY 
  start_station_name
ORDER BY
  total_rides DESC
LIMIT 10;
