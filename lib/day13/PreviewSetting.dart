

import 'package:flutter/material.dart';

class PreviewSetting extends StatefulWidget {
  const PreviewSetting({super.key});

  @override
  State<PreviewSetting> createState() => _SettingState();
}

class _SettingState extends State<PreviewSetting> {
  Color? _selectedColor = Colors.black;
  Color? _BoxColor = Colors.black;

  int fontsize = 15;
  TextEditingController textCntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Setting"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1), // Set height of border
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black, // Set border color
                  width: 1.0, // Set border width
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Text to show :"),
                  TextField(
                    controller: textCntrl,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Font Size :"),
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              fontsize--;
                            });
                          },
                          icon: Icon(Icons.remove)),
                      Text(fontsize.toString()),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              fontsize++;
                            });
                          },
                          icon: Icon(Icons.add)),
                    ],
                  ),
                  Text("Text Color:"),
                  RadioListTile<Color>(
                    title: Text('Red'),
                    value: Colors.red,
                    groupValue: _selectedColor,
                    onChanged: (Color) {
                      setState(() {
                        _selectedColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('Green'),
                    value: Colors.green,
                    groupValue: _selectedColor,
                    onChanged: (Color) {
                      setState(() {
                        _selectedColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('Blue'),
                    value: Colors.blue,
                    groupValue: _selectedColor,
                    onChanged: (Color) {
                      setState(() {
                        _selectedColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('Black'),
                    value: Colors.black,
                    groupValue: _selectedColor,
                    onChanged: (Color) {
                      setState(() {
                        _selectedColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('White'),
                    value: Colors.white,
                    groupValue: _selectedColor,
                    onChanged: (Color) {
                      setState(() {
                        _selectedColor = Color;
                      });
                    },
                  ),
                  Text("Box Color:"),
                  RadioListTile<Color>(
                    title: Text('Red'),
                    value: Colors.red,
                    groupValue: _BoxColor,
                    onChanged: (Color) {
                      setState(() {
                        _BoxColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('Green'),
                    value: Colors.green,
                    groupValue: _BoxColor,
                    onChanged: (Color) {
                      setState(() {
                        _BoxColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('Blue'),
                    value: Colors.blue,
                    groupValue: _BoxColor,
                    onChanged: (Color) {
                      setState(() {
                        _BoxColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('Black'),
                    value: Colors.black,
                    groupValue: _BoxColor,
                    onChanged: (Color) {
                      setState(() {
                        _BoxColor = Color;
                      });
                    },
                  ),
                  RadioListTile<Color>(
                    title: Text('White'),
                    value: Colors.white,
                    groupValue: _BoxColor,
                    onChanged: (Color) {
                      setState(() {
                        _BoxColor = Color;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Text("Box Border Width:"),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text("15"),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Box Border Radious :"),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text("15"),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Font Size :"),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text("15"),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Box Height :"),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text("15"),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          {
                            
                          },
                        );
                      },
                      child: Text("Save"),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
