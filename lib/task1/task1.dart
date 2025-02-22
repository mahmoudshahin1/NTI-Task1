import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/constant/appicon.dart';

class TodatyTask extends StatelessWidget {
  const TodatyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('todaty task'),
        centerTitle: true,
        actions: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffCEEBDC),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                SvgPicture.asset(Appicon.IconArrowBack),
                Text('Add'),
              ],
            ),
          )
        ],
        leading: SvgPicture.asset(
          Appicon.IconArrowBack,
          width: 8,
          height: 8,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              child: Row(
                children: [
                  catigory(
                    text: 'All',
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  catigory(
                    text: 'Future',
                  ),
                  SizedBox(width: 10),
                  catigory(
                    text: 'Missed',
                  ),
                  SizedBox(width: 10),
                  catigory(
                    text: 'Done',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('Result'),
                  SizedBox(width: 10),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )),
                ],
              ),
            ),
            Cared(
              Icon: Appicon.IconTask,
              textbootom: 'Add new feature for Do It app and commit it',
              textIcon: 'future',
              color: Colors.white,
              text: 'Go to supermarket',
            ),
            Cared(
              Icon: Appicon.IconTask,
              textbootom: 'Add new feature for Do It app and commit it',
              textIcon: 'Done',
              color: Colors.green,
              text: 'Go to supermarket',
            ),
            Cared(
              Icon: Appicon.IconHome,
              textbootom: 'Add new feature for Do It app and commit it',
              textIcon: 'Done',
              color: Colors.green,
              text: 'Go to supermarket',
            ),
            Cared(
              Icon: Appicon.IconPersonal,
              textbootom: 'Add new feature for Do It app and commit it',
              textIcon: 'In progress',
              color: Colors.white,
              text: 'Go to supermarket',
            ),
            Cared(
              Icon: Appicon.IconHome,
              textIcon: 'Done',
              color: Colors.green,
              textbootom: 'Add new feature for Do It app and commit it',
              text: 'Go to supermarket',
            ),
            Cared(
              Icon: Appicon.IconHome,
              textbootom: 'Add new feature for Do It app and commit it',
              textIcon: 'Done',
              color: Colors.green,
              text: 'Go to supermarket',
            ),
          ],
        ),
      ),
    );
  }
}

class catigory extends StatelessWidget {
  catigory({
    required this.text,
    this.color,
    super.key,
  });
  String text;
  Color? color = Colors.white;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ));
  }
}

class Cared extends StatelessWidget {
  Cared({
    required this.text,
    required this.Icon,
    required this.textbootom,
    required this.textIcon,
    required this.color,
    super.key,
  });
  String text;
  String textbootom;
  String textIcon;
  Color color;
  String Icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Container(
        width: 400,
        height: 80,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Icon,
                    ),
                    SizedBox(width: 20),
                    Text(text),
                    Spacer(),
                    catigory(
                      color: color,
                      text: textIcon,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(textbootom),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
