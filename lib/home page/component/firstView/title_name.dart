
import '../../../const/export/export.dart';

class TitleName extends StatelessWidget {
  const TitleName({
    super.key, required this.firstName, required this.lastName,
  });
  final String firstName;
  final String lastName;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$firstName \n',
        style: GoogleFonts.kalam(
            fontSize: 22.sp, color: appColor.kBlackColor),
        children: [
          TextSpan(
              text: '$lastName',
              style: GoogleFonts.playball(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                  color: appColor.kBlackColor))
        ],
      ),
    );
  }
}