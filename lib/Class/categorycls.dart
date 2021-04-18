import 'package:flutter/material.dart';

class categorycls {
  int catid1;
  String catname1;
  List subcatname1;

  categorycls({this.catid1, this.catname1,this.subcatname1});

  categorycls.fromJson(Map<String, dynamic> json) {
    catid1 = json['catId'];
    catname1 = json['catName'];
    subcatname1  =json['subCatName'];

  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data2 = new Map<String,dynamic>();
    data2['catID']= this.catid1;
    data2['catName']= this.catname1;
    data2['subCatName']= this.subcatname1;

  }

}
