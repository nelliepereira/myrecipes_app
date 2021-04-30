import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes_app/Class/categorycls.dart';
import 'package:myrecipes_app/listviewpg.dart';
import 'package:myrecipes_app/test.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:ui';

class titlebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: context.screenWidth,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[
                Colors.brown[200],
                Colors.grey[200],
              ]
          )

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.food_bank_outlined),
          Text('Secret Recipes', style: TextStyle(fontSize: 24),),
          /*RichText(text: TextSpan(text: 'Secret Re', style: TextStyle(fontSize: 24),
           children: [
               TextSpan(text: 'cipes',style: TextStyle(fontSize: 24,color: Colors.white)),
           ]),),*/
          SizedBox(width: 25,),
          Container(alignment: Alignment.bottomRight,
              child: Text('Not a secret any more....', style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),)),

        ],
      ),
    );
  }
}

class drawermenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
         children: [
           DrawerHeader(

             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: <Color>[
                   Colors.brown[200],
                   Colors.grey[200],
                 ]
               )

             ),
               child: Container(child:
               Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                 children: [
                   CircleAvatar(
                     backgroundImage: AssetImage('Assets/Recipe2.jpg'), radius: 40,
                   ),
                   SizedBox(height: 15,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.food_bank_outlined,color: Colors.black,),
                       Text('Secret Recipes', style: TextStyle(fontSize: 24),),
                     ],
                   ),
                 ],
               ))),
           ListTile(
             title: Padding(
               padding: const EdgeInsets.only(left:8, right: 8),
               child: InkWell(
                 splashColor: Colors.brown,
                 onTap: (){},
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                     border:Border(bottom: BorderSide(color: Colors.grey ))
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Icon(Icons.person),
                           Padding(
                             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                             child: Text('Profile', style: TextStyle(fontSize: 15),),
                           ),
                         ],
                       ),
                       Icon(Icons.arrow_right),
                     ],
                   ),
                 ),
               ),
             ),
           ),
           ListTile(
             title: Padding(
               padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
               child: InkWell(
                 splashColor: Colors.brown,
                 onTap: (){},
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                       border:Border(bottom: BorderSide(color: Colors.grey ))
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Icon(Icons.notifications),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Notification', style: TextStyle(fontSize: 15),),
                           ),
                         ],
                       ),
                       Icon(Icons.arrow_right),
                     ],
                   ),
                 ),
               ),
             ),
           ),
           ListTile(
             title: Padding(
               padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
               child: InkWell(
                 splashColor: Colors.brown,
                 onTap: (){},
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                       border:Border(bottom: BorderSide(color: Colors.grey ))
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Icon(Icons.settings),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Settings', style: TextStyle(fontSize: 15),),
                           ),
                         ],
                       ),
                       Icon(Icons.arrow_right),
                     ],
                   ),
                 ),
               ),
             ),
           ),
           ListTile(
             title: Padding(
               padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
               child: InkWell(
                 splashColor: Colors.brown,

                 onTap: (){},
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                       border:Border(bottom: BorderSide(color: Colors.grey ))
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Icon(Icons.business_center_rounded),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('About Us', style: TextStyle(fontSize: 15),),
                           ),
                         ],
                       ),
                       Icon(Icons.arrow_right),
                     ],
                   ),
                 ),
               ),
             ),
           ),
           ListTile(
             title: Padding(
               padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
               child: InkWell(
                 splashColor: Colors.brown,
                 onTap: (){},
                 child: Container(
                   height: 40,
                   decoration: BoxDecoration(
                       border:Border(bottom: BorderSide(color: Colors.grey ))
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Icon(Icons.logout),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Logout', style: TextStyle(fontSize: 15),),
                           ),
                         ],
                       ),
                       Icon(Icons.arrow_right),
                     ],
                   ),
                 ),
               ),
             ),
           ),


         ],
      ),
    );
  }
}

class drawermenubar extends StatefulWidget {
  @override
  _drawermenubarState createState() => _drawermenubarState();
}

class _drawermenubarState extends State<drawermenubar> {
  final cattype = FirebaseFirestore.instance.collection('Catergory');
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.grey[200],
      child: StreamBuilder(
        stream: cattype.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
            List<categorycls> catlist  = snapshot.data.docs.map((e) => categorycls.fromJson(e.data())).toList();
           if(snapshot.hasData) {
             return Container(
               //height: 600,
               child: ListView.builder(
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                   itemCount: catlist.length,
                   itemBuilder: (context,index){
                     return InkWell(
                       onTap: () {
                         //Navigator.push(context, MaterialPageRoute(builder: (_) => listviewpg(catname1: catlist[index].catname1)));
                         Navigator.push(context, MaterialPageRoute(builder: (_) => test()));
                       },
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: VxBox(child: catlist[index].catname1.text.makeCentered()).alignCenterLeft.gray200.
                         height(context.screenHeight*0.19).width(context.screenWidth*0.15).border(color: Colors.black,width: 0.4).roundedLg.make().p4(),
                       ),
                     );
                   } ),
             );
           }
           else {
            return CircularProgressIndicator();
    // ignore: missing_return
    }
        }
      ),
    );
  }
}
