-- Comparing total rides for casual riders and annual members

SELECT 
  COUNT(ride_id) AS total_rides,
  member_casual,
  ROUND(COUNT(ride_id)/4331953*100, 2) AS percent_rides
FROM
  `oceanic-beach-410402.Cyclistic.clean_combined_2023`
GROUP BY 
  member_casual;

-- Ridetype breakdown of casual riders
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

-- Average ride duration for casual riders and annual members

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
