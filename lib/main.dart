import 'package:get/get.dart';
import 'const/export/export.dart';

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
                foregroundColor: Colors.black
            ),
          ),
          getPages: getPages,
          initialRoute: Responsive.routeName,
          initialBinding: AllBindings(),
        );
      },
    );
  }
}


