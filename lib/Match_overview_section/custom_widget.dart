

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/team_flow_section/team_flow_section.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomBox(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: [
        
        Image.asset("assets/images/345 1.png").box.size(70, 70).make().onTap((){
          Get.to(()=>TeamFlowSection());
        }),
        10.heightBox,
        "Man City".text.bold.white.make(),
        5.heightBox,
        "Home".text.white.make(),
      ],
    ),
    Column(

      children: [
        40.heightBox,

Row(
  children: [
    "1".text.white.size(25).bold.make(),
    10.widthBox,
    "-".text.white.size(25).bold.make(),
    10.widthBox,
    "1".text.white.size(25).bold.make(),
  ],
),
        20.heightBox,
      Column(
        children: [
          "81'".text.white.bold.size(20).make(),
          Container(width: 20,height: 2,color: Colors.white,),
        ],
      )


      ],
    ),

    Column(
      children: [

        Image.asset("assets/images/549 1.png",).box.size(70, 70).roundedFull.clip(Clip.antiAlias).make().onTap((){
  Get.to(()=>TeamFlowSection());
  }),
        10.heightBox,
        "Man City".text.bold.white.make(),
        5.heightBox,
        "Home".text.white.make(),
      ],
    ),
  ],
),
      20.heightBox,

      Row(

        children: [
          "R. Mahrez 57’ (Pen)".text.white.make(),
          10.widthBox,
          Image.asset('assets/icons/bx_football.png',),
          10.widthBox,
          "B. Saka 31’".text.white.make(),

        ],
      ),
     10.heightBox,
     Row(
       children: [
         128.widthBox,
         Container(height: 13,width: 8,color: Colors.red,),
         5.widthBox,
         "Gabriel Magalhaes 59’".text.white.make()
       ],
     )
    ],
  ).box.size(300, 250).color(Color(0xFF269ABF)).make();
}

