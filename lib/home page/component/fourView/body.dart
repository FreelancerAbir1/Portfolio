import 'package:get/get.dart';
import 'package:portfolio/home%20page/component/fourView/portfolio_des.dart';

import '../../../const/export/export.dart';
import 'view/desktop.dart';
import 'view/mobile.dart';

class fourView extends StatelessWidget {
  fourView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        children: [
          PortfolioText(
            text: 'Portfolio',
          ),
          PortfolioDes(
            text: 'Here are  few sample of my previous work!',
          ),
          Responsive(mobile: Mobile(), tablet: Mobile(), desktop: DeskTop())
        ],
      ),
    );
  }
}
