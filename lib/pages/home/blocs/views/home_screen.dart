import 'dart:math';

import 'package:expensetracker/pages/add_expense/blocs/views/add_expense.dart';
import 'package:expensetracker/pages/home/blocs/views/main_screen.dart';
import 'package:expensetracker/pages/home/blocs/views/stats/stats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late Color selectedItem = Theme.of(context).colorScheme.primary;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: index == 0 ? selectedItem : unselectedItem,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.graphic_eq_sharp,
                    color: index == 1 ? selectedItem : unselectedItem,
                  ),
                  label: "Stats")
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const AddExpense()));
        },
        shape: CircleBorder(),
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ], transform: GradientRotation(pi / 4))),
            child: Icon(Icons.add)),
      ),
      body: index == 0 ? MainScreen() : Statscreen(),
    );
  }
}
