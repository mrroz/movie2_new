// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, camel_case_types

import 'package:get/get.dart';
 // ignore: camel_case_types

 class actorsController extends GetxController {

   RxList actors = [
     {
       'name':'thor',
       'image':'assets/images/thor.jpg',
     },
     {
       'name':'spider',
       'image':'assets/images/spider.jpg',
     },
     {
       'name':'vapor',
       'image':'assets/images/vapor.jpg',
     },
     {
       'name':'thor',
       'image':'assets/images/thor.jpg',
     },
     {
       'name':'vapor',
       'image':'assets/images/vapor.jpg',
     },
     {
       'name':'thor',
       'image':'assets/images/spider.jpg',
     },

   ].obs;


   RxList topActor = [
     {
       'name':'tom',
       'image':'assets/images/tom1.jpg',
     },

     {
       'name':'tom',
       'image':'assets/images/tom2.jpg',
     },
     {
       'name':'tom',
       'image':'assets/images/tom3.jpg',
     },
     {
       'name':'tom',
       'image':'assets/images/tom3.jpg',
     },
     {
       'name':'tom',
       'image':'assets/images/tom3.jpg',
     },
   ].obs ;

 }
