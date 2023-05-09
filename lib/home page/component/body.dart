import 'package:get/get.dart';

import '../../const/export/export.dart';

class Body extends GetView<HomeScreenController> {
 const Body({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ListView(
            controller: controller.appBarController,
            physics: const BouncingScrollPhysics(),
            children: const [
              FirstView(),
              SecoundView(),
              ThirdView(),
              fourView(),
            ],
          ),
          Positioned(
              bottom: 200,
              right: 0,
              child: OutlinedButton(
                  onPressed: () {
                    controller.scrollToTop();
                  },
                  child: const Icon(Icons.arrow_circle_up)))
        ],
      ),
    );
  }
}
 

 