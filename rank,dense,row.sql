MariaDB [ecommerce_sales]> select customer_id, customer_name, age, rank() over (order by age desc) from customers;
+-------------+----------------+------+---------------------------------+
| customer_id | customer_name  | age  | rank() over (order by age desc) |
+-------------+----------------+------+---------------------------------+
|          19 | Manish Yadav   |   31 |                               1 |
|          13 | Karan Malhotra |   30 |                               2 |
|          31 | Ritesh Sinha   |   30 |                               2 |
|           9 | Aditya Verma   |   29 |                               4 |
|          35 | Saurabh Tiwari |   29 |                               4 |
|          24 | Nandini Bose   |   29 |                               4 |
|           5 | Vikram Singh   |   28 |                               7 |
|          25 | Akash Mishra   |   28 |                               7 |
|          39 | Aman Khurana   |   28 |                               7 |
|          16 | Pooja Bansal   |   28 |                               7 |
|          32 | Anjali Desai   |   28 |                               7 |
|          21 | Harsh Jain     |   27 |                              12 |
|          38 | Ritu Sood      |   27 |                              12 |
|           7 | Arjun Patel    |   27 |                              12 |
|          12 | Sneha Joshi    |   27 |                              12 |
|          28 | Divya Menon    |   27 |                              12 |
|          14 | Meera Shah     |   26 |                              17 |
|          22 | Simran Kaur    |   26 |                              17 |
|           3 | Rohan Mehta    |   26 |                              17 |
|          27 | Varun Chawla   |   26 |                              17 |
|          36 | Ira Mukherjee  |   26 |                              17 |
|          29 | Mohit Saxena   |   25 |                              22 |
|          18 | Riya Sen       |   25 |                              22 |
|          34 | Manya Khanna   |   25 |                              22 |
|          11 | Rahul Das      |   25 |                              22 |
|           4 | Priya Nair     |   25 |                              22 |
|           1 | Aarav Sharma   |   24 |                              27 |
|          37 | Kabir Arora    |   24 |                              27 |
|          30 | Shreya Ghosh   |   24 |                              27 |
|          15 | Siddharth Rao  |   24 |                              27 |
|           8 | Neha Gupta     |   24 |                              27 |
|          20 | Aditi Kulkarni |   24 |                              27 |
|          17 | Nikhil Kumar   |   23 |                              33 |
|          33 | Yash Thakur    |   23 |                              33 |
|           2 | Ananya Iyer    |   23 |                              33 |
|          10 | Isha Kapoor    |   23 |                              33 |
|          26 | Tanya Arora    |   23 |                              33 |
|           6 | Kavya Reddy    |   22 |                              38 |
|          23 | Dev Agarwal    |   22 |                              38 |
|          40 | Lakshmi Iyer   |   22 |                              38 |
+-------------+----------------+------+---------------------------------+
40 rows in set (0.007 sec)

