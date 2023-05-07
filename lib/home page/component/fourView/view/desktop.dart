import 'package:portfolio/home%20page/component/firstView/portfolio_card.dart';

import '../../../../const/export/export.dart';

class DeskTop extends StatelessWidget {
  DeskTop({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PortfolioCard(
                      secoundImg: 'assets/projects/android.png',
                      firstImage: 'assets/projects/covid.png',
                      name: 'Android Developer'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PortfolioCard(
                      secoundImg: 'assets/projects/covid.png',
                      firstImage: 'assets/projects/android.png',
                      name: 'Covid -19'),
                ),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PortfolioCard(
                      secoundImg: 'assets/projects/flutter.png',
                      firstImage: 'assets/projects/covid.png',
                      name: 'I have created a Flutter project'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PortfolioCard(
                      secoundImg: 'assets/projects/java.png',
                      firstImage: 'assets/projects/android.png',
                      name: 'Java Developer'),
                ),
              ]),
        ],
      ),
    );
  }
}
