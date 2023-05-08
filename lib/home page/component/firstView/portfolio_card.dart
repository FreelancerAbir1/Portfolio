import '../../../const/export/export.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard(
      {Key? key,
      required this.firstImage,
      required this.name,
      required this.secoundImg})
      : super(key: key);

  final String firstImage, secoundImg, name;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(builder: (isHover) {
      return isHover
          ? Container(
              height: 200,
              width: 400,
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
            )
          : Container(
              height: 200,
              width: 400,
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
                    child: Image.asset(
                      secoundImg,
                      height: 100,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  )),
            );
    });
  }
}