MariaDB [ecommerce_sales]> select customer_id, customer_name, age, rank() over (order by age desc) as rank_by_age from customers;
+-------------+----------------+------+-------------+
| customer_id | customer_name  | age  | rank_by_age |
+-------------+----------------+------+-------------+
|          19 | Manish Yadav   |   31 |           1 |
|          13 | Karan Malhotra |   30 |           2 |
|          31 | Ritesh Sinha   |   30 |           2 |
|           9 | Aditya Verma   |   29 |           4 |
|          35 | Saurabh Tiwari |   29 |           4 |
|          24 | Nandini Bose   |   29 |           4 |
|           5 | Vikram Singh   |   28 |           7 |
|          25 | Akash Mishra   |   28 |           7 |
|          39 | Aman Khurana   |   28 |           7 |
|          16 | Pooja Bansal   |   28 |           7 |
|          32 | Anjali Desai   |   28 |           7 |
|          21 | Harsh Jain     |   27 |          12 |
|          38 | Ritu Sood      |   27 |          12 |
|           7 | Arjun Patel    |   27 |          12 |
|          12 | Sneha Joshi    |   27 |          12 |
|          28 | Divya Menon    |   27 |          12 |
|          14 | Meera Shah     |   26 |          17 |
|          22 | Simran Kaur    |   26 |          17 |
|           3 | Rohan Mehta    |   26 |          17 |
|          27 | Varun Chawla   |   26 |          17 |
|          36 | Ira Mukherjee  |   26 |          17 |
|          29 | Mohit Saxena   |   25 |          22 |
|          18 | Riya Sen       |   25 |          22 |
|          34 | Manya Khanna   |   25 |          22 |
|          11 | Rahul Das      |   25 |          22 |
|           4 | Priya Nair     |   25 |          22 |
|           1 | Aarav Sharma   |   24 |          27 |
|          37 | Kabir Arora    |   24 |          27 |
|          30 | Shreya Ghosh   |   24 |          27 |
|          15 | Siddharth Rao  |   24 |          27 |
|           8 | Neha Gupta     |   24 |          27 |
|          20 | Aditi Kulkarni |   24 |          27 |
|          17 | Nikhil Kumar   |   23 |          33 |
|          33 | Yash Thakur    |   23 |          33 |
|           2 | Ananya Iyer    |   23 |          33 |
|          10 | Isha Kapoor    |   23 |          33 |
|          26 | Tanya Arora    |   23 |          33 |
|           6 | Kavya Reddy    |   22 |          38 |
|          23 | Dev Agarwal    |   22 |          38 |
|          40 | Lakshmi Iyer   |   22 |          38 |
+-------------+----------------+------+-------------+
40 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select product_id, product_name, unit_price, rank() over (order by unit_price desc) as price_rank from products;
+------------+---------------------+------------+------------+
| product_id | product_name        | unit_price | price_rank |
+------------+---------------------+------------+------------+
|        108 | Running Shoes       |       2499 |          1 |
|        103 | Bluetooth Speaker   |       1999 |          2 |
|        110 | Analog Watch        |       1799 |          3 |
|        114 | Bed Sheet Set       |       1599 |          4 |
|        105 | Power Bank 10000mAh |       1499 |          5 |
|        107 | Denim Jeans         |       1499 |          5 |
|        104 | Laptop Stand        |       1299 |          7 |
|        115 | Non-Stick Pan       |       1299 |          7 |
|        109 | Backpack            |       1199 |          9 |
|        119 | Yoga Mat            |        999 |         10 |
|        113 | LED Desk Lamp       |        899 |         11 |
|        101 | Wireless Mouse      |        799 |         12 |
|        124 | Protein Bar Pack    |        799 |         12 |
|        118 | Desk Organizer      |        699 |         14 |
|        122 | Sunscreen SPF 50    |        649 |         15 |
|        106 | Cotton T-Shirt      |        599 |         16 |
|        120 | Resistance Bands    |        549 |         17 |
|        111 | Water Bottle        |        499 |         18 |
|        123 | Shampoo             |        449 |         19 |
|        121 | Face Wash           |        399 |         20 |
|        112 | Coffee Mug          |        349 |         21 |
|        125 | Green Tea Pack      |        349 |         21 |
|        102 | USB-C Cable         |        299 |         23 |
|        116 | Notebook Pack       |        249 |         24 |
|        117 | Gel Pen Set         |        199 |         25 |
+------------+---------------------+------------+------------+
25 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select product_id, product_name, stock_quantity, rank() over (order by stock_quantity desc) as stock_rank from products;
+------------+---------------------+----------------+------------+
| product_id | product_name        | stock_quantity | stock_rank |
+------------+---------------------+----------------+------------+
|        102 | USB-C Cable         |            300 |          1 |
|        116 | Notebook Pack       |            250 |          2 |
|        117 | Gel Pen Set         |            230 |          3 |
|        111 | Water Bottle        |            220 |          4 |
|        125 | Green Tea Pack      |            210 |          5 |
|        106 | Cotton T-Shirt      |            200 |          6 |
|        123 | Shampoo             |            190 |          7 |
|        112 | Coffee Mug          |            180 |          8 |
|        121 | Face Wash           |            170 |          9 |
|        124 | Protein Bar Pack    |            160 |         10 |
|        101 | Wireless Mouse      |            150 |         11 |
|        122 | Sunscreen SPF 50    |            145 |         12 |
|        120 | Resistance Bands    |            140 |         13 |
|        119 | Yoga Mat            |            130 |         14 |
|        107 | Denim Jeans         |            120 |         15 |
|        105 | Power Bank 10000mAh |            110 |         16 |
|        113 | LED Desk Lamp       |            100 |         17 |
|        109 | Backpack            |             95 |         18 |
|        104 | Laptop Stand        |             90 |         19 |
|        118 | Desk Organizer      |             90 |         19 |
|        115 | Non-Stick Pan       |             85 |         21 |
|        103 | Bluetooth Speaker   |             80 |         22 |
|        108 | Running Shoes       |             75 |         23 |
|        114 | Bed Sheet Set       |             70 |         24 |
|        110 | Analog Watch        |             65 |         25 |
+------------+---------------------+----------------+------------+
25 rows in set (0.002 sec)

