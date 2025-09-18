import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  final int monthIndex;
  final int year;
  const Calendar({super.key, required this.monthIndex, required this.year});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Income",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  Text(
                    "Rs 4,831.89",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Expenses",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  Text(
                    "Rs 2,442.93",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  Text(
                    "Rs 2,388.96",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
