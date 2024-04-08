import 'package:flutter/material.dart';

class Statscreen extends StatelessWidget {
  const Statscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Transaction",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
