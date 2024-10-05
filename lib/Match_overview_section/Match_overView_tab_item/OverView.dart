import 'package:flutter/material.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/common_widgets/common_Widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class MatchOverView extends StatelessWidget {
  const MatchOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Column(

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "Moon Ranking".text.bold.make(),
                    Icon(Icons.more_vert),
                  ],
                ).box.padding(EdgeInsets.all(6)).make(),
                Divider(
                  color: Colors.grey.withOpacity(0.1),
                ),
                OverViewTopBox(
                    team1Image: "assets/images/345 1.png",
                    Team1goal: "2",
                    team1Name: "France",
                    team2Image:"assets/images/549 1.png" ,
                    Team2goal: "2",
                    team2Name:"Poland" ,
                )
                
              ],
            ).box.white.padding(EdgeInsets.symmetric(vertical: 8,horizontal: 12)).make(),


            30.heightBox,
            Column(

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "Last 5 Matches".text.bold.make(),
                    Icon(Icons.more_vert),
                  ],
                ).box.padding(EdgeInsets.all(6)).make(),
                Divider(
                  color: Colors.grey.withOpacity(0.1),
                ),
                OverViewSecondBox(
                  teamImage: "assets/images/549 1.png",
                  teamName:"Man city" ,
                ),
            Divider( color: Colors.grey.withOpacity(0.1),),

            MatchReport(
            onTap: (){

              },
                 team1name: "Manchester UTD",
               team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                team2name:"Fulham" ,
                team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
               status: "jun12,24",
                goal:"1  - 1" ,
),

                MatchReport(
                  onTap: (){

                  },
                  team1name: "Manchester UTD",
                  team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                  team2name:"Fulham" ,
                  team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                  status: "jun12,24",
                  goal:"1  - 1" ,
                ),

                MatchReport(
                  onTap: (){

                  },
                  team1name: "Manchester UTD",
                  team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                  team2name:"Fulham" ,
                  team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                  status: "jun12,24",
                  goal:"1  - 1" ,
                ),


                MatchReport(
                  onTap: (){

                  },
                  team1name: "Manchester UTD",
                  team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                  team2name:"Fulham" ,
                  team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                  status: "jun12,24",
                  goal:"1  - 1" ,
                ),



                MatchReport(
                  onTap: (){

                  },
                  team1name: "Manchester UTD",
                  team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                  team2name:"Fulham" ,
                  team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                  status: "jun12,24",
                  goal:"1  - 1" ,
                ),


                MatchReport(
                  onTap: (){

                  },
                  team1name: "Manchester UTD",
                  team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                  team2name:"Fulham" ,
                  team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                  status: "jun12,24",
                  goal:"1  - 1" ,
                ),

                MatchReport(
                  onTap: (){

                  },
                  team1name: "Manchester UTD",
                  team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                  team2name:"Fulham" ,
                  team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                  status: "jun12,24",
                  goal:"1  - 1" ,
                ),

              ],
            ).box.white.padding(EdgeInsets.symmetric(vertical: 8,horizontal: 12)).make(),

            20.heightBox,


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "Premier League".text.bold.make(),

                    "Week 30".text.bold.make(),
                  ],
                ).box.padding(EdgeInsets.all(6)).make(),

                LeagueInformationBox(
                    title:"Date" ,
                    value:"1 January 2022" ,
                ),

                LeagueInformationBox(
                  title:"Kick Off" ,
                  value:"18:00" ,
                ),

                LeagueInformationBox(
                  title:"Referee" ,
                  value:"Stuart Attwell" ,
                ),

                LeagueInformationBox(
                  title:"Venue" ,
                  value:"Etihad Stadium" ,
                ),

              ],
            ).box.white.rounded.padding(EdgeInsets.symmetric(vertical: 8,horizontal: 12)).make()
          ],
        ).box.padding(EdgeInsets.symmetric(vertical: 8,horizontal: 8)).make(),
      ),
    );
  }
}
