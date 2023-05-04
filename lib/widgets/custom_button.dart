
import '../const/export/export.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final GestureTapCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp)),
      child: MaterialButton(
splashColor: appColor.kGreen,
        color: appColor.kPrimaryColor,
        onPressed:  onTap,
        child: Text(text),
      ),
    );
  }
}