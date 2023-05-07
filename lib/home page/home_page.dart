import 'package:get/get.dart';
import 'package:portfolio/home%20page/component/firstView/web_app_bar.dart';

import '../const/export/export.dart';
import 'component/body.dart';

class HomeScreen extends GetView<HomeScreenController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Scaffold(
          drawer: Responsive.isMobile(context) || Responsive.isTablet(context)
              ? MobileDrawer()
              : null,
          appBar: controller.isVisible.value
              ? AppBar(
                  title: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? null
                      : Signature(),
                  actions: [
                    Responsive.isMobile(context) || Responsive.isTablet(context)
                        ? Signature()
                        : HoverBuilder(builder: (isHover) {
                            return Row(
                              children: [
                                WebAppBar(text: home),
                                WebAppBar(
                                  text: about,
                                  onTap: () {
                                    controller.scroll(Get.height);
                                  },
                                ),
                                WebAppBar(text: services),
                                WebAppBar(text: projects),
                                WebAppBar(text: contacts),
                                WebAppBar(
                                    text: resume,
                                    color: appColor.kPrimaryColor.shade200),
                                FlutterSwitch(
                                  activeText: darkMode,
                                  inactiveText: lightMode,
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
                              ],
                            );
                          }),
                  ],
                )
              : null,
          body: Body(),
        );
      },
    );
  }
}
