
USE autosales;
-- orders --
SELECT 
	count(o.order_id) AS total_order,
	count(distinct(o.order_id)) AS distinct_order,
	round(avg(order_linenumber),1) AS avg_oder_item,
	DATE(min(o.order_date)) AS earlist_date,
	DATE(max(o.order_date)) AS latest_date,
	count(distinct o.order_status) AS status_count,
	round(sum(o.order_quantity*o.price_sold),2) AS total_sales,
	round(avg(o.order_quantity*o.price_sold),2) AS avg_sales
FROM orders AS o
;
-- order status --
SELECT 
	distinct(o.order_status),
	count(o.order_status) AS count,
	round((count(o.order_status)/ a.total_order)*100,2) AS percetage
FROM 
	orders AS o,
	(SELECT count(*) AS total_order FROM orders) AS a
GROUP BY 
	o.order_status, a.total_order
ORDER BY 2 DESC
;

-- use sales to determine the sales size --
SELECT
    CASE 
        WHEN o.order_quantity * o.price_sold > 7000 THEN "large"
        WHEN o.order_quantity * o.price_sold > 3000 THEN "medium"
        ELSE "small"
    END AS sales_size,
    count(o.order_id) AS num_sales_size,
    SUM(o.order_quantity* o.price_sold) AS total_amount
FROM orders AS o
LEFT JOIN products AS p ON o.product_code = p.product_code
LEFT JOIN customers AS c ON o.client_id = c.client_id
GROUP BY sales_size;
