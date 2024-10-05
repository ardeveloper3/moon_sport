
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class Mornewsscreen extends StatelessWidget {
  const Mornewsscreen({super.key});

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
              "News".text.white.make()
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Featured News".text.size(25).bold.make(),


              newsfeed(
                image: "assets/images/image 19.png",
                headLine: "Saudi Pro League will ‘spend significantly’ on stars in their prime",
                description: "Exclusive: Chief executive says Saudi clubs, who have often targeted older players, will aim to sign best talent in competition’s...",
                releaseTime: "28 May 2024 • 11:02am",

              ),

              newsfeed(
                image: "assets/images/image 19.png",
                headLine: "Saudi Pro League will ‘spend significantly’ on stars in their prime",
                description: "Exclusive: Chief executive says Saudi clubs, who have often targeted older players, will aim to sign best talent in competition’s...",
                releaseTime: "28 May 2024 • 11:02am",

              ),

              newsfeed(
                image: "assets/images/image 19.png",
                headLine: "Saudi Pro League will ‘spend significantly’ on stars in their prime",
                description: "Exclusive: Chief executive says Saudi clubs, who have often targeted older players, will aim to sign best talent in competition’s...",
                releaseTime: "28 May 2024 • 11:02am",

              ),

              newsfeed(
                image: "assets/images/image 19.png",
                headLine: "Saudi Pro League will ‘spend significantly’ on stars in their prime",
                description: "Exclusive: Chief executive says Saudi clubs, who have often targeted older players, will aim to sign best talent in competition’s...",
                releaseTime: "28 May 2024 • 11:02am",

              ),



            ],
          ).box.padding(EdgeInsets.all(10.0)).make(),
        )
    );
  }
}

