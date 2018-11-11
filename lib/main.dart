import 'package:flutter/material.dart';
import 'package:scanbu/screens/first.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Scanbü';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: FirstScreen(),
    );
  }
}
