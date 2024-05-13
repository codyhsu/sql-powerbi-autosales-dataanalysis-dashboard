## 2. Data Insight

This part is for gaining a deeper understanding of the dataset and determining the most relevant insights to visualize in Power BI. SQL will be employed during this session for future scalability.

**1. Data Imspectiom:**
Use SQL to conduct a comprehensive exploration of the dataset, extracting key information and identifying  trends.

**2. Dashboard Element Selection:**
Carefully select the most appropriate visualizations to effectively communicate insights and reveal additional patterns within the data.

**3. SQL Script Preparation:**
Prepare the essential SQL scripts required to seamlessly integrate and establish connections between MySQL and Power BI, ensuring smooth data flow and analysis.

### 2.1 Data Inspection and Summary

**Orders and Salses**

> SQL Query of this part is [Here](SQL_script/autosales_orders.sql)

![sales](images/201sales_and_orders.png)

![status](images/202status.png)


* 298 distincts order with 2747 items between 2018-01-04 and 2020-05-31
* total sales are 976,022,177 Euros with an average of 355,305 Euros per order
* There are 6 types of order status: shipped, on hold, in porcess, disputed, resolved and cancelled
* 92.5% of the orders are successfully shipped, 2.18% are cancelled and 5.32% with other status

**Customers**

> SQL Query of this part is [Here](SQL_script/autosales_clients.sql)


![status](images/203clients.png)
![country](images/204country.png)
![top clients](images/205top_clients.png)

* 89 clients from 19 countries
* most of them (32) are form USA, 12 from France, 5 each from Australia and Spain
* Top clients are Euro Shopping Channel from Spain with 259 orders and Mini Gifts Distributors Ltd, from USA with 180 orders
  

 **Products**

> SQL Query of this part is [Here](SQL_script/autosales_products.sql)


![status](images/206product.png)
![status](images/207product_category.png)
![status](images/208profit.png)

* There are 7 categories and 109 distincts products.
* Categories are:  Classic Cars, Vintage Cars, Motorcycles, Planes, Trucks and Buses,Ships and Trains
* margin of sales are range from 7.42% to 18.42% ^[1]
* Classic cars offer the most variety with 24 products yet with the lowest margin of 6.88%, while train vice versa
* all categories' top buyers are all from the USA

[1] margin are cauculated using 90% of the MSRP as the base price


### 2.2 Dashboard Elements Selection

A. Key Figure
1. Orders: Total Orders
2. Orders:Total Sales
3. Orders: Average Sales
4. Orfers: Total Margin
5. Products: Number of Category
6. Products: Total items 
7. Customers: Total Clients  

B. Proportion
1. Orders: Status/ Shipped, disputed, cancelled
2. Produts: product category (treemap)

C. Insight
1. Profit margin of each category
2. Sales vs top clients vs products
3. Sales vs Time for purchase for pattern/ behavior
4. Country vs Sales/profit (can also used for cost calculation in the future)
5. Dealsize (each order) vs Customer

### 2.3 SQL Script Preparation 






