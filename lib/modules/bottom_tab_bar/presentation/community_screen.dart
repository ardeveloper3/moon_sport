import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/community_flow_section/community_flow_screens/commuini_flow_TeamManager_screen.dart';
import 'package:moon_sports/community_flow_section/community_flow_screens/community_flow_coach.dart';
import 'package:moon_sports/community_flow_section/community_flow_screens/community_flow_ground.dart';
import 'package:moon_sports/community_flow_section/community_flow_screens/comuinity_flow_Refree.dart';
import 'package:moon_sports/community_flow_section/community_flow_screens/comunity_flow_Scorer.dart';
import 'package:moon_sports/community_flow_section/community_flow_screens/comunity_flow_commentator.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/MorNewsScreen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/Player_Ranking_Screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/TeamsComparision_Screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/commonWidget/commonWidget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

import 'More_Sub_Screen/TeamRankingScreen.dart';
import 'More_Sub_Screen/TeamsScreen.dart';
import 'More_Sub_Screen/Tournament_screen.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: CustomAppBar(
        appBarSize: 70.h,
        backGroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              commonBox(
                  image: '',
                  title:"Team Manager" ,
                  onTap: (){
                    Get.to(()=>CommuiniFlowTeammanagerScreen());
                  }

              ),

              commonBox(
                  image: '',
                  title:"Scorer" ,
                  onTap: (){
                    Get.to(()=>ComunityFlowScorer());
                  }

              ),

              commonBox(
                  image: '',
                  title:"Refree" ,
                  onTap: (){
                    Get.to(()=>ComuinityFlowRefree());
                  }

              ),


            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              commonBox(
                  image: '',
                  title:"Commentator" ,
                  onTap: (){
                    Get.to(()=>ComunityFlowCommentator());
                  }

              ),

              commonBox(
                  image: '',
                  title:"Ground" ,
                  onTap: (){
                    Get.to(()=>CommunityFlowGround());
                  }

              ),



              commonBox(
                  image: '',
                  title:"Coach" ,
                  onTap: (){
                    Get.to(()=>CommunityFlowCoach());
                  }

              ),


            ],
          ),

        ],
      ).box.padding(EdgeInsets.all(10)).make(),
    );
  }
}
