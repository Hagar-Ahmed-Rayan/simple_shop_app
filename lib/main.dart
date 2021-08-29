import 'package:flutter/material.dart';
import 'package:iclubprogect2/Presentations/Screens/DisplayScreen.dart';
import 'package:iclubprogect2/Presentations/Screens/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      routes: {
        DisplayScreen.routeName:(_)=>DisplayScreen(),
    },
      home:
      LoginScreen(),

    );
  }
}


