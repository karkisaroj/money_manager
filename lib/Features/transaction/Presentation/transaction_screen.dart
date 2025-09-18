import 'package:flutter/material.dart';
import 'package:money_manager/Features/transaction/Core/add_expense.dart';
import 'package:money_manager/Features/transaction/Widget/calendar.dart';
import 'package:money_manager/Features/transaction/Widget/daily_money.dart';
import 'package:page_transition/page_transition.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  int _selectedMonthIndex = DateTime.now().month - 1;
  final List<String> _months = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEPT",
    "OCT",
    "NOV",
    "DEC",
  ];

  void _showMonthPickerDialog(BuildContext context, String dialogMonthLabel) {
    final now = DateTime.now();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: SizedBox(
          width: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.indigo,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date", style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedMonthIndex = now.month - 1;
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          dialogMonthLabel,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: List.generate(12, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedMonthIndex = index;
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        _months[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: index == DateTime.now().month - 1
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int currentMonthIndex = DateTime.now().month - 1;
    final String dialogMonthLabel = _selectedMonthIndex == currentMonthIndex
        ? "This Month"
        : _months[_selectedMonthIndex];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.scrim,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        title: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () =>
                    _showMonthPickerDialog(context, dialogMonthLabel),
                child: Text(
                  _months[_selectedMonthIndex],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined, size: 18),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star_border),
            iconSize: 30,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search), iconSize: 30),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.format_list_bulleted),

            iconSize: 30,
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorWeight: 3,
          tabAlignment: TabAlignment.start,
          padding: EdgeInsets.zero,
          labelColor: Colors.white,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          labelPadding: EdgeInsetsGeometry.symmetric(horizontal: 14),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: "Daily"),
            Tab(text: "Calendar"),
            Tab(text: "Monthly"),
            Tab(text: "Total"),
            Tab(text: "Note"),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: DailyMoney(
              monthIndex: _selectedMonthIndex,
              year: DateTime.now().year,
            ),
          ),

          Center(
            child: Center(
              child: Calendar(
                monthIndex: _selectedMonthIndex,
                year: DateTime.now().year,
              ),
            ),
          ),
          Center(
            child: Text("Monthly summary for ${_months[_selectedMonthIndex]}"),
          ),
          Center(
            child: Text(
              "Total money trades for ${_months[_selectedMonthIndex]}",
            ),
          ),
          Center(child: Text("Notes for ${_months[_selectedMonthIndex]}")),
        ],
      ),
      floatingActionButton: Row(
        children: [
          Spacer(),

          FloatingActionButton(
            onPressed: () {},
            shape: CircleBorder(),
            backgroundColor: Colors.grey,
            child: Icon(Icons.copy_sharp, color: Colors.white),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 300),
                  child: AddExpense(),
                ),
              );
            },
            shape: CircleBorder(),
            backgroundColor: Colors.red,
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
