import 'package:flutter/material.dart';
import 'package:flutterworkshop/day11/list.dart';

class PeopleProfile extends StatefulWidget {
  Function(String) onGenderChange;
  PeopleProfile({
    super.key,
    required this.personIndex,
    required this.onGenderChange,
  });
  int personIndex;

  @override
  State<PeopleProfile> createState() => _PeopleProfileState();
}

class _PeopleProfileState extends State<PeopleProfile> {
  late String gender = people[widget.personIndex]['gender'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
                Text(people[widget.personIndex]['age'].toString()),
                SizedBox(
                  width: 150,
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
            )
          ],
        ),
      ),
    );
  }
}
