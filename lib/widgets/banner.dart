import 'dart:html';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';

class banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VxSwiper.builder(
          itemCount: 10,
          height: context.isMobile ? 195 : 300,
          aspectRatio: 16 / 9,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 0.8,
          reverse: false,
          enlargeCenterPage: true,
          isFastScrollingEnabled: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          itemBuilder: (context, index) {
            return Container(
                // color: Colors.lightGreenAccent,
                child: "Pic $index"
                    .text
                    .white
                    .make()
                    .box
                    .rounded
                    .alignCenter
                    .color(Vx.gray200)
                    .make()
                    .p4());
          }),
    );
  }
}

class midview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: context.isMobile ? 3 : 6),
        itemCount: context.isMobile ? 3: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: context.isMobile? 100:150,
                width: context.isMobile? 100:150,
                decoration: BoxDecoration( color: Colors.brown[200],
                  border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('Assets/Recipe1.jpg',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Text('recipe name',
                softWrap: true,
              ),
              Container(
                      child: SmoothStarRating(
                        rating: 4.5,
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
        });

  }
}
