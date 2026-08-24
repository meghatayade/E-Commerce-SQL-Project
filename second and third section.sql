MariaDB [ecommerce_sales]> select * from customers where age > 25;
+-------------+----------------+--------+------+------------+----------------+-------------+
| customer_id | customer_name  | gender | age  | city       | state          | signup_date |
+-------------+----------------+--------+------+------------+----------------+-------------+
|           3 | Rohan Mehta    | Male   |   26 | Mumbai     | Maharashtra    | 03-02-2024  |
|           5 | Vikram Singh   | Male   |   28 | Jaipur     | Rajasthan      | 28-02-2024  |
|           7 | Arjun Patel    | Male   |   27 | Ahmedabad  | Gujarat        | 18-03-2024  |
|           9 | Aditya Verma   | Male   |   29 | Lucknow    | Uttar Pradesh  | 09-04-2024  |
|          12 | Sneha Joshi    | Female |   27 | Indore     | Madhya Pradesh | 02-05-2024  |
|          13 | Karan Malhotra | Male   |   30 | Delhi      | Delhi          | 10-05-2024  |
|          14 | Meera Shah     | Female |   26 | Surat      | Gujarat        | 21-05-2024  |
|          16 | Pooja Bansal   | Female |   28 | Noida      | Uttar Pradesh  | 17-06-2024  |
|          19 | Manish Yadav   | Male   |   31 | Gurugram   | Haryana        | 15-07-2024  |
|          21 | Harsh Jain     | Male   |   27 | Bhopal     | Madhya Pradesh | 08-08-2024  |
|          22 | Simran Kaur    | Female |   26 | Amritsar   | Punjab         | 19-08-2024  |
|          24 | Nandini Bose   | Female |   29 | Bengaluru  | Karnataka      | 14-09-2024  |
|          25 | Akash Mishra   | Male   |   28 | Kanpur     | Uttar Pradesh  | 26-09-2024  |
|          27 | Varun Chawla   | Male   |   26 | Chandigarh | Chandigarh     | 18-10-2024  |
|          28 | Divya Menon    | Female |   27 | Kochi      | Kerala         | 01-11-2024  |
|          31 | Ritesh Sinha   | Male   |   30 | Patna      | Bihar          | 03-12-2024  |
|          32 | Anjali Desai   | Female |   28 | Ahmedabad  | Gujarat        | 12-12-2024  |
|          35 | Saurabh Tiwari | Male   |   29 | Gurugram   | Haryana        | 28-01-2025  |
|          36 | Ira Mukherjee  | Female |   26 | Kolkata    | West Bengal    | 10-02-2025  |
|          38 | Ritu Sood      | Female |   27 | Chennai    | Tamil Nadu     | 03-03-2025  |
|          39 | Aman Khurana   | Male   |   28 | Pune       | Maharashtra    | 15-03-2025  |
+-------------+----------------+--------+------+------------+----------------+-------------+
21 rows in set (0.013 sec)

MariaDB [ecommerce_sales]> select * from customers where age > 25;
+-------------+----------------+--------+------+------------+----------------+-------------+
| customer_id | customer_name  | gender | age  | city       | state          | signup_date |
+-------------+----------------+--------+------+------------+----------------+-------------+
|           3 | Rohan Mehta    | Male   |   26 | Mumbai     | Maharashtra    | 03-02-2024  |
|           5 | Vikram Singh   | Male   |   28 | Jaipur     | Rajasthan      | 28-02-2024  |
|           7 | Arjun Patel    | Male   |   27 | Ahmedabad  | Gujarat        | 18-03-2024  |
|           9 | Aditya Verma   | Male   |   29 | Lucknow    | Uttar Pradesh  | 09-04-2024  |
|          12 | Sneha Joshi    | Female |   27 | Indore     | Madhya Pradesh | 02-05-2024  |
|          13 | Karan Malhotra | Male   |   30 | Delhi      | Delhi          | 10-05-2024  |
|          14 | Meera Shah     | Female |   26 | Surat      | Gujarat        | 21-05-2024  |
|          16 | Pooja Bansal   | Female |   28 | Noida      | Uttar Pradesh  | 17-06-2024  |
|          19 | Manish Yadav   | Male   |   31 | Gurugram   | Haryana        | 15-07-2024  |
|          21 | Harsh Jain     | Male   |   27 | Bhopal     | Madhya Pradesh | 08-08-2024  |
|          22 | Simran Kaur    | Female |   26 | Amritsar   | Punjab         | 19-08-2024  |
|          24 | Nandini Bose   | Female |   29 | Bengaluru  | Karnataka      | 14-09-2024  |
|          25 | Akash Mishra   | Male   |   28 | Kanpur     | Uttar Pradesh  | 26-09-2024  |
|          27 | Varun Chawla   | Male   |   26 | Chandigarh | Chandigarh     | 18-10-2024  |
|          28 | Divya Menon    | Female |   27 | Kochi      | Kerala         | 01-11-2024  |
|          31 | Ritesh Sinha   | Male   |   30 | Patna      | Bihar          | 03-12-2024  |
|          32 | Anjali Desai   | Female |   28 | Ahmedabad  | Gujarat        | 12-12-2024  |
|          35 | Saurabh Tiwari | Male   |   29 | Gurugram   | Haryana        | 28-01-2025  |
|          36 | Ira Mukherjee  | Female |   26 | Kolkata    | West Bengal    | 10-02-2025  |
|          38 | Ritu Sood      | Female |   27 | Chennai    | Tamil Nadu     | 03-03-2025  |
|          39 | Aman Khurana   | Male   |   28 | Pune       | Maharashtra    | 15-03-2025  |
+-------------+----------------+--------+------+------------+----------------+-------------+
21 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select gender, count(*) as total_customers from customers group by gender;
+--------+-----------------+
| gender | total_customers |
+--------+-----------------+
| Female |              20 |
| Male   |              20 |
+--------+-----------------+
2 rows in set (0.002 sec)


