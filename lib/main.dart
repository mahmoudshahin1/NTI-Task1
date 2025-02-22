import 'package:flutter/material.dart';

import 'package:newproject/constant/colors.dart';
import 'package:newproject/task1/task1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: ColorsApp.primaryColor,
          appBarTheme: AppBarTheme(
            backgroundColor: ColorsApp.primaryColor,
          )),
      title: 'Flutter Demo',
      home: const TodatyTask(),
    );
  }
}
