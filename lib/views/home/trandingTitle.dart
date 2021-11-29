// import 'dart:html';

// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/actorsController.dart';

class TrendingTitel extends StatelessWidget {
  TrendingTitel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wi =Get.width;
    return FadeInDown(
      child: SizedBox(
        height: wi*.14,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [

            Padding(
              padding:  EdgeInsets.only(right: wi*.04,left: wi*.04),
              child: Center(child:  Text('Trending',style: TextStyle(fontSize: wi*.065,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),

            Padding(
              padding:  EdgeInsets.only(right: wi*.04,left: wi*.04),
              child: Center(child:  Text('view all',style: TextStyle(fontSize: wi*.05,fontWeight: FontWeight.bold,color: Colors.orange),)),
            ),

          ],),
      ),
    );
  }
}
