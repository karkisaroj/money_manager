import 'package:flutter/material.dart';

class TransactionImages extends StatelessWidget {
  const TransactionImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.grey[300],
            child: Icon(Icons.image),
          ),
          SizedBox(width: 8),
          Container(
            width: 80,
            height: 80,
            color: Colors.grey[300],
            child: Icon(Icons.image),
          ),
        ],
      ),
    );
  }
}
