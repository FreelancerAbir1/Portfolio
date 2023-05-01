import 'package:get/get.dart';
import 'package:portfolio/home%20page/controller/controller.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}