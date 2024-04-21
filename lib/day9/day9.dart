import 'package:flutter/material.dart';

class StatefullCircle extends StatefulWidget {
  const StatefullCircle({super.key});

  @override
  State<StatefullCircle> createState() => _StatefullCircleState();
}

class _StatefullCircleState extends State<StatefullCircle> {
  int noOfBAlls = 5;
  double circleSIze = 50;
  bool isGreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Statful Widget"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.end,
                    children: [
                      for (int i = 0; i <= noOfBAlls; i++)
                        Container(
                          margin: EdgeInsets.all(1),
                          height: circleSIze,
                          width: circleSIze,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(80),
                              color: isGreen ? Colors.green : null),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text("Circle Size "),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () => {circleSIze = circleSIze - 10, setState(() {})},
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                    ),
                    child: Center(child: Text("-")),
                  ),
                ),
                Container(
                  height: 22,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Center(
                    child: Text(
                      circleSIze.toString(),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {circleSIze = circleSIze + 10, setState(() {})},
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    child: Center(child: Text("+")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text("No of Balls "),
                SizedBox(
                  width: 42,
                ),
                InkWell(
                  onTap: () => {
                    if (noOfBAlls == 0)
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Cannot reduce ore than 0"),
                          ),
                        )
                      }
                    else
                      {
                        noOfBAlls = noOfBAlls - 1,
                        setState(() {}),
                      }
                  },
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                    ),
                    child: Center(child: Text("-")),
                  ),
                ),
                Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Center(child: Text(noOfBAlls.toString())),
                ),
                InkWell(
                  onTap: () {
                    print("done +");
                  },
                  child: InkWell(
                    onTap: () => {
                      if (noOfBAlls == 100)
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Cannot increase more than 100"),
                            ),
                          )
                        }
                      else
                        {
                          noOfBAlls = noOfBAlls + 1,
                          setState(() {}),
                        }
                    },
                    child: Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                      child: Center(child: Text("+")),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Bg Color Green "),
                SizedBox(
                  width: 20,
                ),
                Switch(
                    value: isGreen,
                    onChanged: (f) {
                      isGreen = f;
                      setState(() {});
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
