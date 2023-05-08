

import '../../../const/export/export.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar(
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
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
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
                child: AutoSizeText(
                  text!.toUpperCase(),
                  style: GoogleFonts.abel(
                      fontWeight: FontWeight.bold,
                      fontSize: isHover ? 13.sp : 12.sp),
                ),
              ),
            ),
          );
        }));
  }
}
