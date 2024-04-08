import 'package:flutter/material.dart';

List<Map<String, dynamic>> TransactionData = [
  {
    "icon": Icon(
      Icons.fastfood,
      color: Colors.white,
    ),
    "color": Colors.yellow[700],
    "name": "Food",
    "totalAmount": "-6500 rs",
    "date": "Today",
  },
  {
    'icon': Icon(Icons.shopping_bag, color: Colors.white),
    "color": Colors.purple,
    'name': "Shopping",
    'TotalAmount': '-6220 rs',
    "date": 'Today',
  },
  {
    'icon': Icon(Icons.local_hospital, color: Colors.white),
    "color": Colors.green,
    'name': "Health",
    'TotalAmount': '-2000 rs',
    "date": 'Yesturday'
  },
  {
    'icon': Icon(Icons.flight, color: Colors.white),
    "color": Colors.blue,
    'name': "Travel",
    'TotalAmount': '-16220 rs',
    "date": 'Yesturday'
  }
];
