import 'package:flutter/material.dart';
import 'package:money_manager/Features/transaction/Presentation/transaction_screen.dart';
import 'package:money_manager/Features/transaction/Widget/money_adition.dart';
import 'package:page_transition/page_transition.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: "Go Back",
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: TransactionScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("Expense"),
        centerTitle: true,
      ),
      body: MoneyAdition(),
    );
  }
}
