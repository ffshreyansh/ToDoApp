import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //init Hive
  await Hive.initFlutter();

  //opne a box
  var box = await Hive.openBox('TodoBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'todo app',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
