import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:myrecipes_app/detailpage.dart';
import 'package:velocity_x/velocity_x.dart';


class listviewpg extends StatefulWidget {
final String catname2 ;
listviewpg({this.catname2});
  @override
  _listviewpgState createState() => _listviewpgState();
}

class _listviewpgState extends State<listviewpg> {
  final filterrecipe = FirebaseFirestore.instance.collection('Recipe');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        color: Colors.brown[200],
        height: 200,
        child: StreamBuilder(
         stream: filterrecipe.where("catName",isEqualTo: widget.catname2).snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData) {
              List<recipecls> recipelist  = snapshot.data.docs.map((e) => recipecls.fromJson(e.data())).toList();
                return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: recipelist.length,
                    itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => recipepg(recipelist[index])));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Text(recipelist[index].catname1),
                            Text(recipelist[index].recipename1),
                          ],
                        ),
                      ),
                    );
                    }
                    );
            } else {
              return CircularProgressIndicator();
            }
          }
        ),
      ),
    );
  }
}


