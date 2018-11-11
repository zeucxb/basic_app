import 'package:flutter/material.dart';
import 'package:scanbu/screens/first.screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => FirstScreen()),
            );
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
