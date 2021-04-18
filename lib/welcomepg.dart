import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes_app/homepg.dart';
import 'package:myrecipes_app/widgets/banner.dart';
import 'package:myrecipes_app/widgets/drawerMenu.dart';
import 'package:myrecipes_app/widgets/recipeweek.dart';
import 'package:velocity_x/velocity_x.dart';

class welcomepg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.network('https://www.eatwell101.com/wp-content/uploads/2020/01/Oven-Baked-Chicken-Bites-recipe-6.jpg',
              height: context.screenHeight, width: context.screenWidth, fit: BoxFit.cover,
            ).opacity(value: 0.7),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Container(
                alignment: Alignment.center,
                height: context.isMobile? 30: 40,
                width: context.isMobile? 300: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.grey[200],
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search, color: Colors.brown[200],),
                      hintText: 'What do you fancy today?', alignLabelWithHint: true,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:250.0),
              child: Text('Secret Recipes',
                style: TextStyle(fontSize: 35,color: Colors.white, fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                shadows: [
                  Shadow(
                      color: Colors.black, blurRadius: 4, offset: Offset(4,4),
                  ),
                ],
                letterSpacing: 3.0),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: MaterialButton(
                child: Container(
                  height: context.isMobile? 50: 50,
                    width: context.isMobile? 150: 200,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.elliptical(30, 30), bottomRight: Radius.elliptical(30, 30))),
                  child: Center(child: Text('Login', style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),)),
                ).objectCenter(),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => homepage()));
                  }

              ),
            ),
          ],
        ),
      ),
    );
  }
}
