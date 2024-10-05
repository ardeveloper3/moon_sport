import 'package:moon_sports/modules/authentication/presentation/forget_password_screens/forget_password_screen.dart';
import 'package:moon_sports/modules/authentication/presentation/login_screen.dart';
import 'package:moon_sports/modules/authentication/presentation/register_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/bottom_navigation_bar.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/match_detail_screen.dart';
import 'package:moon_sports/splash_screen.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const String splash = '/splash';

  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String matchDetailScreen = '/matchDetailScreen';
  static const String bottomNavigationBarScreen = '/bottomNavigationBarScreen';

  static List<GetPage<dynamic>> pages = [

    GetPage<dynamic>(
      name: splash,
      page: () => SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loginScreen,
      page: () => const LoginScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: registerScreen,
      page: () => const RegisterScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: matchDetailScreen,
      page: () => const MatchDetailScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bottomNavigationBarScreen,
      page: () => const BottomNavigationBarScreen(),
      transition: defaultTransition,
    ),
  ];
}
