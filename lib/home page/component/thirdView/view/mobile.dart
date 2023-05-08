import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

import '../../../../const/export/export.dart';

class Mobile extends GetView<HomeScreenController> {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      height: 200,
      width: Get.width,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return SkillCard(
              firstImage: controller.servicesLogo[index]['img'].toString(),
              aText: controller.servicesLogo[index]['aText'].toString(),
              bText: controller.servicesLogo[index]['bText'].toString(),
              name: controller.servicesLogo[index]['name'].toString());
        },
        itemCount: controller.servicesLogo.length,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
