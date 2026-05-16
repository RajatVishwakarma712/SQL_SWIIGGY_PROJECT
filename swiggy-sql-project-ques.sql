USE vansh ;

SELECT * FROM restaurants;

SELECT * FROM restaurants WHERE city LIKE "%delhi";

SELECT COUNT(name) FROM restaurants;

SELECT name , rating FROM restaurants
 WHERE rating>4.0;
 
 SELECT name FROM restaurants WHERE cost <=300;
 
 SELECT COUNT(DISTINCT name) FROM restaurants;
 
 SELECT COUNT( DISTINCT cuisine) FROM restaurants;
 
 SELECT COUNT( DISTINCT cuisine) FROM restaurants; 
 
 SELECT * FROM restaurants WHERE cuisine LIKE "%Biryani";
 
 SELECT * FROM restaurants
 ORDER BY rating
 DESC LIMIT 1,1;
 
 -- RATING COUNT GREATER THAN 1000--
 CREATE VIEW v1 AS
 SELECT * FROM restaurants WHERE rating_count>1000;
 
 -- AVG COST all restaurants --
 
SELECT AVG(cost) AS avg_cost
FROM restaurants;

SELECT * FROM restaurants WHERE cost>297;

 -- 12 --
 
 
SELECT name,cost FROM restaurants 
WHERE cost>50 AND cost<=100
ORDER BY cost ASC;

-- 13 example not real ques --

SELECT * FROM restaurants WHERE city 
IN ('Mumbai','Bangalore','Chennai');

-- 13 real waaala find avg rating for each city --

SELECT city,
 avg(rating) AS city_rating_by 
 FROM restaurants 
 GROUP BY city ;
 
 -- answer 14 --
 
 SELECT COUNT(*) FROM restaurants;
 
 
 -- ANSWER 15--
 
 SELECT 
 MAX(cost), MIN(cost)
 FROM restaurants GROUP BY cuisine;
 
-- answer 16 -- 
 

SELECT city , COUNT(*) AS num_city 
FROM restaurants 
GROUP BY city 
ORDER BY num_city DESC LIMIT 3;

-- ANSWER 17 -- 


SELECT cuisine , AVG(cost) , MAX(cost) , MIN(cost)
 FROM restaurants GROUP BY cuisine;

-- answer 18-- 
SELECT city , AVG(rating) AS avg_rating_hain 
FROM  restaurants 
GROUP BY city 
HAVING avg_rating_hain > 4.0;

-- answer 19 List restaurants 
-- whose cost is higher than the average cost of all restaurants.


SELECT name , cost 
FROM restaurants
WHERE cost > (SELECT AVG(cost) FROM restaurants) ; 

-- ans 20 -- 

SELECT city , SUM(rating_count) AS total_rating
FROM restaurants
GROUP BY city ;

-- ans 21--
--  Display cuisines ordered by their avg rating in desc order.

SELECT cuisine , AVG(rating) AS avg_rating_he
FROM restaurants
GROUP BY cuisine 
ORDER BY avg_rating_he DESC;

-- ANS 22 Find rest that have the highest rating
--  within their city.

SELECT name , city , MAX(rating)
FROM restaurants 
GROUP BY city , name ;






