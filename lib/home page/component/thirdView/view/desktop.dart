import 'package:get/get.dart';

import '../../../../const/export/export.dart';
 
class Desktop extends GetView<HomeScreenController> {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SkillCard(
                  firstImage: 'assets/services/app.png',
                  aText: 'Android App Development via Flutter\n',
                  bText:
                      '- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
                  name: 'Mobile App Development'),
              SkillCard(
                  firstImage: 'assets/services/rapid.png',
                  aText: 'Rapid Prototype via Flutter\n',
                  bText: '- Working MVP\n- Quick & Working prototype',
                  name: 'Rapid Prototyping'),
              SkillCard(
                  firstImage: 'assets/services/blog.png',
                  aText: 'Technical Blog writing\n',
                  bText:
                      '- Seo friendly\n- Soothing header images\n-  Research topics and more..!',
                  name: 'Ui/Ux Designing '),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SkillCard(
                  firstImage: 'assets/services/fiverr.png',
                  aText: 'Android App Development via Flutter\n',
                  bText:
                      '- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps Integration and more ...!',
                  name: 'Fiverr seller'),
              SkillCard(
                  firstImage: 'assets/services/open_b.png',
                  aText: 'Open source GitHub projects\n',
                  bText:
                      '- Awsome REDME.md\n- Well documented\n- Header Images and more... !',
                  name: 'Open Source - Github'),
            ],
          ),
        ],
      ),
    );
  }
}
