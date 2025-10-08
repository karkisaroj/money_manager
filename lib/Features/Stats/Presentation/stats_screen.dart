import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stats')),
      body: Column(
        children: [
          // Tab buttons
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Stats')),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text('Budget')),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text('Note')),
              ],
            ),
          ),
          // Month selector
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              Text(
                'Jul 2020',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ],
          ),
          // Chart area placeholder
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(vertical: 12),
            color: Colors.grey[200],
            child: const Center(child: Text('Pie/Bar Chart Here')),
          ),
          // List of categories/expenses
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text('42%'),
                  ),
                  title: Text('Apparel'),
                  trailing: Text('1,046.76'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Text('12%'),
                  ),
                  title: Text('Household'),
                  trailing: Text('315.48'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow[700],
                    child: Text('12%'),
                  ),
                  title: Text('Education'),
                  trailing: Text('300.99'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange[200],
                    child: Text('8%'),
                  ),
                  title: Text('Transportation'),
                  trailing: Text('200.00'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('5%'),
                  ),
                  title: Text('Gift'),
                  trailing: Text('145.36'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green[300],
                    child: Text('5%'),
                  ),
                  title: Text('Health'),
                  trailing: Text('141.36'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('4%'),
                  ),
                  title: Text('Culture'),
                  trailing: Text('99.99'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
