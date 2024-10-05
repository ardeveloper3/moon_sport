import 'package:flutter/material.dart';
import 'package:moon_sports/Match_overview_section/Match_overView_tab_item/common_widgets/common_Widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class Lineup extends StatelessWidget {
  const Lineup({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.5),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(


                  width: 340,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),

                        color: Colors.grey.withOpacity(0.5),
                        image: DecorationImage(colorFilter: ColorFilter.mode(Colors.white, BlendMode.softLight),
                          image: AssetImage("assets/images/Frame 109.png"),fit: BoxFit.cover,

                        )
                      ),
                    ),



                  ],
                ).box.margin(EdgeInsets.only(left: 5,right: 5,top: 10)).rounded.white.make().box.padding(EdgeInsets.all(5.0)).make(),


                Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/549 1.png',scale: 2,),
                        "SUBSTITUTES".text.size(16).make(),
                        Image.asset('assets/images/345 1.png',scale: 2,),

                      ],
                    ).box.padding(EdgeInsets.all(10)).make(),
                    10.heightBox,

                    LinupBox(

                      playerNumer1:"1" ,
                      plyerName1: "Bernd Leno",
                      plyerNumber2: "1",
                      playerName2: "Kyle Walker",

                    ),

                    LinupBox(

                      playerNumer1:"2" ,
                      plyerName1: "Bernd Leno",
                      plyerNumber2: "2",
                      playerName2: "Kyle Walker",

                    ),

                    LinupBox(

                      playerNumer1:"3" ,
                      plyerName1: "Bernd Leno",
                      plyerNumber2: "3",
                      playerName2: "Kyle Walker",

                    ),

                    LinupBox(

                      playerNumer1:"4" ,
                      plyerName1: "Bernd Leno",
                      plyerNumber2: "4",
                      playerName2: "Kyle Walker",

                    ),

                    LinupBox(

                      playerNumer1:"3" ,
                      plyerName1: "Bernd Leno",
                      plyerNumber2: "3",
                      playerName2: "Kyle Walker",

                    ),

                    LinupBox(

                      playerNumer1:"3" ,
                      plyerName1: "Bernd Leno",
                      plyerNumber2: "3",
                      playerName2: "Kyle Walker",

                    ),




                  ],
                ).box.white.rounded.margin(EdgeInsets.all(8)).padding(EdgeInsets.all(10)).make(),
              ],
            ).box.padding(EdgeInsets.all(10)).make()
          ),
        );
  }
}
