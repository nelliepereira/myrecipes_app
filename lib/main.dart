import 'package:flutter/material.dart';
import 'package:myrecipes_app/welcomepg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:myrecipes_app/homepg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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


