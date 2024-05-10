import 'dart:ffi';

import 'package:dars13_n/stars.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyScreen();
  }
}

class MyScreen extends State<Home> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: builAppBar("Dars"), body: Stars());
  }

  AppBar builAppBar(String text) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
    );
  }
}
