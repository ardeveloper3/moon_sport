import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              "Teams".text.bold.size(20).make().marginAll(10.0),


              GridView.builder(
                  itemCount: 9,
                  shrinkWrap: true,
                  // ignore: prefer_const_constructors
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,

                  ),
                  itemBuilder: (context, index) {
                    return perticipateTeam(

                        image:"assets/images/549 1.png" ,
                        name: "Chelsea",

                    );
                  }

                  )
            ],
          ).box.white.make()
        ],
      ).box.padding(EdgeInsets.all(10.0)).make()
    );
  }
}