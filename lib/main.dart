import 'package:flutter/material.dart';
import 'package:myrecipes_app/welcomepg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:myrecipes_app/homepg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Recipes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: welcomepg(),
    );
  }
}


