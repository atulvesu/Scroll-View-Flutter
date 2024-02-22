import 'package:flutter/material.dart';
import 'package:scrollview/screens/listviewscreen.dart';

class scrollScreen extends StatefulWidget {
  const scrollScreen({super.key});

  @override
  State<scrollScreen> createState() => _scrollScreenState();
}

class _scrollScreenState extends State<scrollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //--------- Single Child Scroll View---------//
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Single Child Scroll View",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  //-------Horizontal Scroll ----------//
                  child: Row(
                    children: [
                      Container(
                        color: Colors.teal,
                        height: 200,
                        width: 110,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.pink,
                        height: 200,
                        width: 110,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.orange,
                        height: 200,
                        width: 110,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.teal,
                        height: 200,
                        width: 110,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.pink,
                        height: 200,
                        width: 110,
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        color: Colors.orange,
                        height: 200,
                        width: 110,
                        margin: EdgeInsets.all(10),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.pink,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.yellow,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.black,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.teal,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.pink,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.yellow,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  color: Colors.black,
                  height: 200,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: ElevatedButton(
                    child: Text(
                      'Next Page',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      print("Clicked for next page");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListViewScreen()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
