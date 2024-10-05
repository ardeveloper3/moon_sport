
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/TeamSubComparision.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/commonWidget/commonWidget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/player_comparision.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../utils/app_color.dart';

class TeamscomparisionScreen extends StatelessWidget {
  const TeamscomparisionScreen({super.key});

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
            "Team Ranking".text.white.make()
          ],
        ),
      ),
      body: Column(
        children: [
          30.heightBox,
Row(
  children: [
    TeamComparism(
      title: "Select Team A",
      onTap:(){
        Get.to(()=>Teamsubcomparision());
      },

    ),

    TeamComparism(
      title: "Select Team A",
      onTap:(){
        Get.to(()=>PlayerComparision());
      },

    )
  ],
)

        ],
      ),
    );
  }
}