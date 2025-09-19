import 'package:flutter/material.dart';
import 'package:money_manager/Features/transaction/Presentation/transaction_screen.dart';
import 'package:money_manager/Features/transaction/Core/money_adition.dart';
import 'package:page_transition/page_transition.dart';

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
