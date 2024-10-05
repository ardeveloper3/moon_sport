import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/common_widgets/Comon_widget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class FullNewsPage extends StatelessWidget {
  const FullNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30.sp,
                  ).onTap((){
                    Get.back();
                  }),
                  "News".text.white.make()
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.withOpacity(0.1),

      body: SingleChildScrollView(
        child: Column(
          children: [

            FullNewsBox(
              headline:"Manchester United 'extremely close' to signing Darwin Nunez" ,

              image: "assets/images/image 19.png",

              shortdiscription: "The Benfica striker has been on the radar of a number of clubs ahead of the summer transfer window.",

              longDiscription:"Manchester United are reportedly extremely close to completing the signing of Darwin Nunez.The 22-year-old Benfica striker has been in superb form this season, scoring 34 goals for the Portuguese outfit. His goal against Ajax in the Champions League will certainly have made an impression on newly-appointed United manager Erik ten Hag.According to Give Me Sport journalist Dean Jones, a deal for Nunez would set United back £50.6m with Benfica having reportedly lined up Stuttgart's Sasa Kalajdzic as a replacement. Other reports have suggested that Benfica would be looking to cash in on the Uruguayan in order to fund their summer transfer window. Atletico Madrid are believed to be the only club likely to challenge United for Nunez.Elsewhere, United are reportedly still keen on signing Lyon forward Moussa Dembele. Back in March, MEN Sport reported that United had made initial enquiries about the 25-year-old. Dembele has enjoyed a good season with Lyon having scored 22 goals in Ligue 1.Foot Mercato claim that United, Arsenal and Tottenham Hotspur are all tracking Dembele. With his contract expiring in 2023, the French club are believed to be willing to accept a bid of £21.2m." ,
            ),
          ],

        ).paddingAll(10),
      ),

    );
  }
}
