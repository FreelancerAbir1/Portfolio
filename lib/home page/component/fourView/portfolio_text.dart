import '../../../const/export/export.dart';

class PortfolioText extends StatelessWidget {
  const PortfolioText({
    super.key,required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: GoogleFonts.abel(fontSize: 24.sp, fontWeight: FontWeight.bold),
    );
  }
}