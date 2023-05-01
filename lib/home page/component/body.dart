import 'package:get/get.dart';
import '../../const/export/export.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Controllers
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [
            BackgroundImage(img: 'assets/images/abir.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PortfolioText(),
                  TitleName(
                    firstName: 'Abirul Islam',
                    lastName: 'Abir',
                  ),
                  SizedBox(height: 04.h),
                  Description(
                    text:
                        'Hello, My Name Is Abir :). I \'m a highly experienced Flutter Firebase developer,\nready to craft'
                        ' the dream app for you. \nI specialize in Flutter, Firebase, and User Interface '
                        'design.\n My work is of high quality and I prioritize client'
                        ' satisfaction.Let\'s work together to bring your ideas to life!\n Send '
                        'me a message to discuss how I can assist you\n in achieving your goals.',
                  ),
                  SizedBox(
                      height: Responsive.isDesktop(context) ? 5.w : 5 * 4.h),
                  SocialButtons()
                ],
              ),
            ),
          ],
        ),
       Container(child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         AboutMe(
           text: 'About Me',
         ),
         GetToKnowMe(
           text: 'Get to know me :)',
         ),
         SizedBox(height: 03.h),
         WhoAmI(
           text: 'Who am I?',
         ),
         SizedBox(height: 03.h),
         Container(
           height: Responsive.isMobile(context) || Responsive.isTablet(context)
               ? 70.h
               : null,
           width: Get.width,
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 BodyDescription(
                     image: 'assets/images/abir.png',
                     title:
                     'I am Abirul Islam Abir,a Flutter developer,Technical Ui designer and Firebase Expert.',
                     description:
                     'I\'m a Fresh Graduate with Computer Science as Majors from COMSATS University,Islamabad.\n'
                         'I have been developing mobile apps for over 2 years now.\n'
                         'I have worked in teams for various startups and helped them\n'
                         'in launching their prototypes and got valuable learning experiandce.\n'
                         'Been a former Google Developer Student Clubs (DSC) lead and also CEO/Co - Founder\n'
                         'Flutter Islamabad, Pakistan. Currently working as Associate Software Engineer at Sastaticket.pk'),
                 SizedBox(
                   height: 3.h,
                 ),
                 Divider(
                   height: 02,
                   color: appColor.kPrimaryColor,
                   thickness: 02,
                   endIndent: 10.w,
                   indent: 10.w,
                 ),
                 SizedBox(
                   height: 3.h,
                 ),
                 MyData()
               ],
             ),
           ),
         )
       ],),)
      ],
    );
  }
}
