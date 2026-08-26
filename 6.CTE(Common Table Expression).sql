
Setting environment for using XAMPP for Windows.
Megha@LAPTOP-81T7F96S c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use ecommerce;
Database changed
MariaDB [ecommerce]> use ecommerce_sales;
Database changed
MariaDB [ecommerce_sales]> select * from customers;
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
|          33 | Yash Thakur    | Male   |   23 | Indore     | Madhya Pradesh | 08-01-2025  |
|          34 | Manya Khanna   | Female |   25 | Noida      | Uttar Pradesh  | 17-01-2025  |
|          35 | Saurabh Tiwari | Male   |   29 | Gurugram   | Haryana        | 28-01-2025  |
|          36 | Ira Mukherjee  | Female |   26 | Kolkata    | West Bengal    | 10-02-2025  |
|          37 | Kabir Arora    | Male   |   24 | Delhi      | Delhi          | 18-02-2025  |
|          38 | Ritu Sood      | Female |   27 | Chennai    | Tamil Nadu     | 03-03-2025  |
|          39 | Aman Khurana   | Male   |   28 | Pune       | Maharashtra    | 15-03-2025  |
|          40 | Lakshmi Iyer   | Female |   22 | Bengaluru  | Karnataka      | 26-03-2025  |
+-------------+----------------+--------+------+------------+----------------+-------------+
40 rows in set (0.029 sec)

MariaDB [ecommerce_sales]> select * from products;
+------------+---------------------+----------------+------------+----------------+
| product_id | product_name        | category       | unit_price | stock_quantity |
+------------+---------------------+----------------+------------+----------------+
|        101 | Wireless Mouse      | Electronics    |        799 |            150 |
|        102 | USB-C Cable         | Electronics    |        299 |            300 |
|        103 | Bluetooth Speaker   | Electronics    |       1999 |             80 |
|        104 | Laptop Stand        | Electronics    |       1299 |             90 |
|        105 | Power Bank 10000mAh | Electronics    |       1499 |            110 |
|        106 | Cotton T-Shirt      | Fashion        |        599 |            200 |
|        107 | Denim Jeans         | Fashion        |       1499 |            120 |
|        108 | Running Shoes       | Fashion        |       2499 |             75 |
|        109 | Backpack            | Fashion        |       1199 |             95 |
|        110 | Analog Watch        | Fashion        |       1799 |             65 |
|        111 | Water Bottle        | Home & Kitchen |        499 |            220 |
|        112 | Coffee Mug          | Home & Kitchen |        349 |            180 |
|        113 | LED Desk Lamp       | Home & Kitchen |        899 |            100 |
|        114 | Bed Sheet Set       | Home & Kitchen |       1599 |             70 |
|        115 | Non-Stick Pan       | Home & Kitchen |       1299 |             85 |
|        116 | Notebook Pack       | Stationery     |        249 |            250 |
|        117 | Gel Pen Set         | Stationery     |        199 |            230 |
|        118 | Desk Organizer      | Stationery     |        699 |             90 |
|        119 | Yoga Mat            | Sports         |        999 |            130 |
|        120 | Resistance Bands    | Sports         |        549 |            140 |
|        121 | Face Wash           | Beauty         |        399 |            170 |
|        122 | Sunscreen SPF 50    | Beauty         |        649 |            145 |
|        123 | Shampoo             | Beauty         |        449 |            190 |
|        124 | Protein Bar Pack    | Grocery        |        799 |            160 |
|        125 | Green Tea Pack      | Grocery        |        349 |            210 |
+------------+---------------------+----------------+------------+----------------+
25 rows in set (0.008 sec)

