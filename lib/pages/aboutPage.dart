import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String name;

  const About(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text(
            'Hey $name !!!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
