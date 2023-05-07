
import 'package:portfolio/home%20page/component/firstView/title_name.dart';
import 'package:portfolio/home%20page/component/firstView/title_name.dart';

import '../../../../const/export/export.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PortfolioText(text: 'Welcome to my portfolio!'),
          TitleName(
            firstName: firstName,
            lastName: lastName,
          ),
          IntroText(
              oneTxt: 'A Friend :)',
              threeText: 'Let\'s get show this Portfolio!!!',
              twoTxt: 'Ui/Ux Responsive Designer!!'),
          SizedBox(height: 04.h),
          Description(
            text: portfolioDes,
          ),
         SocialButtons()
        ],
      ),
    );
  }
}