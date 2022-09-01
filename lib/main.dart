import 'package:flutter/material.dart';
import 'package:flutter_task/about_coll.dart';
import 'package:flutter_task/college.dart';
import 'package:flutter_task/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter task',
      
      home: HomeScreen(),
    );
  }
}

