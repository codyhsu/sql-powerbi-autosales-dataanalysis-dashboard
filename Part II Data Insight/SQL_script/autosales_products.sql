-- products count--
SELECT
	count(distinct(p.product_line)) AS num_cate,
    count(distinct(p.product_code)) AS num_product
FROM products AS p
;

-- product by category --
SELECT
	p.product_line AS p_cate,
    count(distinct(p.product_code)) AS num_product
FROM orders AS o 
LEFT JOIN products AS p ON o.product_code = p.product_code
LEFT JOIN customers AS c ON o.client_id = c.client_id
GROUP BY p.product_line
ORDER BY 2 DESC
;
-- product by category & country --
SELECT
	p.product_line AS p_cate,
    count(distinct(p.product_code)) AS num_product,
    sum(o.order_quantity) AS quantity,
    c.country
FROM orders AS o 
LEFT JOIN products AS p ON o.product_code = p.product_code
LEFT JOIN customers AS c ON o.client_id = c.client_id
GROUP BY p.product_line, c.country 
ORDER BY 1,3 DESC
;

-- profit margin --
SELECT
	p.product_line,
    ROUND(avg(o.price_sold),2) AS avg_sold_price,
    ROUND(avg(p.MSRP),2) AS avg_MSRP,
    ROUND(avg(o.price_sold) - avg(p.MSRP* 0.9),2) AS AVG_profit,
    ROUND(((avg(o.price_sold) - avg(p.MSRP* 0.9))/avg(p.MSRP* 0.9))*100,2) AS margin
  
FROM orders AS o 
LEFT JOIN products AS p ON o.product_code = p.product_code
GROUP BY p.product_line
ORDER BY 5 DESC
;
