import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/teams_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/MorNewsScreen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/Player_Ranking_Screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/TeamRankingScreen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/TeamsComparision_Screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/TeamsScreen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/Tournament_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/more_flow_settings_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/commonWidget/commonWidget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/team_flow_section/screens/TeamNews.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Center(
                  child: Icon(Icons.person,color: Colors.white,),
                ).box.border(color: Colors.white).roundedFull.padding(EdgeInsets.all(3)).make()
                ],
              ),
            ],
          ),
        ),
      ),
     body: Column(
       children: [

        Column(
          children: [


            More_screen_widgets(
              icon: Icons.play_arrow,
              title:"Moon Tournament" ,
              onTap: (){
                Get.to(()=>TournamentScreen());
              },
            ),



            More_screen_widgets(
              icon: Icons.people_alt_outlined,
              title:"Moon Teams" ,
              onTap: (){
                Get.to(()=>MoreFlowTeamsScreen());
              },
            ),


            More_screen_widgets(
              icon: Icons.people_alt_outlined,
              title:"Team Ranking" ,
              onTap: (){

                Get.to(()=>Teamrankingscreen());
              }
              ,
            ),



            More_screen_widgets(
              icon: Icons.favorite_outline,
              title:"Player Ranking" ,
              onTap: (){
                Get.to(()=>PlayerRankingScreen());
              },
            ),



            More_screen_widgets(
              icon: Icons.settings,
              title:"Team Comparision" ,
              onTap: (){
                Get.to(()=>TeamscomparisionScreen());
              },
            ),


            More_screen_widgets(
              icon: Icons.newspaper_outlined,
              title:"News" ,
              onTap: (){
                Get.to(()=>Mornewsscreen());
              },
            ),


            More_screen_widgets(
              icon: Icons.newspaper_outlined,
              title:"Settings" ,
              onTap: (){
                Get.to(()=>MoreFlowSettingsScreen());
              },
            ),



          ],
        ).paddingAll(10)

       ],
     ).box.padding(EdgeInsets.all(10)).make(),
    );
  }
}
