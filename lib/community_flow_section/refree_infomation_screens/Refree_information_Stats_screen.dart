import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/team_flow_section/commonWidgets/common_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class RefreeInformationStatsScreen extends StatelessWidget {
  const RefreeInformationStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Team Stats".text.make(),
                  Image.asset("assets/images/345 1.png",scale: 2,),


                ],
              ).box.padding(EdgeInsets.symmetric(vertical: 10)).make(),

              InformationBox(
                title: "Total shots",
                value: "3",
              ),

              InformationBox(
                title: "Total shots",
                value: "3",
              ),
              InformationBox(
                title: "Total shots",
                value: "3",
              ),
              InformationBox(
                title: "Total shots",
                value: "3",
              ),

            ],
          ).box.white.rounded.padding(EdgeInsets.all(15)).make(),

        ],
      ).paddingAll(10),
    );
  }
}
