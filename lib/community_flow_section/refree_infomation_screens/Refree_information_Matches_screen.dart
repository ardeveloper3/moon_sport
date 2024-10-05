import 'package:flutter/material.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/widgets/common_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class RefreeInformationMatchesScreen extends StatelessWidget {
  const RefreeInformationMatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              "LIVE MATCHES".text.size(22).bold.make(),
              15.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    MatchShortSummaryBox(
                      maxballcarry: "60:22",
                      team1Image: "assets/images/549 1.png",
                      team1Player1:"De Jong 66’" ,
                      team1Player2: 'Depay 79’',
                      team1Scor:"2" ,
                      team2Scor:"2" ,
                      team2Image: "assets/images/345 1.png",
                      team2player1: "Alvarez 21’",
                      team2Player2: "Palmer 70’",
                    ),

                    MatchShortSummaryBox(
                      maxballcarry: "60:22",
                      team1Image: "assets/images/549 1.png",
                      team1Player1:"De Jong 66’" ,
                      team1Player2: 'Depay 79’',
                      team1Scor:"2" ,
                      team2Scor:"2" ,
                      team2Image: "assets/images/345 1.png",
                      team2player1: "Alvarez 21’",
                      team2Player2: "Palmer 70’",
                    ),

                  ],
                ),

              ),

              50.heightBox,

              Row(
                children: [

                  smallTextButton(title: "All",isSelected: true,onTap: (){}),
                  smallTextButton(title: "UpComming",isSelected: false,onTap: (){}),
                  smallTextButton(title: "Finshed",isSelected: false,onTap: (){}),

                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  20.heightBox,
                  TodaysMatch(
                    team1name: "Manchester UTD",
                    team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                    team2name:"Fulham" ,
                    team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                    status: "Round 1",
                    scedule:"12:00" ,
                  ),
                  5.heightBox,

                  Divider(
                    color: Colors.grey.withOpacity(0.5),
                  ),

                  5.heightBox,
                  TodaysMatch(
                    team1name: "Manchester UTD",
                    team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                    team2name:"Fulham" ,
                    team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                    status: "Round 1",
                    scedule:"12:00" ,
                  ),

                ],
              ).box.white.padding(EdgeInsets.only(left: 10,right: 10)).make()




            ],
          ).p12(),
        )
    );
  }
}