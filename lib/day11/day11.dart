import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterworkshop/day11/list.dart';
import 'package:flutterworkshop/day11/people_profile.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({
    super.key,
  });

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People List"),
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 0,
                      color: people[index]['gender'] == 'male'
                          ? Colors.blue
                          : Colors.pink),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PeopleProfile(
                        onNameChange: (changeVakoName) {
                          people[index]['name'] = changeVakoName;
                          setState(() {});
                        },
                        onAgeChange: (changeVakoAge) {
                          people[index]['age'] = changeVakoAge;
                          setState(() {});
                        },
                        personIndex: index,
                        onGenderChange: (changeVakoGender) {
                          print(
                              "Gender change vayexa uta. New Gender: $changeVakoGender");
                          people[index]['gender'] = changeVakoGender;
                          setState(() {});
                        },
                      );
                    }));
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(people[index]['name']),
                    subtitle: Text("${people[index]['age']}years old."),
                    leading: Image.network(
                        "${people[index]['image_url']}?r=${Random().nextInt(200)}"),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
