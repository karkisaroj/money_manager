import 'package:flutter/material.dart';
import 'package:money_manager/Features/Accounts/Presentation/accounts_screen.dart';
import 'package:money_manager/Features/Configuration/Presentation/configuration_screen.dart';
import 'package:money_manager/Features/Stats/Presentation/stats_screen.dart';
import 'package:money_manager/Core/bottom_nav.dart';
import 'package:money_manager/Features/transaction/Presentation/transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    TransactionScreen(),
    StatsScreen(),
    AccountsScreen(),
    ConfigurationScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    TransactionScreen();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNav(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
