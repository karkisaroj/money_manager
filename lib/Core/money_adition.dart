import 'package:flutter/material.dart';
import 'package:money_manager/Features/transaction/Presentation/transaction_screen.dart';
import 'package:money_manager/Features/transaction/Widget/income_addition.dart';
import 'package:money_manager/Features/transaction/Widget/money_addition.dart';
import 'package:money_manager/Features/transaction/Widget/transfer_money.dart';
import 'package:page_transition/page_transition.dart';

class MoneyAdition extends StatefulWidget {
  const MoneyAdition({super.key});

  @override
  State<MoneyAdition> createState() => _MoneyAditionState();
}

class _MoneyAditionState extends State<MoneyAdition> {
  int selectedTab = 0;
  @override
  void initState() {
    selectedTab = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabWidgets = [
      IncomeAddition(),
      ExpenseAddition(),
      TransferMoney(),
    ];

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
        title: Text(""),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTab = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedTab == 0
                      ? Colors.blue
                      : Colors.black12,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text("Income"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTab = 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedTab == 1
                      ? Colors.blue
                      : Colors.black12,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text("Expense"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTab = 2;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedTab == 2
                      ? Colors.blue
                      : Colors.black12,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text("Transfer"),
              ),
            ],
          ),
        ),
      ),
      body: tabWidgets[selectedTab],
    );
  }
}
