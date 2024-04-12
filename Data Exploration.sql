-- Counting all null values

SELECT COUNT(*) - COUNT(ride_id) AS ride_id,
 COUNT(*) - COUNT(rideable_type) AS rideable_type,
 COUNT(*) - COUNT(started_at) AS started_at,
 COUNT(*) - COUNT(ended_at) AS ended_at,
 COUNT(*) - COUNT(start_station_name) AS start_station_name,
 COUNT(*) - COUNT(start_station_id) AS start_station_id,
 COUNT(*) - COUNT(end_station_name) AS end_station_name,
 COUNT(*) - COUNT(end_station_id) AS end_station_id,
 COUNT(*) - COUNT(start_lat) AS start_lat,
 COUNT(*) - COUNT(start_lng) AS start_lng,
 COUNT(*) - COUNT(end_lat) AS end_lat,
 COUNT(*) - COUNT(end_lng) AS end_lng,
 COUNT(*) - COUNT(member_casual) AS member_casual
FROM `oceanic-beach-410402.Cyclistic.combined_2023`

-- Checking for duplicate data

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `oceanic-beach-410402.Cyclistic.combined_2023`

-- Making sure all ride_id values have the same length

SELECT COUNT(ride_id), LENGTH(ride_id) AS len_ride_id
FROM `oceanic-beach-410402.Cyclistic.combined_2023`
GROUP BY len_ride_id

-- Counting all rideable_type values

SELECT COUNT(rideable_type) AS total_ride_type, rideable_type
FROM `oceanic-beach-410402.Cyclistic.combined_2023`
GROUP BY rideable_type

-- Counting all member_casual values

SELECT COUNT(member_casual) AS total_member_casual, member_casual
FROM `oceanic-beach-410402.Cyclistic.combined_2023`
GROUP BY member_casual
