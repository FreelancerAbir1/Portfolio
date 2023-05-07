
import 'package:get/get.dart';

import '../../../../const/export/export.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
            height: Responsive.isMobile(context) ? 90.h : null,
            width: Get.width,
            child: Column(
              children: [
                BodyDescription(
                    image: ImageUrl.portfolioImage,
                    title: bodyTitle,
                    description: bodyDes),
                SizedBox(
                  height: 3.h,
                ),
                Divider(
                  height: 02,
                  color: appColor.kPrimaryColor,
                  thickness: 02,
                  endIndent: 10.w,
                  indent: 10.w,
                ),
                SizedBox(
                  height: 3.h,
                ),
                MyData()
              ],
            ),
          );
  }
}