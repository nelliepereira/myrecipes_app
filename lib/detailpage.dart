import 'dart:html';
import 'package:flutter/rendering.dart';
import 'package:myrecipes_app/Class/recipecls.dart';
import 'package:myrecipes_app/widgets/drawerMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:screenshot/screenshot.dart';
import 'dart:ui';

class recipepg extends StatefulWidget {
  final recipecls recipeobj;
  recipepg(this.recipeobj);

  @override
  _recipepgState createState() => _recipepgState();
}

class _recipepgState extends State<recipepg> {
  final _screenshotctrl = ScreenshotController();
  int btmindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isMobile
          ? AppBar(
        //leading: Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.brown[200],
        toolbarHeight: 30,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.food_bank_outlined, color: Colors.black,),
            Text(
              'Secret Recipes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 30,
                alignment: Alignment.bottomRight,
                child: Text(
                  ' Not a secret anymore!!!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      )
          : null,
      drawer: context.isMobile ? Drawer(child: drawermenu()) : null,
      body: SingleChildScrollView(
        child: Screenshot(
          controller: _screenshotctrl,
          child: Container(
            decoration: BoxDecoration(),
            child: Column(children: [
              VxDevice(mobile: SizedBox(), web: titlebar()),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.grey[100],
                  alignment: Alignment.center,
                  child: context.isMobile
                      ? Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.network(widget.recipeobj.recipeimage1[0], height: 200, width: 200, fit: BoxFit.fitWidth,),
                      ),
                      SizedBox(
                          height: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.brown)),
                            ),
                          )),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(widget.recipeobj.recipeauthor1[1]),
                            radius: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.recipeobj.recipename1,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Recipe by:  ' + widget.recipeobj.recipeauthor1[0]),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: context.isMobile ? 600 : context.screenHeight,
                        width: context.screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2),
                              Text('Cooking Time:  ' + widget.recipeobj.recipetime1),
                              SizedBox(height: 10),
                              Text('Servings:  ' +
                                widget.recipeobj.recipeservings1,
                                softWrap: true,
                              ),

                              SizedBox(height: 15,),
                              Text('Ingredients', style: TextStyle(fontStyle: FontStyle.italic),),
                              Text(
                                widget.recipeobj.recipeingred1,textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20,),
                              Text('1.  ' + widget.recipeobj.recipesteps1[0],
                                softWrap: true,textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 10,),
                              Text('2.  ' +
                                  widget.recipeobj.recipesteps1[1],textAlign: TextAlign.justify,
                                softWrap: true,
                              ),
                              SizedBox(height: 10,),
                              Text('3.  ' +
                                  widget.recipeobj.recipesteps1[2],textAlign: TextAlign.justify,
                                softWrap: true,
                              ),
                              SizedBox(height: 10,),
                              Text('4.  ' +
                                  widget.recipeobj.recipesteps1[3],textAlign: TextAlign.justify,
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.network(widget.recipeobj.recipeimage1[0], height: 350, width: 350, fit: BoxFit.fitWidth,),
                      ),
                      SizedBox(
                          height: context.screenHeight,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.brown)),
                            ),
                          )),
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(widget.recipeobj.recipeauthor1[1]),
                                radius: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.recipeobj.recipename1,style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('Recipe by:  ' + widget.recipeobj.recipeauthor1[0]),
                                ],
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Container(
                                height: 500,
                                width: context.screenWidth * 0.5,
                                decoration: BoxDecoration(
                                    color: Colors.brown[200],
                                    borderRadius:
                                    BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 2),
                                      Text('Cooking Time:  ' + widget.recipeobj.recipetime1),
                                      SizedBox(height: 10),
                                      Text('Servings:  ' +
                                          widget.recipeobj.recipeservings1,
                                        softWrap: true,
                                      ),

                                      SizedBox(height: 15,),
                                      Text('Ingredients', style: TextStyle(fontStyle: FontStyle.italic),),
                                      Text(
                                        widget.recipeobj.recipeingred1,textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(height: 20,),
                                      Text('1.  ' + widget.recipeobj.recipesteps1[0],
                                        softWrap: true,textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(height: 10,),
                                      Text('2.  ' +
                                          widget.recipeobj.recipesteps1[1],textAlign: TextAlign.justify,
                                        softWrap: true,
                                      ),
                                      SizedBox(height: 10,),
                                      Text('3.  ' +
                                          widget.recipeobj.recipesteps1[2],textAlign: TextAlign.justify,
                                        softWrap: true,
                                      ),
                                      SizedBox(height: 10,),
                                      Text('4.  ' +
                                          widget.recipeobj.recipesteps1[3],textAlign: TextAlign.justify,
                                        softWrap: true,
                                      ),
                                      SizedBox(height: 10,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // return _takescreenshot();
        },
        backgroundColor: Colors.green,
        //shape: RoundedRectangleBorder(),
        child: Icon(Icons.share),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
     bottomNavigationBar: BottomNavigationBar(
       iconSize: 15,
       currentIndex: btmindex,
       backgroundColor: Colors.grey[200],
       selectedFontSize: 15,
       unselectedFontSize: 10,
       items: [

         BottomNavigationBarItem(
           label: 'Home',
           icon: InkWell(
             onTap: (){
             },

               child: Icon(Icons.home,)),
         ),
         BottomNavigationBarItem(
           label: 'Favourite',
           icon: Icon(CupertinoIcons.heart_solid),
         ),
         BottomNavigationBarItem(
           label: 'To Try List',
           icon: Icon(Icons.list_alt ),
         ),
       ],
     ),
    );
  }


 /* void _takescreenshot() async {
   // final _imagefile = await _screenshotctrl.capture();
   // Image.memory(_imagefile);
    //Share.shareFiles(_imagefile.path);
  }*/

}