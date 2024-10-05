import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/Tournament_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/settings_screens/privacy_policy_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/More_Sub_Screen/settings_screens/terms_and%20condition_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/commonWidget/commonWidget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class MoreFlowSettingsScreen extends StatelessWidget {
  const MoreFlowSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isSwitched = false.obs;
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

                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30.sp,
                  ).onTap((){
                    Get.back();
                  }),
                  "Setting".text.white.make()
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              ()=> Column(
                children: [


               More_Setting_screen_widgets(
                 icon: Icons.notifications_active,
                 title:"Notification" ,
                 child: Switch(
                   activeColor: Colors.green,

                     value: isSwitched.value,
                     onChanged:(value){
                       isSwitched.value = value;
                     }),

                 onTap: (){},
               ),

                  20.heightBox,



                  More_screen_widgets(
                    icon: Icons.rule,
                    title:"Privacy Policy" ,
                    onTap: (){
                      Get.to(()=>PrivacyPolicyScreen());
                    },
                  ),
                  20.heightBox,

                  More_screen_widgets(
                    icon: Icons.rule,
                    title:"Terms And Conditions" ,
                    onTap: (){
                      Get.to(()=>TermsAndConditions());

                    },
                  ),


                  20.heightBox,

                  More_screen_widgets(
                    icon: Icons.person,
                    title:"Logout" ,
                    onTap: (){

                    },
                  ),

                  20.heightBox,


                ],
              ).paddingAll(10).box.padding(EdgeInsets.all(10)).make(),
            ),

          ],
        ),
      ),
    );
  }
}
