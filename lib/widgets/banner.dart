import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myrecipes_app/Class/ImageBanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';


class banner extends StatelessWidget {
  final imageref = FirebaseFirestore.instance.collection('ImagesBanner');
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: imageref.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
          List<Imageban> Imagebanlist  = snapshot.data.docs.map((e) => Imageban.fromJson(e.data())).toList();
          if(snapshot.hasData) {
            return
            VxSwiper.builder(
              itemCount: Imagebanlist.length,
              height: context.isMobile ? 195 : 300,
              aspectRatio: 16 / 9,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: true,
              initialPage: 0,
              viewportFraction: 0.9,
              reverse: false,
              enlargeCenterPage: true,
              isFastScrollingEnabled: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              itemBuilder: (context, index) {
                  return Container(
                         height: context.screenHeight * 0.25,
                          width: context.isMobile? 600:1200,
                          color: Colors.grey[200],
                          child: Image.network(Imagebanlist[index].images,fit: BoxFit.fitWidth,),
                  );
                }
                );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}




