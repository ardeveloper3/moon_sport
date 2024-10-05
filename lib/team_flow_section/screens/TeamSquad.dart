import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/Player_flow_section/Player_flow_section.dart';
import 'package:moon_sports/manager_flow_section/manager_flow_sections.dart';
import 'package:moon_sports/team_flow_section/commonWidgets/common_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class Teamsquad extends StatelessWidget {
  const Teamsquad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: SingleChildScrollView(
        child: Column(
          children: [

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               "Goalkeepers".text.size(15).bold.make().marginOnly(top: 10,left: 10),
               
               TeamSquadBox(
                 image:"assets/images/image 4.png" ,
                 name: "Sunil Chetri",
                 team:"Bengaluru" ,
               ),
               TeamSquadBox(
                 image:"assets/images/image 4.png" ,
                 name: "Sunil Chetri",
                 team:"Bengaluru" ,
               ),
               TeamSquadBox(
                 image:"assets/images/image 4.png" ,
                 name: "Sunil Chetri",
                 team:"Bengaluru" ,
               ),

               TeamSquadBox(
                 image:"assets/images/image 4.png" ,
                 name: "Sunil Chetri",
                 team:"Bengaluru" ,
               ),

               TeamSquadBox(
                 image:"assets/images/image 4.png" ,
                 name: "Sunil Chetri",
                 team:"Bengaluru" ,
               ),

             ],
           ).box.white.make().onTap((){
             Get.to(()=>PlayerFlowSection());
           }),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Defenders".text.size(15).bold.make().marginOnly(top: 10,left: 10),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

              ],
            ).box.white.make(),

            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Midfielders".text.size(15).bold.make().marginOnly(top: 10,left: 10),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

              ],
            ).box.white.make(),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Strikers".text.size(15).bold.make().marginOnly(top: 10,left: 10),


                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

              ],
            ).box.white.make(),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Coach".text.size(15).bold.make().marginOnly(top: 10,left: 10),



                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

              ],
            ).box.white.make(),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Manager".text.size(15).bold.make().marginOnly(top: 10,left: 10),



                TeamSquadBox(
                  image:"assets/images/image 4.png" ,
                  name: "Sunil Chetri",
                  team:"Bengaluru" ,
                ),

              ],
            ).box.white.make().onTap((){
              Get.to(()=> ManagerFlowSections());
            }),

          ],
        ).box.padding(EdgeInsets.all(10)).make(),
      ),
    );
  }
}