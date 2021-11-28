// ignore_for_file: file_names

// import 'dart:html';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/lastMoviesController.dart';
import 'package:movie2/views/infoItem/infoItem_main.dart';

// ignore: must_be_immutable
class LastMovies extends StatelessWidget {
   LastMovies({Key? key}) : super(key: key);
   LastMovies_controller lastController  = Get.put(LastMovies_controller());
  @override
  Widget build(BuildContext context) {
   // var wi = Get.width;
    return FadeInRightBig(
      child: Container(
        height: Get.width*.8,
        color: Colors.black ,
        child: Obx(()=>ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: lastController.lastMovies.length,
          itemBuilder: (context, index) {
            var movies =lastController.lastMovies[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Get.to(const infoItem(),transition: Transition.rightToLeftWithFade,);},
                child: Container(
                  width: Get.width*.5,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Expanded(
                          flex:10,
                          child: Stack(
                            children: [ //todo:images
                              Image.asset( movies['image'],fit: BoxFit.fill,width: Get.width*.45),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  decoration:  BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(.1),
                                        Colors.black.withOpacity(.3),
                                        Colors.black.withOpacity(.4),
                                        Colors.black.withOpacity(.8),
                                        Colors.black.withOpacity(.9),
                                        Colors.black,
                                      ],
                                    )
                                  ),
                                  height: Get.width*.1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                    Text('⭐⭐⭐⭐⭐  ',style:TextStyle(color: Colors.white,fontSize: Get.width*.04) ,),
                                    Padding(
                                      padding:  EdgeInsets.only(right: Get.width*.02),
                                      child: CircleAvatar(
                                        radius: Get.width*.04,
                                        backgroundColor: Colors.amber,
                                        child: Text(movies['rate'],style:TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: Get.width*.04) ,),
                                      ),
                                    ),
                                  ],),
                                ),
                              ),
                            ],
                          )
                      ),

                      Expanded(
                          flex:2 ,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left:Get.width*.02),
                                  child: Text(movies['name'],
                                    style: TextStyle(fontSize: Get.width*.05,fontWeight: FontWeight.w900,color: Colors.white),),
                                  //  color: Colors.red,
                                ),flex: 3,),
                              Expanded(child: Container(
                                height: Get.width*.07,
                                decoration:  BoxDecoration(
                                    //color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Colors.orangeAccent.withOpacity(.4)),
                                ),

                                child: Center(child: Text('${movies['yer']}',style: TextStyle(fontSize: Get.width*.04,color: Colors.orange,fontWeight: FontWeight.w900))),
                                // color: Colors.cyan,
                              ),flex: 1,),   ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}

