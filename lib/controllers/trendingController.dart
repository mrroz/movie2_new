// ignore_for_file: file_names

import 'package:get/get.dart';


// ignore: camel_case_types, file_names
class trending_controller extends GetxController {

  RxList trendItems = [
    {
      'genre':'action/family',
      'name': 'Shang',
      'image': 'assets/images/3.jpg',
      'rate': '9.5',
      'yer': '2021',
      'time':'2h 28m'
    },
    {
      'genre':'family',
      'name': 'khosof ',
      'image': 'assets/images/4.jpg',
      'rate': '7.6',
      'yer': '2019',
      'time':'2h 28m'

    },
    {
      'genre':'family',
      'name': 'Venom ',
      'image': 'assets/images/5.jpg',
      'rate': '9.5',
      'yer': '2020',
      'time':'2h 28m'

    },
    {
      'genre':'Anime',
      'name': 'Apex',
      'image': 'assets/images/2.jpg',
      'rate': '6.2',
      'yer': '2020',
      'time':'2h 28m'

    },
    {
      'genre':'Anime',
      'name': 'Finch',
      'image': 'assets/images/3.jpg',
      'rate': '7',
      'yer': '2021',
      'time':'2h 28m'

    },
    {
      'genre':'Anime',
      'name': 'Halloween',
      'image': 'assets/images/1.jpg',
      'rate': '5.2',
      'yer': '2018',
      'time':'2h 28m'

    },

  ].obs;
}