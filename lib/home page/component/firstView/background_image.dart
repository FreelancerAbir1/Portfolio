
import 'package:get/get.dart';

import '../../../const/export/export.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: Get.height,
          child: Image.asset(img,
              colorBlendMode: BlendMode.dstOut, fit: BoxFit.cover),
        ));
  }
}