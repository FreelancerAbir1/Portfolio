 import 'package:portfolio/const/export/export.dart';
class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Signature(),
              SwitchListTile(
                title: Text('Light Mode'),
                value: true,
                onChanged: (v) {},
              ),
              WebAppBar(
                text: 'Resume',
                onTap: () {},
                color: appColor.kPrimaryColor,
              ),
              WebAppBar(
                text: 'Contact',
                onTap: () {},
              ),
              WebAppBar(
                text: 'projects',
                onTap: () {},
              ),
              WebAppBar(
                text: 'Services',
                onTap: () {},
              ),
              WebAppBar(
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
