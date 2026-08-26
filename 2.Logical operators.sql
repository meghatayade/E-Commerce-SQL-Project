
MariaDB [ecommerce_sales]> select * from customers where age > 25 and  city = "delhi";
+-------------+----------------+--------+------+-------+-------+-------------+
| customer_id | customer_name  | gender | age  | city  | state | signup_date |
+-------------+----------------+--------+------+-------+-------+-------------+
|          13 | Karan Malhotra | Male   |   30 | Delhi | Delhi | 10-05-2024  |
+-------------+----------------+--------+------+-------+-------+-------------+
1 row in set (0.025 sec)

MariaDB [ecommerce_sales]> select * from products where category = "electronic" or category = "fashion";
+------------+----------------+----------+------------+----------------+
| product_id | product_name   | category | unit_price | stock_quantity |
+------------+----------------+----------+------------+----------------+
|        106 | Cotton T-Shirt | Fashion  |        599 |            200 |
|        107 | Denim Jeans    | Fashion  |       1499 |            120 |
|        108 | Running Shoes  | Fashion  |       2499 |             75 |
|        109 | Backpack       | Fashion  |       1199 |             95 |
|        110 | Analog Watch   | Fashion  |       1799 |             65 |
+------------+----------------+----------+------------+----------------+
5 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where category = "electronics" or category = "fashion";
+------------+---------------------+-------------+------------+----------------+
| product_id | product_name        | category    | unit_price | stock_quantity |
+------------+---------------------+-------------+------------+----------------+
|        101 | Wireless Mouse      | Electronics |        799 |            150 |
|        102 | USB-C Cable         | Electronics |        299 |            300 |
|        103 | Bluetooth Speaker   | Electronics |       1999 |             80 |
|        104 | Laptop Stand        | Electronics |       1299 |             90 |
|        105 | Power Bank 10000mAh | Electronics |       1499 |            110 |
|        106 | Cotton T-Shirt      | Fashion     |        599 |            200 |
|        107 | Denim Jeans         | Fashion     |       1499 |            120 |
|        108 | Running Shoes       | Fashion     |       2499 |             75 |
|        109 | Backpack            | Fashion     |       1199 |             95 |
|        110 | Analog Watch        | Fashion     |       1799 |             65 |
+------------+---------------------+-------------+------------+----------------+
10 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where unit_price between 500 and 1000;
+------------+------------------+----------------+------------+----------------+
| product_id | product_name     | category       | unit_price | stock_quantity |
+------------+------------------+----------------+------------+----------------+
|        101 | Wireless Mouse   | Electronics    |        799 |            150 |
|        106 | Cotton T-Shirt   | Fashion        |        599 |            200 |
|        113 | LED Desk Lamp    | Home & Kitchen |        899 |            100 |
|        118 | Desk Organizer   | Stationery     |        699 |             90 |
|        119 | Yoga Mat         | Sports         |        999 |            130 |
|        120 | Resistance Bands | Sports         |        549 |            140 |
|        122 | Sunscreen SPF 50 | Beauty         |        649 |            145 |
|        124 | Protein Bar Pack | Grocery        |        799 |            160 |
+------------+------------------+----------------+------------+----------------+
8 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from customers where age between 22 and 25;
+-------------+----------------+--------+------+------------+----------------+-------------+
| customer_id | customer_name  | gender | age  | city       | state          | signup_date |
+-------------+----------------+--------+------+------------+----------------+-------------+
|           1 | Aarav Sharma   | Male   |   24 | Delhi      | Delhi          | 12-01-2024  |
|           2 | Ananya Iyer    | Female |   23 | Bengaluru  | Karnataka      | 19-01-2024  |
|           4 | Priya Nair     | Female |   25 | Kochi      | Kerala         | 14-02-2024  |
|           6 | Kavya Reddy    | Female |   22 | Hyderabad  | Telangana      | 06-03-2024  |
|           8 | Neha Gupta     | Female |   24 | Pune       | Maharashtra    | 27-03-2024  |
|          10 | Isha Kapoor    | Female |   23 | Chandigarh | Chandigarh     | 16-04-2024  |
|          11 | Rahul Das      | Male   |   25 | Kolkata    | West Bengal    | 24-04-2024  |
|          15 | Siddharth Rao  | Male   |   24 | Chennai    | Tamil Nadu     | 05-06-2024  |
|          17 | Nikhil Kumar   | Male   |   23 | Patna      | Bihar          | 25-06-2024  |
|          18 | Riya Sen       | Female |   25 | Kolkata    | West Bengal    | 04-07-2024  |
|          20 | Aditi Kulkarni | Female |   24 | Pune       | Maharashtra    | 29-07-2024  |
|          23 | Dev Agarwal    | Male   |   22 | Jaipur     | Rajasthan      | 03-09-2024  |
|          26 | Tanya Arora    | Female |   23 | Delhi      | Delhi          | 07-10-2024  |
|          29 | Mohit Saxena   | Male   |   25 | Lucknow    | Uttar Pradesh  | 13-11-2024  |
|          30 | Shreya Ghosh   | Female |   24 | Kolkata    | West Bengal    | 25-11-2024  |
|          33 | Yash Thakur    | Male   |   23 | Indore     | Madhya Pradesh | 08-01-2025  |
|          34 | Manya Khanna   | Female |   25 | Noida      | Uttar Pradesh  | 17-01-2025  |
|          37 | Kabir Arora    | Male   |   24 | Delhi      | Delhi          | 18-02-2025  |
|          40 | Lakshmi Iyer   | Female |   22 | Bengaluru  | Karnataka      | 26-03-2025  |
+-------------+----------------+--------+------+------------+----------------+-------------+
19 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from orders where order_status = "cancelled" or order_status = "returned" ;
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
| order_id | customer_id | product_id | order_date | quantity | unit_price | payment_method   | order_status |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
|     1005 |          35 |        105 | 07-03-2025 |        4 |       1499 | Credit Card      | Cancelled    |
|     1006 |           2 |        116 | 20-03-2025 |        3 |        249 | Debit Card       | Returned     |
|     1012 |           4 |        107 | 06-06-2025 |        1 |       1499 | UPI              | Cancelled    |
|     1013 |          11 |        118 | 19-06-2025 |        4 |        594 | Credit Card      | Returned     |
|     1019 |          13 |        109 | 07-02-2025 |        2 |       1199 | Cash on Delivery | Cancelled    |
|     1020 |          20 |        120 | 20-02-2025 |        1 |        549 | UPI              | Returned     |
|     1026 |          22 |        111 | 09-05-2025 |        3 |        424 | Debit Card       | Cancelled    |
|     1027 |          29 |        122 | 22-05-2025 |        2 |        584 | Cash on Delivery | Returned     |
|     1033 |          31 |        113 | 10-01-2025 |        4 |        899 | Credit Card      | Cancelled    |
|     1034 |          38 |        124 | 23-01-2025 |        3 |        799 | Debit Card       | Returned     |
|     1040 |          40 |        115 | 11-04-2025 |        1 |       1299 | UPI              | Cancelled    |
|     1041 |           7 |        101 | 24-04-2025 |        4 |        799 | Credit Card      | Returned     |
|     1047 |           9 |        117 | 11-07-2025 |        2 |        199 | Cash on Delivery | Cancelled    |
|     1048 |          16 |        103 | 24-07-2025 |        1 |       1999 | UPI              | Returned     |
|     1054 |          18 |        119 | 14-03-2025 |        3 |        899 | Debit Card       | Cancelled    |
|     1055 |          25 |        105 | 27-03-2025 |        2 |       1499 | Cash on Delivery | Returned     |
|     1061 |          27 |        121 | 13-06-2025 |        4 |        399 | Credit Card      | Cancelled    |
|     1062 |          34 |        107 | 26-06-2025 |        3 |       1499 | Debit Card       | Returned     |
|     1068 |          36 |        123 | 14-02-2025 |        1 |        449 | UPI              | Cancelled    |
|     1069 |           3 |        109 | 27-02-2025 |        4 |       1199 | Credit Card      | Returned     |
|     1075 |           5 |        125 | 16-05-2025 |        2 |        349 | Cash on Delivery | Cancelled    |
|     1076 |          12 |        111 | 29-05-2025 |        1 |        499 | UPI              | Returned     |
|     1082 |          14 |        102 | 17-01-2025 |        3 |        299 | Debit Card       | Cancelled    |
|     1083 |          21 |        113 | 30-01-2025 |        2 |        899 | Cash on Delivery | Returned     |
|     1089 |          23 |        104 | 18-04-2025 |        4 |       1299 | Credit Card      | Cancelled    |
|     1090 |          30 |        115 | 01-05-2025 |        3 |       1169 | Debit Card       | Returned     |
|     1096 |          32 |        106 | 18-07-2025 |        1 |        599 | UPI              | Cancelled    |
|     1097 |          39 |        117 | 02-01-2025 |        4 |        199 | Credit Card      | Returned     |
|     1103 |           1 |        108 | 21-03-2025 |        2 |       2499 | Cash on Delivery | Cancelled    |
|     1104 |           8 |        119 | 03-04-2025 |        1 |        849 | UPI              | Returned     |
|     1110 |          10 |        110 | 20-06-2025 |        3 |       1799 | Debit Card       | Cancelled    |
|     1111 |          17 |        121 | 03-07-2025 |        2 |        399 | Cash on Delivery | Returned     |
|     1117 |          19 |        112 | 21-02-2025 |        4 |        314 | Credit Card      | Cancelled    |
|     1118 |          26 |        123 | 06-03-2025 |        3 |        449 | Debit Card       | Returned     |
|     1124 |          28 |        114 | 23-05-2025 |        1 |       1599 | UPI              | Cancelled    |
|     1125 |          35 |        125 | 05-06-2025 |        4 |        349 | Credit Card      | Returned     |
|     1131 |          37 |        116 | 24-01-2025 |        2 |        249 | Cash on Delivery | Cancelled    |
|     1132 |           4 |        102 | 06-02-2025 |        1 |        299 | UPI              | Returned     |
|     1138 |           6 |        118 | 25-04-2025 |        3 |        699 | Debit Card       | Cancelled    |
|     1139 |          13 |        104 | 08-05-2025 |        2 |       1299 | Cash on Delivery | Returned     |
|     1145 |          15 |        120 | 25-07-2025 |        4 |        549 | Credit Card      | Cancelled    |
|     1146 |          22 |        106 | 09-01-2025 |        3 |        599 | Debit Card       | Returned     |
|     1152 |          24 |        122 | 28-03-2025 |        1 |        649 | UPI              | Cancelled    |
|     1153 |          31 |        108 | 10-04-2025 |        4 |       2249 | Credit Card      | Returned     |
|     1159 |          33 |        124 | 27-06-2025 |        2 |        799 | Cash on Delivery | Cancelled    |
|     1160 |          40 |        110 | 10-07-2025 |        1 |       1799 | UPI              | Returned     |
|     1166 |           2 |        101 | 28-02-2025 |        3 |        799 | Debit Card       | Cancelled    |
|     1167 |           9 |        112 | 13-03-2025 |        2 |        349 | Cash on Delivery | Returned     |
|     1173 |          11 |        103 | 30-05-2025 |        4 |       1999 | Credit Card      | Cancelled    |
|     1174 |          18 |        114 | 12-06-2025 |        3 |       1599 | Debit Card       | Returned     |
|     1180 |          20 |        105 | 31-01-2025 |        1 |       1349 | UPI              | Cancelled    |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
51 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from orders where order_status != "delivered" ;
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
| order_id | customer_id | product_id | order_date | quantity | unit_price | payment_method   | order_status |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
|     1005 |          35 |        105 | 07-03-2025 |        4 |       1499 | Credit Card      | Cancelled    |
|     1006 |           2 |        116 | 20-03-2025 |        3 |        249 | Debit Card       | Returned     |
|     1012 |           4 |        107 | 06-06-2025 |        1 |       1499 | UPI              | Cancelled    |
|     1013 |          11 |        118 | 19-06-2025 |        4 |        594 | Credit Card      | Returned     |
|     1019 |          13 |        109 | 07-02-2025 |        2 |       1199 | Cash on Delivery | Cancelled    |
|     1020 |          20 |        120 | 20-02-2025 |        1 |        549 | UPI              | Returned     |
|     1026 |          22 |        111 | 09-05-2025 |        3 |        424 | Debit Card       | Cancelled    |
|     1027 |          29 |        122 | 22-05-2025 |        2 |        584 | Cash on Delivery | Returned     |
|     1033 |          31 |        113 | 10-01-2025 |        4 |        899 | Credit Card      | Cancelled    |
|     1034 |          38 |        124 | 23-01-2025 |        3 |        799 | Debit Card       | Returned     |
|     1040 |          40 |        115 | 11-04-2025 |        1 |       1299 | UPI              | Cancelled    |
|     1041 |           7 |        101 | 24-04-2025 |        4 |        799 | Credit Card      | Returned     |
|     1047 |           9 |        117 | 11-07-2025 |        2 |        199 | Cash on Delivery | Cancelled    |
|     1048 |          16 |        103 | 24-07-2025 |        1 |       1999 | UPI              | Returned     |
|     1054 |          18 |        119 | 14-03-2025 |        3 |        899 | Debit Card       | Cancelled    |
|     1055 |          25 |        105 | 27-03-2025 |        2 |       1499 | Cash on Delivery | Returned     |
|     1061 |          27 |        121 | 13-06-2025 |        4 |        399 | Credit Card      | Cancelled    |
|     1062 |          34 |        107 | 26-06-2025 |        3 |       1499 | Debit Card       | Returned     |
|     1068 |          36 |        123 | 14-02-2025 |        1 |        449 | UPI              | Cancelled    |
|     1069 |           3 |        109 | 27-02-2025 |        4 |       1199 | Credit Card      | Returned     |
|     1075 |           5 |        125 | 16-05-2025 |        2 |        349 | Cash on Delivery | Cancelled    |
|     1076 |          12 |        111 | 29-05-2025 |        1 |        499 | UPI              | Returned     |
|     1082 |          14 |        102 | 17-01-2025 |        3 |        299 | Debit Card       | Cancelled    |
|     1083 |          21 |        113 | 30-01-2025 |        2 |        899 | Cash on Delivery | Returned     |
|     1089 |          23 |        104 | 18-04-2025 |        4 |       1299 | Credit Card      | Cancelled    |
|     1090 |          30 |        115 | 01-05-2025 |        3 |       1169 | Debit Card       | Returned     |
|     1096 |          32 |        106 | 18-07-2025 |        1 |        599 | UPI              | Cancelled    |
|     1097 |          39 |        117 | 02-01-2025 |        4 |        199 | Credit Card      | Returned     |
|     1103 |           1 |        108 | 21-03-2025 |        2 |       2499 | Cash on Delivery | Cancelled    |
|     1104 |           8 |        119 | 03-04-2025 |        1 |        849 | UPI              | Returned     |
|     1110 |          10 |        110 | 20-06-2025 |        3 |       1799 | Debit Card       | Cancelled    |
|     1111 |          17 |        121 | 03-07-2025 |        2 |        399 | Cash on Delivery | Returned     |
|     1117 |          19 |        112 | 21-02-2025 |        4 |        314 | Credit Card      | Cancelled    |
|     1118 |          26 |        123 | 06-03-2025 |        3 |        449 | Debit Card       | Returned     |
|     1124 |          28 |        114 | 23-05-2025 |        1 |       1599 | UPI              | Cancelled    |
|     1125 |          35 |        125 | 05-06-2025 |        4 |        349 | Credit Card      | Returned     |
|     1131 |          37 |        116 | 24-01-2025 |        2 |        249 | Cash on Delivery | Cancelled    |
|     1132 |           4 |        102 | 06-02-2025 |        1 |        299 | UPI              | Returned     |
|     1138 |           6 |        118 | 25-04-2025 |        3 |        699 | Debit Card       | Cancelled    |
|     1139 |          13 |        104 | 08-05-2025 |        2 |       1299 | Cash on Delivery | Returned     |
|     1145 |          15 |        120 | 25-07-2025 |        4 |        549 | Credit Card      | Cancelled    |
|     1146 |          22 |        106 | 09-01-2025 |        3 |        599 | Debit Card       | Returned     |
|     1152 |          24 |        122 | 28-03-2025 |        1 |        649 | UPI              | Cancelled    |
|     1153 |          31 |        108 | 10-04-2025 |        4 |       2249 | Credit Card      | Returned     |
|     1159 |          33 |        124 | 27-06-2025 |        2 |        799 | Cash on Delivery | Cancelled    |
|     1160 |          40 |        110 | 10-07-2025 |        1 |       1799 | UPI              | Returned     |
|     1166 |           2 |        101 | 28-02-2025 |        3 |        799 | Debit Card       | Cancelled    |
|     1167 |           9 |        112 | 13-03-2025 |        2 |        349 | Cash on Delivery | Returned     |
|     1173 |          11 |        103 | 30-05-2025 |        4 |       1999 | Credit Card      | Cancelled    |
|     1174 |          18 |        114 | 12-06-2025 |        3 |       1599 | Debit Card       | Returned     |
|     1180 |          20 |        105 | 31-01-2025 |        1 |       1349 | UPI              | Cancelled    |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
51 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where category != "electronics";
+------------+------------------+----------------+------------+----------------+
| product_id | product_name     | category       | unit_price | stock_quantity |
+------------+------------------+----------------+------------+----------------+
|        106 | Cotton T-Shirt   | Fashion        |        599 |            200 |
|        107 | Denim Jeans      | Fashion        |       1499 |            120 |
|        108 | Running Shoes    | Fashion        |       2499 |             75 |
|        109 | Backpack         | Fashion        |       1199 |             95 |
|        110 | Analog Watch     | Fashion        |       1799 |             65 |
|        111 | Water Bottle     | Home & Kitchen |        499 |            220 |
|        112 | Coffee Mug       | Home & Kitchen |        349 |            180 |
|        113 | LED Desk Lamp    | Home & Kitchen |        899 |            100 |
|        114 | Bed Sheet Set    | Home & Kitchen |       1599 |             70 |
|        115 | Non-Stick Pan    | Home & Kitchen |       1299 |             85 |
|        116 | Notebook Pack    | Stationery     |        249 |            250 |
|        117 | Gel Pen Set      | Stationery     |        199 |            230 |
|        118 | Desk Organizer   | Stationery     |        699 |             90 |
|        119 | Yoga Mat         | Sports         |        999 |            130 |
|        120 | Resistance Bands | Sports         |        549 |            140 |
|        121 | Face Wash        | Beauty         |        399 |            170 |
|        122 | Sunscreen SPF 50 | Beauty         |        649 |            145 |
|        123 | Shampoo          | Beauty         |        449 |            190 |
|        124 | Protein Bar Pack | Grocery        |        799 |            160 |
|        125 | Green Tea Pack   | Grocery        |        349 |            210 |
+------------+------------------+----------------+------------+----------------+
20 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from customers where customer_name like "A%";
+-------------+----------------+--------+------+-----------+---------------+-------------+
| customer_id | customer_name  | gender | age  | city      | state         | signup_date |
+-------------+----------------+--------+------+-----------+---------------+-------------+
|           1 | Aarav Sharma   | Male   |   24 | Delhi     | Delhi         | 12-01-2024  |
|           2 | Ananya Iyer    | Female |   23 | Bengaluru | Karnataka     | 19-01-2024  |
|           7 | Arjun Patel    | Male   |   27 | Ahmedabad | Gujarat       | 18-03-2024  |
|           9 | Aditya Verma   | Male   |   29 | Lucknow   | Uttar Pradesh | 09-04-2024  |
|          20 | Aditi Kulkarni | Female |   24 | Pune      | Maharashtra   | 29-07-2024  |
|          25 | Akash Mishra   | Male   |   28 | Kanpur    | Uttar Pradesh | 26-09-2024  |
|          32 | Anjali Desai   | Female |   28 | Ahmedabad | Gujarat       | 12-12-2024  |
|          39 | Aman Khurana   | Male   |   28 | Pune      | Maharashtra   | 15-03-2025  |
+-------------+----------------+--------+------+-----------+---------------+-------------+
8 rows in set (0.025 sec)