MariaDB [ecommerce_sales]> select city,count(*) as customers_by_city from customers group by city order by customers_by_city desc;
+------------+-------------------+
| city       | customers_by_city |
+------------+-------------------+
| Kolkata    |                 4 |
| Delhi      |                 4 |
| Bengaluru  |                 3 |
| Pune       |                 3 |
| Patna      |                 2 |
| Gurugram   |                 2 |
| Indore     |                 2 |
| Ahmedabad  |                 2 |
| Chennai    |                 2 |
| Lucknow    |                 2 |
| Kochi      |                 2 |
| Noida      |                 2 |
| Chandigarh |                 2 |
| Jaipur     |                 2 |
| Hyderabad  |                 1 |
| Bhopal     |                 1 |
| Surat      |                 1 |
| Mumbai     |                 1 |
| Amritsar   |                 1 |
| Kanpur     |                 1 |
+------------+-------------------+
20 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select state,count(*) as customers_state_wise from customers group by state order by customers_state_wise desc;
+----------------+----------------------+
| state          | customers_state_wise |
+----------------+----------------------+
| Uttar Pradesh  |                    5 |
| West Bengal    |                    4 |
| Delhi          |                    4 |
| Maharashtra    |                    4 |
| Madhya Pradesh |                    3 |
| Karnataka      |                    3 |
| Gujarat        |                    3 |
| Haryana        |                    2 |
| Rajasthan      |                    2 |
| Tamil Nadu     |                    2 |
| Bihar          |                    2 |
| Kerala         |                    2 |
| Chandigarh     |                    2 |
| Punjab         |                    1 |
| Telangana      |                    1 |
+----------------+----------------------+
15 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select city,count(*) as customers from customers group by city order by customers desc limit 5;
+-----------+-----------+
| city      | customers |
+-----------+-----------+
| Kolkata   |         4 |
| Delhi     |         4 |
| Bengaluru |         3 |
| Pune      |         3 |
| Patna     |         2 |
+-----------+-----------+
5 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from customers where YEAR(signup_date) = 2024;
Empty set, 40 warnings (0.004 sec)

