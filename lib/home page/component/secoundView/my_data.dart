import 'package:get/get.dart';

import '../../../const/export/export.dart';

class MyData extends StatelessWidget {
  const MyData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                bio,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: appColor.kPrimaryColor),
              ),
              RichText(
                text: TextSpan(
                  text: 'Name : ',
                  style: GoogleFonts.kalam(color: appColor.kBlackColor),
                  children: [
                    TextSpan(
                        text: '$fullName\n',
                        style: GoogleFonts.kalam(
                            fontWeight: FontWeight.bold,
                            color: appColor.kBlackColor)),
                    TextSpan(
                        text: ageText,
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                    TextSpan(
                        text: '$age\n',
                        style: GoogleFonts.kalam(
                            fontWeight: FontWeight.bold,
                            color: appColor.kBlackColor)),
                    TextSpan(
                        text: emailText,
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                    TextSpan(
                        text: '$email\n',
                        style: GoogleFonts.kalam(
                            fontWeight: FontWeight.bold,
                            color: appColor.kBlackColor)),
                    TextSpan(
                        text: '$fromText ',
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                    TextSpan(
                        text: from,
                        style: GoogleFonts.kalam(
                            fontWeight: FontWeight.bold,
                            color: appColor.kBlackColor)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                iHaveSkilled,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: appColor.kPrimaryColor),
              ),
              RichText(
                text: TextSpan(
                  text: '$aSkilled\n',
                  style: GoogleFonts.kalam(color: appColor.kBlackColor),
                  children: [
                    TextSpan(
                        text: '$bSkilled\n',
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                    TextSpan(
                        text: '$cSkilled\n',
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                    TextSpan(
                        text: '$dSkilled\n',
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                    TextSpan(
                        text: eSkilled,
                        style:
                            GoogleFonts.kalam(color: appColor.kBlackColor)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
