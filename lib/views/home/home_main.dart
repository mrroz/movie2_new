
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/views/home/lastMovies.dart';
import 'package:movie2/views/home/trandingTitle.dart';
import 'package:movie2/views/home/trandingItems.dart';

// import 'lastMovies.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.add),

      ),

      body: SafeArea(child: body()),
    );
  }

  body() {

    var wi = Get.width;


    return ListView(
      children: [

        LastMovies(),

        TrendingTitel(),

        TrendingItems(),

        Container(
          height: wi*.4,
          color: Colors.blue,
        ),
      ],
    );
  }
 // tlg : @mr_roz

}
