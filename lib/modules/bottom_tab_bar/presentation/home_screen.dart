import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/controller/match_controller.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/my_match_details.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/utils/navigation_utils/navigation.dart';
import 'package:moon_sports/utils/navigation_utils/routes.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final MatchController matchController = Get.put(MatchController());

  @override
  void initState() {
    super.initState();
    matchController.controller = TabController(
      length: matchController.dateCalendar.length,
      vsync: this,
      initialIndex: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: CustomAppBar(

        appBarSize: 70.h,
        backGroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Constants.datePicker,
                        height: 20.h,
                      ).onTap((){

                      }),
                       SizedBox(width: 20),
                      Image.asset(
                        Constants.search,
                        scale: 4.7,
                      ).onTap(()async{

                      }),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Transform(
            transform: Matrix4.translationValues(0.0, -1, 0.0),
            child: Container(
              color: AppColors.primaryColor,
              height: 30,
              child: TabBar(
                padding: EdgeInsets.zero,
                controller: matchController.controller,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2.5,
                labelColor: Colors.white,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w400),
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.white,
                // indicatorColor: Colors.transparent,
                onTap: (int a) async {},
                tabs: List<Widget>.generate(
                  matchController.dateCalendar.length,
                  (int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Obx(
                        () => Text(
                          matchController.timeAgo(
                            matchController.dateCalendar[index].date.toString(),
                            matchController.isMatchISLive.value,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: matchController.controller,
              children: List<Widget>.generate(
                  matchController.dateCalendar.length, (int index1) {
                return RefreshIndicator(
                  color: Colors.black,
                  onRefresh: () async {},
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 10,
                      itemBuilder: (context, index2) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),

                          child: Container(

                            decoration: BoxDecoration(

                              color: Colors.white,

                            ),
                            child: HomeBox(),
                          ),
                        );
                      },

                      ///native ads here --
                      separatorBuilder: (context, index) {
                        if (index == 0) {
                          return const SizedBox();
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
