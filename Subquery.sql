MariaDB [ecommerce_sales]> select product_id, product_name, category, unit_price from products where unit_price > (select avg(unit_price) from products) order by unit_price desc;
+------------+---------------------+----------------+------------+
| product_id | product_name        | category       | unit_price |
+------------+---------------------+----------------+------------+
|        108 | Running Shoes       | Fashion        |       2499 |
|        103 | Bluetooth Speaker   | Electronics    |       1999 |
|        110 | Analog Watch        | Fashion        |       1799 |
|        114 | Bed Sheet Set       | Home & Kitchen |       1599 |
|        105 | Power Bank 10000mAh | Electronics    |       1499 |
|        107 | Denim Jeans         | Fashion        |       1499 |
|        104 | Laptop Stand        | Electronics    |       1299 |
|        115 | Non-Stick Pan       | Home & Kitchen |       1299 |
|        109 | Backpack            | Fashion        |       1199 |
|        119 | Yoga Mat            | Sports         |        999 |
+------------+---------------------+----------------+------------+
10 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where unit_price = (select max(unit_price) from products);
+------------+---------------+----------+------------+----------------+
| product_id | product_name  | category | unit_price | stock_quantity |
+------------+---------------+----------+------------+----------------+
|        108 | Running Shoes | Fashion  |       2499 |             75 |
+------------+---------------+----------+------------+----------------+
1 row in set (0.002 sec)

MariaDB [ecommerce_sales]> select customer_id, customer_name, city, state from customers where customer_id IN (select customer_id from orders);
+-------------+----------------+------------+----------------+
| customer_id | customer_name  | city       | state          |
+-------------+----------------+------------+----------------+
|           1 | Aarav Sharma   | Delhi      | Delhi          |
|           2 | Ananya Iyer    | Bengaluru  | Karnataka      |
|           3 | Rohan Mehta    | Mumbai     | Maharashtra    |
|           4 | Priya Nair     | Kochi      | Kerala         |
|           5 | Vikram Singh   | Jaipur     | Rajasthan      |
|           6 | Kavya Reddy    | Hyderabad  | Telangana      |
|           7 | Arjun Patel    | Ahmedabad  | Gujarat        |
|           8 | Neha Gupta     | Pune       | Maharashtra    |
|           9 | Aditya Verma   | Lucknow    | Uttar Pradesh  |
|          10 | Isha Kapoor    | Chandigarh | Chandigarh     |
|          11 | Rahul Das      | Kolkata    | West Bengal    |
|          12 | Sneha Joshi    | Indore     | Madhya Pradesh |
|          13 | Karan Malhotra | Delhi      | Delhi          |
|          14 | Meera Shah     | Surat      | Gujarat        |
|          15 | Siddharth Rao  | Chennai    | Tamil Nadu     |
|          16 | Pooja Bansal   | Noida      | Uttar Pradesh  |
|          17 | Nikhil Kumar   | Patna      | Bihar          |
|          18 | Riya Sen       | Kolkata    | West Bengal    |
|          19 | Manish Yadav   | Gurugram   | Haryana        |
|          20 | Aditi Kulkarni | Pune       | Maharashtra    |
|          21 | Harsh Jain     | Bhopal     | Madhya Pradesh |
|          22 | Simran Kaur    | Amritsar   | Punjab         |
|          23 | Dev Agarwal    | Jaipur     | Rajasthan      |
|          24 | Nandini Bose   | Bengaluru  | Karnataka      |
|          25 | Akash Mishra   | Kanpur     | Uttar Pradesh  |
|          26 | Tanya Arora    | Delhi      | Delhi          |
|          27 | Varun Chawla   | Chandigarh | Chandigarh     |
|          28 | Divya Menon    | Kochi      | Kerala         |
|          29 | Mohit Saxena   | Lucknow    | Uttar Pradesh  |
|          30 | Shreya Ghosh   | Kolkata    | West Bengal    |
|          31 | Ritesh Sinha   | Patna      | Bihar          |
|          32 | Anjali Desai   | Ahmedabad  | Gujarat        |
|          33 | Yash Thakur    | Indore     | Madhya Pradesh |
|          34 | Manya Khanna   | Noida      | Uttar Pradesh  |
|          35 | Saurabh Tiwari | Gurugram   | Haryana        |
|          36 | Ira Mukherjee  | Kolkata    | West Bengal    |
|          37 | Kabir Arora    | Delhi      | Delhi          |
|          38 | Ritu Sood      | Chennai    | Tamil Nadu     |
|          39 | Aman Khurana   | Pune       | Maharashtra    |
|          40 | Lakshmi Iyer   | Bengaluru  | Karnataka      |
+-------------+----------------+------------+----------------+
40 rows in set (0.002 sec)

MariaDB [ecommerce_sales]> select customer_id, customer_name, city, state from customers where customer_id NOT IN (select customer_id from orders);
Empty set (0.008 sec)

MariaDB [ecommerce_sales]> select * from orders where customer_id IN (select customer_id from customers where city = "Delhi");
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
| order_id | customer_id | product_id | order_date | quantity | unit_price | payment_method   | order_status |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
|     1023 |           1 |        103 | 31-03-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1063 |           1 |        118 | 09-07-2025 |        2 |        629 | Cash on Delivery | Delivered    |
|     1103 |           1 |        108 | 21-03-2025 |        2 |       2499 | Cash on Delivery | Cancelled    |
|     1143 |           1 |        123 | 29-06-2025 |        2 |        382 | Cash on Delivery | Delivered    |
|     1019 |          13 |        109 | 07-02-2025 |        2 |       1199 | Cash on Delivery | Cancelled    |
|     1059 |          13 |        124 | 18-05-2025 |        2 |        799 | Cash on Delivery | Delivered    |
|     1099 |          13 |        114 | 28-01-2025 |        2 |       1439 | Cash on Delivery | Delivered    |
|     1139 |          13 |        104 | 08-05-2025 |        2 |       1299 | Cash on Delivery | Returned     |
|     1179 |          13 |        119 | 18-01-2025 |        2 |        999 | Cash on Delivery | Delivered    |
|     1038 |          26 |        118 | 16-03-2025 |        3 |        699 | Debit Card       | Delivered    |
|     1078 |          26 |        108 | 24-06-2025 |        3 |       2124 | Debit Card       | Delivered    |
|     1118 |          26 |        123 | 06-03-2025 |        3 |        449 | Debit Card       | Returned     |
|     1158 |          26 |        113 | 14-06-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1011 |          37 |        121 | 24-05-2025 |        2 |        399 | Cash on Delivery | Delivered    |
|     1051 |          37 |        111 | 03-02-2025 |        2 |        499 | Cash on Delivery | Delivered    |
|     1091 |          37 |        101 | 14-05-2025 |        2 |        679 | Cash on Delivery | Delivered    |
|     1131 |          37 |        116 | 24-01-2025 |        2 |        249 | Cash on Delivery | Cancelled    |
|     1171 |          37 |        106 | 04-05-2025 |        2 |        539 | Cash on Delivery | Delivered    |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
18 rows in set (0.002 sec)

MariaDB [ecommerce_sales]>
