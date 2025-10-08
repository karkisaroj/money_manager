import 'package:flutter/material.dart';

class TransactionActions extends StatelessWidget {
  const TransactionActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.delete),
            label: Text('Delete'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.copy),
            label: Text('Copy'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.bookmark),
            label: Text('Bookmark'),
          ),
        ],
      ),
    );
  }
}
