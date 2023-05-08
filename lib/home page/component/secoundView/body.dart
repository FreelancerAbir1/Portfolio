import 'package:get/get.dart';

import '../../../const/export/export.dart';
import 'view/desktop.dart';
import 'view/mobile.dart';
import 'view/tablet.dart';

class SecoundView extends StatelessWidget {
  const SecoundView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          Responsive.isTablet(context) ? Get.height + 30.w : Get.height + 15.h,
      width: Get.width,
      child: Column(
        mainAxisAlignment: Responsive.isMobile(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          const AboutMee(
            text: aboutMe,
          ),
          const GetToKnowMe(
            text: getToKnowMe,
          ),
          const WhoAmI(
            text: whoAmI,
          ),
          SizedBox(height: 03.h),
          const Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Desktop(),
          )
        ],
      ),
    );
  }
}
