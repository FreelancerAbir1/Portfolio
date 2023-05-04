import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeScreenController extends GetxController {
  RxBool isMode = true.obs;
  List<Map<String, String>> servicesLogo = [
    {
      'img': 'assets/services/app.png',
      'name': 'Mobile App Development',
      'aText':'Android App Development via Flutter\n',
      'bText':'- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
    },
    {
      'img': 'assets/services/rapid.png',
      'name': 'Rapid Prototyping',
      'aText':'Android App Development via Flutter\n',
      'bText':'- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
    },
    {
      'img': 'assets/services/fiverr.png',
      'name': 'Fiverr seller',
      'aText':'Android App Development via Flutter',
      'bText':'- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
    },
    {
      'img': 'assets/services/open_b.png',
      'name': 'Open Source - Github',
      'aText':'Android App Development via Flutter\n',
      'bText':'- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
    },
    {
      'img': 'assets/services/blog.png',
      'name': 'Ui/Ux Designing',
      'aText':'Android App Development via Flutter\n',
      'bText':'- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
    }
  ];

}