MariaDB [ecommerce_sales]> select customer_id, customer_name, age, dense_rank() over ( order by age desc) as age_rank from customers;
+-------------+----------------+------+----------+
| customer_id | customer_name  | age  | age_rank |
+-------------+----------------+------+----------+
|          19 | Manish Yadav   |   31 |        1 |
|          13 | Karan Malhotra |   30 |        2 |
|          31 | Ritesh Sinha   |   30 |        2 |
|           9 | Aditya Verma   |   29 |        3 |
|          35 | Saurabh Tiwari |   29 |        3 |
|          24 | Nandini Bose   |   29 |        3 |
|           5 | Vikram Singh   |   28 |        4 |
|          25 | Akash Mishra   |   28 |        4 |
|          39 | Aman Khurana   |   28 |        4 |
|          16 | Pooja Bansal   |   28 |        4 |
|          32 | Anjali Desai   |   28 |        4 |
|          21 | Harsh Jain     |   27 |        5 |
|          38 | Ritu Sood      |   27 |        5 |
|           7 | Arjun Patel    |   27 |        5 |
|          12 | Sneha Joshi    |   27 |        5 |
|          28 | Divya Menon    |   27 |        5 |
|          14 | Meera Shah     |   26 |        6 |
|          22 | Simran Kaur    |   26 |        6 |
|           3 | Rohan Mehta    |   26 |        6 |
|          27 | Varun Chawla   |   26 |        6 |
|          36 | Ira Mukherjee  |   26 |        6 |
|          29 | Mohit Saxena   |   25 |        7 |
|          18 | Riya Sen       |   25 |        7 |
|          34 | Manya Khanna   |   25 |        7 |
|          11 | Rahul Das      |   25 |        7 |
|           4 | Priya Nair     |   25 |        7 |
|           1 | Aarav Sharma   |   24 |        8 |
|          37 | Kabir Arora    |   24 |        8 |
|          30 | Shreya Ghosh   |   24 |        8 |
|          15 | Siddharth Rao  |   24 |        8 |
|           8 | Neha Gupta     |   24 |        8 |
|          20 | Aditi Kulkarni |   24 |        8 |
|          17 | Nikhil Kumar   |   23 |        9 |
|          33 | Yash Thakur    |   23 |        9 |
|           2 | Ananya Iyer    |   23 |        9 |
|          10 | Isha Kapoor    |   23 |        9 |
|          26 | Tanya Arora    |   23 |        9 |
|           6 | Kavya Reddy    |   22 |       10 |
|          23 | Dev Agarwal    |   22 |       10 |
|          40 | Lakshmi Iyer   |   22 |       10 |
+-------------+----------------+------+----------+
40 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select product_id, product_name, unit_price, row_number() over (order by unit_price desc) as price_rank from products;
+------------+---------------------+------------+------------+
| product_id | product_name        | unit_price | price_rank |
+------------+---------------------+------------+------------+
|        108 | Running Shoes       |       2499 |          1 |
|        103 | Bluetooth Speaker   |       1999 |          2 |
|        110 | Analog Watch        |       1799 |          3 |
|        114 | Bed Sheet Set       |       1599 |          4 |
|        105 | Power Bank 10000mAh |       1499 |          5 |
|        107 | Denim Jeans         |       1499 |          6 |
|        104 | Laptop Stand        |       1299 |          7 |
|        115 | Non-Stick Pan       |       1299 |          8 |
|        109 | Backpack            |       1199 |          9 |
|        119 | Yoga Mat            |        999 |         10 |
|        113 | LED Desk Lamp       |        899 |         11 |
|        101 | Wireless Mouse      |        799 |         12 |
|        124 | Protein Bar Pack    |        799 |         13 |
|        118 | Desk Organizer      |        699 |         14 |
|        122 | Sunscreen SPF 50    |        649 |         15 |
|        106 | Cotton T-Shirt      |        599 |         16 |
|        120 | Resistance Bands    |        549 |         17 |
|        111 | Water Bottle        |        499 |         18 |
|        123 | Shampoo             |        449 |         19 |
|        121 | Face Wash           |        399 |         20 |
|        112 | Coffee Mug          |        349 |         21 |
|        125 | Green Tea Pack      |        349 |         22 |
|        102 | USB-C Cable         |        299 |         23 |
|        116 | Notebook Pack       |        249 |         24 |
|        117 | Gel Pen Set         |        199 |         25 |
+------------+---------------------+------------+------------+
25 rows in set (0.002 sec)

