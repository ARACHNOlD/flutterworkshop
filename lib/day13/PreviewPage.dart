import 'package:flutter/material.dart';
import 'package:flutterworkshop/day13/PreviewSetting.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PreviewSetting();
                  },
                ),
              );
            },
            icon: Icon(Icons.edit),
          ),
        ],
        title: Text("Finalize your Sticker"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: Colors.grey,
            ),
          ),
          child: Center(
            child: Text(
              "Hi Flutter",
              style: TextStyle(fontSize: 11, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
