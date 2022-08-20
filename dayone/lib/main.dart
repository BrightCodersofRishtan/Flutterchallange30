import 'package:dayone/screens/home_page.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
// https://youtu.be/PFkCSLnKKx0

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
