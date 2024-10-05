import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/team_flow_section/commonWidgets/common_widgets.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class ComunityFlowScorer extends StatelessWidget {
  const ComunityFlowScorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: CustomAppBar(
        appBarSize: 70.h,
        backGroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [

            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.sp,
            ),
            10.widthBox,
            "Tournaments".text.white.make(),

          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Team Manager".text.size(15).bold.make().marginOnly(top: 10,left: 10),

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
            ).box.white.make().onTap((){}),
          ],
        ).box.padding(EdgeInsets.all(10)).make(),
      ) ,
    );
  }
}