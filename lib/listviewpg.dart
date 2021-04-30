import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:velocity_x/velocity_x.dart';


class listviewpg extends StatefulWidget {
final String catname1 ;
  listviewpg({this.catname1});
  @override
  _listviewpgState createState() => _listviewpgState();
}

class _listviewpgState extends State<listviewpg> {
  final filterrecipe = FirebaseFirestore.instance.collection('Recipe');
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body:Container(
          color: Colors.pink,
          height: 600,
          child: StreamBuilder(
            stream: filterrecipe.where("catName",isEqualTo: widget.catname1).snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
              List<recipecls> recipelist  = snapshot.data.docs.map((e) => recipecls.fromJson(e.data())).toList();
              if(snapshot.hasData) {
                  return
                Container(
                    color: Colors.pink,
                   height: 500,
                    width: 600,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context,index){
                        return Card(
                          child: Column(
                            children: [
                              Text(recipelist[index].recipename1),
                              Text(recipelist[index].recipecalorie1)
                            ],
                          ),
                        );
                        }
                        ),
                  );
              } else {
                return CircularProgressIndicator();
              }




            }
          ),
        ),
      ),
    );
  }
}