MariaDB [ecommerce_sales]> select customer_id, customer_name, row_number() over ( order by customer_name asc) as customers_alphabetically from customers;
+-------------+----------------+--------------------------+
| customer_id | customer_name  | customers_alphabetically |
+-------------+----------------+--------------------------+
|           1 | Aarav Sharma   |                        1 |
|          20 | Aditi Kulkarni |                        2 |
|           9 | Aditya Verma   |                        3 |
|          25 | Akash Mishra   |                        4 |
|          39 | Aman Khurana   |                        5 |
|           2 | Ananya Iyer    |                        6 |
|          32 | Anjali Desai   |                        7 |
|           7 | Arjun Patel    |                        8 |
|          23 | Dev Agarwal    |                        9 |
|          28 | Divya Menon    |                       10 |
|          21 | Harsh Jain     |                       11 |
|          36 | Ira Mukherjee  |                       12 |
|          10 | Isha Kapoor    |                       13 |
|          37 | Kabir Arora    |                       14 |
|          13 | Karan Malhotra |                       15 |
|           6 | Kavya Reddy    |                       16 |
|          40 | Lakshmi Iyer   |                       17 |
|          19 | Manish Yadav   |                       18 |
|          34 | Manya Khanna   |                       19 |
|          14 | Meera Shah     |                       20 |
|          29 | Mohit Saxena   |                       21 |
|          24 | Nandini Bose   |                       22 |
|           8 | Neha Gupta     |                       23 |
|          17 | Nikhil Kumar   |                       24 |
|          16 | Pooja Bansal   |                       25 |
|           4 | Priya Nair     |                       26 |
|          11 | Rahul Das      |                       27 |
|          31 | Ritesh Sinha   |                       28 |
|          38 | Ritu Sood      |                       29 |
|          18 | Riya Sen       |                       30 |
|           3 | Rohan Mehta    |                       31 |
|          35 | Saurabh Tiwari |                       32 |
|          30 | Shreya Ghosh   |                       33 |
|          15 | Siddharth Rao  |                       34 |
|          22 | Simran Kaur    |                       35 |
|          12 | Sneha Joshi    |                       36 |
|          26 | Tanya Arora    |                       37 |
|          27 | Varun Chawla   |                       38 |
|           5 | Vikram Singh   |                       39 |
|          33 | Yash Thakur    |                       40 |
+-------------+----------------+--------------------------+
40 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select order_id, quantity, unit_price, (quantity * unit_price) as order_value, row_number() over (order by order_value desc) as order_value_row from orders;
+----------+----------+------------+-------------+-----------------+
| order_id | quantity | unit_price | order_value | order_value_row |
+----------+----------+------------+-------------+-----------------+
|     1053 |        4 |       2499 |        9996 |               1 |
|     1153 |        4 |       2249 |        8996 |               2 |
|     1073 |        4 |       1999 |        7996 |               3 |
|     1173 |        4 |       1999 |        7996 |               4 |
|     1178 |        3 |       2499 |        7497 |               5 |
|     1085 |        4 |       1799 |        7196 |               6 |
|     1049 |        4 |       1599 |        6396 |               7 |
|     1149 |        4 |       1599 |        6396 |               8 |
|     1078 |        3 |       2124 |        6372 |               9 |
|     1098 |        3 |       1999 |        5997 |              10 |
|     1105 |        4 |       1499 |        5996 |              11 |
|     1137 |        4 |       1499 |        5996 |              12 |
|     1005 |        4 |       1499 |        5996 |              13 |
|     1037 |        4 |       1499 |        5996 |              14 |
|     1010 |        3 |       1799 |        5397 |              15 |
|     1110 |        3 |       1799 |        5397 |              16 |
|     1089 |        4 |       1299 |        5196 |              17 |
|     1165 |        4 |       1299 |        5196 |              18 |
|     1003 |        2 |       2499 |        4998 |              19 |
|     1103 |        2 |       2499 |        4998 |              20 |
|     1074 |        3 |       1599 |        4797 |              21 |
|     1174 |        3 |       1599 |        4797 |              22 |
|     1069 |        4 |       1199 |        4796 |              23 |
|     1030 |        3 |       1499 |        4497 |              24 |
|     1062 |        3 |       1499 |        4497 |              25 |
|     1065 |        4 |       1104 |        4416 |              26 |
|     1169 |        4 |       1019 |        4076 |              27 |
|     1162 |        3 |       1349 |        4047 |              28 |
|     1123 |        2 |       1999 |        3998 |              29 |
|     1023 |        2 |       1999 |        3998 |              30 |
|     1129 |        4 |        999 |        3996 |              31 |
|     1029 |        4 |        999 |        3996 |              32 |
|     1114 |        3 |       1299 |        3897 |              33 |
|     1014 |        3 |       1299 |        3897 |              34 |
|     1130 |        3 |       1274 |        3822 |              35 |
|     1035 |        2 |       1799 |        3598 |              36 |
|     1094 |        3 |       1199 |        3597 |              37 |
|     1033 |        4 |        899 |        3596 |              38 |
|     1133 |        4 |        899 |        3596 |              39 |
|     1090 |        3 |       1169 |        3507 |              40 |
|     1135 |        2 |       1619 |        3238 |              41 |
|     1041 |        4 |        799 |        3196 |              42 |
|     1109 |        4 |        799 |        3196 |              43 |
|     1141 |        4 |        799 |        3196 |              44 |
|     1155 |        2 |       1499 |        2998 |              45 |
|     1055 |        2 |       1499 |        2998 |              46 |
|     1087 |        2 |       1499 |        2998 |              47 |
|     1154 |        3 |        999 |        2997 |              48 |
|     1099 |        2 |       1439 |        2878 |              49 |
|     1009 |        4 |        719 |        2876 |              50 |
|     1113 |        4 |        699 |        2796 |              51 |
|     1058 |        3 |        899 |        2697 |              52 |
|     1054 |        3 |        899 |        2697 |              53 |
|     1158 |        3 |        899 |        2697 |              54 |
|     1115 |        2 |       1299 |        2598 |              55 |
|     1139 |        2 |       1299 |        2598 |              56 |
|     1015 |        2 |       1299 |        2598 |              57 |
|     1177 |        4 |        649 |        2596 |              58 |
|     1077 |        4 |        649 |        2596 |              59 |
|     1128 |        1 |       2499 |        2499 |              60 |
|     1028 |        1 |       2499 |        2499 |              61 |
|     1019 |        2 |       1199 |        2398 |              62 |
|     1119 |        2 |       1199 |        2398 |              63 |
|     1034 |        3 |        799 |        2397 |              64 |
|     1066 |        3 |        799 |        2397 |              65 |
|     1134 |        3 |        799 |        2397 |              66 |
|     1166 |        3 |        799 |        2397 |              67 |
|     1121 |        4 |        599 |        2396 |              68 |
|     1021 |        4 |        599 |        2396 |              69 |
|     1013 |        4 |        594 |        2376 |              70 |
|     1039 |        2 |       1104 |        2208 |              71 |
|     1145 |        4 |        549 |        2196 |              72 |
|     1138 |        3 |        699 |        2097 |              73 |
|     1038 |        3 |        699 |        2097 |              74 |
|     1048 |        1 |       1999 |        1999 |              75 |
|     1148 |        1 |       1999 |        1999 |              76 |
|     1179 |        2 |        999 |        1998 |              77 |
|     1079 |        2 |        999 |        1998 |              78 |
|     1001 |        4 |        499 |        1996 |              79 |
|     1101 |        4 |        499 |        1996 |              80 |
|     1045 |        4 |        494 |        1976 |              81 |
|     1002 |        3 |        649 |        1947 |              82 |
|     1102 |        3 |        649 |        1947 |              83 |
|     1160 |        1 |       1799 |        1799 |              84 |
|     1060 |        1 |       1799 |        1799 |              85 |
|     1083 |        2 |        899 |        1798 |              86 |
|     1146 |        3 |        599 |        1797 |              87 |
|     1046 |        3 |        599 |        1797 |              88 |
|     1093 |        4 |        449 |        1796 |              89 |
|     1170 |        3 |        549 |        1647 |              90 |
|     1070 |        3 |        549 |        1647 |              91 |
|     1024 |        1 |       1599 |        1599 |              92 |
|     1124 |        1 |       1599 |        1599 |              93 |
|     1059 |        2 |        799 |        1598 |              94 |
|     1159 |        2 |        799 |        1598 |              95 |
|     1161 |        4 |        399 |        1596 |              96 |
|     1061 |        4 |        399 |        1596 |              97 |
|     1080 |        1 |       1499 |        1499 |              98 |
|     1112 |        1 |       1499 |        1499 |              99 |
|     1012 |        1 |       1499 |        1499 |             100 |
|     1163 |        2 |        699 |        1398 |             101 |
|     1017 |        4 |        349 |        1396 |             102 |
|     1025 |        4 |        349 |        1396 |             103 |
|     1125 |        4 |        349 |        1396 |             104 |
|     1091 |        2 |        679 |        1358 |             105 |
|     1180 |        1 |       1349 |        1349 |             106 |
|     1118 |        3 |        449 |        1347 |             107 |
|     1126 |        3 |        449 |        1347 |             108 |
|     1040 |        1 |       1299 |        1299 |             109 |
|     1064 |        1 |       1299 |        1299 |             110 |
|     1140 |        1 |       1299 |        1299 |             111 |
|     1164 |        1 |       1299 |        1299 |             112 |
|     1127 |        2 |        649 |        1298 |             113 |
|     1026 |        3 |        424 |        1272 |             114 |
|     1063 |        2 |        629 |        1258 |             115 |
|     1117 |        4 |        314 |        1256 |             116 |
|     1018 |        3 |        404 |        1212 |             117 |
|     1044 |        1 |       1199 |        1199 |             118 |
|     1071 |        2 |        599 |        1198 |             119 |
|     1086 |        3 |        399 |        1197 |             120 |
|     1057 |        4 |        299 |        1196 |             121 |
|     1157 |        4 |        299 |        1196 |             122 |
|     1027 |        2 |        584 |        1168 |             123 |
|     1095 |        2 |        549 |        1098 |             124 |
|     1144 |        1 |       1079 |        1079 |             125 |
|     1171 |        2 |        539 |        1078 |             126 |
|     1042 |        3 |        349 |        1047 |             127 |
|     1050 |        3 |        349 |        1047 |             128 |
|     1142 |        3 |        349 |        1047 |             129 |
|     1150 |        3 |        349 |        1047 |             130 |
|     1004 |        1 |        999 |         999 |             131 |
|     1051 |        2 |        499 |         998 |             132 |
|     1151 |        2 |        499 |         998 |             133 |
|     1008 |        1 |        899 |         899 |             134 |
|     1043 |        2 |        449 |         898 |             135 |
|     1082 |        3 |        299 |         897 |             136 |
|     1081 |        4 |        224 |         896 |             137 |
|     1104 |        1 |        849 |         849 |             138 |
|     1108 |        1 |        809 |         809 |             139 |
|     1016 |        1 |        799 |         799 |             140 |
|     1084 |        1 |        799 |         799 |             141 |
|     1116 |        1 |        799 |         799 |             142 |
|     1011 |        2 |        399 |         798 |             143 |
|     1111 |        2 |        399 |         798 |             144 |
|     1097 |        4 |        199 |         796 |             145 |
|     1143 |        2 |        382 |         764 |             146 |
|     1106 |        3 |        249 |         747 |             147 |
|     1006 |        3 |        249 |         747 |             148 |
|     1088 |        1 |        699 |         699 |             149 |
|     1067 |        2 |        349 |         698 |             150 |
|     1075 |        2 |        349 |         698 |             151 |
|     1175 |        2 |        349 |         698 |             152 |
|     1167 |        2 |        349 |         698 |             153 |
|     1152 |        1 |        649 |         649 |             154 |
|     1096 |        1 |        599 |         599 |             155 |
|     1107 |        2 |        299 |         598 |             156 |
|     1007 |        2 |        299 |         598 |             157 |
|     1122 |        3 |        199 |         597 |             158 |
|     1022 |        3 |        199 |         597 |             159 |
|     1052 |        1 |        552 |         552 |             160 |
|     1120 |        1 |        549 |         549 |             161 |
|     1020 |        1 |        549 |         549 |             162 |
|     1176 |        1 |        499 |         499 |             163 |
|     1076 |        1 |        499 |         499 |             164 |
|     1131 |        2 |        249 |         498 |             165 |
|     1031 |        2 |        249 |         498 |             166 |
|     1168 |        1 |        449 |         449 |             167 |
|     1068 |        1 |        449 |         449 |             168 |
|     1136 |        1 |        399 |         399 |             169 |
|     1147 |        2 |        199 |         398 |             170 |
|     1047 |        2 |        199 |         398 |             171 |
|     1036 |        1 |        359 |         359 |             172 |
|     1092 |        1 |        349 |         349 |             173 |
|     1100 |        1 |        349 |         349 |             174 |
|     1032 |        1 |        299 |         299 |             175 |
|     1132 |        1 |        299 |         299 |             176 |
|     1056 |        1 |        249 |         249 |             177 |
|     1156 |        1 |        212 |         212 |             178 |
|     1172 |        1 |        199 |         199 |             179 |
|     1072 |        1 |        179 |         179 |             180 |
+----------+----------+------------+-------------+-----------------+
180 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> select product_id, product_name, category, unit_price, row_number() over (partition by category order by unit_price desc) row_number_in_category from products order by category, row_number_in_category;
+------------+---------------------+----------------+------------+------------------------+
| product_id | product_name        | category       | unit_price | row_number_in_category |
+------------+---------------------+----------------+------------+------------------------+
|        122 | Sunscreen SPF 50    | Beauty         |        649 |                      1 |
|        123 | Shampoo             | Beauty         |        449 |                      2 |
|        121 | Face Wash           | Beauty         |        399 |                      3 |
|        103 | Bluetooth Speaker   | Electronics    |       1999 |                      1 |
|        105 | Power Bank 10000mAh | Electronics    |       1499 |                      2 |
|        104 | Laptop Stand        | Electronics    |       1299 |                      3 |
|        101 | Wireless Mouse      | Electronics    |        799 |                      4 |
|        102 | USB-C Cable         | Electronics    |        299 |                      5 |
|        108 | Running Shoes       | Fashion        |       2499 |                      1 |
|        110 | Analog Watch        | Fashion        |       1799 |                      2 |
|        107 | Denim Jeans         | Fashion        |       1499 |                      3 |
|        109 | Backpack            | Fashion        |       1199 |                      4 |
|        106 | Cotton T-Shirt      | Fashion        |        599 |                      5 |
|        124 | Protein Bar Pack    | Grocery        |        799 |                      1 |
|        125 | Green Tea Pack      | Grocery        |        349 |                      2 |
|        114 | Bed Sheet Set       | Home & Kitchen |       1599 |                      1 |
|        115 | Non-Stick Pan       | Home & Kitchen |       1299 |                      2 |
|        113 | LED Desk Lamp       | Home & Kitchen |        899 |                      3 |
|        111 | Water Bottle        | Home & Kitchen |        499 |                      4 |
|        112 | Coffee Mug          | Home & Kitchen |        349 |                      5 |
|        119 | Yoga Mat            | Sports         |        999 |                      1 |
|        120 | Resistance Bands    | Sports         |        549 |                      2 |
|        118 | Desk Organizer      | Stationery     |        699 |                      1 |
|        116 | Notebook Pack       | Stationery     |        249 |                      2 |
|        117 | Gel Pen Set         | Stationery     |        199 |                      3 |
+------------+---------------------+----------------+------------+------------------------+
25 rows in set (0.028 sec)

MariaDB [ecommerce_sales]>
