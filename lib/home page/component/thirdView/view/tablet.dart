import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

import '../../../../const/export/export.dart';

class Tablet extends GetView<HomeScreenController> {
  const Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: Get.width,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return OverflowBox(
            minHeight: 200,
            minWidth: 300,
            maxWidth: 400,
            maxHeight: 300,
            child: SkillCard(
                firstImage: controller.servicesLogo[index]['img'].toString(),
                aText: controller.servicesLogo[index]['aText'].toString(),
                bText: controller.servicesLogo[index]['bText'].toString(),
                name: controller.servicesLogo[index]['name'].toString()),
          );
        },
        itemCount: controller.servicesLogo.length,
      ),
    );
  }
}
