import 'package:get/get.dart';

import '../../../const/export/export.dart';

class BodyDescription extends StatelessWidget {
  const BodyDescription(
      {super.key,
      required this.image,
      required this.title,
      required this.description});
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)||Responsive.isTablet(context)? Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
          radius: 100,
            backgroundImage: AssetImage(image,),

          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: appColor.kBlackColor),
        ),
        SizedBox(height: 2.h),
        Text(
          description,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: appColor.kTextColor),
          overflow: TextOverflow.visible,
        ),
      ],
    ):Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            flex: Responsive.isMobile(context) || Responsive.isTablet(context)
                ? 2
                : 0,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 35.h,
                  child: BackgroundImage(
                    img: image,
                  )),
            )),
        Expanded(
            flex: Responsive.isMobile(context) || Responsive.isTablet(context)
                ? 2
                : 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: appColor.kBlackColor),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: appColor.kTextColor),
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
