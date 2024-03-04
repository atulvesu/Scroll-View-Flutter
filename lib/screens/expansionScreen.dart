import 'package:flutter/material.dart';

class ExpansionScreen extends StatefulWidget {
  const ExpansionScreen({super.key});

  @override
  State<ExpansionScreen> createState() => _ExpansionScreenState();
}

class _ExpansionScreenState extends State<ExpansionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.teal[200],
          title: Text('ExpansionTile'),
        ),
        body: Column(
          children: <Widget>[
            ExpansionTile(
              collapsedBackgroundColor: Colors.teal,
              backgroundColor: Colors.teal,
              title: Text(
                'Name',
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.amber,
                    child: Text("Edward")),
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.amber,
                    child: Text("Edward")),
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.amber,
                    child: Text("Edward")),
                SizedBox(
                  height: 5,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.amber,
                    child: Text("Edward")),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ));
  }
}