MariaDB [ecommerce_sales]> select * from customers where YEAR(str_to_date(signup_date, '%d-%m-%Y'))= 2024;
+-------------+----------------+--------+------+------------+----------------+-------------+
| customer_id | customer_name  | gender | age  | city       | state          | signup_date |
+-------------+----------------+--------+------+------------+----------------+-------------+
|           1 | Aarav Sharma   | Male   |   24 | Delhi      | Delhi          | 12-01-2024  |
|           2 | Ananya Iyer    | Female |   23 | Bengaluru  | Karnataka      | 19-01-2024  |
|           3 | Rohan Mehta    | Male   |   26 | Mumbai     | Maharashtra    | 03-02-2024  |
|           4 | Priya Nair     | Female |   25 | Kochi      | Kerala         | 14-02-2024  |
|           5 | Vikram Singh   | Male   |   28 | Jaipur     | Rajasthan      | 28-02-2024  |
|           6 | Kavya Reddy    | Female |   22 | Hyderabad  | Telangana      | 06-03-2024  |
|           7 | Arjun Patel    | Male   |   27 | Ahmedabad  | Gujarat        | 18-03-2024  |
|           8 | Neha Gupta     | Female |   24 | Pune       | Maharashtra    | 27-03-2024  |
|           9 | Aditya Verma   | Male   |   29 | Lucknow    | Uttar Pradesh  | 09-04-2024  |
|          10 | Isha Kapoor    | Female |   23 | Chandigarh | Chandigarh     | 16-04-2024  |
|          11 | Rahul Das      | Male   |   25 | Kolkata    | West Bengal    | 24-04-2024  |
|          12 | Sneha Joshi    | Female |   27 | Indore     | Madhya Pradesh | 02-05-2024  |
|          13 | Karan Malhotra | Male   |   30 | Delhi      | Delhi          | 10-05-2024  |
|          14 | Meera Shah     | Female |   26 | Surat      | Gujarat        | 21-05-2024  |
|          15 | Siddharth Rao  | Male   |   24 | Chennai    | Tamil Nadu     | 05-06-2024  |
|          16 | Pooja Bansal   | Female |   28 | Noida      | Uttar Pradesh  | 17-06-2024  |
|          17 | Nikhil Kumar   | Male   |   23 | Patna      | Bihar          | 25-06-2024  |
|          18 | Riya Sen       | Female |   25 | Kolkata    | West Bengal    | 04-07-2024  |
|          19 | Manish Yadav   | Male   |   31 | Gurugram   | Haryana        | 15-07-2024  |
|          20 | Aditi Kulkarni | Female |   24 | Pune       | Maharashtra    | 29-07-2024  |
|          21 | Harsh Jain     | Male   |   27 | Bhopal     | Madhya Pradesh | 08-08-2024  |
|          22 | Simran Kaur    | Female |   26 | Amritsar   | Punjab         | 19-08-2024  |
|          23 | Dev Agarwal    | Male   |   22 | Jaipur     | Rajasthan      | 03-09-2024  |
|          24 | Nandini Bose   | Female |   29 | Bengaluru  | Karnataka      | 14-09-2024  |
|          25 | Akash Mishra   | Male   |   28 | Kanpur     | Uttar Pradesh  | 26-09-2024  |
|          26 | Tanya Arora    | Female |   23 | Delhi      | Delhi          | 07-10-2024  |
|          27 | Varun Chawla   | Male   |   26 | Chandigarh | Chandigarh     | 18-10-2024  |
|          28 | Divya Menon    | Female |   27 | Kochi      | Kerala         | 01-11-2024  |
|          29 | Mohit Saxena   | Male   |   25 | Lucknow    | Uttar Pradesh  | 13-11-2024  |
|          30 | Shreya Ghosh   | Female |   24 | Kolkata    | West Bengal    | 25-11-2024  |
|          31 | Ritesh Sinha   | Male   |   30 | Patna      | Bihar          | 03-12-2024  |
|          32 | Anjali Desai   | Female |   28 | Ahmedabad  | Gujarat        | 12-12-2024  |
+-------------+----------------+--------+------+------------+----------------+-------------+
32 rows in set (0.003 sec)

MariaDB [ecommerce_sales]> select * from customers where YEAR(str_to_date(signup_date, '%d-%m-%Y'))= 2025;
+-------------+----------------+--------+------+-----------+----------------+-------------+
| customer_id | customer_name  | gender | age  | city      | state          | signup_date |
+-------------+----------------+--------+------+-----------+----------------+-------------+
|          33 | Yash Thakur    | Male   |   23 | Indore    | Madhya Pradesh | 08-01-2025  |
|          34 | Manya Khanna   | Female |   25 | Noida     | Uttar Pradesh  | 17-01-2025  |
|          35 | Saurabh Tiwari | Male   |   29 | Gurugram  | Haryana        | 28-01-2025  |
|          36 | Ira Mukherjee  | Female |   26 | Kolkata   | West Bengal    | 10-02-2025  |
|          37 | Kabir Arora    | Male   |   24 | Delhi     | Delhi          | 18-02-2025  |
|          38 | Ritu Sood      | Female |   27 | Chennai   | Tamil Nadu     | 03-03-2025  |
|          39 | Aman Khurana   | Male   |   28 | Pune      | Maharashtra    | 15-03-2025  |
|          40 | Lakshmi Iyer   | Female |   22 | Bengaluru | Karnataka      | 26-03-2025  |
+-------------+----------------+--------+------+-----------+----------------+-------------+
8 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from customers where YEAR(signup_date) = 2024;
Empty set, 40 warnings (0.001 sec)

