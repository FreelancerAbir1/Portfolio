import 'package:get/get.dart';
import '../export/export.dart';
List<GetPage<dynamic>> getPages = [
  GetPage(
      name: Responsive.routeName,
      page: () => Responsive(
          mobile: HomeScreen(), tablet: HomeScreen(), desktop: HomeScreen()))
];