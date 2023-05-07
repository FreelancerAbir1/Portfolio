import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import '../../const/export/export.dart';

class HomeScreenController extends GetxController {
  RxBool isMode = true.obs;
  final ScrollController appBarController = ScrollController();
  RxBool isVisible = true.obs;
 
  List<Map<String, String>> servicesLogo = [
    {
      'img': 'assets/services/app.png',
      'name': 'Mobile App Development',
      'aText': 'Android App Development via Flutter\n',
      'bText':
          '- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
    },
    {
      'img': 'assets/services/rapid.png',
      'name': 'Rapid Prototyping',
      'aText': 'Rapid Prototype via Flutter\n',
      'bText': '- Working MVP\n- Quick & Working prototype',
    },
    {
      'img': 'assets/services/fiverr.png',
      'name': 'Fiverr seller',
      'aText': 'Fiver Top Rated Seller\n',
      'bText':
          '- Seo Expert\n-  Firebase Expert/Cloud\n- Normal Behaviour\n- Others good side...!',
    },
    {
      'img': 'assets/services/open_b.png',
      'name': 'Open Source - Github',
      'aText': 'Open source GitHub projects\n',
      'bText':
          '- Awsome REDME.md\n- Well documented\n- Header Images and more... !',
    },
    {
      'img': 'assets/services/blog.png',
      'name': 'Ui/Ux Designing',
      'aText': 'Technical Blog writing\n',
      'bText':
          '- Seo friendly\n- Soothing header images\n-  Research topics and more..!',
    }
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    appBarController.addListener(() {
      if (appBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        isVisible.value = false;
      }
      if (appBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        isVisible.value = true;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    appBarController.dispose();
  }

  void scrollToTop() {
    appBarController.animateTo(
      0,
      duration: Duration(seconds: 3),
      curve: Curves.easeInOut,
    );
  }

  void scroll(height) {
    double middlePosition =  height;
    appBarController.animateTo(
      middlePosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
