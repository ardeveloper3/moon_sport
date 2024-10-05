import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

Widget commonBox({String? image,String? title,onTap }){

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CachedNetworkImage(
        
        //give image url if you have
        imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0g5faZol8BYohW3WDButV54DxhE2f_ZecVg&s",
        progressIndicatorBuilder:
            (context, url, downloadProgress) {
          return Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
            ),
          );
        },
        imageBuilder: (context, imageProvider) {
          return Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        errorWidget: (context, url, error) {
          return Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
            ),
          );
        },
      ),
      10.heightBox,
      
      "$title".text.size(8).bold.makeCentered(),
    ],
  ).box.shadowSm.size(109, 110).white.margin(EdgeInsets.symmetric(horizontal: 2,vertical: 10)).make().onTap(onTap);


}

Widget TeamsCom({onTap}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CachedNetworkImage(

        //give image url if you have
        imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0g5faZol8BYohW3WDButV54DxhE2f_ZecVg&s",
        progressIndicatorBuilder:
            (context, url, downloadProgress) {
          return Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
            ),
          );
        },
        imageBuilder: (context, imageProvider) {
          return Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        errorWidget: (context, url, error) {
          return Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
            ),
          );
        },
      ),
      10.heightBox,

      "    Teams Comparision ".text.size(10).bold.makeCentered().marginOnly(left: 15),
    ],
  ).box.shadowSm.size(109, 110).white.margin(EdgeInsets.symmetric(horizontal: 2,vertical: 10)).make().onTap(onTap);


}

Widget More_screen_widgets({IconData ? icon,String? title,onTap}){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Center(
                child: Icon(icon,size: 12,),
              ).box.roundedSM.size(20, 20).border(color: Colors.black).make(),
              10.widthBox,
              "$title".text.bold.size(14).make(),
            ],
          ),
          Icon(Icons.arrow_forward_ios,color: Colors.black,)
        ],
      ),
      Divider(
        color: Colors.grey.withOpacity(0.5),
      )
    ],
  ).marginSymmetric(vertical: 15).onTap(onTap);
}


Widget More_Setting_screen_widgets({IconData ? icon,String? title,onTap,child}){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Center(
                child: Icon(icon,size: 12,),
              ).box.roundedSM.size(20, 20).border(color: Colors.black).make(),
              10.widthBox,
              "$title".text.bold.size(14).make(),
            ],
          ),
          Container(

            child: child,
          )
        ],
      ),
      Divider(
        color: Colors.grey.withOpacity(0.5),
      )
    ],
  ).marginSymmetric(vertical: 15).onTap(onTap);
}


Widget PrivacyPolicyTopBox({String ? discripTion,String ? headLine}){
  return Column(
    children: [

      "$headLine".text.bold.size(22).make(),
      10.heightBox,
      "$discripTion".text.size(15).make(),
    ],
  ).box.color(Colors.grey.withOpacity(0.1)).padding(EdgeInsets.all(12)).make();
}

Widget PrivacyPolicyRuleBox({String ? discripTion,String ? headLine}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


      25.heightBox,
      Row(
        children: [
          Container(
            width: 5,
            height: 5,
           
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30.0)
            ),
          ),
          5.widthBox,
          "$headLine".text.bold.size(16).make(),
        ],
      ),
      10.heightBox,
      "$discripTion".text.size(15).make(),
    ],
  );
}