MariaDB [ecommerce_sales]> select gender, round(avg(age),2) as average_age from customers group by gender;
+--------+-------------+
| gender | average_age |
+--------+-------------+
| Female |       25.20 |
| Male   |       26.45 |
+--------+-------------+
2 rows in set (0.007 sec)

MariaDB [ecommerce_sales]> select * from customers where age = (select min(age) from customers);
+-------------+---------------+--------+------+-----------+-----------+-------------+
| customer_id | customer_name | gender | age  | city      | state     | signup_date |
+-------------+---------------+--------+------+-----------+-----------+-------------+
|           6 | Kavya Reddy   | Female |   22 | Hyderabad | Telangana | 06-03-2024  |
|          23 | Dev Agarwal   | Male   |   22 | Jaipur    | Rajasthan | 03-09-2024  |
|          40 | Lakshmi Iyer  | Female |   22 | Bengaluru | Karnataka | 26-03-2025  |
+-------------+---------------+--------+------+-----------+-----------+-------------+
3 rows in set (0.002 sec)

MariaDB [ecommerce_sales]> select * from customers where age = (select max(age) from customers);
+-------------+---------------+--------+------+----------+---------+-------------+
| customer_id | customer_name | gender | age  | city     | state   | signup_date |
+-------------+---------------+--------+------+----------+---------+-------------+
|          19 | Manish Yadav  | Male   |   31 | Gurugram | Haryana | 15-07-2024  |
+-------------+---------------+--------+------+----------+---------+-------------+
1 row in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where category = "Electronics";
+------------+---------------------+-------------+------------+----------------+
| product_id | product_name        | category    | unit_price | stock_quantity |
+------------+---------------------+-------------+------------+----------------+
|        101 | Wireless Mouse      | Electronics |        799 |            150 |
|        102 | USB-C Cable         | Electronics |        299 |            300 |
|        103 | Bluetooth Speaker   | Electronics |       1999 |             80 |
|        104 | Laptop Stand        | Electronics |       1299 |             90 |
|        105 | Power Bank 10000mAh | Electronics |       1499 |            110 |
+------------+---------------------+-------------+------------+----------------+
5 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select category, count(product_id) as total_products from products groupby category order by total_products;
+----------------+----------------+
| category       | total_products |
+----------------+----------------+
| Sports         |              2 |
| Grocery        |              2 |
| Beauty         |              3 |
| Stationery     |              3 |
| Electronics    |              5 |
| Fashion        |              5 |
| Home & Kitchen |              5 |
+----------------+----------------+
7 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where unit_price = (select max(unit_price) as most_expensive_product from products);
+------------+---------------+----------+------------+----------------+
| product_id | product_name  | category | unit_price | stock_quantity |
+------------+---------------+----------+------------+----------------+
|        108 | Running Shoes | Fashion  |       2499 |             75 |
+------------+---------------+----------+------------+----------------+
1 row in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where unit_price = (select min(unit_price) as least_expensive_product from products);
+------------+--------------+------------+------------+----------------+
| product_id | product_name | category   | unit_price | stock_quantity |
+------------+--------------+------------+------------+----------------+
|        117 | Gel Pen Set  | Stationery |        199 |            230 |
+------------+--------------+------------+------------+----------------+
1 row in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where stock_quantity < 100 order by stock_quantity;
+------------+-------------------+----------------+------------+----------------+
| product_id | product_name      | category       | unit_price | stock_quantity |
+------------+-------------------+----------------+------------+----------------+
|        110 | Analog Watch      | Fashion        |       1799 |             65 |
|        114 | Bed Sheet Set     | Home & Kitchen |       1599 |             70 |
|        108 | Running Shoes     | Fashion        |       2499 |             75 |
|        103 | Bluetooth Speaker | Electronics    |       1999 |             80 |
|        115 | Non-Stick Pan     | Home & Kitchen |       1299 |             85 |
|        104 | Laptop Stand      | Electronics    |       1299 |             90 |
|        118 | Desk Organizer    | Stationery     |        699 |             90 |
|        109 | Backpack          | Fashion        |       1199 |             95 |
+------------+-------------------+----------------+------------+----------------+
8 rows in set (0.001 sec)