MariaDB [ecommerce_sales]> select * from orders where quantity > 2 or unit_price > 1500;
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
| order_id | customer_id | product_id | order_date | quantity | unit_price | payment_method   | order_status |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
|     1001 |           7 |        111 | 14-01-2025 |        4 |        499 | Credit Card      | Delivered    |
|     1002 |          14 |        122 | 27-01-2025 |        3 |        649 | Debit Card       | Delivered    |
|     1003 |          21 |        108 | 09-02-2025 |        2 |       2499 | Cash on Delivery | Delivered    |
|     1005 |          35 |        105 | 07-03-2025 |        4 |       1499 | Credit Card      | Cancelled    |
|     1006 |           2 |        116 | 20-03-2025 |        3 |        249 | Debit Card       | Returned     |
|     1009 |          23 |        124 | 28-04-2025 |        4 |        719 | Credit Card      | Delivered    |
|     1010 |          30 |        110 | 11-05-2025 |        3 |       1799 | Debit Card       | Delivered    |
|     1013 |          11 |        118 | 19-06-2025 |        4 |        594 | Credit Card      | Returned     |
|     1014 |          18 |        104 | 02-07-2025 |        3 |       1299 | Debit Card       | Delivered    |
|     1017 |          39 |        112 | 12-01-2025 |        4 |        349 | Credit Card      | Delivered    |
|     1018 |           6 |        123 | 25-01-2025 |        3 |        404 | Debit Card       | Delivered    |
|     1021 |          27 |        106 | 05-03-2025 |        4 |        599 | Credit Card      | Delivered    |
|     1022 |          34 |        117 | 18-03-2025 |        3 |        199 | Debit Card       | Delivered    |
|     1023 |           1 |        103 | 31-03-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1024 |           8 |        114 | 13-04-2025 |        1 |       1599 | UPI              | Delivered    |
|     1025 |          15 |        125 | 26-04-2025 |        4 |        349 | Credit Card      | Delivered    |
|     1026 |          22 |        111 | 09-05-2025 |        3 |        424 | Debit Card       | Cancelled    |
|     1028 |          36 |        108 | 04-06-2025 |        1 |       2499 | UPI              | Delivered    |
|     1029 |           3 |        119 | 17-06-2025 |        4 |        999 | Credit Card      | Delivered    |
|     1030 |          10 |        105 | 30-06-2025 |        3 |       1499 | Debit Card       | Delivered    |
|     1033 |          31 |        113 | 10-01-2025 |        4 |        899 | Credit Card      | Cancelled    |
|     1034 |          38 |        124 | 23-01-2025 |        3 |        799 | Debit Card       | Returned     |
|     1035 |           5 |        110 | 05-02-2025 |        2 |       1799 | Cash on Delivery | Delivered    |
|     1037 |          19 |        107 | 03-03-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1038 |          26 |        118 | 16-03-2025 |        3 |        699 | Debit Card       | Delivered    |
|     1041 |           7 |        101 | 24-04-2025 |        4 |        799 | Credit Card      | Returned     |
|     1042 |          14 |        112 | 07-05-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1045 |          35 |        120 | 15-06-2025 |        4 |        494 | Credit Card      | Delivered    |
|     1046 |           2 |        106 | 28-06-2025 |        3 |        599 | Debit Card       | Delivered    |
|     1048 |          16 |        103 | 24-07-2025 |        1 |       1999 | UPI              | Returned     |
|     1049 |          23 |        114 | 08-01-2025 |        4 |       1599 | Credit Card      | Delivered    |
|     1050 |          30 |        125 | 21-01-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1053 |          11 |        108 | 01-03-2025 |        4 |       2499 | Credit Card      | Delivered    |
|     1054 |          18 |        119 | 14-03-2025 |        3 |        899 | Debit Card       | Cancelled    |
|     1057 |          39 |        102 | 22-04-2025 |        4 |        299 | Credit Card      | Delivered    |
|     1058 |           6 |        113 | 05-05-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1060 |          20 |        110 | 31-05-2025 |        1 |       1799 | UPI              | Delivered    |
|     1061 |          27 |        121 | 13-06-2025 |        4 |        399 | Credit Card      | Cancelled    |
|     1062 |          34 |        107 | 26-06-2025 |        3 |       1499 | Debit Card       | Returned     |
|     1065 |          15 |        115 | 06-01-2025 |        4 |       1104 | Credit Card      | Delivered    |
|     1066 |          22 |        101 | 19-01-2025 |        3 |        799 | Debit Card       | Delivered    |
|     1069 |           3 |        109 | 27-02-2025 |        4 |       1199 | Credit Card      | Returned     |
|     1070 |          10 |        120 | 12-03-2025 |        3 |        549 | Debit Card       | Delivered    |
|     1073 |          31 |        103 | 20-04-2025 |        4 |       1999 | Credit Card      | Delivered    |
|     1074 |          38 |        114 | 03-05-2025 |        3 |       1599 | Debit Card       | Delivered    |
|     1077 |          19 |        122 | 11-06-2025 |        4 |        649 | Credit Card      | Delivered    |
|     1078 |          26 |        108 | 24-06-2025 |        3 |       2124 | Debit Card       | Delivered    |
|     1081 |           7 |        116 | 04-01-2025 |        4 |        224 | Credit Card      | Delivered    |
|     1082 |          14 |        102 | 17-01-2025 |        3 |        299 | Debit Card       | Cancelled    |
|     1085 |          35 |        110 | 25-02-2025 |        4 |       1799 | Credit Card      | Delivered    |
|     1086 |           2 |        121 | 10-03-2025 |        3 |        399 | Debit Card       | Delivered    |
|     1089 |          23 |        104 | 18-04-2025 |        4 |       1299 | Credit Card      | Cancelled    |
|     1090 |          30 |        115 | 01-05-2025 |        3 |       1169 | Debit Card       | Returned     |
|     1093 |          11 |        123 | 09-06-2025 |        4 |        449 | Credit Card      | Delivered    |
|     1094 |          18 |        109 | 22-06-2025 |        3 |       1199 | Debit Card       | Delivered    |
|     1097 |          39 |        117 | 02-01-2025 |        4 |        199 | Credit Card      | Returned     |
|     1098 |           6 |        103 | 15-01-2025 |        3 |       1999 | Debit Card       | Delivered    |
|     1101 |          27 |        111 | 23-02-2025 |        4 |        499 | Credit Card      | Delivered    |
|     1102 |          34 |        122 | 08-03-2025 |        3 |        649 | Debit Card       | Delivered    |
|     1103 |           1 |        108 | 21-03-2025 |        2 |       2499 | Cash on Delivery | Cancelled    |
|     1105 |          15 |        105 | 16-04-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1106 |          22 |        116 | 29-04-2025 |        3 |        249 | Debit Card       | Delivered    |
|     1109 |           3 |        124 | 07-06-2025 |        4 |        799 | Credit Card      | Delivered    |
|     1110 |          10 |        110 | 20-06-2025 |        3 |       1799 | Debit Card       | Cancelled    |
|     1113 |          31 |        118 | 29-07-2025 |        4 |        699 | Credit Card      | Delivered    |
|     1114 |          38 |        104 | 13-01-2025 |        3 |       1299 | Debit Card       | Delivered    |
|     1117 |          19 |        112 | 21-02-2025 |        4 |        314 | Credit Card      | Cancelled    |
|     1118 |          26 |        123 | 06-03-2025 |        3 |        449 | Debit Card       | Returned     |
|     1121 |           7 |        106 | 14-04-2025 |        4 |        599 | Credit Card      | Delivered    |
|     1122 |          14 |        117 | 27-04-2025 |        3 |        199 | Debit Card       | Delivered    |
|     1123 |          21 |        103 | 10-05-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1124 |          28 |        114 | 23-05-2025 |        1 |       1599 | UPI              | Cancelled    |
|     1125 |          35 |        125 | 05-06-2025 |        4 |        349 | Credit Card      | Returned     |
|     1126 |           2 |        111 | 18-06-2025 |        3 |        449 | Debit Card       | Delivered    |
|     1128 |          16 |        108 | 14-07-2025 |        1 |       2499 | UPI              | Delivered    |
|     1129 |          23 |        119 | 27-07-2025 |        4 |        999 | Credit Card      | Delivered    |
|     1130 |          30 |        105 | 11-01-2025 |        3 |       1274 | Debit Card       | Delivered    |
|     1133 |          11 |        113 | 19-02-2025 |        4 |        899 | Credit Card      | Delivered    |
|     1134 |          18 |        124 | 04-03-2025 |        3 |        799 | Debit Card       | Delivered    |
|     1135 |          25 |        110 | 17-03-2025 |        2 |       1619 | Cash on Delivery | Delivered    |
|     1137 |          39 |        107 | 12-04-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1138 |           6 |        118 | 25-04-2025 |        3 |        699 | Debit Card       | Cancelled    |
|     1141 |          27 |        101 | 03-06-2025 |        4 |        799 | Credit Card      | Delivered    |
|     1142 |          34 |        112 | 16-06-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1145 |          15 |        120 | 25-07-2025 |        4 |        549 | Credit Card      | Cancelled    |
|     1146 |          22 |        106 | 09-01-2025 |        3 |        599 | Debit Card       | Returned     |
|     1148 |          36 |        103 | 04-02-2025 |        1 |       1999 | UPI              | Delivered    |
|     1149 |           3 |        114 | 17-02-2025 |        4 |       1599 | Credit Card      | Delivered    |
|     1150 |          10 |        125 | 02-03-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1153 |          31 |        108 | 10-04-2025 |        4 |       2249 | Credit Card      | Returned     |
|     1154 |          38 |        119 | 23-04-2025 |        3 |        999 | Debit Card       | Delivered    |
|     1157 |          19 |        102 | 01-06-2025 |        4 |        299 | Credit Card      | Delivered    |
|     1158 |          26 |        113 | 14-06-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1160 |          40 |        110 | 10-07-2025 |        1 |       1799 | UPI              | Returned     |
|     1161 |           7 |        121 | 23-07-2025 |        4 |        399 | Credit Card      | Delivered    |
|     1162 |          14 |        107 | 07-01-2025 |        3 |       1349 | Debit Card       | Delivered    |
|     1165 |          35 |        115 | 15-02-2025 |        4 |       1299 | Credit Card      | Delivered    |
|     1166 |           2 |        101 | 28-02-2025 |        3 |        799 | Debit Card       | Cancelled    |
|     1169 |          23 |        109 | 08-04-2025 |        4 |       1019 | Credit Card      | Delivered    |
|     1170 |          30 |        120 | 21-04-2025 |        3 |        549 | Debit Card       | Delivered    |
|     1173 |          11 |        103 | 30-05-2025 |        4 |       1999 | Credit Card      | Cancelled    |
|     1174 |          18 |        114 | 12-06-2025 |        3 |       1599 | Debit Card       | Returned     |
|     1177 |          39 |        122 | 21-07-2025 |        4 |        649 | Credit Card      | Delivered    |
|     1178 |           6 |        108 | 05-01-2025 |        3 |       2499 | Debit Card       | Delivered    |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
104 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select * from products where product_name like "%pack%";
+------------+------------------+------------+------------+----------------+
| product_id | product_name     | category   | unit_price | stock_quantity |
+------------+------------------+------------+------------+----------------+
|        109 | Backpack         | Fashion    |       1199 |             95 |
|        116 | Notebook Pack    | Stationery |        249 |            250 |
|        124 | Protein Bar Pack | Grocery    |        799 |            160 |
|        125 | Green Tea Pack   | Grocery    |        349 |            210 |
+------------+------------------+------------+------------+----------------+
4 rows in set (0.001 sec)

MariaDB [ecommerce_sales]>
