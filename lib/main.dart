import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FRouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: FRouter.router.generator,
    );
  }
}
