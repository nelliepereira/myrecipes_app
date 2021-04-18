import 'dart:html';
import 'package:myrecipes_app/detailpage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';

class weekstarter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => recipepg()));
        },
        child: Container(
          width: 400,
          child: Card(
            shadowColor: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset('Assets/Recipe1.jpg', height: 100, width: 100,),

                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 30),
                            child: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1560365163-3e8d64e762ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8aGFwcHklMjBmYWNlfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80'), radius:20,),
                          ),

                        ],
                      ),
                    ),
                    Text('Recipe by:'),
                  ],
                ),
                Column(
                  children: [

                    Text('Best Starter of the Week'),
                    Text('Recipe Name'),
                    Text('Cooking Time:'),
                    Text('Instructions:', softWrap: true,),
                  ],
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}

class weekmain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => recipepg()));
        },
        child: Container(
          width: 400,
          child: Card(
              shadowColor: Colors.black,
              elevation: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Image.asset('Assets/Recipe1.jpg', height: 100, width: 100,),
                            Padding(
                              padding: const EdgeInsets.only(top: 80, left: 30),
                              child: CircleAvatar(backgroundImage: AssetImage('Assets/yoga1.jpg'), radius:20,),
                            ),

                          ],
                        ),
                      ),
                      Text('Recipe by:'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Best Mains of the Week'),
                      Text('Recipe Name'),
                      Text('Cooking Time:'),
                      Text('Instructions:', softWrap: true,),
                    ],
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
class weekdessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => recipepg()));
        },
        child: Container(
          width: 400,
         // color: Colors.pink,
          child: Card(
              shadowColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Image.asset('Assets/Recipe1.jpg', height: 100, width: 100,),

                            Padding(
                              padding: const EdgeInsets.only(top: 80, left: 30),
                              child: CircleAvatar(backgroundImage: AssetImage('Assets/yoga1.jpg'), radius:20,),
                            ),

                          ],
                        ),
                      ),
                      Text('Recipe by:'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Best Dessert of the Week'),
                      Text('Recipe Name'),
                      Text('Cooking Time:'),
                      Text('Instructions:', softWrap: true,),
                    ],
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}