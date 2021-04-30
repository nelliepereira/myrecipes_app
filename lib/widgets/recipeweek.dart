import 'dart:html';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:myrecipes_app/detailpage.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:ui';

class starrecipe extends StatelessWidget {
  final reciperef1 = FirebaseFirestore.instance.collection('Recipe');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: reciperef1.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            List<recipecls> recipelist1 = snapshot.data.docs.map((e) => recipecls.fromJson(e.data())).toList();
            if (snapshot.hasData) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context,index) {
                      return Card(
                          shadowColor: Colors.black,
                          child: Row(
                            children: [
                              Image.network(recipelist1[index].recipename1, height: 100,
                                width: 100,
                                fit: BoxFit.fill,),
                              Text('Recipe by:'),
                              CircleAvatar(
                                backgroundImage: NetworkImage(recipelist1[index].recipeauthor1[1]),
                                radius: 20,),
                              Column(
                                children: [
                                  Text(''),
                                  Text(recipelist1[index].recipesteps1[index].toString() ),
                                  Text('Instructions:', softWrap: true,),

                                ],
                              ),
                            ],
                          )
                      );
                    }
                  ),
                ),
              );
            }
            else {
              return CircularProgressIndicator();
            }
          }

    ),
    );
  }
}

