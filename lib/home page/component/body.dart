import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flip_card/flip_card.dart';
import 'package:get/get.dart';
import 'package:portfolio/home%20page/component/intro_text.dart';
import 'package:portfolio/widgets/custom_button.dart';
import '../../const/export/export.dart';

class Body extends GetView<HomeScreenController> {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [
            BackgroundImage(img: ImageUrl.portfolioImage),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PortfolioText(text: 'Welcome to my portfolio!'),
                  TitleName(
                    firstName: firstName,
                    lastName: lastName,
                  ),
                  IntroText(
                      oneTxt: 'A Friend :)',
                      threeText: 'Let\'s get show this Portfolio!!!',
                      twoTxt: 'Ui/Ux Responsive Designer!!'),
                  SizedBox(height: 04.h),
                  Description(
                    text: portfolioDes,
                  ),
                  SizedBox(
                      height: Responsive.isDesktop(context) ? 5.w : 5 * 4.h),
                  SocialButtons()
                ],
              ),
            ),
          ],
        ),
        Container(
          child: Column(
            mainAxisAlignment: Responsive.isMobile(context)
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              AboutMe(
                text: aboutMe,
              ),
              GetToKnowMe(
                text: getToKnowMe,
              ),
              SizedBox(height: 03.h),
              WhoAmI(
                text: whoAmI,
              ),
              SizedBox(height: 03.h),
              Container(
                height: Responsive.isMobile(context) ? 90.h : null,
                width: Get.width,
                child: Column(
                  children: [
                    BodyDescription(
                        image: ImageUrl.portfolioImage,
                        title: bodyTitle,
                        description: bodyDes),
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
            ],
          ),
        ),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              'What I can do?',
              style: GoogleFonts.abel(
                  fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            AutoSizeText(
              'I may not be perfect but surely I am of some use :)',
              style:
                  GoogleFonts.abel(fontSize: 12.sp, color: appColor.kTextColor),
            ),
            SizedBox(height: 10.h),
            Responsive.isTablet(context)
                ? Container(
                    width: Get.width / 1.5,
                    height: Get.width + 5.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(), //
                      itemCount: 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 20.sp,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.sp),
                      itemBuilder: (context, index) => FlipCards(
                          aText: controller.servicesLogo[index]['aText']
                              .toString(),
                          bText: controller.servicesLogo[index]['bText']
                              .toString(),
                          firstImage:
                              controller.servicesLogo[index]['img'].toString(),
                          name: controller.servicesLogo[index]['name']
                              .toString()),
                    ),
                  )
                : Responsive.isDesktop(context)
                    ? SizedBox(
                        height: Get.height + 20.w,
                        width: Get.width / 0.5,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(), //
                          itemCount: controller.servicesLogo.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 20.sp,
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 20.sp),
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: FlipCards(
                                firstImage: controller.servicesLogo[index]
                                        ['img']
                                    .toString(),
                                aText: controller.servicesLogo[index]['aText']
                                    .toString(),
                                bText: controller.servicesLogo[index]['bText']
                                    .toString(),
                                name: controller.servicesLogo[index]['name']
                                    .toString()),
                          ),
                        ),
                      )
                    : CarouselSlider(
                        items: [
                            ...List.generate(
                                controller.servicesLogo.length,
                                (index) => Container(
                                      width: Get.width / 1.5,
                                      padding: EdgeInsets.all(10.sp),
                                      child: FlipCards(
                                          firstImage: controller
                                              .servicesLogo[index]['img']
                                              .toString(),
                                          aText: controller.servicesLogo[index]
                                                  ['aText']
                                              .toString(),
                                          bText: controller.servicesLogo[index]
                                                  ['bText']
                                              .toString(),
                                          name: controller.servicesLogo[index]
                                                  ['name']
                                              .toString()),
                                    ))
                          ],
                        options: CarouselOptions(
                          height: 200,
                          initialPage: controller.servicesLogo.length,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,   
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          onPageChanged: (v, i) {},
                          scrollDirection: Axis.horizontal,
                        )),
          ],
        )),
        Container(
          height: 300,
          width: Get.width,
          child: Column(
            children: [
              AutoSizeText(
                'Portfolio',
                style: GoogleFonts.abel(
                    fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              AutoSizeText(
                'Here are  few sample of my previous work!',
                style: GoogleFonts.abel(
                    fontSize: 12.sp, color: appColor.kTextColor),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FlipCards extends StatelessWidget {
  const FlipCards({
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: isHover
                      ? appColor.kPrimaryColor.shade100
                      : Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Image.asset(
                      firstImage,
                      height: 100,
                      width: 80,
                    )),
                    Text(name)
                  ],
                )),
          ),
          back: Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: isHover
                      ? appColor.kPrimaryColor.shade50
                      : appColor.kBlackColor.withOpacity(0.050),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipPath(
                clipper: DirectionalWaveClipper(
                    horizontalPosition: HorizontalPosition.left),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '$aText',
                          style: GoogleFonts.kalam(color: appColor.kBlackColor),
                          children: [
                            TextSpan(
                                text: '$bText\n',
                                style: GoogleFonts.kalam(
                                    color: appColor.kTextColor,
                                    fontSize: 13.sp)),
                          ],
                        ),
                      ),
                      CustomButton(
                        text: 'Hire me',
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
            ),
          ));
    });
  }
}
