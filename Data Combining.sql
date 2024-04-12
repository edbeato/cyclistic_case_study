-- Combining all twelve months of data into one table

CREATE TABLE `oceanic-beach-410402.Cyclistic.combined_2023` AS
  SELECT * FROM `oceanic-beach-410402.Cyclistic.January`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.February`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.March`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.April`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.May`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.June`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.July`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.August`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.September`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.October`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.November`
  UNION ALL
  SELECT * FROM `oceanic-beach-410402.Cyclistic.December`
  ;

-- Counting the total number of rides in 2023

SELECT COUNT(*) AS total_rides
FROM `oceanic-beach-410402.Cyclistic.combined_2023`
