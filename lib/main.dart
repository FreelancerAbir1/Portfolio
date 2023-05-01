import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/bindings/bindings.dart';
import 'package:portfolio/home%20page/home_page.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      maxTabletWidth: 900, // Optional
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Abirul Islam Abir',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                foregroundColor: Colors.black,),
          ),
          home:   Responsive(
              mobile:   HomeScreen(),
              tablet:   HomeScreen(),
              desktop:   HomeScreen()),
          initialBinding: AllBindings(),
        );
      },
    );
  }
}
