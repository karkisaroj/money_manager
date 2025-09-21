import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/Features/transaction/Widget/button_style.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('hh:mm a').format(now);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Row(
              spacing: 16,
              children: [
                SizedBox(width: 20),
                Text(
                  "Date",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${DateTime.now().year.toString()}/${DateTime.now().month}/${DateTime.now().day}",
                          ),
                          SizedBox(width: 10),
                          Text(formattedTime),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              IconButton(
                                tooltip: "Repeat",
                                onPressed: () {},
                                icon: Icon(Icons.repeat_rounded),
                              ),
                              Text("Repeat", style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.white, endIndent: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Text(
                    "Account",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      children: [
                        Text("Cash"),
                        Divider(color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Text("Category", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      children: [
                        Text("Food/Eating out"),
                        Divider(color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Text("Amount", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      children: [
                        Text("Rs 500"),
                        Divider(color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Text("Note", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      children: [
                        Text("Fried Chicken"),
                        Divider(color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey,
              radius: BorderRadius.all(Radius.circular(30)),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onTapUpOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: "Decoration",
                      border: InputBorder.none,
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButtonStyle(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  text: "Delete",
                ),
                ElevatedButtonStyle(
                  onPressed: () {},
                  icon: Icon(Icons.copy),
                  text: "Copy",
                ),
                ElevatedButtonStyle(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark),
                  text: "BookMark",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
