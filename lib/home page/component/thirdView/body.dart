import 'package:get/get.dart';
 import 'package:portfolio/home%20page/component/thirdView/des.dart';
import 'package:portfolio/home%20page/component/thirdView/what_des.dart'; 
import '../../../const/export/export.dart'; 
import 'view/desktop.dart';
import 'view/mobile.dart';
import 'view/tablet.dart';
 class ThirdView extends StatelessWidget {
  const ThirdView({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        child: Column(
          children: const [
            WhatICanDo(
              text: 'What I can do?',
            ),
            WhatDes(
              text: 'I may not be perfect but surely I am of some use :)',
            ),
            Responsive(mobile: Mobile(), tablet: Tablet(), desktop: Desktop()),
          ],
        ));
  }
}
