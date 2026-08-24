MariaDB [ecommerce_sales]> select o.order_id, c.customer_name, p.product_name, o.quantity, o.unit_price, o.order_status from orders o inner join customers c on o.customer_id = c.customer_id inner join products p on o.product_id = p.product_id;
+----------+----------------+---------------------+----------+------------+--------------+
| order_id | customer_name  | product_name        | quantity | unit_price | order_status |
+----------+----------------+---------------------+----------+------------+--------------+
|     1016 | Anjali Desai   | Wireless Mouse      |        1 |        799 | Delivered    |
|     1041 | Arjun Patel    | Wireless Mouse      |        4 |        799 | Returned     |
|     1066 | Simran Kaur    | Wireless Mouse      |        3 |        799 | Delivered    |
|     1091 | Kabir Arora    | Wireless Mouse      |        2 |        679 | Delivered    |
|     1116 | Sneha Joshi    | Wireless Mouse      |        1 |        799 | Delivered    |
|     1141 | Varun Chawla   | Wireless Mouse      |        4 |        799 | Delivered    |
|     1166 | Ananya Iyer    | Wireless Mouse      |        3 |        799 | Cancelled    |
|     1007 | Aditya Verma   | USB-C Cable         |        2 |        299 | Delivered    |
|     1032 | Nandini Bose   | USB-C Cable         |        1 |        299 | Delivered    |
|     1057 | Aman Khurana   | USB-C Cable         |        4 |        299 | Delivered    |
|     1082 | Meera Shah     | USB-C Cable         |        3 |        299 | Cancelled    |
|     1107 | Mohit Saxena   | USB-C Cable         |        2 |        299 | Delivered    |
|     1132 | Priya Nair     | USB-C Cable         |        1 |        299 | Returned     |
|     1157 | Manish Yadav   | USB-C Cable         |        4 |        299 | Delivered    |
|     1023 | Aarav Sharma   | Bluetooth Speaker   |        2 |       1999 | Delivered    |
|     1048 | Pooja Bansal   | Bluetooth Speaker   |        1 |       1999 | Returned     |
|     1073 | Ritesh Sinha   | Bluetooth Speaker   |        4 |       1999 | Delivered    |
|     1098 | Kavya Reddy    | Bluetooth Speaker   |        3 |       1999 | Delivered    |
|     1123 | Harsh Jain     | Bluetooth Speaker   |        2 |       1999 | Delivered    |
|     1148 | Ira Mukherjee  | Bluetooth Speaker   |        1 |       1999 | Delivered    |
|     1173 | Rahul Das      | Bluetooth Speaker   |        4 |       1999 | Cancelled    |
|     1014 | Riya Sen       | Laptop Stand        |        3 |       1299 | Delivered    |
|     1039 | Yash Thakur    | Laptop Stand        |        2 |       1104 | Delivered    |
|     1064 | Neha Gupta     | Laptop Stand        |        1 |       1299 | Delivered    |
|     1089 | Dev Agarwal    | Laptop Stand        |        4 |       1299 | Cancelled    |
|     1114 | Ritu Sood      | Laptop Stand        |        3 |       1299 | Delivered    |
|     1139 | Karan Malhotra | Laptop Stand        |        2 |       1299 | Returned     |
|     1164 | Divya Menon    | Laptop Stand        |        1 |       1299 | Delivered    |
|     1005 | Saurabh Tiwari | Power Bank 10000mAh |        4 |       1499 | Cancelled    |
|     1030 | Isha Kapoor    | Power Bank 10000mAh |        3 |       1499 | Delivered    |
|     1055 | Akash Mishra   | Power Bank 10000mAh |        2 |       1499 | Returned     |
|     1080 | Lakshmi Iyer   | Power Bank 10000mAh |        1 |       1499 | Delivered    |
|     1105 | Siddharth Rao  | Power Bank 10000mAh |        4 |       1499 | Delivered    |
|     1130 | Shreya Ghosh   | Power Bank 10000mAh |        3 |       1274 | Delivered    |
|     1155 | Vikram Singh   | Power Bank 10000mAh |        2 |       1499 | Delivered    |
|     1180 | Aditi Kulkarni | Power Bank 10000mAh |        1 |       1349 | Cancelled    |
|     1021 | Varun Chawla   | Cotton T-Shirt      |        4 |        599 | Delivered    |
|     1046 | Ananya Iyer    | Cotton T-Shirt      |        3 |        599 | Delivered    |
|     1071 | Nikhil Kumar   | Cotton T-Shirt      |        2 |        599 | Delivered    |
|     1096 | Anjali Desai   | Cotton T-Shirt      |        1 |        599 | Cancelled    |
|     1121 | Arjun Patel    | Cotton T-Shirt      |        4 |        599 | Delivered    |
|     1146 | Simran Kaur    | Cotton T-Shirt      |        3 |        599 | Returned     |
|     1171 | Kabir Arora    | Cotton T-Shirt      |        2 |        539 | Delivered    |
|     1012 | Priya Nair     | Denim Jeans         |        1 |       1499 | Cancelled    |
|     1037 | Manish Yadav   | Denim Jeans         |        4 |       1499 | Delivered    |
|     1062 | Manya Khanna   | Denim Jeans         |        3 |       1499 | Returned     |
|     1087 | Aditya Verma   | Denim Jeans         |        2 |       1499 | Delivered    |
|     1112 | Nandini Bose   | Denim Jeans         |        1 |       1499 | Delivered    |
|     1137 | Aman Khurana   | Denim Jeans         |        4 |       1499 | Delivered    |
|     1162 | Meera Shah     | Denim Jeans         |        3 |       1349 | Delivered    |
|     1003 | Harsh Jain     | Running Shoes       |        2 |       2499 | Delivered    |
|     1028 | Ira Mukherjee  | Running Shoes       |        1 |       2499 | Delivered    |
|     1053 | Rahul Das      | Running Shoes       |        4 |       2499 | Delivered    |
|     1078 | Tanya Arora    | Running Shoes       |        3 |       2124 | Delivered    |
|     1103 | Aarav Sharma   | Running Shoes       |        2 |       2499 | Cancelled    |
|     1128 | Pooja Bansal   | Running Shoes       |        1 |       2499 | Delivered    |
|     1153 | Ritesh Sinha   | Running Shoes       |        4 |       2249 | Returned     |
|     1178 | Kavya Reddy    | Running Shoes       |        3 |       2499 | Delivered    |
|     1019 | Karan Malhotra | Backpack            |        2 |       1199 | Cancelled    |
|     1044 | Divya Menon    | Backpack            |        1 |       1199 | Delivered    |
|     1069 | Rohan Mehta    | Backpack            |        4 |       1199 | Returned     |
|     1094 | Riya Sen       | Backpack            |        3 |       1199 | Delivered    |
|     1119 | Yash Thakur    | Backpack            |        2 |       1199 | Delivered    |
|     1144 | Neha Gupta     | Backpack            |        1 |       1079 | Delivered    |
|     1169 | Dev Agarwal    | Backpack            |        4 |       1019 | Delivered    |
|     1010 | Shreya Ghosh   | Analog Watch        |        3 |       1799 | Delivered    |
|     1035 | Vikram Singh   | Analog Watch        |        2 |       1799 | Delivered    |
|     1060 | Aditi Kulkarni | Analog Watch        |        1 |       1799 | Delivered    |
|     1085 | Saurabh Tiwari | Analog Watch        |        4 |       1799 | Delivered    |
|     1110 | Isha Kapoor    | Analog Watch        |        3 |       1799 | Cancelled    |
|     1135 | Akash Mishra   | Analog Watch        |        2 |       1619 | Delivered    |
|     1160 | Lakshmi Iyer   | Analog Watch        |        1 |       1799 | Returned     |
|     1001 | Arjun Patel    | Water Bottle        |        4 |        499 | Delivered    |
|     1026 | Simran Kaur    | Water Bottle        |        3 |        424 | Cancelled    |
|     1051 | Kabir Arora    | Water Bottle        |        2 |        499 | Delivered    |
|     1076 | Sneha Joshi    | Water Bottle        |        1 |        499 | Returned     |
|     1101 | Varun Chawla   | Water Bottle        |        4 |        499 | Delivered    |
|     1126 | Ananya Iyer    | Water Bottle        |        3 |        449 | Delivered    |
|     1151 | Nikhil Kumar   | Water Bottle        |        2 |        499 | Delivered    |
|     1176 | Anjali Desai   | Water Bottle        |        1 |        499 | Delivered    |
|     1017 | Aman Khurana   | Coffee Mug          |        4 |        349 | Delivered    |
|     1042 | Meera Shah     | Coffee Mug          |        3 |        349 | Delivered    |
|     1067 | Mohit Saxena   | Coffee Mug          |        2 |        349 | Delivered    |
|     1092 | Priya Nair     | Coffee Mug          |        1 |        349 | Delivered    |
|     1117 | Manish Yadav   | Coffee Mug          |        4 |        314 | Cancelled    |
|     1142 | Manya Khanna   | Coffee Mug          |        3 |        349 | Delivered    |
|     1167 | Aditya Verma   | Coffee Mug          |        2 |        349 | Returned     |
|     1008 | Pooja Bansal   | LED Desk Lamp       |        1 |        899 | Delivered    |
|     1033 | Ritesh Sinha   | LED Desk Lamp       |        4 |        899 | Cancelled    |
|     1058 | Kavya Reddy    | LED Desk Lamp       |        3 |        899 | Delivered    |
|     1083 | Harsh Jain     | LED Desk Lamp       |        2 |        899 | Returned     |
|     1108 | Ira Mukherjee  | LED Desk Lamp       |        1 |        809 | Delivered    |
|     1133 | Rahul Das      | LED Desk Lamp       |        4 |        899 | Delivered    |
|     1158 | Tanya Arora    | LED Desk Lamp       |        3 |        899 | Delivered    |
|     1024 | Neha Gupta     | Bed Sheet Set       |        1 |       1599 | Delivered    |
|     1049 | Dev Agarwal    | Bed Sheet Set       |        4 |       1599 | Delivered    |
|     1074 | Ritu Sood      | Bed Sheet Set       |        3 |       1599 | Delivered    |
|     1099 | Karan Malhotra | Bed Sheet Set       |        2 |       1439 | Delivered    |
|     1124 | Divya Menon    | Bed Sheet Set       |        1 |       1599 | Cancelled    |
|     1149 | Rohan Mehta    | Bed Sheet Set       |        4 |       1599 | Delivered    |
|     1174 | Riya Sen       | Bed Sheet Set       |        3 |       1599 | Returned     |
|     1015 | Akash Mishra   | Non-Stick Pan       |        2 |       1299 | Delivered    |
|     1040 | Lakshmi Iyer   | Non-Stick Pan       |        1 |       1299 | Cancelled    |
|     1065 | Siddharth Rao  | Non-Stick Pan       |        4 |       1104 | Delivered    |
|     1090 | Shreya Ghosh   | Non-Stick Pan       |        3 |       1169 | Returned     |
|     1115 | Vikram Singh   | Non-Stick Pan       |        2 |       1299 | Delivered    |
|     1140 | Aditi Kulkarni | Non-Stick Pan       |        1 |       1299 | Delivered    |
|     1165 | Saurabh Tiwari | Non-Stick Pan       |        4 |       1299 | Delivered    |
|     1006 | Ananya Iyer    | Notebook Pack       |        3 |        249 | Returned     |
|     1031 | Nikhil Kumar   | Notebook Pack       |        2 |        249 | Delivered    |
|     1056 | Anjali Desai   | Notebook Pack       |        1 |        249 | Delivered    |
|     1081 | Arjun Patel    | Notebook Pack       |        4 |        224 | Delivered    |
|     1106 | Simran Kaur    | Notebook Pack       |        3 |        249 | Delivered    |
|     1131 | Kabir Arora    | Notebook Pack       |        2 |        249 | Cancelled    |
|     1156 | Sneha Joshi    | Notebook Pack       |        1 |        212 | Delivered    |
|     1022 | Manya Khanna   | Gel Pen Set         |        3 |        199 | Delivered    |
|     1047 | Aditya Verma   | Gel Pen Set         |        2 |        199 | Cancelled    |
|     1072 | Nandini Bose   | Gel Pen Set         |        1 |        179 | Delivered    |
|     1097 | Aman Khurana   | Gel Pen Set         |        4 |        199 | Returned     |
|     1122 | Meera Shah     | Gel Pen Set         |        3 |        199 | Delivered    |
|     1147 | Mohit Saxena   | Gel Pen Set         |        2 |        199 | Delivered    |
|     1172 | Priya Nair     | Gel Pen Set         |        1 |        199 | Delivered    |
|     1013 | Rahul Das      | Desk Organizer      |        4 |        594 | Returned     |
|     1038 | Tanya Arora    | Desk Organizer      |        3 |        699 | Delivered    |
|     1063 | Aarav Sharma   | Desk Organizer      |        2 |        629 | Delivered    |
|     1088 | Pooja Bansal   | Desk Organizer      |        1 |        699 | Delivered    |
|     1113 | Ritesh Sinha   | Desk Organizer      |        4 |        699 | Delivered    |
|     1138 | Kavya Reddy    | Desk Organizer      |        3 |        699 | Cancelled    |
|     1163 | Harsh Jain     | Desk Organizer      |        2 |        699 | Delivered    |
|     1004 | Divya Menon    | Yoga Mat            |        1 |        999 | Delivered    |
|     1029 | Rohan Mehta    | Yoga Mat            |        4 |        999 | Delivered    |
|     1054 | Riya Sen       | Yoga Mat            |        3 |        899 | Cancelled    |
|     1079 | Yash Thakur    | Yoga Mat            |        2 |        999 | Delivered    |
|     1104 | Neha Gupta     | Yoga Mat            |        1 |        849 | Returned     |
|     1129 | Dev Agarwal    | Yoga Mat            |        4 |        999 | Delivered    |
|     1154 | Ritu Sood      | Yoga Mat            |        3 |        999 | Delivered    |
|     1179 | Karan Malhotra | Yoga Mat            |        2 |        999 | Delivered    |
|     1020 | Aditi Kulkarni | Resistance Bands    |        1 |        549 | Returned     |
|     1045 | Saurabh Tiwari | Resistance Bands    |        4 |        494 | Delivered    |
|     1070 | Isha Kapoor    | Resistance Bands    |        3 |        549 | Delivered    |
|     1095 | Akash Mishra   | Resistance Bands    |        2 |        549 | Delivered    |
|     1120 | Lakshmi Iyer   | Resistance Bands    |        1 |        549 | Delivered    |
|     1145 | Siddharth Rao  | Resistance Bands    |        4 |        549 | Cancelled    |
|     1170 | Shreya Ghosh   | Resistance Bands    |        3 |        549 | Delivered    |
|     1011 | Kabir Arora    | Face Wash           |        2 |        399 | Delivered    |
|     1036 | Sneha Joshi    | Face Wash           |        1 |        359 | Delivered    |
|     1061 | Varun Chawla   | Face Wash           |        4 |        399 | Cancelled    |
|     1086 | Ananya Iyer    | Face Wash           |        3 |        399 | Delivered    |
|     1111 | Nikhil Kumar   | Face Wash           |        2 |        399 | Returned     |
|     1136 | Anjali Desai   | Face Wash           |        1 |        399 | Delivered    |
|     1161 | Arjun Patel    | Face Wash           |        4 |        399 | Delivered    |
|     1002 | Meera Shah     | Sunscreen SPF 50    |        3 |        649 | Delivered    |
|     1027 | Mohit Saxena   | Sunscreen SPF 50    |        2 |        584 | Returned     |
|     1052 | Priya Nair     | Sunscreen SPF 50    |        1 |        552 | Delivered    |
|     1077 | Manish Yadav   | Sunscreen SPF 50    |        4 |        649 | Delivered    |
|     1102 | Manya Khanna   | Sunscreen SPF 50    |        3 |        649 | Delivered    |
|     1127 | Aditya Verma   | Sunscreen SPF 50    |        2 |        649 | Delivered    |
|     1152 | Nandini Bose   | Sunscreen SPF 50    |        1 |        649 | Cancelled    |
|     1177 | Aman Khurana   | Sunscreen SPF 50    |        4 |        649 | Delivered    |
|     1018 | Kavya Reddy    | Shampoo             |        3 |        404 | Delivered    |
|     1043 | Harsh Jain     | Shampoo             |        2 |        449 | Delivered    |
|     1068 | Ira Mukherjee  | Shampoo             |        1 |        449 | Cancelled    |
|     1093 | Rahul Das      | Shampoo             |        4 |        449 | Delivered    |
|     1118 | Tanya Arora    | Shampoo             |        3 |        449 | Returned     |
|     1143 | Aarav Sharma   | Shampoo             |        2 |        382 | Delivered    |
|     1168 | Pooja Bansal   | Shampoo             |        1 |        449 | Delivered    |
|     1009 | Dev Agarwal    | Protein Bar Pack    |        4 |        719 | Delivered    |
|     1034 | Ritu Sood      | Protein Bar Pack    |        3 |        799 | Returned     |
|     1059 | Karan Malhotra | Protein Bar Pack    |        2 |        799 | Delivered    |
|     1084 | Divya Menon    | Protein Bar Pack    |        1 |        799 | Delivered    |
|     1109 | Rohan Mehta    | Protein Bar Pack    |        4 |        799 | Delivered    |
|     1134 | Riya Sen       | Protein Bar Pack    |        3 |        799 | Delivered    |
|     1159 | Yash Thakur    | Protein Bar Pack    |        2 |        799 | Cancelled    |
|     1025 | Siddharth Rao  | Green Tea Pack      |        4 |        349 | Delivered    |
|     1050 | Shreya Ghosh   | Green Tea Pack      |        3 |        349 | Delivered    |
|     1075 | Vikram Singh   | Green Tea Pack      |        2 |        349 | Cancelled    |
|     1100 | Aditi Kulkarni | Green Tea Pack      |        1 |        349 | Delivered    |
|     1125 | Saurabh Tiwari | Green Tea Pack      |        4 |        349 | Returned     |
|     1150 | Isha Kapoor    | Green Tea Pack      |        3 |        349 | Delivered    |
|     1175 | Akash Mishra   | Green Tea Pack      |        2 |        349 | Delivered    |
+----------+----------------+---------------------+----------+------------+--------------+
180 rows in set (0.013 sec)

