// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/news.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/draws.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/matches_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/overview_screeen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/player_state.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/tables_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/teams_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/videos_screen.dart';

import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/navigation_utils/navigation.dart';
import 'package:moon_sports/widgets/bouncing.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';

class MyMatchDetails extends StatefulWidget {
  const MyMatchDetails({super.key});

  @override
  State<MyMatchDetails> createState() => _MyMatchDetailsState();
}

class _MyMatchDetailsState extends State<MyMatchDetails> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,

        child: Scaffold(
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
            // ignore: prefer_const_constructors

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
                    tabs:[
                      Tab(child: Text('OVERVIEW'),),
                      Tab(child: Text('MATCHES'),),
                      Tab(child: Text('TABLES'),),
                      Tab(child: Text('DRAWS'),),
                      Tab(child: Text('NEWS'),),
                      Tab(child: Text('VIDEOS'),),
                      Tab(child: Text('TEAMS'),),
                      Tab(child: Text('PLAYER STATS'),),


                    ]
                  ),
                ),
              ),
              Expanded(
                  child:TabBarView(
                    children: [

                    RefreshIndicator(
                        child: OverviewScreeen(),
                        onRefresh: ()async{}),


                      RefreshIndicator(
                          child: MatchesScreen(),
                          onRefresh: ()async{}),

                      RefreshIndicator(
                          child: TablesScreen(),
                          onRefresh: ()async{}),

                      RefreshIndicator(
                          child: Draws(),
                          onRefresh: ()async{}),


                      RefreshIndicator(
                          child: MatchNews(),
                          onRefresh: ()async{}),




                      RefreshIndicator(
                          child: VideosScreen(),
                          onRefresh: ()async{}),

                      RefreshIndicator(
                          child: TeamsScreen(),
                          onRefresh: ()async{}),


                      RefreshIndicator(
                          child:   PlayerState(),
                          onRefresh: ()async{}),




                    ],
                  ),
              )
            ],
          ),

        ),

    );
  }
}
