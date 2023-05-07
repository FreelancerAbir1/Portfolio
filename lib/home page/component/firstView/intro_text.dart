
import '../../../const/export/export.dart';

class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
    required this.oneTxt,
    required this.twoTxt,
    required this.threeText,
  });

  final String oneTxt, twoTxt, threeText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultTextStyle(
          style: TextStyle(
              fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.blue),
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(oneTxt),
              FadeAnimatedText(twoTxt),
              FadeAnimatedText(threeText),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
        Image.asset(
          'assets/images/hi.gif',
          height: 16.sp,
          width: 16.sp,
        )
      ],
    );
  }
}