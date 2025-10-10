import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/accounts_bloc.dart';
import 'bloc/accounts_state.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountsBloc, AccountsState>(
      builder: (context, state) {
        // if (state is AccountsLoaded) {
        return Scaffold(
          appBar: AppBar(title: const Text('Accounts')),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      Text(
                        '₹6,628.12',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Liabilities',
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                      Text(
                        '₹208,242.65',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        '-₹201,614.53',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(thickness: 2),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Cash',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cash', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹68.45',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Accounts',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('HIBD', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹2,768.66',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RBO', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹1,613.61',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Card',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('HIBD Travel', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹0.00',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RBO Credit Card', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹0.00',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Debit Card',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('HIBD Debit Card', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹0.00',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RBO Debit Card', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹0.00',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Savings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RBO Saving', style: TextStyle(fontSize: 16)),
                  Text(
                    '₹100.00',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      // return const Scaffold(body: Center(child: CircularProgressIndicator()));
      // },
    );
  }
}
