import '../../../const/export/export.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.firstImage,
    required this.name,
    required this.aText,
    required this.bText,
  });

  final String firstImage, name, aText, bText;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(builder: (isHover) {
      return FlipCard(
          front: Container(
            padding: EdgeInsets.all(08.sp),
            height: 220,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: isHover
                      ? appColor.kPrimaryColor.shade100
                      : Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        firstImage,
                        height: 100,
                        width: 80,
                      ),
                      Text(name)
                    ],
                  ),
                )),
          ),
          back: Container(
            padding: EdgeInsets.all(08.sp),
            height: 220,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: isHover
                      ? appColor.kPrimaryColor.shade50
                      : appColor.kBlackColor.withOpacity(0.050),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: aText,
                        style: GoogleFonts.kalam(color: appColor.kBlackColor),
                        children: [
                          TextSpan(
                              text: '$bText\n',
                              style: GoogleFonts.kalam(
                                  color: appColor.kTextColor, fontSize: 13.sp)),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 02,
                      color: appColor.kPrimaryColor,
                      endIndent: 20,
                      indent: 20,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CustomButton(
                      text: 'Hire me',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          ));
    });
  }
}
