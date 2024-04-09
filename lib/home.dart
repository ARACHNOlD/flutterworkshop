import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 4"),
      ),
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment(0.6, 0.5),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 5),
                  color: Colors.red,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(width: 5),
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(color: Colors.yellow),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Home"),
            Text("Contact"),
            Icon(Icons.fingerprint_outlined)
          ],
        ),
      ),
    );
  }
}
