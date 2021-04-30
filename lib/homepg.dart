import 'package:flutter/material.dart';
import 'package:myrecipes_app/test.dart';
import 'package:myrecipes_app/widgets/banner.dart';
import 'package:myrecipes_app/widgets/drawerMenu.dart';
import 'package:myrecipes_app/widgets/midview.dart';
import 'package:myrecipes_app/widgets/recipeweek.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:share/share.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    upload();
  }
  Future upload() async {
    await Firebase.initializeApp();
  }
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isMobile
          ? AppBar(
        //leading: Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.brown[200],
        toolbarHeight: 30,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.food_bank_outlined, color: Colors.black,),
            Text(
              'Secret Recipes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 30,
                alignment: Alignment.bottomRight,
                child: Text(
                  ' Not a secret anymore!!!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      )
          : null,
      drawer: context.isMobile ? Drawer(child: drawermenu()) : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            VxDevice(mobile: SizedBox(), web: titlebar()),
            SizedBox(
              height: 10,
            ),
            Container(child: drawermenubar()),
            SizedBox(
              height: 10,
            ),
            Container(
              child: banner(),
            ),
            SizedBox(height: 15,),

            Container(
              height: context.screenHeight * 0.5,
              //color: Colors.brown[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Popular Recipes' ),
                  SizedBox(
                    height: 8,
                  ),
                  midview(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Recipes of the Week'),
            VxDevice(
                mobile: Container(
                  color: Colors.brown[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [starrecipe()],
                  ),
                ),
                web: Container(
                  color: Colors.brown[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [starrecipe()],
                  ),
                )),


          ],
        ),
      ),
    );
  }
}
