
import '../../../const/export/export.dart';

class WhatICanDo extends StatelessWidget {
  const WhatICanDo({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: GoogleFonts.abel(fontSize: 22.sp, fontWeight: FontWeight.bold),
    );
  }
}
