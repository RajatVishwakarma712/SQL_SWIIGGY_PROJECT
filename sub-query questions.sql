USE vansh;

              -- SUB QUERY QUESTIONS 
              
              
-- 1. Which restaurant of abohar is visited by least number of people?

SELECT * FROM restaurants 
WHERE city="Delhi"
AND rating_count = ( SELECT MIN(rating_count) FROM restaurants 
                     WHERE city="Delhi");



-- 2. Which restaurant has generated maximum revenue all over india?

SELECT * , cost*rating_count AS revenue 
FROM restaurants 
WHERE cost*rating_count = 
         (SELECT MAX(cost*rating_count) FROM restaurants );

-- 3. How many restaurants are having 
-- rating more than the average rating?

SELECT COUNT(*)
FROM restaurants 
WHERE rating > ( SELECT AVG(rating) FROM restaurants ) ;




-- 4. Which restaurant of Delhi has generated most revenue?

SELECT *  FROM restaurants
 WHERE city="Delhi"
 AND rating_count*cost = 
 (SELECT MAX(rating_count*cost) FROM restaurants );


-- 5. Which restaurant chain has maximum number of restaurants?
 
SELECT name , COUNT(*) AS chains
FROM restaurants 
GROUP BY name
ORDER BY chains DESC
LIMIT 10 ;



-- 6. Which restaurant chain has generated maximum revenue?

WITH max_rev AS  (
SELECT name , SUM(rating_count*cost) AS revenue 
FROM restaurants 
GROUP BY name )

SELECT * FROM max_rev 
WHERE revenue = (SELECT MAX(revenue) FROM max_rev); 


-- 7. Which city has maximum number of restaurants?

SELECT city , COUNT(*) AS num_res
FROM restaurants 
GROUP BY city 
ORDER BY num_res DESC
LIMIT 10;




-- 8. Which city has generated maximum revenue all over india?

SELECT city , SUM(rating_count*cost) AS max_revenue
FROM restaurants 
GROUP BY city
ORDER BY max_revenue DESC ;


-- ADDITIONAL QUESTIONS DURING THE CLASS 
-- City having maximum foot fall over INDIA.alter

SELECT city , SUM(rating_count) AS foot_fall
FROM restaurants
GROUP BY city 
ORDER BY foot_fall DESC ;



-- 9. List 10 least expensive cuisines?

SELECT cost , cuisine 
FROM restaurants
ORDER BY cost ASC 
LIMIT 10;
-- data is not clean here that's why least expensive is 1 



-- 10. List 10 most expensive cuisines?


SELECT cost , cuisine 
FROM restaurants
ORDER BY cost DESC
LIMIT 10;


-- 11. What is the city is having Biryani as 
-- most popular cuisine

SELECT city , COUNT(*) AS biryani_count
FROM restaurants 
WHERE cuisine LIKE '%Biryani'
GROUP BY city
ORDER BY biryani_count DESC
LIMIT 1;



-- 12. List top 10 unique restaurants with unique name only 
-- throughout the dataset as per generate maximum revenue 
-- (Single restaurant with that name)

SELECT name , SUM(rating_count*cost) AS total_revenue
 FROM restaurants 
GROUP BY name 
ORDER BY total_revenue DESC 
LIMIT 10 ;



