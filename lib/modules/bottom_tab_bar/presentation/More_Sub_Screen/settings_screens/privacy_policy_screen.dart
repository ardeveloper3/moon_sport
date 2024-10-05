import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/commonWidget/commonWidget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
                  "Privacy Policy ".text.white.make()
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
            PrivacyPolicyTopBox(
              headLine: "Vivibe privacy, policies and terms of service",
              discripTion: "Afropolitan’s mission is to make.. One super community forum for the Digital nation" ,
            ),


            PrivacyPolicyRuleBox(

              headLine: "Information we collect from you",

              discripTion:"Lorem ipsum dolor sit amet consectetur. Donec nec dapibus magnis adipiscing viverra morbi ullamcorper. Aliquet feugiat interdum porttitor non. assa in integer ut id ornare. Vestibulum id viverra pellentesque nam. Egestas at ipsum justo ipsum pellentesque sit ac adipiscing massa. Aliquet donec diam lacus mi tempor tincin donec porta consectetur etiam. ",

            ),

            PrivacyPolicyRuleBox(

              headLine: "Information we collect from you",

              discripTion:"Lorem ipsum dolor sit amet consectetur. Donec nec dapibus magnis adipiscing viverra morbi ullamcorper. Aliquet feugiat interdum porttitor non. assa in integer ut id ornare. Vestibulum id viverra pellentesque nam. Egestas at ipsum justo ipsum pellentesque sit ac adipiscing massa. Aliquet donec diam lacus mi tempor tincin donec porta consectetur etiam. ",

            ),


            PrivacyPolicyRuleBox(

              headLine: "Information we collect from you",

              discripTion:"Lorem ipsum dolor sit amet consectetur. Donec nec dapibus magnis adipiscing viverra morbi ullamcorper. Aliquet feugiat interdum porttitor non. assa in integer ut id ornare. Vestibulum id viverra pellentesque nam. Egestas at ipsum justo ipsum pellentesque sit ac adipiscing massa. Aliquet donec diam lacus mi tempor tincin donec porta consectetur etiam. ",

            ),




          ],



        ).box.padding(EdgeInsets.all(14)).make(),
      ),
    );
  }
}