MariaDB [ecommerce_sales]> select c.customer_id, c.customer_name, count(o.order_id) as total_orders from customers c left join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name order by total_orders desc;
+-------------+----------------+--------------+
| customer_id | customer_name  | total_orders |
+-------------+----------------+--------------+
|           2 | Ananya Iyer    |            5 |
|           6 | Kavya Reddy    |            5 |
|          14 | Meera Shah     |            5 |
|          18 | Riya Sen       |            5 |
|          30 | Shreya Ghosh   |            5 |
|           7 | Arjun Patel    |            5 |
|          11 | Rahul Das      |            5 |
|          23 | Dev Agarwal    |            5 |
|          35 | Saurabh Tiwari |            5 |
|          39 | Aman Khurana   |            5 |
|           4 | Priya Nair     |            5 |
|          16 | Pooja Bansal   |            5 |
|          20 | Aditi Kulkarni |            5 |
|          28 | Divya Menon    |            5 |
|          32 | Anjali Desai   |            5 |
|           9 | Aditya Verma   |            5 |
|          13 | Karan Malhotra |            5 |
|          21 | Harsh Jain     |            5 |
|          25 | Akash Mishra   |            5 |
|          37 | Kabir Arora    |            5 |
|          10 | Isha Kapoor    |            4 |
|          22 | Simran Kaur    |            4 |
|          26 | Tanya Arora    |            4 |
|          34 | Manya Khanna   |            4 |
|          38 | Ritu Sood      |            4 |
|           3 | Rohan Mehta    |            4 |
|          15 | Siddharth Rao  |            4 |
|          19 | Manish Yadav   |            4 |
|          27 | Varun Chawla   |            4 |
|          31 | Ritesh Sinha   |            4 |
|           8 | Neha Gupta     |            4 |
|          12 | Sneha Joshi    |            4 |
|          24 | Nandini Bose   |            4 |
|          36 | Ira Mukherjee  |            4 |
|          40 | Lakshmi Iyer   |            4 |
|           1 | Aarav Sharma   |            4 |
|           5 | Vikram Singh   |            4 |
|          17 | Nikhil Kumar   |            4 |
|          29 | Mohit Saxena   |            4 |
|          33 | Yash Thakur    |            4 |
+-------------+----------------+--------------+
40 rows in set (0.005 sec)

