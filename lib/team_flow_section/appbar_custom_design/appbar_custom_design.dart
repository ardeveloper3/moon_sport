

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/team_flow_section/team_flow_section.dart';
import 'package:velocity_x/velocity_x.dart';

Widget TeamFolwCustomAppBarDesign(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/345 1.png").box.roundedFull.clip(Clip.antiAlias).size(100, 100).make(),

      "Man City".text.white.make(),
      "Home".text.color(Colors.white70).make(),
      30.heightBox,

    ],
  ).box.size(300, 200).color(Color(0xFF269ABF)).make();
}
