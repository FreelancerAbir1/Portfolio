
import 'package:get/get.dart';

import '../../../const/export/export.dart';

class MyData extends StatelessWidget {
  const MyData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: RichText(
              text: TextSpan(
                text: 'Name : ',
                style: GoogleFonts.kalam(color: appColor.kBlackColor),
                children: [
                  TextSpan(
                      text: 'Abirul Islam Abir  \n',
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.bold,
                          color: appColor.kBlackColor)),
                  TextSpan(
                      text: 'Age : ',
                      style: GoogleFonts.kalam(color: appColor.kBlackColor)),
                  TextSpan(
                      text: '22 \n',
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.bold,
                          color: appColor.kBlackColor)),
                  TextSpan(
                      text: 'Email : ',
                      style: GoogleFonts.kalam(color: appColor.kBlackColor)),
                  TextSpan(
                      text: 'abir80503@gmail.com \n',
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.bold,
                          color: appColor.kBlackColor)),
                  TextSpan(
                      text: 'From : ',
                      style: GoogleFonts.kalam(color: appColor.kBlackColor)),
                  TextSpan(
                      text: 'Dhaka, Bangladesh',
                      style: GoogleFonts.kalam(
                          fontWeight: FontWeight.bold,
                          color: appColor.kBlackColor)),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'I have Skilled:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: appColor.kPrimaryColor),
                ),
                RichText(
                  text: TextSpan(
                    text: '1.Flutter development \n',
                    style: GoogleFonts.kalam(color: appColor.kBlackColor),
                    children: [
                      TextSpan(
                          text: '2.Flutter Firebase\n',
                          style:
                          GoogleFonts.kalam(color: appColor.kBlackColor)),
                      TextSpan(
                          text: '4.Mobile UI design \n',
                          style:
                          GoogleFonts.kalam(color: appColor.kBlackColor)),
                      TextSpan(
                          text: '5.Android & IOS design \n ',
                          style:
                          GoogleFonts.kalam(color: appColor.kBlackColor)),
                      TextSpan(
                          text: '6.Dart & Flutter',
                          style:
                          GoogleFonts.kalam(color: appColor.kBlackColor)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}