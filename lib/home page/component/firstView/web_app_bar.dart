import 'package:portfolio/const/colors/colors.dart';
import 'package:portfolio/widgets/hover_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../const/export/export.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar(
      {super.key,
      this.text,
      this.onTap,
      this.color = appColor.kTransparentColor});

  final String? text;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
        child: HoverBuilder(builder: (isHover) {
          return MaterialButton(
              onPressed: onTap,
              splashColor: appColor.kPrimaryColor,
              child: Container(
                  height: 60,
                  width: 6.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: isHover
                                ? appColor.kPrimaryColor
                                : appColor.kTransparentColor,
                            blurRadius: 2,
                            spreadRadius: isHover ? 2 : 0)
                      ],
                      color: isHover
                          ? appColor.kPrimaryColor.shade300
                          : appColor.kTransparentColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 02,
                          color: isHover ? appColor.kTransparentColor : color)),
                  child: Center(
                      child: AutoSizeText(text!.toUpperCase(),
                          style: GoogleFonts.abel(
                              fontWeight: FontWeight.bold,
                              fontSize: isHover ? 13.sp : 12.sp)))));
        }));
  }
}