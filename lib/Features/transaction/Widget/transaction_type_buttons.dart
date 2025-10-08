import 'package:flutter/material.dart';

class TransactionTypeButtons extends StatelessWidget {
  const TransactionTypeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Income')),
          ElevatedButton(onPressed: () {}, child: Text('Expense')),
          ElevatedButton(onPressed: () {}, child: Text('Transfer')),
        ],
      ),
    );
  }
}
