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
    return Container(
      height: Get.height + 100,
      width: Get.width,
      child: Column(
        mainAxisAlignment: Responsive.isMobile(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          AboutMee(
            text: aboutMe,
          ),
          GetToKnowMe(
            text: getToKnowMe,
          ),
          WhoAmI(
            text: whoAmI,
          ),
          SizedBox(height: 03.h),
          Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Desktop(),
          )
        ],
      ),
    );
  }
}
