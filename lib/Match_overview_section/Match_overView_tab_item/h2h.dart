import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/common_widgets/common_Widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class H2h extends StatelessWidget {
  const H2h({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Overall".text.size(13).bold.make().marginOnly(left: 19,top: 10),
                Divider(
                  color: Colors.grey.withOpacity(0.1),
                ),
                H2HTobBox(
                  win: "0",
                  drawTeam1: "3",
                  drawTeam2: "1",
                ).marginOnly(left: 8,right: 10),

            Row(
              children: [
                Container(
                  width: 200,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30)),

                  ),
                ),
                7.widthBox,
                Container(
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF269ABF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),

                  ),
                ),
                
              ],
            ).marginOnly(left: 14,right: 7),

                20.heightBox,

              ],
            ).box.white.make(),

            20.heightBox,

            "Previous matches".text.bold.size(20).make(),

            10.heightBox,

           Column(
             children: [

               H2Hbottombox().box.white.make(),

               10.heightBox,
               H2Hbottombox().box.white.make(),

               10.heightBox,
               H2Hbottombox().box.white.make(),

               10.heightBox,
               H2Hbottombox().box.white.make(),


             ],
           )

          ],

        ).box.color(Colors.grey.withOpacity(0.1)).padding(EdgeInsets.all(15)).make(),
      ),
    );
  }
}
