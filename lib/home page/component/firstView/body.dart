import 'package:get/get.dart';

import '../../../const/export/export.dart';
import 'view/desktop.dart';
import 'view/mobile.dart';
import 'view/tablet.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isTablet(context) ? Get.height + 10.h : Get.height,
      width: Get.width,
      child: Stack(
        children: const [
          BackgroundImage(img: ImageUrl.portfolioImage),
          Responsive(mobile: Mobile(), tablet: Tablet(), desktop: DeskTop())
        ],
      ),
    );
  }
}
