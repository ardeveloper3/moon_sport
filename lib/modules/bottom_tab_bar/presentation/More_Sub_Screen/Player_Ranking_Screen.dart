
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/team_flow_section/commonWidgets/common_widgets.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class PlayerRankingScreen extends StatelessWidget {
  const PlayerRankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: CustomAppBar(
        appBarSize: 70.h,
        backGroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.sp,
            ),
            10.widthBox,
            "Player Ranking".text.white.make()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Column(
              children: [
                Row(
                  children: [
                    "Sr.".text.size(15).bold.make(),
                    20.widthBox,
                    "Team".text.size(15).bold.make(),
        
                  ],
                ).paddingAll(10),
                Divider(color: Colors.grey.withOpacity(0.4),),
        
             Row(
               children: [
                 "1".text.size(20).bold.make().marginOnly(left: 14),
                 13.widthBox,
        
                 TeamSquadBox(
                   image:"assets/images/image 4.png" ,
                   name: "Sunil Chetri",
                   team:"Bengaluru" ,
                 ),
               ],
             ),
        
                Divider(color: Colors.grey.withOpacity(0.4),),
        
                Row(
                  children: [
                    "1".text.size(20).bold.make().marginOnly(left: 14),
                    13.widthBox,
        
                    TeamSquadBox(
                      image:"assets/images/image 4.png" ,
                      name: "Sunil Chetri",
                      team:"Bengaluru" ,
                    ),
                  ],
                ),
        
        
        
                Divider(color: Colors.grey.withOpacity(0.4),),
        
                Row(
                  children: [
                    "1".text.size(20).bold.make().marginOnly(left: 14),
                    13.widthBox,
        
                    TeamSquadBox(
                      image:"assets/images/image 4.png" ,
                      name: "Sunil Chetri",
                      team:"Bengaluru" ,
                    ),
                  ],
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.4),),
        
                Row(
                  children: [
                    "1".text.size(20).bold.make().marginOnly(left: 14),
                    13.widthBox,
        
                    TeamSquadBox(
                      image:"assets/images/image 4.png" ,
                      name: "Sunil Chetri",
                      team:"Bengaluru" ,
                    ),
                  ],
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.4),),
        
                Row(
                  children: [
                    "1".text.size(20).bold.make().marginOnly(left: 14),
                    13.widthBox,
        
                    TeamSquadBox(
                      image:"assets/images/image 4.png" ,
                      name: "Sunil Chetri",
                      team:"Bengaluru" ,
                    ),
                  ],
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.4),),
        
                Row(
                  children: [
                    "1".text.size(20).bold.make().marginOnly(left: 14),
                    13.widthBox,
        
                    TeamSquadBox(
                      image:"assets/images/image 4.png" ,
                      name: "Sunil Chetri",
                      team:"Bengaluru" ,
                    ),
                  ],
                ),
        
        
              ],
            ).box.white.make()
          ],
        
        ).paddingAll(13),
      ),
    );
  }
}