MariaDB [ecommerce_sales]> select * from orders;
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
| order_id | customer_id | product_id | order_date | quantity | unit_price | payment_method   | order_status |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
|     1001 |           7 |        111 | 14-01-2025 |        4 |        499 | Credit Card      | Delivered    |
|     1002 |          14 |        122 | 27-01-2025 |        3 |        649 | Debit Card       | Delivered    |
|     1003 |          21 |        108 | 09-02-2025 |        2 |       2499 | Cash on Delivery | Delivered    |
|     1004 |          28 |        119 | 22-02-2025 |        1 |        999 | UPI              | Delivered    |
|     1005 |          35 |        105 | 07-03-2025 |        4 |       1499 | Credit Card      | Cancelled    |
|     1006 |           2 |        116 | 20-03-2025 |        3 |        249 | Debit Card       | Returned     |
|     1007 |           9 |        102 | 02-04-2025 |        2 |        299 | Cash on Delivery | Delivered    |
|     1008 |          16 |        113 | 15-04-2025 |        1 |        899 | UPI              | Delivered    |
|     1009 |          23 |        124 | 28-04-2025 |        4 |        719 | Credit Card      | Delivered    |
|     1010 |          30 |        110 | 11-05-2025 |        3 |       1799 | Debit Card       | Delivered    |
|     1011 |          37 |        121 | 24-05-2025 |        2 |        399 | Cash on Delivery | Delivered    |
|     1012 |           4 |        107 | 06-06-2025 |        1 |       1499 | UPI              | Cancelled    |
|     1013 |          11 |        118 | 19-06-2025 |        4 |        594 | Credit Card      | Returned     |
|     1014 |          18 |        104 | 02-07-2025 |        3 |       1299 | Debit Card       | Delivered    |
|     1015 |          25 |        115 | 15-07-2025 |        2 |       1299 | Cash on Delivery | Delivered    |
|     1016 |          32 |        101 | 28-07-2025 |        1 |        799 | UPI              | Delivered    |
|     1017 |          39 |        112 | 12-01-2025 |        4 |        349 | Credit Card      | Delivered    |
|     1018 |           6 |        123 | 25-01-2025 |        3 |        404 | Debit Card       | Delivered    |
|     1019 |          13 |        109 | 07-02-2025 |        2 |       1199 | Cash on Delivery | Cancelled    |
|     1020 |          20 |        120 | 20-02-2025 |        1 |        549 | UPI              | Returned     |
|     1021 |          27 |        106 | 05-03-2025 |        4 |        599 | Credit Card      | Delivered    |
|     1022 |          34 |        117 | 18-03-2025 |        3 |        199 | Debit Card       | Delivered    |
|     1023 |           1 |        103 | 31-03-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1024 |           8 |        114 | 13-04-2025 |        1 |       1599 | UPI              | Delivered    |
|     1025 |          15 |        125 | 26-04-2025 |        4 |        349 | Credit Card      | Delivered    |
|     1026 |          22 |        111 | 09-05-2025 |        3 |        424 | Debit Card       | Cancelled    |
|     1027 |          29 |        122 | 22-05-2025 |        2 |        584 | Cash on Delivery | Returned     |
|     1028 |          36 |        108 | 04-06-2025 |        1 |       2499 | UPI              | Delivered    |
|     1029 |           3 |        119 | 17-06-2025 |        4 |        999 | Credit Card      | Delivered    |
|     1030 |          10 |        105 | 30-06-2025 |        3 |       1499 | Debit Card       | Delivered    |
|     1031 |          17 |        116 | 13-07-2025 |        2 |        249 | Cash on Delivery | Delivered    |
|     1032 |          24 |        102 | 26-07-2025 |        1 |        299 | UPI              | Delivered    |
|     1033 |          31 |        113 | 10-01-2025 |        4 |        899 | Credit Card      | Cancelled    |
|     1034 |          38 |        124 | 23-01-2025 |        3 |        799 | Debit Card       | Returned     |
|     1035 |           5 |        110 | 05-02-2025 |        2 |       1799 | Cash on Delivery | Delivered    |
|     1036 |          12 |        121 | 18-02-2025 |        1 |        359 | UPI              | Delivered    |
|     1037 |          19 |        107 | 03-03-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1038 |          26 |        118 | 16-03-2025 |        3 |        699 | Debit Card       | Delivered    |
|     1039 |          33 |        104 | 29-03-2025 |        2 |       1104 | Cash on Delivery | Delivered    |
|     1040 |          40 |        115 | 11-04-2025 |        1 |       1299 | UPI              | Cancelled    |
|     1041 |           7 |        101 | 24-04-2025 |        4 |        799 | Credit Card      | Returned     |
|     1042 |          14 |        112 | 07-05-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1043 |          21 |        123 | 20-05-2025 |        2 |        449 | Cash on Delivery | Delivered    |
|     1044 |          28 |        109 | 02-06-2025 |        1 |       1199 | UPI              | Delivered    |
|     1045 |          35 |        120 | 15-06-2025 |        4 |        494 | Credit Card      | Delivered    |
|     1046 |           2 |        106 | 28-06-2025 |        3 |        599 | Debit Card       | Delivered    |
|     1047 |           9 |        117 | 11-07-2025 |        2 |        199 | Cash on Delivery | Cancelled    |
|     1048 |          16 |        103 | 24-07-2025 |        1 |       1999 | UPI              | Returned     |
|     1049 |          23 |        114 | 08-01-2025 |        4 |       1599 | Credit Card      | Delivered    |
|     1050 |          30 |        125 | 21-01-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1051 |          37 |        111 | 03-02-2025 |        2 |        499 | Cash on Delivery | Delivered    |
|     1052 |           4 |        122 | 16-02-2025 |        1 |        552 | UPI              | Delivered    |
|     1053 |          11 |        108 | 01-03-2025 |        4 |       2499 | Credit Card      | Delivered    |
|     1054 |          18 |        119 | 14-03-2025 |        3 |        899 | Debit Card       | Cancelled    |
|     1055 |          25 |        105 | 27-03-2025 |        2 |       1499 | Cash on Delivery | Returned     |
|     1056 |          32 |        116 | 09-04-2025 |        1 |        249 | UPI              | Delivered    |
|     1057 |          39 |        102 | 22-04-2025 |        4 |        299 | Credit Card      | Delivered    |
|     1058 |           6 |        113 | 05-05-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1059 |          13 |        124 | 18-05-2025 |        2 |        799 | Cash on Delivery | Delivered    |
|     1060 |          20 |        110 | 31-05-2025 |        1 |       1799 | UPI              | Delivered    |
|     1061 |          27 |        121 | 13-06-2025 |        4 |        399 | Credit Card      | Cancelled    |
|     1062 |          34 |        107 | 26-06-2025 |        3 |       1499 | Debit Card       | Returned     |
|     1063 |           1 |        118 | 09-07-2025 |        2 |        629 | Cash on Delivery | Delivered    |
|     1064 |           8 |        104 | 22-07-2025 |        1 |       1299 | UPI              | Delivered    |
|     1065 |          15 |        115 | 06-01-2025 |        4 |       1104 | Credit Card      | Delivered    |
|     1066 |          22 |        101 | 19-01-2025 |        3 |        799 | Debit Card       | Delivered    |
|     1067 |          29 |        112 | 01-02-2025 |        2 |        349 | Cash on Delivery | Delivered    |
|     1068 |          36 |        123 | 14-02-2025 |        1 |        449 | UPI              | Cancelled    |
|     1069 |           3 |        109 | 27-02-2025 |        4 |       1199 | Credit Card      | Returned     |
|     1070 |          10 |        120 | 12-03-2025 |        3 |        549 | Debit Card       | Delivered    |
|     1071 |          17 |        106 | 25-03-2025 |        2 |        599 | Cash on Delivery | Delivered    |
|     1072 |          24 |        117 | 07-04-2025 |        1 |        179 | UPI              | Delivered    |
|     1073 |          31 |        103 | 20-04-2025 |        4 |       1999 | Credit Card      | Delivered    |
|     1074 |          38 |        114 | 03-05-2025 |        3 |       1599 | Debit Card       | Delivered    |
|     1075 |           5 |        125 | 16-05-2025 |        2 |        349 | Cash on Delivery | Cancelled    |
|     1076 |          12 |        111 | 29-05-2025 |        1 |        499 | UPI              | Returned     |
|     1077 |          19 |        122 | 11-06-2025 |        4 |        649 | Credit Card      | Delivered    |
|     1078 |          26 |        108 | 24-06-2025 |        3 |       2124 | Debit Card       | Delivered    |
|     1079 |          33 |        119 | 07-07-2025 |        2 |        999 | Cash on Delivery | Delivered    |
|     1080 |          40 |        105 | 20-07-2025 |        1 |       1499 | UPI              | Delivered    |
|     1081 |           7 |        116 | 04-01-2025 |        4 |        224 | Credit Card      | Delivered    |
|     1082 |          14 |        102 | 17-01-2025 |        3 |        299 | Debit Card       | Cancelled    |
|     1083 |          21 |        113 | 30-01-2025 |        2 |        899 | Cash on Delivery | Returned     |
|     1084 |          28 |        124 | 12-02-2025 |        1 |        799 | UPI              | Delivered    |
|     1085 |          35 |        110 | 25-02-2025 |        4 |       1799 | Credit Card      | Delivered    |
|     1086 |           2 |        121 | 10-03-2025 |        3 |        399 | Debit Card       | Delivered    |
|     1087 |           9 |        107 | 23-03-2025 |        2 |       1499 | Cash on Delivery | Delivered    |
|     1088 |          16 |        118 | 05-04-2025 |        1 |        699 | UPI              | Delivered    |
|     1089 |          23 |        104 | 18-04-2025 |        4 |       1299 | Credit Card      | Cancelled    |
|     1090 |          30 |        115 | 01-05-2025 |        3 |       1169 | Debit Card       | Returned     |
|     1091 |          37 |        101 | 14-05-2025 |        2 |        679 | Cash on Delivery | Delivered    |
|     1092 |           4 |        112 | 27-05-2025 |        1 |        349 | UPI              | Delivered    |
|     1093 |          11 |        123 | 09-06-2025 |        4 |        449 | Credit Card      | Delivered    |
|     1094 |          18 |        109 | 22-06-2025 |        3 |       1199 | Debit Card       | Delivered    |
|     1095 |          25 |        120 | 05-07-2025 |        2 |        549 | Cash on Delivery | Delivered    |
|     1096 |          32 |        106 | 18-07-2025 |        1 |        599 | UPI              | Cancelled    |
|     1097 |          39 |        117 | 02-01-2025 |        4 |        199 | Credit Card      | Returned     |
|     1098 |           6 |        103 | 15-01-2025 |        3 |       1999 | Debit Card       | Delivered    |
|     1099 |          13 |        114 | 28-01-2025 |        2 |       1439 | Cash on Delivery | Delivered    |
|     1100 |          20 |        125 | 10-02-2025 |        1 |        349 | UPI              | Delivered    |
|     1101 |          27 |        111 | 23-02-2025 |        4 |        499 | Credit Card      | Delivered    |
|     1102 |          34 |        122 | 08-03-2025 |        3 |        649 | Debit Card       | Delivered    |
|     1103 |           1 |        108 | 21-03-2025 |        2 |       2499 | Cash on Delivery | Cancelled    |
|     1104 |           8 |        119 | 03-04-2025 |        1 |        849 | UPI              | Returned     |
|     1105 |          15 |        105 | 16-04-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1106 |          22 |        116 | 29-04-2025 |        3 |        249 | Debit Card       | Delivered    |
|     1107 |          29 |        102 | 12-05-2025 |        2 |        299 | Cash on Delivery | Delivered    |
|     1108 |          36 |        113 | 25-05-2025 |        1 |        809 | UPI              | Delivered    |
|     1109 |           3 |        124 | 07-06-2025 |        4 |        799 | Credit Card      | Delivered    |
|     1110 |          10 |        110 | 20-06-2025 |        3 |       1799 | Debit Card       | Cancelled    |
|     1111 |          17 |        121 | 03-07-2025 |        2 |        399 | Cash on Delivery | Returned     |
|     1112 |          24 |        107 | 16-07-2025 |        1 |       1499 | UPI              | Delivered    |
|     1113 |          31 |        118 | 29-07-2025 |        4 |        699 | Credit Card      | Delivered    |
|     1114 |          38 |        104 | 13-01-2025 |        3 |       1299 | Debit Card       | Delivered    |
|     1115 |           5 |        115 | 26-01-2025 |        2 |       1299 | Cash on Delivery | Delivered    |
|     1116 |          12 |        101 | 08-02-2025 |        1 |        799 | UPI              | Delivered    |
|     1117 |          19 |        112 | 21-02-2025 |        4 |        314 | Credit Card      | Cancelled    |
|     1118 |          26 |        123 | 06-03-2025 |        3 |        449 | Debit Card       | Returned     |
|     1119 |          33 |        109 | 19-03-2025 |        2 |       1199 | Cash on Delivery | Delivered    |
|     1120 |          40 |        120 | 01-04-2025 |        1 |        549 | UPI              | Delivered    |
|     1121 |           7 |        106 | 14-04-2025 |        4 |        599 | Credit Card      | Delivered    |
|     1122 |          14 |        117 | 27-04-2025 |        3 |        199 | Debit Card       | Delivered    |
|     1123 |          21 |        103 | 10-05-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1124 |          28 |        114 | 23-05-2025 |        1 |       1599 | UPI              | Cancelled    |
|     1125 |          35 |        125 | 05-06-2025 |        4 |        349 | Credit Card      | Returned     |
|     1126 |           2 |        111 | 18-06-2025 |        3 |        449 | Debit Card       | Delivered    |
|     1127 |           9 |        122 | 01-07-2025 |        2 |        649 | Cash on Delivery | Delivered    |
|     1128 |          16 |        108 | 14-07-2025 |        1 |       2499 | UPI              | Delivered    |
|     1129 |          23 |        119 | 27-07-2025 |        4 |        999 | Credit Card      | Delivered    |
|     1130 |          30 |        105 | 11-01-2025 |        3 |       1274 | Debit Card       | Delivered    |
|     1131 |          37 |        116 | 24-01-2025 |        2 |        249 | Cash on Delivery | Cancelled    |
|     1132 |           4 |        102 | 06-02-2025 |        1 |        299 | UPI              | Returned     |
|     1133 |          11 |        113 | 19-02-2025 |        4 |        899 | Credit Card      | Delivered    |
|     1134 |          18 |        124 | 04-03-2025 |        3 |        799 | Debit Card       | Delivered    |
|     1135 |          25 |        110 | 17-03-2025 |        2 |       1619 | Cash on Delivery | Delivered    |
|     1136 |          32 |        121 | 30-03-2025 |        1 |        399 | UPI              | Delivered    |
|     1137 |          39 |        107 | 12-04-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1138 |           6 |        118 | 25-04-2025 |        3 |        699 | Debit Card       | Cancelled    |
|     1139 |          13 |        104 | 08-05-2025 |        2 |       1299 | Cash on Delivery | Returned     |
|     1140 |          20 |        115 | 21-05-2025 |        1 |       1299 | UPI              | Delivered    |
|     1141 |          27 |        101 | 03-06-2025 |        4 |        799 | Credit Card      | Delivered    |
|     1142 |          34 |        112 | 16-06-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1143 |           1 |        123 | 29-06-2025 |        2 |        382 | Cash on Delivery | Delivered    |
|     1144 |           8 |        109 | 12-07-2025 |        1 |       1079 | UPI              | Delivered    |
|     1145 |          15 |        120 | 25-07-2025 |        4 |        549 | Credit Card      | Cancelled    |
|     1146 |          22 |        106 | 09-01-2025 |        3 |        599 | Debit Card       | Returned     |
|     1147 |          29 |        117 | 22-01-2025 |        2 |        199 | Cash on Delivery | Delivered    |
|     1148 |          36 |        103 | 04-02-2025 |        1 |       1999 | UPI              | Delivered    |
|     1149 |           3 |        114 | 17-02-2025 |        4 |       1599 | Credit Card      | Delivered    |
|     1150 |          10 |        125 | 02-03-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1151 |          17 |        111 | 15-03-2025 |        2 |        499 | Cash on Delivery | Delivered    |
|     1152 |          24 |        122 | 28-03-2025 |        1 |        649 | UPI              | Cancelled    |
|     1153 |          31 |        108 | 10-04-2025 |        4 |       2249 | Credit Card      | Returned     |
|     1154 |          38 |        119 | 23-04-2025 |        3 |        999 | Debit Card       | Delivered    |
|     1155 |           5 |        105 | 06-05-2025 |        2 |       1499 | Cash on Delivery | Delivered    |
|     1156 |          12 |        116 | 19-05-2025 |        1 |        212 | UPI              | Delivered    |
|     1157 |          19 |        102 | 01-06-2025 |        4 |        299 | Credit Card      | Delivered    |
|     1158 |          26 |        113 | 14-06-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1159 |          33 |        124 | 27-06-2025 |        2 |        799 | Cash on Delivery | Cancelled    |
|     1160 |          40 |        110 | 10-07-2025 |        1 |       1799 | UPI              | Returned     |
|     1161 |           7 |        121 | 23-07-2025 |        4 |        399 | Credit Card      | Delivered    |
|     1162 |          14 |        107 | 07-01-2025 |        3 |       1349 | Debit Card       | Delivered    |
|     1163 |          21 |        118 | 20-01-2025 |        2 |        699 | Cash on Delivery | Delivered    |
|     1164 |          28 |        104 | 02-02-2025 |        1 |       1299 | UPI              | Delivered    |
|     1165 |          35 |        115 | 15-02-2025 |        4 |       1299 | Credit Card      | Delivered    |
|     1166 |           2 |        101 | 28-02-2025 |        3 |        799 | Debit Card       | Cancelled    |
|     1167 |           9 |        112 | 13-03-2025 |        2 |        349 | Cash on Delivery | Returned     |
|     1168 |          16 |        123 | 26-03-2025 |        1 |        449 | UPI              | Delivered    |
|     1169 |          23 |        109 | 08-04-2025 |        4 |       1019 | Credit Card      | Delivered    |
|     1170 |          30 |        120 | 21-04-2025 |        3 |        549 | Debit Card       | Delivered    |
|     1171 |          37 |        106 | 04-05-2025 |        2 |        539 | Cash on Delivery | Delivered    |
|     1172 |           4 |        117 | 17-05-2025 |        1 |        199 | UPI              | Delivered    |
|     1173 |          11 |        103 | 30-05-2025 |        4 |       1999 | Credit Card      | Cancelled    |
|     1174 |          18 |        114 | 12-06-2025 |        3 |       1599 | Debit Card       | Returned     |
|     1175 |          25 |        125 | 25-06-2025 |        2 |        349 | Cash on Delivery | Delivered    |
|     1176 |          32 |        111 | 08-07-2025 |        1 |        499 | UPI              | Delivered    |
|     1177 |          39 |        122 | 21-07-2025 |        4 |        649 | Credit Card      | Delivered    |
|     1178 |           6 |        108 | 05-01-2025 |        3 |       2499 | Debit Card       | Delivered    |
|     1179 |          13 |        119 | 18-01-2025 |        2 |        999 | Cash on Delivery | Delivered    |
|     1180 |          20 |        105 | 31-01-2025 |        1 |       1349 | UPI              | Cancelled    |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
180 rows in set (0.007 sec)

