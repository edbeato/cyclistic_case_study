-- Creating a new table with the cleanded data

CREATE TABLE `oceanic-beach-410402.Cyclistic.clean_combined_2023` AS

-- Omitting start_station_id, end_station_id
-- Creating ride_duration, start_hour, day_of_week, month

SELECT      
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  end_station_name,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  ended_at - started_at AS ride_duration,
  EXTRACT(HOUR FROM started_at) AS start_hour,
  CASE EXTRACT(DAYOFWEEK FROM started_at) 
      WHEN 1 THEN 'MON'
      WHEN 2 THEN 'TUE'
      WHEN 3 THEN 'WED'
      WHEN 4 THEN 'THU'
      WHEN 5 THEN 'FRI'
      WHEN 6 THEN 'SAT'
      WHEN 7 THEN 'SUN'    
    END AS day_of_week,
    CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
    END AS month,
FROM `oceanic-beach-410402.Cyclistic.combined_2023`

-- Excluding null values

WHERE 
  start_station_name IS NOT NULL
  AND end_station_name IS NOT NULL
  AND end_lat IS NOT NULL
  AND end_lng IS NOT NULL;

