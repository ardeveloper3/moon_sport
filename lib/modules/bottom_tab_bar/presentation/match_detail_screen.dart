import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/controller/match_controller.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/utils/navigation_utils/navigation.dart';
import 'package:moon_sports/widgets/bouncing.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({super.key});

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen>
    with SingleTickerProviderStateMixin {
  final MatchController matchController = Get.put(MatchController());
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: matchController.matchDetailList.length,
      vsync: this,
      initialIndex: 0,
    );
  }

  int current = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: [
                  Bouncing(
                    onPressed: () {
                      Navigation.pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 25.sp,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    "Upozela Super Cup",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
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
                controller: _controller,
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
                onTap: (int a) async {

                },
                tabs: List<Widget>.generate(
                  matchController.matchDetailList.length,
                  (int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Obx(
                        () => Text(
                          matchController.matchDetailList[index],

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
                  matchController.matchDetailList.length, (int index1) {
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
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3FgUMP4P8cuZbRxrv6OHBOWx8jiHyMzumPw&s",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                          errorWidget: (context, url, error) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                        ),
                                        const SizedBox(width: 15),
                                        Text(
                                          "PREMIER LEAGUE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 0.4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Manchester UTD",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                          errorWidget: (context, url, error) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              "Round 1",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11.sp,
                                              ),
                                            ),
                                            Text(
                                              "12:00",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                          errorWidget: (context, url, error) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "Fulham",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Divider(
                                      thickness: 0.4,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Manchester UTD",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                          errorWidget: (context, url, error) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              "Round 1",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11.sp,
                                              ),
                                            ),
                                            Text(
                                              "12:00",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                          errorWidget: (context, url, error) {
                                            return Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                              ),
                                            );
                                          },
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "Fulham",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                ],
                              ),
                            ),
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
