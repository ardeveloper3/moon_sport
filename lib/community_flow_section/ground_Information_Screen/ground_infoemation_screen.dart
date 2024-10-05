import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/common_widgets/Comon_widget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class GroundInfoemationScreen extends StatelessWidget {
  const GroundInfoemationScreen({super.key});

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
            "Ground".text.white.make()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            newsfeed(
              image: "assets/images/groundImage.png",
              headLine: "AT & T Arena",
              description: "New York",
              releaseTime: "2002",

            ),
            20.heightBox,
            newsfeed(
              image: "assets/images/groundImage.png",
              headLine: "AT & T Arena",
              description: "New York",
              releaseTime: "2002",

            ),
          ],
        ).paddingAll(10),
      ),
    );
  }
}
