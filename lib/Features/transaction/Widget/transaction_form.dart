import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Date'),
          subtitle: Text('2020/09/03 (Thu) 12:50 PM'),
        ),
        ListTile(title: Text('Account'), subtitle: Text('Cash')),
        ListTile(title: Text('Category'), subtitle: Text('Food/Eating out')),
        ListTile(title: Text('Amount'), subtitle: Text('20.00')),
        ListTile(title: Text('Note'), subtitle: Text('Fried Chicken')),
      ],
    );
  }
}
