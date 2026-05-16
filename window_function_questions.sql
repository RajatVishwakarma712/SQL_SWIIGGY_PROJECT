USE vansh;

-- WINDOW FUNCTIONS QUESTIONS 

-- 1. SELECT all records from the restaurants table.


SELECT * FROM restaurants ;


-- 2. Rank every restaurant from most expensive to least expensive.

SELECT * , RANK()
OVER(ORDER BY cost DESC) AS ranking
FROM restaurants ;

-- 3. Rank every restaurant from most visited to least visited.

SELECT name , rating_count , DENSE_RANK()
OVER(ORDER BY rating_count DESC) AS popularity
FROM restaurants ;

-- 4. Rank every restaurant from most expensive to least
--  expensive as per their city.

SELECT name , city , RANK()
OVER( PARTITION BY city ORDER BY cost DESC ) AS expensiveness
FROM restaurants ;

-- 5. Dense-rank every restaurant from most expensive to 
-- least expensive as per their city.


SELECT name , city ,cost, DENSE_RANK()
OVER( PARTITION BY city ORDER BY cost DESC ) AS expensiveness
FROM restaurants ;

-- 6. Row-number every restaurant from most expensive to
--  least expensive as per their city.

SELECT name , city , cost ,  ROW_NUMBER()
OVER( PARTITION BY city ORDER BY cost DESC ) AS row_numbering
FROM restaurants ;



-- 7. Rank the restaurant based on their prices 
-- (most to least expensive) as per cuisine using rank, 
-- dense_rank, and row_number.

SELECT name , cost , cuisine , RANK()
OVER(PARTITION BY cuisine ORDER BY cost DESC ) AS expensiveness
FROM restaurants ;


 SELECT name , cost , cuisine , DENSE_RANK()
OVER(PARTITION BY cuisine ORDER BY cost DESC ) AS expensiveness
FROM restaurants ;


SELECT name , cost , cuisine ,ROW_NUMBER()
OVER(PARTITION BY cuisine ORDER BY cost DESC ) AS expensiveness
FROM restaurants ;


