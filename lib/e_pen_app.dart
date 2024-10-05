import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/app_string.dart';
import 'package:moon_sports/utils/navigation_utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPenApp extends StatefulWidget {
  const EPenApp({super.key});

  @override
  EPenAppState createState() => EPenAppState();
}

class EPenAppState extends State<EPenApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: AppString.title,
      initialBinding: AppBinding(),
      theme: ThemeData(

        colorScheme: const ColorScheme.light(
          primary: Colors.black,
        ),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        fontFamily: "Montserrat",
        brightness: Brightness.light,
        disabledColor: AppColors.primaryColor,
        primaryColor: Colors.black,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.primaryColor,
        ),
        unselectedWidgetColor: Colors.transparent,
        canvasColor: Colors.white,
      ),
      initialRoute: Routes.splash,
      getPages: Routes.pages,
      builder: (context, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: GestureDetector(
            onTap: () {},
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            ),
          ),
        );
      },
    );
  }
}

class AppBinding extends Bindings {
  @override
  void dependencies() {}
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
