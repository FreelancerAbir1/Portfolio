

import '../../../const/export/export.dart';

class Description extends StatelessWidget {
  const Description({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: AnimatedTextKit(
        isRepeatingAnimation: true,
        pause: Duration(seconds: 2),
        totalRepeatCount: 1,
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            textAlign: TextAlign.start,
            textStyle: GoogleFonts.abel(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ],
        onTap: () {},
      ),
    );
  }
}