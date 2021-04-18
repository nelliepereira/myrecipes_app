import 'dart:html';
import 'package:flutter/rendering.dart';
import 'package:myrecipes_app/widgets/drawerMenu.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';

class recipepg extends StatefulWidget {
  @override
  _recipepgState createState() => _recipepgState();
}

class _recipepgState extends State<recipepg> {
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
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      )),
                ],
              ),
            )
          : null,
      drawer: context.isMobile ? Drawer(child: drawermenu()) : null,
      body: SingleChildScrollView(
        child: Container(
          //height: context.screenHeight,
          decoration: BoxDecoration(),
          child: Column(children: [
            VxDevice(mobile: SizedBox(), web: titlebar()),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.grey[100],
                alignment: Alignment.center,
                child: context.isMobile
                    ? Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(
                              'Assets/Recipe1.jpg',
                              height: context.isMobile ? 250 : 350,
                              width: context.isMobile ? 250 : 350,
                            ),
                          ),
                          SizedBox(
                              height: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.brown)),
                                ),
                              )),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('Assets/yoga1.jpg'),
                                radius: 30,
                              ),
                              Column(
                                children: [
                                  Text('Recipe Name:'),
                                  Text('Recipe by:'),
                                  Text('Ratings'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            height:
                                context.isMobile ? 900 : context.screenHeight,
                            width: context.screenWidth,
                            decoration: BoxDecoration(
                                color: Colors.brown[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 2),
                                  Text('Cooking Time:'),
                                  SizedBox(height: 10),
                                  Text(
                                    'Instructions:',
                                    softWrap: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'Assets/Recipe1.jpg',
                            height: context.isMobile ? 250 : 500,
                            width: context.isMobile ? 250 : 500,
                          ),
                          SizedBox(
                              height: context.screenHeight - 80,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Colors.brown)),
                                ),
                              )),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage('Assets/yoga1.jpg'),
                                    radius: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Recipe Name:'),
                                      Text('Recipe by:'),
                                      Text('Ratings'),
                                    ],
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Container(
                                    height: context.isMobile
                                        ? 900
                                        : context.screenHeight,
                                    width: context.screenWidth * 0.5,
                                    decoration: BoxDecoration(
                                        color: Colors.brown[200],
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 2),
                                          Text('Cooking Time:'),
                                          SizedBox(height: 10),
                                          Text(
                                            'Instructions:',
                                            softWrap: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          return ;
        },
        backgroundColor: Colors.green,
        //shape: RoundedRectangleBorder(),
        child: Icon(Icons.share),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      /*bottomNavigationBar: context.isMobile?
      BottomNavigationBar(
          items:): null,*/



    );
  }
}
