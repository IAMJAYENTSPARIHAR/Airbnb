SELECT * FROM Airbnb.ab_nyc_2019;
use Airbnb;
-- READ DATA --
select * from Airbnb.ab_nyc_2019;
-- Average Price by Neighbourhood Group --
select neighbourhood_group, AVG(price) AS avg_price FROM Airbnb.ab_nyc_2019 GROUP BY neighbourhood_group;
-- Listings with the Highest Number of Reviews --
SELECT id, name, number_of_reviews FROM Airbnb.ab_nyc_2019 ORDER BY number_of_reviews DESC LIMIT 10;
-- Availability and Host Listings Count --
SELECT calculated_host_listings_count, AVG (availability_365) AS avg_availability FROM Airbnb.ab_nyc_2019 GROUP BY calculated_host_listings_count;
-- Spatial Distribution of Listings --
SELECT neighbourhood_group, neighbourhood, COUNT(*) AS listing_count FROM Airbnb.ab_nyc_2019 GROUP BY neighbourhood_group, neighbourhood;
-- Average Reviews per Month by Room Type --
SELECT room_type, AVG(reviews_per_month) AS avg_reviews_per_month FROM Airbnb.ab_nyc_2019 GROUP BY room_type; 
-- Listings with the Highest Minimum Nights Requirement --
SELECT id, name, minimum_nights FROM Airbnb.ab_nyc_2019 ORDER BY minimum_nights DESC LIMIT 10;
-- Price Distribution Across Room Types --
SELECT room_type, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) AS median_price  
FROM Airbnb.ab_nyc_2019  
GROUP BY room_type;






