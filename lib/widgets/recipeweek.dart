import 'dart:html';
import 'package:flutter/widgets.dart';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myrecipes_app/homepg.dart';

import 'dart:ui';

class starrecipe extends StatelessWidget {
  final reciperef1 = FirebaseFirestore.instance.collection('Recipe');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
          stream: reciperef1.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            List<recipecls> recipelist1 = snapshot.data.docs
                .map((e) => recipecls.fromJson(e.data()))
                .toList();
            if (snapshot.hasData) {
              return Container(
                width: context.isMobile ? context.screenWidth : 500,
                //height: 400,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                            shadowColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(recipelist1[index].catname1),
                                  Image.network(
                                    recipelist1[index].recipeimage1[0],
                                    height: 200, width: 200,
                                    fit: BoxFit.fill,
                                  ),
                                  Text(
                                    recipelist1[index].recipename1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(recipelist1[index].recipecalorie1),
                                  Text(
                                    '1.  ' + recipelist1[index].recipesteps1[0],
                                    maxLines: 2,
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            )),
                      );
                    }),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}

class secretadd extends StatelessWidget {
  final reciperef1 = FirebaseFirestore.instance.collection('Recipe');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
          stream: reciperef1.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            List<recipecls> recipelist1 = snapshot.data.docs
                .map((e) => recipecls.fromJson(e.data()))
                .toList();
            if (snapshot.hasData) {
              return Container(
                width: context.isMobile ? context.screenWidth : 500,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                            shadowColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    readOnly: false,
                                    cursorColor: Colors.brown,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.fastfood,
                                        color: Colors.brown,
                                      ),
                                      hintText: 'Enter recipe name',
                                      alignLabelWithHint: true,
                                    ),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    readOnly: false,
                                    cursorColor: Colors.brown,
                                    decoration: InputDecoration(
                                      // disabledBorder: InputBorder.,
                                      //border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.fastfood,
                                        color: Colors.brown,
                                      ),
                                      hintText: 'Image Link',
                                      alignLabelWithHint: true,
                                    ),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    readOnly: false,
                                    cursorColor: Colors.brown,
                                    decoration: InputDecoration(
                                      // disabledBorder: InputBorder.,
                                      //border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.fastfood,
                                        color: Colors.brown,
                                      ),
                                      hintText: 'Ingredients',
                                      alignLabelWithHint: true,
                                    ),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    readOnly: false,
                                    cursorColor: Colors.brown,
                                    decoration: InputDecoration(
                                      // disabledBorder: InputBorder.,
                                      //border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.fastfood,
                                        color: Colors.brown,
                                      ),
                                      hintText: 'Your Secret Recipe',
                                      alignLabelWithHint: true,
                                    ),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    readOnly: false,
                                    cursorColor: Colors.brown,
                                    decoration: InputDecoration(
                                      // disabledBorder: InputBorder.,
                                      //border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.fastfood,
                                        color: Colors.brown,
                                      ),
                                      hintText: 'Servings',
                                      alignLabelWithHint: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MaterialButton(
                                      child: Container(
                                        height: context.isMobile ? 40 : 40,
                                        width: context.isMobile ? 150 : 200,
                                        decoration: BoxDecoration(
                                            color: Colors.brown[200],
                                            borderRadius: BorderRadius.only(
                                                topLeft:
                                                    Radius.elliptical(30, 30),
                                                bottomRight:
                                                    Radius.elliptical(30, 30))),
                                        child: Center(
                                            child: Text(
                                          'Submit Recipe',
                                          style: TextStyle(
                                              color: Colors.white,
                                              letterSpacing: 2),
                                        )),
                                      ).objectCenter(),
                                      onPressed: () {
                                        //Navigator.pop(context, MaterialPageRoute(builder: (_) => homepg()));
                                      }),
                                ],
                              ),
                            )),
                      );
                    }),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.isMobile ? context.screenWidth : 350,
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(title: Text('Profile', style: TextStyle(fontSize: 18),)),
            SizedBox(height: 5,),
            ListTile(title: Text('Notifications', style: TextStyle(fontSize: 18))),
            SizedBox(height: 5,),
            ListTile(title: Text('About Us', style: TextStyle(fontSize: 18))),
            SizedBox(height: 5,),
            ListTile(title: Text('Settings', style: TextStyle(fontSize: 18))),
            SizedBox(height: 5,),
            ListTile(title: Text('Suggestions', style: TextStyle(fontSize: 18))),
            SizedBox(height: 5,),
            ListTile(title: Text('Logout', style: TextStyle(fontSize: 18))),


          ],
        ),
      ),
    );
  }
}
