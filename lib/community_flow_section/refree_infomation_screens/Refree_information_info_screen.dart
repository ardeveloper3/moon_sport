import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/team_flow_section/commonWidgets/common_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class RefreeInformationInfoScreen extends StatelessWidget {
  const RefreeInformationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Refree Details".text.size(8).bold.makeCentered().box.padding(EdgeInsets.all(6)).make(),


                InformationBox(

                  title:"Full Name" ,
                  value: "Abdul Aziz",

                ),

                InformationBox(

                  title:"Date of Birth" ,
                  value: "8/7/1989",

                ),

                InformationBox(

                  title:"City Name" ,
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
        ).paddingAll(10),
      ),
    );
  }
}
