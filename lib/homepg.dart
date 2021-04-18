import 'package:flutter/material.dart';
import 'package:myrecipes_app/widgets/banner.dart';
import 'package:myrecipes_app/widgets/drawerMenu.dart';
import 'package:myrecipes_app/widgets/recipeweek.dart';
import 'package:velocity_x/velocity_x.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
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
            Text('Favourite Recipes'),
            SizedBox(
              height: 10,
            ),
            Container(
              height: context.screenHeight * 0.28,
              //color: Colors.brown[200],
              child: midview(),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Recipes of the Week'),
            VxDevice(
                mobile: Container(
                  color: Colors.brown[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [weekstarter(), weekmain(), weekdessert()],
                  ),
                ),
                web: Container(
                  color: Colors.brown[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [weekstarter(), weekmain(), weekdessert()],
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
