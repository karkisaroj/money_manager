import 'package:flutter/material.dart';

class MoneyAdition extends StatefulWidget {
  const MoneyAdition({super.key});

  @override
  State<MoneyAdition> createState() => _MoneyAditionState();
}

class _MoneyAditionState extends State<MoneyAdition> {
  final buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.black12,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.zero),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: buttonStyle,

              child: Text("Income"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: buttonStyle,
              child: Text("Expense"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: buttonStyle,
              child: Text("Transfer"),
            ),
          ],
        ),
      ],
    );
  }
}
