import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scrollview/screens/customscrollscreen.dart';

class ListSeperatedScreen extends StatefulWidget {
  const ListSeperatedScreen({super.key});

  @override
  State<ListSeperatedScreen> createState() => _ListSeperatedScreenState();
}

class _ListSeperatedScreenState extends State<ListSeperatedScreen> {
  @override
  Widget build(BuildContext context) {
    var arrName = ['Lorem', ' ipsum', ' sit', 'adipiscing', 'elit.', 'Integer'];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "List View.Seperated",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Text(arrName[index].toString());
                },
                itemCount: arrName.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 100,
                    thickness: 4,
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomScrollViewScreen()));
                },
                child: Text("NextPage"))
          ],
        ),
      ),
    );
  }
}
