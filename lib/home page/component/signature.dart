
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Signature extends StatelessWidget {
  const Signature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: GoogleFonts.satisfy(),
        ),
        Text(
          "Abir",
          style: GoogleFonts.satisfy(),
        ),
        Text(
          Get.width >= 1000 ? " />\t\t" : " />",
          style: GoogleFonts.satisfy(),
        )
      ],
    );
  }
}
