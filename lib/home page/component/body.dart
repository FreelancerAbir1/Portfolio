import 'package:get/get.dart';

import '../../const/export/export.dart';

class Body extends GetView<HomeScreenController> {
  Body({Key? key}) : super(key: key);
  List projectLogoPartB = [
    'assets/projects/snackbar.png',
    'assets/projects/quranB.png',
    'assets/projects/hereiamB.png',
    'assets/projects/medkitB.png',
    'assets/projects/covidB.png'
  ];
  List<Map<String, String>> projectLogoPartA = [
    {
      'img': 'assets/projects/android.png',
      'name': 'Android Developer',
    },
    {
      'img': 'assets/projects/covid.png',
      'name': 'Covid -19',
    },
    {
      'img': 'assets/projects/flutter.png',
      'name': 'I have created a Flutter project',
    },
    {
      'img': 'assets/projects/java.png',
      'name': 'Java Developer',
    },
    {
      'img': 'assets/projects/medkit.png',
      'name': 'MeeKit Here',
    }
  ];

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
 

 