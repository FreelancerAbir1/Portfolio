import 'package:get/get.dart';

import '../const/export/export.dart';
import 'component/body.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Scaffold(
          drawer: Responsive.isMobile(context) || Responsive.isTablet(context)
              ? const MobileDrawer()
              : null,
          appBar: controller.isVisible.value
              ? AppBar(
                  title: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? null
                      : const Signature(),
                  actions: [
                    Responsive.isMobile(context) || Responsive.isTablet(context)
                        ? const Signature()
                        : HoverBuilder(builder: (isHover) {
                            return Row(
                              children: [
                                const WebAppBar(text: home),
                                WebAppBar(
                                  text: about,
                                  onTap: () {
                                    controller.scroll(Get.height);
                                  },
                                ),
                                const WebAppBar(text: services),
                                const WebAppBar(text: projects),
                                const WebAppBar(text: contacts),
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
