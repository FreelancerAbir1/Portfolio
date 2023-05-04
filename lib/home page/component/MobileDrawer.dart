 import 'package:portfolio/const/export/export.dart';
class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: ListView(
            children: [
              Signature(),
              SwitchListTile(
                title: Text('Light Mode'),
                value: true,
                onChanged: (v) {},
              ),
              DrawerBar(
                text: 'Resume',
                onTap: () {},
                color: appColor.kPrimaryColor,
              ),
              DrawerBar(
                text: 'Contact',
                onTap: () {},
              ),
              DrawerBar(
                text: 'projects',
                onTap: () {},
              ),
              DrawerBar(
                text: 'Services',
                onTap: () {},
              ),
              DrawerBar(
                text: 'Home',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
