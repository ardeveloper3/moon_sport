import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/controller/match_controller.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  final MatchController matchController = Get.put(MatchController());
  TabController? controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 3);
    super.initState();
  }

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            height: 30,
            child: TabBar(
              padding: EdgeInsets.zero,
              controller: controller,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.5,
              labelColor: Colors.white,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w400),
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: const <Tab>[
                Tab(
                  text: "FAVOURITES",
                ),
                Tab(
                  text: "ALERTS",
                ),
                Tab(
                  text: "NOTIFICATION HSSTORY",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: List<Widget>.generate(3, (int index1) {
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 2),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "1 COMPETITION SELECTED",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.sp,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.more_vert,
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
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsbVT2MkwMkfFxTQzRnwb8PrWOMRB_Ce8G1w&s",
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Premier League- Group A",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11.sp,
                                              ),
                                            ),
                                            Text(
                                              "Round 6/6",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                          ],
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
