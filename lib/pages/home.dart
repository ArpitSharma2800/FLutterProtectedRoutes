import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Center(
            child: Text(
          'Home Page ...',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        )),
      ),
    );
  }
}
