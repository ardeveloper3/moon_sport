

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget SmallButton({String? image, onpress}) {
  return Image.asset(
    "$image",
    width: 45,
    height: 45,
  ).centered()
      .box
      .shadowSm
      .white
      .margin(EdgeInsets.all(10))
      .size(140, 80)
      .rounded
      .clip(Clip.antiAlias)
      .make()
      .onTap(onpress);
}


Widget CircullerArrow({onpress, BoxColor, child, width, height}) {
  return Center(
      child: Container(
        child: child,
      )
          .box
          .color(BoxColor)
          .roundedFull
          .size(width, height)
          .margin(EdgeInsets.all(10))
          .border(color: Colors.black12)
          .make())
      .onTap(onpress);
}