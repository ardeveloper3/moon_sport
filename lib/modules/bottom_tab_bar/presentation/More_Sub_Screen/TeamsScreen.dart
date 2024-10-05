import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/commonWidget/commonWidget.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:moon_sports/widgets/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../utils/app_color.dart';

class MoreFlowTeamsScreen extends StatelessWidget {
  const MoreFlowTeamsScreen({super.key});

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
              "Moon Teams".text.white.make()
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  "search team".text.bold.size(20).make().marginOnly(top: 10,left: 13),

                TeamsearchBox(

                  hintText: "Search teams",

                ),

                  20.heightBox,

                  GridView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      // ignore: prefer_const_constructors
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                       mainAxisSpacing: 10

                      ),
                      itemBuilder: (context, index) {
                        return teamIdentity(

                            image: "assets/images/345 1.png",

                            teamName:"Man city" ,

                            status:"home" ,

                        );
                      }

                  )
                ],
              )
            ],
          ).box.padding(EdgeInsets.all(10.0)).make(),
        )
    );
  }
}