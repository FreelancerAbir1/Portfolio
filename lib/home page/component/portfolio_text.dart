

import '../../const/export/export.dart';

class PortfolioText extends StatelessWidget {
  const PortfolioText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(
          'Welcome to my portfolio!'.toUpperCase(),
          textStyle: GoogleFonts.anton(
              fontSize: 22.sp, color: appColor.kPrimaryColor),
          speed: const Duration(milliseconds: 500),
          colors: [appColor.kPrimaryColor, appColor.kTextColor],
        ),
      ],
      totalRepeatCount: 10,
      pause: const Duration(seconds: 3),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}