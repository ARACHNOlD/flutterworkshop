import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 4"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(80)),
                ),
              ),
              Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(width: 2),
                ),
                child: Text("ram"),
              ),
              Positioned(
                left: 120,
                top: 50,
                child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(width: 2),
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: 130,
                child: Container(
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 197, 24),
                    border: Border.all(width: 2),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 40,
                child: Container(
                  height: 120,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(width: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
