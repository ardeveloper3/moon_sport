import 'package:flutter/material.dart';
import 'package:moon_sports/Player_flow_section/Player_flow_screens/player_flow_overview.dart';
import 'package:moon_sports/Player_flow_section/Player_flow_screens/player_flow_stats.dart';
import 'package:moon_sports/Player_flow_section/Player_flow_screens/player_matches.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_screens/managerFlowNews.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_screens/managerFlowideos.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_screens/manager_flow_matches.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_screens/manager_flow_overview.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_screens/manager_flow_squad.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_screens/manager_flow_stats.dart';

import 'package:moon_sports/team_flow_section/appbar_custom_design/appbar_custom_design.dart';

import 'package:moon_sports/team_flow_section/screens/TeamNews.dart';

import 'package:moon_sports/team_flow_section/screens/TeamStats.dart';
import 'package:moon_sports/team_flow_section/screens/TeamVideos.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:velocity_x/velocity_x.dart';



class ManagerFlowSections extends StatefulWidget {
  const ManagerFlowSections({super.key});

  @override
  State<ManagerFlowSections> createState() => _MatchOverviewSectionState();
}

class _MatchOverviewSectionState extends State<ManagerFlowSections> with TickerProviderStateMixin {
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
                    "Manager Profile".text.white.bold.size(15).make(),

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
                        Tab(child: Text('News'),),
                        Tab(child: Text('Videos'),),



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
                      child: ManagerFlowOverview(),
                      onRefresh: ()async{}),


                  RefreshIndicator(
                      child: ManagerFlowMatches(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: ManagerFlowSquad(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: ManagerFlowStats(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Managerflownews(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Managerflowvideos(),
                      onRefresh: ()async{}),


                ],
              ) ,

            )


          ],
        )



    ).box.make();
  }
}

