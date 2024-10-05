import 'package:flutter/material.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/common_widgets/common_Widgets.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/commonWidget/commonWidget.dart';
import 'package:velocity_x/velocity_x.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),

      body: SingleChildScrollView(

        child: Column(
          children: [


            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PointIndicator(
                        title: "Total shots",
                        performance1: 6,
                        performance2: 6,
                        team1goal: "6",
                        team2goal: "6",
                      ),


                      PointIndicator(
                          title: "Shots on target",
                          performance1: 6,
                          performance2:2,
                          team1goal: "6",
                          team2goal: "2"
                      ),

                      PointIndicator(
                        title: "Shots off target",
                        performance1: 3,
                        performance2: 6,
                        team1goal: "3",
                        team2goal: "6",
                      ),

                      PointIndicator(
                        title: "Pass",
                        performance1: 6,
                        performance2: 1,
                        team1goal: "6",
                        team2goal: "1",
                      ),

                      PointIndicator(
                        title: "Foul",
                        performance1: 1,
                        performance2: 6,
                        team1goal: "1",
                        team2goal: "6",
                      ),

                      PointIndicator(
                        title: "Yellow Card",
                        performance1: 0,
                        performance2: 0,
                        team1goal: "0",
                        team2goal: "0",
                      ),

                    ],
                  ).box.shadowSm.white.make(),
                ],
              ).box.make(),
            ),

            Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/549 1.png',scale: 2,),
                    "TEAM STATS".text.size(16).make(),
                    Image.asset('assets/images/345 1.png',scale: 2,),

                  ],
                ).box.padding(EdgeInsets.all(10)).make(),
                10.heightBox,

                StatsBox(

                    Team1StatusNumber: "12",
                    status:"Total Shots" ,
                    Team2StatusNumber: "10",

                ),

                10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ), 10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ), 10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ), 10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ), 10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ), 10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ), 10.heightBox,

                StatsBox(

                  Team1StatusNumber: "12",
                  status:"Total Shots" ,
                  Team2StatusNumber: "10",

                ),




              ],
            ).box.white.rounded.margin(EdgeInsets.all(8)).padding(EdgeInsets.all(10)).make(),

          ],
        ).box.padding(EdgeInsets.all(10)).make(),
      ),
    );
  }
}
