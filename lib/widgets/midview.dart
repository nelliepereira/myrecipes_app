import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myrecipes_app/Class/categorycls.dart';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';

class midview extends StatelessWidget {
  final reciperef = FirebaseFirestore.instance.collection('Recipe');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: reciperef.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          List<recipecls> recipelist = snapshot.data.docs.map((e) => recipecls.fromJson(e.data()))
              .toList();
          if (snapshot.hasData) {
            return Container(
             // height: 100,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                  //physics: NeverScrollableScrollPhysics(),
                  //shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: context.isMobile ? 1 : 8),
                  itemCount: context.isMobile ? 3 : 8,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: context.isMobile ? 100 : 100,
                          width: context.isMobile ? 100 : 100,
                          decoration: BoxDecoration(
                            //color: Colors.brown[200],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.network(recipelist[index].recipeimage1[0].toString(),fit: BoxFit.cover,),
                          ),
                        ),
                        Text(recipelist[index].recipename1, softWrap: true,),
                        SizedBox(height: 5,),
                        Container(
                          child: SmoothStarRating(
                            rating: double.parse(recipelist[index].reciperating1),
                            isReadOnly: true,
                            size: 10,
                            color: Colors.yellow,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half_outlined,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            spacing: 3,
                            onRated: (value) {},
                          ),
                        ),
                      ],
                    );
                  }),

            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}


