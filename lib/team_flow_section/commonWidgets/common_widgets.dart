import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';



Widget IconBox({String ? title,color}){
  return   Center(
    child: "$title".text.size(8).bold.make(),
  ).box.roundedFull.color(color).clip(Clip.antiAlias).size(20, 20).margin(EdgeInsets.all(4)).make();
}

Widget ScorBox({String? team1image,String? team1score,String? team2scor,String? team2image,}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset('$team1image',scale: 3,),
      Row(
        children: [
          10.widthBox,

          "$team1score".text.bold.make(),
          10.widthBox,

          "-  $team2scor ".text.bold.make(),

          10.widthBox,

          Image.asset('$team2image',scale: 3,),
        ],
      )

    ],
  ).box.rounded.border(color: Colors.black54).padding(EdgeInsets.symmetric(horizontal: 20,vertical: 10)).margin(EdgeInsets.all(10)).make();
}

Widget RankingBox({String? lost,String? draw,String? win,String? currentRanking,String? bestRanking,String? Goals,String? Assist}){
  return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(

          children: [
            Column(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Current Ranking".text.black.size(13).make(),
                10.heightBox,
                "$currentRanking".text.bold.size(25).make()
              ],
            ).box.size(150, 110).make(),
            17.widthBox,

            Container(
              height: 115,
              width: 3,
              color: Colors.black12,
            ),
            16.widthBox,

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Best Ranking".text.black.size(13).make(),
                10.heightBox,
                "$bestRanking".text.bold.size(25).make()
              ],
            ).box.size(150, 110).make(),

          ],
        ),




     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [

         Container(
           color: Colors.grey.withOpacity(0.3),
           width: 115,
           height: 5,
         ),


         Column(
           children: [
             Row(children: [
               "$win".text.color(Colors.blueAccent).make(),
               "  $draw   $lost".text.make(),

             ],
             ),
             5.heightBox,

             Row(children: [
               "W".text.color(Colors.blueAccent).make(),
               "  D   L".text.make(),

             ],
             ),
           ],
         ),


         Container(
           color: Colors.grey.withOpacity(0.3),
           width: 115,
           height: 5,
         ),


       ],
     ),

        Row(

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Goals".text.black.size(14).make(),
                10.heightBox,
                "$Goals".text.bold.size(25).make()
              ],
            ).box.size(150, 120).make(),

            15.widthBox,

            Container(
              height: 110,
              width: 3,
              color: Colors.black12,
            ),
            15.widthBox,

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Assist".text.black.size(13).make(),
                10.heightBox,
                "$Assist".text.bold.size(25).make()
              ],
            ).box.size(150, 120).make(),

          ],
        ),

      ],
    ).box.white.bgImage(DecorationImage(image: AssetImage("assets/images/boxrrr.jpeg",),scale: 2)).size(400, 345).make();

}

Widget InformationBox({String? title,String? value}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      "$title".text.make(),
      "$value".text.color(Colors.black87).make(),
    ],
  ).box.white.padding(EdgeInsets.only(top: 20,bottom: 10,left: 5)).make();
}
Widget TeamSquadBox({String? image,String? name,String? team}){
  return Column(
    children: [
      Divider(color: Colors.grey.withOpacity(0.3),),
      Row(
      children: [
      Image.asset("$image"),
      10.widthBox,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "$name".text.bold.make(),
          "$team".text.make(),
        ],
      )

      ],

      ),
    ],
  ).box.padding(EdgeInsets.all(10)).make();
}