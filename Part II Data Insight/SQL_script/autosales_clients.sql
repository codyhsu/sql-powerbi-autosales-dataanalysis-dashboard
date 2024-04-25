-- cutomers --
SELECT
	count(distinct(c.client_id)) AS num_client,
    count(distinct(c.country)) AS num_country
FROM customers AS c
;
-- customer by country --
SELECT
	c.country,
	count(distinct(c.client_id)) AS num_client
FROM customers AS c
GROUP BY country
ORDER BY 2 desc
;

-- costomer by sales--
SELECT
	c.client_name,    
    sum(o.order_quantity*o.price_sold) AS sales,
    COUNT(o.order_id) AS num_order,
    c.country
FROM orders AS o
LEFT JOIN customers AS c ON o.client_id = c.client_id 
GROUP BY c.client_name, c.country
ORDER BY 2 DESC
LIMIT 5 
;

-- behavior / unfinished :( --

SELECT
    o.client_id, 
    c.client_name,
    COUNT(DISTINCT(o.order_id)) AS num_order,
    AVG(DATEDIFF(o2.order_date, o.order_date)) AS avg_order_time,
    MAX(DATE(o.order_date)) AS last_order
FROM 
    orders AS o
JOIN 
    orders AS o2 ON o.client_id = o2.client_id
    AND o.order_date < o2.order_date
JOIN customers AS c ON o.client_id = c.client_id
GROUP BY 
    o.client_id
ORDER BY 3 DESC

;     