MariaDB [ecommerce_sales]> select c.city, sum(o.quantity * o.unit_price) as total_sales from customers c inner join orders o on c.customer_id = o.customer_id where o.order_status = "Delivered" group by c.city order by total_sales desc;
+------------+-------------+
| city       | total_sales |
+------------+-------------+
| Kolkata    |       42499 |
| Delhi      |       27892 |
| Jaipur     |       26538 |
| Gurugram   |       24156 |
| Chennai    |       23499 |
| Pune       |       18608 |
| Hyderabad  |       17403 |
| Chandigarh |       14779 |
| Mumbai     |       13588 |
| Patna      |       13486 |
| Bhopal     |       11292 |
| Ahmedabad  |        8830 |
| Bengaluru  |        8366 |
| Noida      |        8137 |
| Indore     |        7974 |
| Surat      |        7638 |
| Kanpur     |        7632 |
| Lucknow    |        6588 |
| Kochi      |        5396 |
| Amritsar   |        3144 |
+------------+-------------+
20 rows in set (0.052 sec)

MariaDB [ecommerce_sales]> select p.category, sum(o.quantity * o.unit_price) as total_sales from products p inner join orders o on p.product_id = p.product_id where o.order_status = "Delivered" group by p.category order by total_sales desc;
+----------------+-------------+
| category       | total_sales |
+----------------+-------------+
| Fashion        |     1487225 |
| Home & Kitchen |     1487225 |
| Electronics    |     1487225 |
| Beauty         |      892335 |
| Stationery     |      892335 |
| Grocery        |      594890 |
| Sports         |      594890 |
+----------------+-------------+
7 rows in set (0.051 sec)

MariaDB [ecommerce_sales]> select p.product_id, p.product_name, sum(o.quantity) as total_quantity_sold from products p inner join orders o on p.product_id = p.product_id where o.order_status = "Delivered" group by p.product_id, p.product_name order by total_quantity_sold desc limit 5;
+------------+----------------+---------------------+
| product_id | product_name   | total_quantity_sold |
+------------+----------------+---------------------+
|        115 | Non-Stick Pan  |                 322 |
|        112 | Coffee Mug     |                 322 |
|        109 | Backpack       |                 322 |
|        125 | Green Tea Pack |                 322 |
|        106 | Cotton T-Shirt |                 322 |
+------------+----------------+---------------------+
5 rows in set (0.006 sec)

MariaDB [ecommerce_sales]>
