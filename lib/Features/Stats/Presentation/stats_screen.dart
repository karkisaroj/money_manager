import 'package:flutter/material.dart';
import 'package:money_manager/Features/Stats/Data/piedata.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stats')),
      body: Column(
        children: [
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
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(vertical: 12),
            color: Colors.black,
            child: SfCircularChart(
              legend: Legend(isVisible: true),
              series: <PieSeries<PieData, String>>[
                PieSeries<PieData, String>(
                  dataSource: [
                    PieData('Apparel', 1046.76),
                    PieData('Household', 315.48),
                    PieData('Education', 300.99),
                    PieData('Transportation', 200.00),
                    PieData('Gift', 145.36),
                    PieData('Health', 141.36),
                    PieData('Culture', 99.99),
                  ],
                  xValueMapper: (PieData data, _) => data.category,
                  yValueMapper: (PieData data, _) => data.value,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text('42%'),
                  ),
                  title: Text('Apparel'),
                  trailing: Text('1,046.76'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Text('12%'),
                  ),
                  title: Text('Household'),
                  trailing: Text('315.48'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow[700],
                    child: Text('12%'),
                  ),
                  title: Text('Education'),
                  trailing: Text('300.99'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange[200],
                    child: Text('8%'),
                  ),
                  title: Text('Transportation'),
                  trailing: Text('200.00'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('5%'),
                  ),
                  title: Text('Gift'),
                  trailing: Text('145.36'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green[300],
                    child: Text('5%'),
                  ),
                  title: Text('Health'),
                  trailing: Text('141.36'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('4%'),
                  ),
                  title: Text('Culture'),
                  trailing: Text('99.99'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
