import 'package:flutter/material.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/commonWidget/commonWidget.dart';
import 'package:velocity_x/velocity_x.dart';

class PlayerComparision extends StatelessWidget {
  const PlayerComparision({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body:  Column(
        children: [
          Column(
            children: [
              30.heightBox,
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,)),
                  "Player comparision".text.size(25).white.make(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SubcomparsmBox(

                      image:"assets/images/345 1.png" ,
                      teamName: "ManCity",
                      status: "Home",
                      onTap: (){}

                  ),
                  SubcomparsmBox(

                      image:"assets/images/345 1.png" ,
                      teamName: "Man city",
                      status: "Homee",
                      onTap: (){}

                  ),
                ],
              )

            ],
          ).box.size(context.screenWidth,270).color(Color(0xFF269ABF)).make(),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    "KEY STATS".text.size(18).bold.make(),
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
                ).box.padding(EdgeInsets.all(10)).make(),
              )

          )
        ],
      ),
    );
  }
}