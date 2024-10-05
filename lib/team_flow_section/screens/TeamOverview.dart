import 'package:flutter/material.dart';
import 'package:moon_sports/team_flow_section/commonWidgets/common_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class Teamoverview extends StatelessWidget {
  const Teamoverview({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Last 5 Matches".text.bold.size(14).make(),
           30.widthBox,

           Row(
             children: [
               IconBox(
                 title: "W",
                 color: Colors.green,
               ),

               IconBox(
                 title: "W",
                 color: Colors.green,
               ),
               IconBox(
                 title: "W",
                 color: Colors.green,
               ),

               IconBox(
                 title: "D",
                 color: Colors.grey,
               ),

               IconBox(
                 title: "L",
                 color: Colors.red,
               ),
             ],
           ),



          ],
        ).box.make(),
          10.heightBox,

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (int index){

                return ScorBox(

                    team1image: "assets/images/549 1.png",
                    team1score:"1" ,
                    team2scor: "1",
                    team2image: "assets/images/345 1.png",
                );
              }),
            ),
          )

        ],
      ).box.white.padding(EdgeInsets.all(10)).make(),
            20.heightBox,

            RankingBox(

                currentRanking:"1.3" ,

                bestRanking: "1.3",

                Goals:"4" ,

                Assist: "1.3",
              win: "1",
              draw:"1" ,
                lost: "1",

            ),

            20.heightBox,


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Manchester United".text.size(8).bold.makeCentered().box.padding(EdgeInsets.all(6)).make(),


                InformationBox(

                  title:"Team name" ,
                  value: "Raipur FC",

                ),

                InformationBox(

                  title:"Team City" ,
                  value: "Lakshmipur",

                ),

                InformationBox(

                  title:"Team name" ,
                  value: "Raipur FC",

                ),

                InformationBox(

                  title:"Team Debut" ,
                  value: "Jan 23 2023",

                ),

                InformationBox(

                  title:"Team Manager" ,
                  value: "Abdul Aziz",

                ),



              ],
            ).box.white.rounded.padding(EdgeInsets.symmetric(vertical: 8,horizontal: 12)).make()




          ],
        ).box.padding(EdgeInsets.all(12.0)).make(),
      ),
    );
  }
}
