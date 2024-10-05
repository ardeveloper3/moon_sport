import 'package:moon_sports/utils/navigation_utils/navigation.dart';
import 'package:moon_sports/utils/navigation_utils/routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) {
        Navigation.replace(Routes.loginScreen);
      },
    );
    super.onInit();
  }
}
