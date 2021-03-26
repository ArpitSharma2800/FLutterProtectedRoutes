import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
          child: Text(
        'Helping ...',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      )),
    );
  }
}
