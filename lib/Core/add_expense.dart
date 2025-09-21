import 'package:flutter/material.dart';
import 'package:money_manager/Core/money_adition.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MoneyAdition());
  }
}
