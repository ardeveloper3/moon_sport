import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/community_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/home_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/inbox_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/notification_screen.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  BottomNavigationBarScreenState createState() =>
      BottomNavigationBarScreenState();
}

class BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedIndex = 0;
  final widgetOptions = [
    const HomeScreen(),
    const InboxScreen(),
    const CommunityScreen(),
    const NotificationScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontSize: 10.sp,
            color: AppColors.primaryColor,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 8.sp,
            color: AppColors.primaryColor,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                selectedIndex == 0
                    ? Constants.homeActive
                    : Constants.homeDisable,
                height: 20.h,
              ),
            ),
            BottomNavigationBarItem(
              label: "Watch",
              icon: Image.asset(
                selectedIndex == 1
                    ? Constants.watchActive
                    : Constants.watchDisable,
                height: 20.h,
              ),
            ),
            BottomNavigationBarItem(
              label: "Community",
              icon: Image.asset(
                selectedIndex == 2
                    ? Constants.communityActive
                    : Constants.communityDisable,
                height: 20.h,
              ),
            ),
            BottomNavigationBarItem(
              label: "Notification",
              icon: Image.asset(
                selectedIndex == 3
                    ? Constants.notificationActive
                    : Constants.notificationDisable,
                height: 20.h,
              ),
            ),
            BottomNavigationBarItem(
              label: "More",
              icon: Image.asset(
                selectedIndex == 4
                    ? Constants.moreActive
                    : Constants.moreDisable,
                height: 20.h,
              ),
            ),
          ],
          currentIndex: selectedIndex,
          fixedColor: AppColors.primaryColor,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