MariaDB [ecommerce_sales]> with delivered_order as (select * from orders where order_status = "delivered") select * from delivered_orders;
ERROR 1146 (42S02): Table 'ecommerce_sales.delivered_orders' doesn't exist
MariaDB [ecommerce_sales]> with delivered_orders as (select * from orders where order_status = "delivered") select * from delivered_orders;
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
| order_id | customer_id | product_id | order_date | quantity | unit_price | payment_method   | order_status |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
|     1001 |           7 |        111 | 14-01-2025 |        4 |        499 | Credit Card      | Delivered    |
|     1002 |          14 |        122 | 27-01-2025 |        3 |        649 | Debit Card       | Delivered    |
|     1003 |          21 |        108 | 09-02-2025 |        2 |       2499 | Cash on Delivery | Delivered    |
|     1004 |          28 |        119 | 22-02-2025 |        1 |        999 | UPI              | Delivered    |
|     1007 |           9 |        102 | 02-04-2025 |        2 |        299 | Cash on Delivery | Delivered    |
|     1008 |          16 |        113 | 15-04-2025 |        1 |        899 | UPI              | Delivered    |
|     1009 |          23 |        124 | 28-04-2025 |        4 |        719 | Credit Card      | Delivered    |
|     1010 |          30 |        110 | 11-05-2025 |        3 |       1799 | Debit Card       | Delivered    |
|     1011 |          37 |        121 | 24-05-2025 |        2 |        399 | Cash on Delivery | Delivered    |
|     1014 |          18 |        104 | 02-07-2025 |        3 |       1299 | Debit Card       | Delivered    |
|     1015 |          25 |        115 | 15-07-2025 |        2 |       1299 | Cash on Delivery | Delivered    |
|     1016 |          32 |        101 | 28-07-2025 |        1 |        799 | UPI              | Delivered    |
|     1017 |          39 |        112 | 12-01-2025 |        4 |        349 | Credit Card      | Delivered    |
|     1018 |           6 |        123 | 25-01-2025 |        3 |        404 | Debit Card       | Delivered    |
|     1021 |          27 |        106 | 05-03-2025 |        4 |        599 | Credit Card      | Delivered    |
|     1022 |          34 |        117 | 18-03-2025 |        3 |        199 | Debit Card       | Delivered    |
|     1023 |           1 |        103 | 31-03-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1024 |           8 |        114 | 13-04-2025 |        1 |       1599 | UPI              | Delivered    |
|     1025 |          15 |        125 | 26-04-2025 |        4 |        349 | Credit Card      | Delivered    |
|     1028 |          36 |        108 | 04-06-2025 |        1 |       2499 | UPI              | Delivered    |
|     1029 |           3 |        119 | 17-06-2025 |        4 |        999 | Credit Card      | Delivered    |
|     1030 |          10 |        105 | 30-06-2025 |        3 |       1499 | Debit Card       | Delivered    |
|     1031 |          17 |        116 | 13-07-2025 |        2 |        249 | Cash on Delivery | Delivered    |
|     1032 |          24 |        102 | 26-07-2025 |        1 |        299 | UPI              | Delivered    |
|     1035 |           5 |        110 | 05-02-2025 |        2 |       1799 | Cash on Delivery | Delivered    |
|     1036 |          12 |        121 | 18-02-2025 |        1 |        359 | UPI              | Delivered    |
|     1037 |          19 |        107 | 03-03-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1038 |          26 |        118 | 16-03-2025 |        3 |        699 | Debit Card       | Delivered    |
|     1039 |          33 |        104 | 29-03-2025 |        2 |       1104 | Cash on Delivery | Delivered    |
|     1042 |          14 |        112 | 07-05-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1043 |          21 |        123 | 20-05-2025 |        2 |        449 | Cash on Delivery | Delivered    |
|     1044 |          28 |        109 | 02-06-2025 |        1 |       1199 | UPI              | Delivered    |
|     1045 |          35 |        120 | 15-06-2025 |        4 |        494 | Credit Card      | Delivered    |
|     1046 |           2 |        106 | 28-06-2025 |        3 |        599 | Debit Card       | Delivered    |
|     1049 |          23 |        114 | 08-01-2025 |        4 |       1599 | Credit Card      | Delivered    |
|     1050 |          30 |        125 | 21-01-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1051 |          37 |        111 | 03-02-2025 |        2 |        499 | Cash on Delivery | Delivered    |
|     1052 |           4 |        122 | 16-02-2025 |        1 |        552 | UPI              | Delivered    |
|     1053 |          11 |        108 | 01-03-2025 |        4 |       2499 | Credit Card      | Delivered    |
|     1056 |          32 |        116 | 09-04-2025 |        1 |        249 | UPI              | Delivered    |
|     1057 |          39 |        102 | 22-04-2025 |        4 |        299 | Credit Card      | Delivered    |
|     1058 |           6 |        113 | 05-05-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1059 |          13 |        124 | 18-05-2025 |        2 |        799 | Cash on Delivery | Delivered    |
|     1060 |          20 |        110 | 31-05-2025 |        1 |       1799 | UPI              | Delivered    |
|     1063 |           1 |        118 | 09-07-2025 |        2 |        629 | Cash on Delivery | Delivered    |
|     1064 |           8 |        104 | 22-07-2025 |        1 |       1299 | UPI              | Delivered    |
|     1065 |          15 |        115 | 06-01-2025 |        4 |       1104 | Credit Card      | Delivered    |
|     1066 |          22 |        101 | 19-01-2025 |        3 |        799 | Debit Card       | Delivered    |
|     1067 |          29 |        112 | 01-02-2025 |        2 |        349 | Cash on Delivery | Delivered    |
|     1070 |          10 |        120 | 12-03-2025 |        3 |        549 | Debit Card       | Delivered    |
|     1071 |          17 |        106 | 25-03-2025 |        2 |        599 | Cash on Delivery | Delivered    |
|     1072 |          24 |        117 | 07-04-2025 |        1 |        179 | UPI              | Delivered    |
|     1073 |          31 |        103 | 20-04-2025 |        4 |       1999 | Credit Card      | Delivered    |
|     1074 |          38 |        114 | 03-05-2025 |        3 |       1599 | Debit Card       | Delivered    |
|     1077 |          19 |        122 | 11-06-2025 |        4 |        649 | Credit Card      | Delivered    |
|     1078 |          26 |        108 | 24-06-2025 |        3 |       2124 | Debit Card       | Delivered    |
|     1079 |          33 |        119 | 07-07-2025 |        2 |        999 | Cash on Delivery | Delivered    |
|     1080 |          40 |        105 | 20-07-2025 |        1 |       1499 | UPI              | Delivered    |
|     1081 |           7 |        116 | 04-01-2025 |        4 |        224 | Credit Card      | Delivered    |
|     1084 |          28 |        124 | 12-02-2025 |        1 |        799 | UPI              | Delivered    |
|     1085 |          35 |        110 | 25-02-2025 |        4 |       1799 | Credit Card      | Delivered    |
|     1086 |           2 |        121 | 10-03-2025 |        3 |        399 | Debit Card       | Delivered    |
|     1087 |           9 |        107 | 23-03-2025 |        2 |       1499 | Cash on Delivery | Delivered    |
|     1088 |          16 |        118 | 05-04-2025 |        1 |        699 | UPI              | Delivered    |
|     1091 |          37 |        101 | 14-05-2025 |        2 |        679 | Cash on Delivery | Delivered    |
|     1092 |           4 |        112 | 27-05-2025 |        1 |        349 | UPI              | Delivered    |
|     1093 |          11 |        123 | 09-06-2025 |        4 |        449 | Credit Card      | Delivered    |
|     1094 |          18 |        109 | 22-06-2025 |        3 |       1199 | Debit Card       | Delivered    |
|     1095 |          25 |        120 | 05-07-2025 |        2 |        549 | Cash on Delivery | Delivered    |
|     1098 |           6 |        103 | 15-01-2025 |        3 |       1999 | Debit Card       | Delivered    |
|     1099 |          13 |        114 | 28-01-2025 |        2 |       1439 | Cash on Delivery | Delivered    |
|     1100 |          20 |        125 | 10-02-2025 |        1 |        349 | UPI              | Delivered    |
|     1101 |          27 |        111 | 23-02-2025 |        4 |        499 | Credit Card      | Delivered    |
|     1102 |          34 |        122 | 08-03-2025 |        3 |        649 | Debit Card       | Delivered    |
|     1105 |          15 |        105 | 16-04-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1106 |          22 |        116 | 29-04-2025 |        3 |        249 | Debit Card       | Delivered    |
|     1107 |          29 |        102 | 12-05-2025 |        2 |        299 | Cash on Delivery | Delivered    |
|     1108 |          36 |        113 | 25-05-2025 |        1 |        809 | UPI              | Delivered    |
|     1109 |           3 |        124 | 07-06-2025 |        4 |        799 | Credit Card      | Delivered    |
|     1112 |          24 |        107 | 16-07-2025 |        1 |       1499 | UPI              | Delivered    |
|     1113 |          31 |        118 | 29-07-2025 |        4 |        699 | Credit Card      | Delivered    |
|     1114 |          38 |        104 | 13-01-2025 |        3 |       1299 | Debit Card       | Delivered    |
|     1115 |           5 |        115 | 26-01-2025 |        2 |       1299 | Cash on Delivery | Delivered    |
|     1116 |          12 |        101 | 08-02-2025 |        1 |        799 | UPI              | Delivered    |
|     1119 |          33 |        109 | 19-03-2025 |        2 |       1199 | Cash on Delivery | Delivered    |
|     1120 |          40 |        120 | 01-04-2025 |        1 |        549 | UPI              | Delivered    |
|     1121 |           7 |        106 | 14-04-2025 |        4 |        599 | Credit Card      | Delivered    |
|     1122 |          14 |        117 | 27-04-2025 |        3 |        199 | Debit Card       | Delivered    |
|     1123 |          21 |        103 | 10-05-2025 |        2 |       1999 | Cash on Delivery | Delivered    |
|     1126 |           2 |        111 | 18-06-2025 |        3 |        449 | Debit Card       | Delivered    |
|     1127 |           9 |        122 | 01-07-2025 |        2 |        649 | Cash on Delivery | Delivered    |
|     1128 |          16 |        108 | 14-07-2025 |        1 |       2499 | UPI              | Delivered    |
|     1129 |          23 |        119 | 27-07-2025 |        4 |        999 | Credit Card      | Delivered    |
|     1130 |          30 |        105 | 11-01-2025 |        3 |       1274 | Debit Card       | Delivered    |
|     1133 |          11 |        113 | 19-02-2025 |        4 |        899 | Credit Card      | Delivered    |
|     1134 |          18 |        124 | 04-03-2025 |        3 |        799 | Debit Card       | Delivered    |
|     1135 |          25 |        110 | 17-03-2025 |        2 |       1619 | Cash on Delivery | Delivered    |
|     1136 |          32 |        121 | 30-03-2025 |        1 |        399 | UPI              | Delivered    |
|     1137 |          39 |        107 | 12-04-2025 |        4 |       1499 | Credit Card      | Delivered    |
|     1140 |          20 |        115 | 21-05-2025 |        1 |       1299 | UPI              | Delivered    |
|     1141 |          27 |        101 | 03-06-2025 |        4 |        799 | Credit Card      | Delivered    |
|     1142 |          34 |        112 | 16-06-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1143 |           1 |        123 | 29-06-2025 |        2 |        382 | Cash on Delivery | Delivered    |
|     1144 |           8 |        109 | 12-07-2025 |        1 |       1079 | UPI              | Delivered    |
|     1147 |          29 |        117 | 22-01-2025 |        2 |        199 | Cash on Delivery | Delivered    |
|     1148 |          36 |        103 | 04-02-2025 |        1 |       1999 | UPI              | Delivered    |
|     1149 |           3 |        114 | 17-02-2025 |        4 |       1599 | Credit Card      | Delivered    |
|     1150 |          10 |        125 | 02-03-2025 |        3 |        349 | Debit Card       | Delivered    |
|     1151 |          17 |        111 | 15-03-2025 |        2 |        499 | Cash on Delivery | Delivered    |
|     1154 |          38 |        119 | 23-04-2025 |        3 |        999 | Debit Card       | Delivered    |
|     1155 |           5 |        105 | 06-05-2025 |        2 |       1499 | Cash on Delivery | Delivered    |
|     1156 |          12 |        116 | 19-05-2025 |        1 |        212 | UPI              | Delivered    |
|     1157 |          19 |        102 | 01-06-2025 |        4 |        299 | Credit Card      | Delivered    |
|     1158 |          26 |        113 | 14-06-2025 |        3 |        899 | Debit Card       | Delivered    |
|     1161 |           7 |        121 | 23-07-2025 |        4 |        399 | Credit Card      | Delivered    |
|     1162 |          14 |        107 | 07-01-2025 |        3 |       1349 | Debit Card       | Delivered    |
|     1163 |          21 |        118 | 20-01-2025 |        2 |        699 | Cash on Delivery | Delivered    |
|     1164 |          28 |        104 | 02-02-2025 |        1 |       1299 | UPI              | Delivered    |
|     1165 |          35 |        115 | 15-02-2025 |        4 |       1299 | Credit Card      | Delivered    |
|     1168 |          16 |        123 | 26-03-2025 |        1 |        449 | UPI              | Delivered    |
|     1169 |          23 |        109 | 08-04-2025 |        4 |       1019 | Credit Card      | Delivered    |
|     1170 |          30 |        120 | 21-04-2025 |        3 |        549 | Debit Card       | Delivered    |
|     1171 |          37 |        106 | 04-05-2025 |        2 |        539 | Cash on Delivery | Delivered    |
|     1172 |           4 |        117 | 17-05-2025 |        1 |        199 | UPI              | Delivered    |
|     1175 |          25 |        125 | 25-06-2025 |        2 |        349 | Cash on Delivery | Delivered    |
|     1176 |          32 |        111 | 08-07-2025 |        1 |        499 | UPI              | Delivered    |
|     1177 |          39 |        122 | 21-07-2025 |        4 |        649 | Credit Card      | Delivered    |
|     1178 |           6 |        108 | 05-01-2025 |        3 |       2499 | Debit Card       | Delivered    |
|     1179 |          13 |        119 | 18-01-2025 |        2 |        999 | Cash on Delivery | Delivered    |
+----------+-------------+------------+------------+----------+------------+------------------+--------------+
129 rows in set (0.005 sec)
                           with expensive_products as (select product_id,product_name,category,unit_price from products where unit_price > 1with expensive_products as (select product_id,product_name,category,unit_price from products where unit_price > 1000) select * from expensive_products order by
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [ecommerce_sales]> with expensive_products as (select product_id,product_name,category,unit_price from products where unit_price > 1000) select * from expensive_products order by unit_price desc;
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
+------------+---------------------+----------------+------------+
9 rows in set (0.009 sec)

MariaDB [ecommerce_sales]> with delhi_customers as (select customer_id, customer_name, age, city, state from customers where city = "delhi")select * from delhi_customers;
+-------------+----------------+------+-------+-------+
| customer_id | customer_name  | age  | city  | state |
+-------------+----------------+------+-------+-------+
|           1 | Aarav Sharma   |   24 | Delhi | Delhi |
|          13 | Karan Malhotra |   30 | Delhi | Delhi |
|          26 | Tanya Arora    |   23 | Delhi | Delhi |
|          37 | Kabir Arora    |   24 | Delhi | Delhi |
+-------------+----------------+------+-------+-------+
4 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> with category_product_count as ( select category, count(product_id) as total_products from products group by categroy(
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [ecommerce_sales]> with category_product_count as ( select category, count(product_id) as total_products from products group by categroy) select * from category_product_count order by total_products desc;
ERROR 1054 (42S22): Unknown column 'categroy' in 'group statement'
MariaDB [ecommerce_sales]> with category_product_count as ( select category, count(product_id) as total_products from products group by category) select * from category_product_count order by total_products desc;
+----------------+----------------+
| category       | total_products |
+----------------+----------------+
| Home & Kitchen |              5 |
| Electronics    |              5 |
| Fashion        |              5 |
| Beauty         |              3 |
| Stationery     |              3 |
| Grocery        |              2 |
| Sports         |              2 |
+----------------+----------------+
7 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> with city_sales as (select c.city, sum(o.quantity * o.unit_price) as total_sales from customers c inner join orders o on c.customer_id = o.customer_id where o.order_status = "delivered" group by c.city) select city, total_sales from city_sales where total_sales > (select avg(total_sales) from city_sales) order by total_sales desc;
+-----------+-------------+
| city      | total_sales |
+-----------+-------------+
| Kolkata   |       42499 |
| Delhi     |       27892 |
| Jaipur    |       26538 |
| Gurugram  |       24156 |
| Chennai   |       23499 |
| Pune      |       18608 |
| Hyderabad |       17403 |
+-----------+-------------+
7 rows in set (0.059 sec)

MariaDB [ecommerce_sales]> with average_age as (select avg(age) as avg_customer_age from customers ) select customer_id, customer_name, age from customers where age > (select avg_customer_age from average age) order by age desc;
ERROR 1146 (42S02): Table 'ecommerce_sales.average' doesn't exist
MariaDB [ecommerce_sales]> with average_age as (select avg(age) as avg_customer_age from customers ) select customer_id, customer_name, age from customers where age > (select avg_customer_age from average_age) order by age desc;
+-------------+----------------+------+
| customer_id | customer_name  | age  |
+-------------+----------------+------+
|          19 | Manish Yadav   |   31 |
|          31 | Ritesh Sinha   |   30 |
|          13 | Karan Malhotra |   30 |
|          35 | Saurabh Tiwari |   29 |
|           9 | Aditya Verma   |   29 |
|          24 | Nandini Bose   |   29 |
|          25 | Akash Mishra   |   28 |
|          39 | Aman Khurana   |   28 |
|          16 | Pooja Bansal   |   28 |
|           5 | Vikram Singh   |   28 |
|          32 | Anjali Desai   |   28 |
|          21 | Harsh Jain     |   27 |
|          38 | Ritu Sood      |   27 |
|          12 | Sneha Joshi    |   27 |
|           7 | Arjun Patel    |   27 |
|          28 | Divya Menon    |   27 |
|          36 | Ira Mukherjee  |   26 |
|          27 | Varun Chawla   |   26 |
|          22 | Simran Kaur    |   26 |
|          14 | Meera Shah     |   26 |
|           3 | Rohan Mehta    |   26 |
+-------------+----------------+------+
21 rows in set (0.001 sec)

MariaDB [ecommerce_sales]> with customers_with_orders as  (select distinct customer_id from orders) select c.customer_id, c.customer_name, c.city, c.state from customers c left join customers_with_orders cwo on c.customer_id = cwo.customer_id where cwo.customer_id is null;
Empty set (0.002 sec)
                           with order_values as (select order_id, customer_id, product_id, quantity, unit_price, (quantity * unit_price) as order_value from orders where order_status = "delivered") select * from order_values where order_value > 2000 order by order_value > desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc' at line 1
MariaDB [ecommerce_sales]> with order_values as (select order_id, customer_id, product_id, quantity, unit_price, (quantity * unit_price) as order_value from orders where order_status = "delivered") select * from order_values where order_value > 2000 order by order_value  desc;
+----------+-------------+------------+----------+------------+-------------+
| order_id | customer_id | product_id | quantity | unit_price | order_value |
+----------+-------------+------------+----------+------------+-------------+
|     1053 |          11 |        108 |        4 |       2499 |        9996 |
|     1073 |          31 |        103 |        4 |       1999 |        7996 |
|     1178 |           6 |        108 |        3 |       2499 |        7497 |
|     1085 |          35 |        110 |        4 |       1799 |        7196 |
|     1049 |          23 |        114 |        4 |       1599 |        6396 |
|     1149 |           3 |        114 |        4 |       1599 |        6396 |
|     1078 |          26 |        108 |        3 |       2124 |        6372 |
|     1098 |           6 |        103 |        3 |       1999 |        5997 |
|     1137 |          39 |        107 |        4 |       1499 |        5996 |
|     1037 |          19 |        107 |        4 |       1499 |        5996 |
|     1105 |          15 |        105 |        4 |       1499 |        5996 |
|     1010 |          30 |        110 |        3 |       1799 |        5397 |
|     1165 |          35 |        115 |        4 |       1299 |        5196 |
|     1003 |          21 |        108 |        2 |       2499 |        4998 |
|     1074 |          38 |        114 |        3 |       1599 |        4797 |
|     1030 |          10 |        105 |        3 |       1499 |        4497 |
|     1065 |          15 |        115 |        4 |       1104 |        4416 |
|     1169 |          23 |        109 |        4 |       1019 |        4076 |
|     1162 |          14 |        107 |        3 |       1349 |        4047 |
|     1023 |           1 |        103 |        2 |       1999 |        3998 |
|     1123 |          21 |        103 |        2 |       1999 |        3998 |
|     1129 |          23 |        119 |        4 |        999 |        3996 |
|     1029 |           3 |        119 |        4 |        999 |        3996 |
|     1014 |          18 |        104 |        3 |       1299 |        3897 |
|     1114 |          38 |        104 |        3 |       1299 |        3897 |
|     1130 |          30 |        105 |        3 |       1274 |        3822 |
|     1035 |           5 |        110 |        2 |       1799 |        3598 |
|     1094 |          18 |        109 |        3 |       1199 |        3597 |
|     1133 |          11 |        113 |        4 |        899 |        3596 |
|     1135 |          25 |        110 |        2 |       1619 |        3238 |
|     1141 |          27 |        101 |        4 |        799 |        3196 |
|     1109 |           3 |        124 |        4 |        799 |        3196 |
|     1087 |           9 |        107 |        2 |       1499 |        2998 |
|     1155 |           5 |        105 |        2 |       1499 |        2998 |
|     1154 |          38 |        119 |        3 |        999 |        2997 |
|     1099 |          13 |        114 |        2 |       1439 |        2878 |
|     1009 |          23 |        124 |        4 |        719 |        2876 |
|     1113 |          31 |        118 |        4 |        699 |        2796 |
|     1158 |          26 |        113 |        3 |        899 |        2697 |
|     1058 |           6 |        113 |        3 |        899 |        2697 |
|     1015 |          25 |        115 |        2 |       1299 |        2598 |
|     1115 |           5 |        115 |        2 |       1299 |        2598 |
|     1177 |          39 |        122 |        4 |        649 |        2596 |
|     1077 |          19 |        122 |        4 |        649 |        2596 |
|     1028 |          36 |        108 |        1 |       2499 |        2499 |
|     1128 |          16 |        108 |        1 |       2499 |        2499 |
|     1119 |          33 |        109 |        2 |       1199 |        2398 |
|     1066 |          22 |        101 |        3 |        799 |        2397 |
|     1134 |          18 |        124 |        3 |        799 |        2397 |
|     1121 |           7 |        106 |        4 |        599 |        2396 |
|     1021 |          27 |        106 |        4 |        599 |        2396 |
|     1039 |          33 |        104 |        2 |       1104 |        2208 |
|     1038 |          26 |        118 |        3 |        699 |        2097 |
+----------+-------------+------------+----------+------------+-------------+
53 rows in set (0.001 sec)

MariaDB [ecommerce_sales]>
