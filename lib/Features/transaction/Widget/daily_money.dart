import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyMoney extends StatelessWidget {
  final int monthIndex;
  final int year;
  const DailyMoney({super.key, required this.monthIndex, required this.year});

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String fullDayName = DateFormat('EEE').format(date);
    String year = DateFormat('y').format(date);

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
          SizedBox(height: 10),

          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 10,
            indent: 2,
            endIndent: 2,
            color: Colors.grey[800],
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 10,
            indent: 2,
            endIndent: 2,
            color: Colors.grey[800],
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 10,
            indent: 2,
            endIndent: 2,
            color: Colors.grey[800],
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 10,
            indent: 2,
            endIndent: 2,
            color: Colors.grey[800],
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 10,
            indent: 2,
            endIndent: 2,
            color: Colors.grey[800],
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 10,
            indent: 2,
            endIndent: 2,
            color: Colors.grey[800],
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Text("1", style: TextStyle(fontSize: 25)),
              SizedBox(width: 16),
              Column(
                children: [
                  Text("$year/${date.month.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey,
                    ),
                    child: Text(fullDayName),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Text(
                "Rs 0.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(width: 70),
              Text(
                "Rs 45",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Social Life \nFriend",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Brunch with sam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("NABIL BANK LIMITED", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(width: 45),
              Text(
                "Rs 34",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
