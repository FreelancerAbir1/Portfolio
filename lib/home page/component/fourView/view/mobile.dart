import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

import '../../../../const/export/export.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      height: 250,
      width: Get.width / 0.5,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return const OverflowBox(
            minHeight: 200,
            minWidth: 250,
            maxWidth: 300,
            maxHeight: 250,
            child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: PortfolioCard(
                      secoundImg: 'assets/projects/android.png',
                      firstImage: 'assets/projects/covid.png',
                      name: 'Android Developer'),
                ),
          );
        },
        itemCount: 5,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
