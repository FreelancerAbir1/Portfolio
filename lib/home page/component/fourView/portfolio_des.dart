
import '../../../const/export/export.dart';

class PortfolioDes extends StatelessWidget {
  const PortfolioDes({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: GoogleFonts.abel(fontSize: 12.sp, color: appColor.kTextColor),
    );
  }
}
