
// import 'dart:html';
// import 'dart:html';
// import 'dart:html';
// import 'dart:html';
import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/actorsController.dart';
import 'package:movie2/views/home/lastMovies.dart';
import 'package:movie2/views/home/trandingTitle.dart';
import 'package:movie2/views/home/trandingItems.dart';

import 'actors.dart';
import 'topActor.dart';

// import 'lastMovies.dart';

class Home extends StatelessWidget {
    Home({Key? key}) : super(key: key);



   @override
  Widget build(BuildContext context) {


     var _appBar = AppBar(

       centerTitle: true,
       title: Text('Movie land',style: TextStyle(fontSize: Get.width*.05),),
       actions: [
         Container(
           margin: EdgeInsets.only(right: Get.width*.03),
           child: Icon(Icons.search_sharp,size: Get.width*.075),
         )
       ],
       backgroundColor: Colors.black,
       leading:  Icon(Icons.menu ,size: Get.width*.075,),

     );



    return Scaffold(
      backgroundColor: Colors.black,
      appBar:_appBar ,
      body: SafeArea(child: body()),
    );
  }


  body() {

    return ListView(

      children: [

        LastMovies(),

        TrendingTitel(),

        TrendingItems(),

        Actors(),
        
        Container(
          height: Get.width*.1,
          //color: Colors.cyanAccent,
          child: Center(child: Text('Top actor of week',style: TextStyle(fontSize:Get.width*.05 ,color: Colors.amber),)),
        ),

        TopActor(),

      ],
    );
  }
 // tlg : @mr_roz

}
