
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/commonWidget/commonWidget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class TournamentScreen extends StatelessWidget {
  const TournamentScreen({super.key});

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
            "Tournaments".text.white.make()
          ],
        ),
      ),
      body: Column(
        children: [
Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        "Tournaments".text.size(15).bold.make().marginOnly(left: 12),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
      ],
    ),
    Divider(
      color: Colors.grey.withOpacity(0.2),
    ),

    TournamentTopBox(
      title:"Premier League- Group A" ,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3FgUMP4P8cuZbRxrv6OHBOWx8jiHyMzumPw&s",
      round:"Round 6/6" ,
    ),
    Divider(color: Colors.grey.withOpacity(0.2),),

    TournamentTopBox(
      title:"Premier League- Group A" ,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3FgUMP4P8cuZbRxrv6OHBOWx8jiHyMzumPw&s",
      round:"Round 6/6" ,
    )
  ],
).box.white.make()
        ],

      ).paddingAll(10.0) ,
    );
  }
}