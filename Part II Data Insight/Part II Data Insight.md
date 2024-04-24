## 2. Data Insight


[2.1 **Data Exploration with SQL**:](https://github.com/codyhsu/data_analysis/edit/main/SQL%20sales%20project/Part%20II%20Data%20Insight.md#21-data-inspection-and-summary)
Use SQL to gain an overview of the dataset, identifying key insights and trends.
  
2.2 **Visualization Selection**: 
Determine which visualizations are best suited to effectively present and uncover additional insights.

2.1 **SQL Script Preparation**: 
Prepare the necessary SQL scripts to integrate and connect MySQL and PowerBI.

### 2.1 Data Inspection and Summary

**Orders and Salses**

--pic--
--pic--

* 298 distincts order with 2747 items between 2018-01-04 and 2020-05-31
* total sales are 976,022,177 Euros with an average of 355,305 Euros per order
* There are 6 types of order status: shipped, on hold, in porcess, disputed, resolved and cancelled
* 92.5% of the orders are successfully shipped, 2.18% are cancelled and 5.32% with other status

**Customers**

--pic--
--pic--

* 89 clients from 19 countries
* most of them (32) are form USA, 12 from France, 5 each from Australia and Spain
* Top clients are Euro Shopping Channel from Spain with 259 orders and Mini Gifts Distributors Ltd, from USA with 180 orders
  

 **Products**

* There are 7 categories and 109 distincts products.
* Categories are:  Classic Cars, Vintage Cars, Motorcycles, Planes, Trucks and Buses,Ships and Trains
* margin of sales are range from 7.42% to 18.42% [1]
* Classic cars offer the most variety with 24 products yet with the lowest margin of 6.88%, while train vice versa
* all categories' top buyers are all from the USA

[1] margin are cauculated using 90% of the MSRP as the base price


### 2.2 Dashboard structure

A. Number Card: 
1. Orders: Total Orders >> define KPIs
2. Orders:Total Sales >> define KPIs
3. Orders: Average Sales 
4. Products: Total items 
5. Customers: Total Clients  

B. Proportion
1. Orders: Status/ Shipped, disputed, canceled (bar or donut)
2. Produts: product category (treemap)

C. Insight
1. Profit margin of each category
2. Sales vs top clients vs products
3. Sales vs Time for purchase for pattern/ behavior
4. Country vs Sales/profit (can also used for cost calculation in the future)
5. Dealsize (each order) vs Customer


### 2.3 SQL Script Preparation 


