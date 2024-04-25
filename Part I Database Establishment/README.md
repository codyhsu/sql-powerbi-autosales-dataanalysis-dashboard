# Part I Database Establishment
As Project overview suggested, we would like to create a database to replace their old spreadsheet.

[1.1 Data Understanding](#1.1-data-understanding)

[1.2 Relational Database Design](#1.2-relational-database-design)

[1.3 Database Creation](#1.3-database-creation)



## 1.1 Data Understanding

Utilizing Excel's quick scan feature due to the small dataset size of 20 attributes and 2,747 examples. Below is the dataset description:

| Column Name          | Description                                                                                                                         |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| ORDERNUMBER          | This column represents the unique identification number assigned to each order.                                                   |
| QUANTITYORDERED      | It indicates the number of items ordered in each order.                                                                            |
| PRICEEACH            | This column specifies the price of each item in the order.                                                                         |
| ORDERLINENUMBER      | It represents the line number of each item within an order.                                                                        |
| SALES                | This column denotes the total sales amount for each order, which is calculated by multiplying the quantity ordered by the price.  |
| ORDERDATE            | It denotes the date on which the order was placed.                                                                                 |
| DAYS_SINCE_LASTORDER| This column represents the number of days that have passed since the last order for each customer. It can be used to analyze customer purchasing patterns. | 
| STATUS               | It indicates the status of the order, such as "Shipped," "In Process," "Cancelled," "Disputed," "On Hold," or "Resolved."         |
| PRODUCTLINE          | This column specifies the product line categories to which each item belongs.                                                       |
| MSRP                 | It stands for Manufacturer's Suggested Retail Price and represents the suggested selling price for each item.                      |
| PRODUCTCODE          | This column represents the unique code assigned to each product.                                                                   |
| CUSTOMERNAME         | It denotes the name of the customer who placed the order.                                                                          |
| PHONE                | This column contains the contact phone number for the customer.                                                                    |
| ADDRESSLINE1         | It represents the first line of the customer's address.                                                                            |
| CITY                 | This column specifies the city where the customer is located.                                                                      |
| POSTALCODE           | It denotes the postal code or ZIP code associated with the customer's address.                                                     |
| COUNTRY              | This column indicates the country where the customer is located.                                                                   |
| CONTACTLASTNAME      | It represents the last name of the contact person associated with the customer.                                                    |
| CONTACTFIRSTNAME     | This column denotes the first name of the contact person associated with the customer.                                              |
| DEALSIZE             | It indicates the size of the deal or order, which are the categories "Small," "Medium," or "Large."                                |

Here is the example of the dataset:

-- pic --

**Data Sorting**

sort the data with the correct order using ordernumer + its ordernumberline

*step 1: enable filter 
*step 2: ustom sort ordernumer + ordernumberline 

-- pic --

**Redundency Removal**

Storing redundant or derived values in a database can lead to data inconsistency and increase storage requirements without providing significant benefits. Instead, it's often more efficient to calculate such values dynamically when needed, either in SQL queries or in application logic.

Here are the columns that were removed and the reasons why:

- sales:  can be cauculated with quantity*price; 
- date since last orders: can be calucated  
- dealsize: can define by the sales number in database
- phone: CEO pointed out they are outdated, to be replace by email 

**datatype** 

it's also observed thay some datetime are text strings, not real numeric numbers.
convert using "text to columns" to assign DMY to it

-- pic --

later transfer all date to yyyy-mm-dd for the MySQL standard 

## 1.2 Relational Database Design

step 1. draft relational dataset using quickDBD 

-- pic --

it's important to note that this relational database is designed based on the existing data not the optimal strucutre. There are room to growed in the future when there are more complete data on hand, for example, shippment status can improved with ship date or recording the problem encounter.

step 2: assigne customer id since it's not existing yet

step 3: remove duplication of products/customers (optional: the import wizard will automatically do it too)

stpe 4: split into 3 csv files

## 1.3 Database Creation

step 1. create database, it's recommendable to use password 

step 2.create scheme and tables

-- SQL code --

step 3. import using table import wizard

step 4. confrirm the dataset is intact






