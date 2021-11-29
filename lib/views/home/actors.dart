import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/actorsController.dart';

class Actors extends StatelessWidget {
   Actors({Key? key}) : super(key: key);

  actorsController actorsCont = Get.put(actorsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width*.4,
      child: Center(
        child: Obx(()=>ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: actorsCont.actors.length,
          itemBuilder:(context, index) {

            var actInfo =actorsCont.actors[index];

            return FadeInLeftBig(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: Get.width*.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      CircleAvatar(
                        backgroundImage: ExactAssetImage(actInfo['image']),
                        backgroundColor: Colors.orange,
                        radius: Get.width*.12,
                      ),

                      Text(actInfo['name'],style: TextStyle(fontSize: Get.width*.04,color: Colors.white,fontWeight: FontWeight.w800),)
                    ],)
              ),
            );
          },


        )),
      ),
    );
  }
}
