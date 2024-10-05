import 'package:flutter/material.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/OverView.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/h2h.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/lineUp.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/stats.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/timline.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/videos.dart';
import 'package:moon_sports/Match_overview_section/custom_widget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/team_flow_section/appbar_custom_design/appbar_custom_design.dart';
import 'package:moon_sports/team_flow_section/screens/TeamMatches.dart';
import 'package:moon_sports/team_flow_section/screens/TeamNews.dart';
import 'package:moon_sports/team_flow_section/screens/TeamOverview.dart';
import 'package:moon_sports/team_flow_section/screens/TeamSquad.dart';
import 'package:moon_sports/team_flow_section/screens/TeamStats.dart';
import 'package:moon_sports/team_flow_section/screens/TeamVideos.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamFlowSection extends StatefulWidget {
  const TeamFlowSection({super.key});

  @override
  State<TeamFlowSection> createState() => _MatchOverviewSectionState();
}

class _MatchOverviewSectionState extends State<TeamFlowSection> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 6, vsync: this);

    return Scaffold(
        body: Column(
          children: [

            Column(
              children: [
                40.heightBox,
                Row(
                  children: [
                    20.widthBox,
                    Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),
                    "Manchester City".text.white.bold.size(15).make(),

                  ],
                ),

              TeamFolwCustomAppBarDesign(),

                Container(
                  color: AppColors.primaryColor,
                  height: 20.0,
                  child: TabBar(
                      controller: tabController,
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
                        Tab(child: Text('Matches'),),
                        Tab(child: Text('Squad'),),
                        Tab(child: Text('STATS'),),
                        Tab(child: Text('NEWS'),),
                        Tab(child: Text('VIDEOS'),),



                      ]
                  ),
                )

              ],
            ).box.size(400, 290).color(Color(0xFF269ABF)).make(),

            Expanded(
              child:TabBarView(
                controller: tabController,
                children: [


                  RefreshIndicator(
                      child: Teamoverview(),
                      onRefresh: ()async{}),


                  RefreshIndicator(
                      child: Teammatches(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Teamsquad(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Teamstats(),
                      onRefresh: ()async{}),


                  RefreshIndicator(
                      child: Teamnews(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Teamvideos(),
                      onRefresh: ()async{}),


                ],
              ) ,

            )


          ],
        )



    ).box.make();
  }
}

