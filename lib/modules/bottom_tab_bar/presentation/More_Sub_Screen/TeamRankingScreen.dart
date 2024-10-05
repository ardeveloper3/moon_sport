
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/commonWidget/commonWidget.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../utils/app_color.dart';

class Teamrankingscreen extends StatelessWidget {
  const Teamrankingscreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
        
                Row(
                  children: [
                    "Sr".text.size(15).bold.make(),
                    20.widthBox,
                    "Team".text.size(15).bold.make(),
        
                  ],
                ).paddingAll(10),
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                    srNo:"1" ,
                    TeamName:"ManCity" ,
                    image:"assets/images/345 1.png" ,
                ),
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
        
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
        
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
        
                Divider(color: Colors.grey.withOpacity(0.5),),
                RankingBox(
                  srNo:"1" ,
                  TeamName:"ManCity" ,
                  image:"assets/images/345 1.png" ,
                ),
              ],
            ).box.white.make()
          ],
        ).box.padding(EdgeInsets.all(15)).make(),
      ),
    );
  }
}