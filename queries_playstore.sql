--app with id 1880--
SELECT *
 FROM analytics
WHERE ID = 1880;
--name and id of app lat updated august 1,2018--
SELECT id, app_name
 FROM analytics
WHERE last_updated = '2016-01-024';

--number of apps in each category--
SELECT category, COUNT(category)
 FROM analytics
GROUP BY category;

--top 5 most reviewd apps
SELECT app_name, MAX(reviews) AS review_count
 FROM analytics
GROUP BY app_name
 ORDER BY review_count DESC
 LIMIT 5;

--most reviews, rating grater than 4.9--
SELECT app_name, MAX(reviews) AS review_count 
 FROM analytics
WHERE rating >= 4.8
 GROUP BY app_name
ORDER BY review_count DESC
LIMIT 1;

--avg rating highest to lowest--
SELECT category, MAX(reviews) AS review_count
 FROM analytics
GROUP BY category
 ORDER BY review_count DESC;

--name price rating most expensive app wutg ratings less than 3--
SELECT app_name, price, rating
 FROM analytics
WHERE rating < 3 AND price != 0
 ORDER BY price DESC;
 
 --all apps with install not exceeding 50 have have a rating high to low--
SELECT * 
 FROM analytics
 WHERE min_installs <= 50 AND rating != 0
 ORDER BY rating DESC;

--name of apps that are rated less than 3 with over 10000 reviws--
SELECT name 
 FROM analytics
WHERE rating < 3 AND reviews >= 1000;

--top 10 most reviewed apps between .10 and $1--
SELECT *
 FROM analytics
WHERE price BETWEEN .10 AND 1.00
ORDER BY reviews DESC
LIMIT 10;

--most out of date app--
SELECT *
FROM analytics
ORDER BY last_updated ASC
LIMIT 1;

--most expensive app--
SELECT *
FROM analytics
ORDER BY price DESC
LIMIT 1;

--all rewviews added up from store--
SELECT SUM(reviews)
FROM analytics;

--need help why can i not select with AS name--
SELECT category, COUNT(category) AS app_count
 FROM analytics
GROUP BY category
HAVING COUNT(category) > 300
ORDER BY COUNT(category) DESC;


--need help--
SELECT app_name, reviews, min_installs
