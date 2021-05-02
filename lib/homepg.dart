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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Popular Recipes',style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold) ),
                  SizedBox(
                    height: 8,
                  ),
                  midview(),
                ],
              ),
            ),

             Container(
               height: 370,
                  color: Colors.brown[100],
                  child: context.isMobile?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Recipe of the Week',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                      starrecipe(),
                     ],

                  ): Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Recipe of the Week',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                          starrecipe(),
                        ],

                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Do you want to share your secret recipe',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                          secretadd(),
                        ],

                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('About us',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                          about(),
                        ],

                      ),

                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
