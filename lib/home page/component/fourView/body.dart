import 'package:get/get.dart';

import '../../../const/export/export.dart';
import 'view/desktop.dart';
import 'view/mobile.dart';

class fourView extends StatelessWidget {
  const fourView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: const [
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
