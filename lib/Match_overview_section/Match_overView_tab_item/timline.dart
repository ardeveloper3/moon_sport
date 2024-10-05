import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/common_widgets/common_Widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pointBox(
                  time: "81'",
                  team1goal: "1",
                  team2goal: "1",
                ),
                yellowCard(
                  time: "68",
                  Pname: "R. Holding",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
                yellowCard(
                  time: "68",
                  Pname: "R. Holding",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                exchange(
                  time: "68",
                  Pname: "R. Holding",
                  exchangePlayerName: "M. Ødegaard",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                exchange2(
                  time: "68",
                  Pname: "R. Holding",
                  exchangePlayerName: "M. Ødegaard",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                foulBox(
                  time: "68",
                  Pname: "R. Holding",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                penaltyBox(
                  time: "68",
                  Pname: "R. Holding",
                  penaltyTecker: "R. Mahrez",
                  team1Goal: "1",
                  team2Goal: "1",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                yellowCard(
                  time: "68",
                  Pname: "R. Holding",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Half Time".text.bold.make(),
                    5.heightBox,
                    "0  -  1"
                        .text
                        .bold
                        .color(Colors.grey.withOpacity(0.5))
                        .make()
                  ],
                ).marginOnly(right: 40),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                penaltyBox2(
                  time: "38",
                  team1Goal: "0",
                  team2Goal: "1",
                  penaltyTecker: "B. Saka",
                  penultycicker2: "K. Tierney",
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                "Kick Off "
                    .text
                    .bold
                    .size(15)
                    .makeCentered()
                    .box
                    .padding(EdgeInsets.all(10))
                    .make()
                    .onTap(() {


                }),
              ],
            ).box.rounded.white.make()
          ],
        ).box.padding(EdgeInsets.all(10.0)).make(),
      ),
    );
  }
}
