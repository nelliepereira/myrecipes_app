import 'package:flutter/material.dart';

class categorycls {
  String catid1;
  String catname1;


  categorycls({this.catid1, this.catname1});

  categorycls.fromJson(Map<String, dynamic> json) {
    catid1 = json['catId'];
    catname1 = json['catName'];


  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data2 = new Map<String,dynamic>();
    data2['catId']= this.catid1;
    data2['catName']= this.catname1;


  }

}
