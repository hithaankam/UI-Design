import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layouts - Column and Row'),
        ),
        body: Column(
          children: [
            // Row Layout
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Text('Item 1'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Text('Item 2'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text('Item 3'),
                ),
              ],
            ),
            SizedBox(height: 20),  // Add some space between the Row and Column

            // Column Layout
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.red,
                  child: const Text(
                    'Item 1',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.green,
                  child: const Text(
                    'Item 2',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.blue,
                  child: Text(
                    'Item 3',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
