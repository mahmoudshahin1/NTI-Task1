import 'package:flutter/material.dart';
import 'package:newproject/constant/appicon.dart';
import 'package:newproject/widget/defult_card.dart';

class Task4ScreenProfile extends StatefulWidget {
  const Task4ScreenProfile({super.key});

  @override
  State<Task4ScreenProfile> createState() => _Task4ScreenProfileState();
}

class _Task4ScreenProfileState extends State<Task4ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 40,
              child: Image(
                image: AssetImage('assets/images/plasten.png'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const DefultCard(
              Iconprefix: Appicon.IconeUser,
              text: 'Updat Profile',
              IconSufix: Appicon.IconeArrowUp,
            ),
            SizedBox(
              height: 15,
            ),
            const DefultCard(
              Iconprefix: Appicon.IconeHestory,
              text: 'History',
              IconSufix: Appicon.IconeArrowUp,
            ),
            const SizedBox(
              height: 25,
            ),
            const DefultCard(
              text: 'Selected Option',
              IconSufix: Appicon.IconeArrowUp,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              child: Image.asset(
                            'assets/images/plasten.png',
                            fit: BoxFit.cover,
                          )),
                          Column(
                            children: [
                              Text('Hello!'),
                              Text(
                                'Option!',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              child: Image.asset(
                            'assets/images/plasten.png',
                            fit: BoxFit.cover,
                          )),
                          Column(
                            children: [
                              Text('Hello!'),
                              Text(
                                'Option!',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              child: Image.asset(
                            'assets/images/plasten.png',
                            fit: BoxFit.cover,
                          )),
                          Column(
                            children: [
                              Text('Hello!'),
                              Text(
                                'Option!',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              child: Image.asset(
                            'assets/images/plasten.png',
                            fit: BoxFit.cover,
                          )),
                          Column(
                            children: [
                              Text('Hello!'),
                              Text(
                                'Option!',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
