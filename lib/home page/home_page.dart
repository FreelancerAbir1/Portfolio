import 'package:get/get.dart';

import '../const/export/export.dart';
import 'component/body.dart';

class HomeScreen extends GetView<HomeScreenController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.kWhiteColor,
      drawer: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? MobileDrawer()
          : null,
      appBar: AppBar(
        title: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? null
            : Signature(),
        actions: [
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? Signature()
              : HoverBuilder(builder: (isHover) {
                  return Row(
                    children: [
                      DrawerBar(text: 'Home'),
                      DrawerBar(text: 'About'),
                      DrawerBar(text: 'Services'),
                      DrawerBar(text: 'Projects'),
                      DrawerBar(text: 'Contact'),
                      DrawerBar(
                          text: 'Resume',
                          color: appColor.kPrimaryColor.shade200),
                      Obx(
                        () => FlutterSwitch(
                          activeText: "Dark Mode",
                          inactiveText: "Night Mode",
                          value: controller.isMode.value,
                          valueFontSize: 10.0,
                          width: 6.w,
                          borderRadius: 30.0,
                          showOnOff: true,
                          onToggle: (val) {
                            controller.isMode.value = val;
                            Get.changeTheme(controller.isMode.value
                                ? ThemeData.dark()
                                : ThemeData.light());
                          },
                        ),
                      ),
                    ],
                  );
                }),
        ],
      ),
      body: Body(),
    );
  }
}

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
