import 'package:flutter/material.dart';
import 'package:flutterworkshop/day11/list.dart';

class PeopleProfile extends StatefulWidget {
  Function(String) onGenderChange;
  Function(int) onAgeChange;
  Function(String) onNameChange;
  PeopleProfile({
    super.key,
    required this.personIndex,
    required this.onGenderChange,
    required this.onAgeChange,
    required this.onNameChange,
  });
  int personIndex;

  @override
  State<PeopleProfile> createState() => _PeopleProfileState();
}

class _PeopleProfileState extends State<PeopleProfile> {
  late String gender = people[widget.personIndex]['gender'];
  late int age = people[widget.personIndex]['age'];
  late String name = people[widget.personIndex]['name'];

  TextEditingController hamroController = TextEditingController();

  @override
  void initState() {
    super.initState();
    hamroController.text = people[widget.personIndex]['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage(people[widget.personIndex]['image_url']),
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(200)),
              ),
              Text(people[widget.personIndex]['name']),
              Text(people[widget.personIndex]['bio']),
              Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if (age == 100) return;
                        setState(() {
                          age++;
                        });
                        widget.onAgeChange(age);
                      },
                      icon: Icon(Icons.add)),
                  Text(
                      "${people[widget.personIndex]['age'].toString()} Years old"),
                  IconButton(
                      onPressed: () {
                        if (age == 0) return;
                        setState(() {
                          age--;
                        });
                        widget.onAgeChange(age);
                      },
                      icon: Icon(Icons.remove)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Switch(
                    onChanged: (f) {
                      if (f == true) {
                        gender = 'male';
                      } else {
                        gender = 'female';
                      }
                      setState(() {});
                      widget.onGenderChange(gender);
                    },
                    value: gender == "male" ? true : false,
                  ),
                  Text(gender),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              TextField(
                controller: hamroController,
                decoration: InputDecoration(
                  labelText: "Enter Name",
                  hintText: "Your name here",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                onPressed: () {
                  setState(() {
                    name = hamroController.text;
                  });
                  widget.onNameChange(name);
                },
                child: Text('update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
