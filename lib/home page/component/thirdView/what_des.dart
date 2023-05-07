import '../../../const/export/export.dart';

class WhatDes extends StatelessWidget {
  const WhatDes({
    super.key,required this.text,
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
