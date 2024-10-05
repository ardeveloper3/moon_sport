import 'package:flutter/material.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/OverView.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/h2h.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/lineUp.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/stats.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/timline.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/videos.dart';
import 'package:moon_sports/Match_overview_section/custom_widget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/news.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';

class MatchOverviewSection extends StatefulWidget {
  const MatchOverviewSection({super.key});

  @override
  State<MatchOverviewSection> createState() => _MatchOverviewSectionState();
}

class _MatchOverviewSectionState extends State<MatchOverviewSection> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 7, vsync: this);
    
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
                  "Upozela Super Cup".text.white.bold.size(20).make(),
                  
                ],
              ),

              CustomBox(),

              Container(
                color: AppColors.primaryColor,
                height: 30.0,
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
                      Tab(child: Text('TIMELINE'),),
                      Tab(child: Text('LINEUP'),),
                      Tab(child: Text('STATS'),),
                      Tab(child: Text('H2H'),),
                      Tab(child: Text('NEWS'),),
                      Tab(child: Text('VIDEOS'),),



                    ]
                ),
              )

            ],
          ).box.size(400, 350).color(Color(0xFF269ABF)).make(),

          Expanded(
              child:TabBarView(
                controller: tabController,
                children: [


                  RefreshIndicator(
                      child: MatchOverView(),
                      onRefresh: ()async{}),


                  RefreshIndicator(
                      child: TimelineScreen(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Lineup(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Stats(),
                      onRefresh: ()async{}),


                  RefreshIndicator(
                      child: H2h(),
                      onRefresh: ()async{}),




                  RefreshIndicator(
                      child: News(),
                      onRefresh: ()async{}),

                  RefreshIndicator(
                      child: Videos(),
                      onRefresh: ()async{}),


                ],
              ) ,

          )


        ],
      )


   
    ).box.make();
  }
}

