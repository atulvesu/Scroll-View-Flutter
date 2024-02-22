import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scrollview/screens/listseperatedscreen.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    var arrName = [
      "Adward",
      "Bella",
      "Kristen",
      "Kitty",
      "Twinkle",
      "Kitty",
      "Adward",
      "Bella",
      "Kristen",
      "Kitty",
      "Twinkle",
      "Kitty",
      "Adward",
      "Bella",
      "Kristen",
      "Kitty",
      "Twinkle",
      "Kitty",
      "Adward",
      "Bella",
      "Kristen",
      "Kitty",
      "Twinkle",
      "Kitty",
      "Twinkle",
      "Kitty"
    ];

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "List View.builder",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                    child: Text(
                      arrName[index],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              itemCount: arrName.length,
              itemExtent: 50,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListSeperatedScreen()));
              },
              child: Text("Next Page"))
        ],
      )),
    );
  }
}
