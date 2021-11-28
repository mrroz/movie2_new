// ignore: file_names
// ignore_for_file: file_names, must_be_immutable

// import 'dart:html';

//import 'dart:html';

// import 'dart:html';
// import 'dart:html';
import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/lastMoviesController.dart';
import 'package:movie2/controllers/trendingController.dart';

class TrendingItems extends StatelessWidget {
  TrendingItems({Key? key}) : super(key: key);
  trending_controller trendingItems = Get.put(trending_controller());

  RxInt favor = 0.obs;

  // void _bookMark(){
  //   if(trendingItems.favor.isTrue){
  //     trendingItems.favor.value =false;
  //   }
  //   else{
  //     trendingItems.favor.value =true;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //var wi = Get.width;
    return Obx(() => FadeInUp(
          duration: const Duration(seconds: 1),
          child: SizedBox(
            // width: 202,
            height: Get.height * .65,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: trendingItems.trendItems.length,
              itemBuilder: (context, index) {
                var trends = trendingItems.trendItems[index];
                return Padding(
                  padding: EdgeInsets.all(Get.width * .03),
                  child: Stack(
                    children: [

                      Container(
                        height: Get.width * .42,
                        //color: Colors.purple,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  padding: EdgeInsets.all(Get.width * .01),
                                  child: Image.asset(
                                    trends['image'],
                                    fit: BoxFit.cover,
                                    width: Get.width * .4,
                                    height: Get.width * .4,
                                  ),
                                )),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  //    color: Colors.deepOrange,
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              //  color: Colors.yellow,
                                              margin: EdgeInsets.all(Get.width * .01),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            trends['name'],
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                color: Colors.white,
                                                                fontSize:
                                                                Get.width * .055),
                                                          ),
                                                          Text(
                                                            trends['time'],
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight.w700,
                                                                color: Colors.deepOrange
                                                                    .withOpacity(.1),
                                                                fontSize:
                                                                Get.width * .05),
                                                          ),
                                                        ],
                                                      )),
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Obx(() => GestureDetector(
                                                        onTap: () => {
                                                          favor==0
                                                              ? favor.value=1
                                                              : favor.value=0,
                                                          print(favor.value)
                                                        },
                                                        child: Container(
                                                            child: favor==1
                                                                ? Icon(
                                                              Icons.bookmark_added,
                                                              color: Colors.orange,
                                                              size: Get.width *
                                                                  .085,
                                                            )
                                                                : Icon(
                                                              Icons
                                                                  .bookmark_border,
                                                              color:
                                                              Colors.orange,
                                                              size: Get.width *
                                                                  .085,
                                                            )))),
                                                  ),
                                                ],
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                margin: EdgeInsets.all(Get.width * .01),
                                                child: Text(
                                                  trends['genre'],
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: Get.width * .055),
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              margin: EdgeInsets.all(Get.width * .01),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      margin: EdgeInsets.only(left: 25),
                                                      child: Container(
                                                        height: Get.width * .07,
                                                        decoration: BoxDecoration(
                                                          //color: Colors.orangeAccent,
                                                          borderRadius:
                                                          BorderRadius.circular(4),
                                                          border: Border.all(
                                                              color: Colors.orangeAccent
                                                                  .withOpacity(.4)),
                                                        ),

                                                        child: Center(
                                                            child: Text('Full Hd',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    Get.width * .04,
                                                                    color:
                                                                    Colors.orange,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w900))),
                                                      )),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 25),
                                                      child: Container(
                                                        height: Get.width * .07,
                                                        decoration: BoxDecoration(
                                                          //color: Colors.orangeAccent,
                                                          borderRadius:
                                                          BorderRadius.circular(4),
                                                          border: Border.all(
                                                              color: Colors.orangeAccent
                                                                  .withOpacity(.4)),
                                                        ),

                                                        child: Center(
                                                            child: Text('4K',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    Get.width * .04,
                                                                    color:
                                                                    Colors.orange,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w900))),
                                                        // color: Colors.cyan,
                                                      )),
                                                ],
                                              ),
                                            )),
                                      ],
                                    ))),
                          ],
                        ),
                      ),

                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: Get.width*.32),
                          height: Get.width*.09,
                          width:  Get.width*.19,
                          color: Colors.orange,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.star,color: Colors.black,size:Get.width*.065 ,),
                            Text(trends['rate'],style: TextStyle(color: Colors.black,fontSize:Get.width*.056,fontWeight: FontWeight.w700 ),)
                          ],),
                        ),
                      ),


                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
