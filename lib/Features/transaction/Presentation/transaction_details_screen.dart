import 'package:flutter/material.dart';
import '../Widget/transaction_type_buttons.dart';
import '../Widget/transaction_form.dart';
import '../Widget/transaction_images.dart';
import '../Widget/transaction_actions.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Transaction'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            TransactionTypeButtons(),
            TransactionForm(),
            TransactionImages(),
            TransactionActions(),
          ],
        ),
      ),
    );
  }
}
