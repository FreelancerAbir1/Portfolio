
import '../../../../const/export/export.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PortfolioText(text: 'Welcome to my portfolio!'),
          const TitleName(
            firstName: firstName,
            lastName: lastName,
          ),
          const IntroText(
              oneTxt: 'A Friend :)',
              threeText: 'Let\'s get show this Portfolio!!!',
              twoTxt: 'Ui/Ux Responsive Designer!!'),
          SizedBox(height: 04.h),
          const Description(
            text: portfolioDes,
          ),
          const SocialButtons()
        ],
      ),
    );
  }
}
