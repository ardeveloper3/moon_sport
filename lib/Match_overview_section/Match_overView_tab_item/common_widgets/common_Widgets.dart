import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';


Widget OverViewTopBox({String? team1Image,String? team2Image,String? Team1goal,String? team1Name,String? Team2goal,String? team2Name}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
    Image.asset('$team1Image',scale: 2,).box.roundedFull.clip(Clip.antiAlias).make(),
    7.widthBox,
    "#$Team1goal $team1Name".text.make() ,
      100.widthBox,

      "#$Team2goal $team2Name".text.make() ,
      7.widthBox,
      Image.asset('$team2Image',scale: 2,),


    ],
  ).box.white.padding(EdgeInsets.all(6)).make();
}

Widget OverViewSecondBox({String? teamImage,String? teamName,}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      Image.asset('$teamImage',scale: 2,),
      7.widthBox,
      "$teamName".text.make() ,
      144.widthBox,
Icon(Icons.remove,color: Colors.white,size: 15,).box.roundedFull.color(Colors.grey).make(),
      2.widthBox,
      Icon(Icons.check_circle,color: Colors.green,size: 15,),
      2.widthBox,
      Icon(Icons.check_circle,color: Colors.green,size: 15,),
      2.widthBox,

      Icon(Icons.check_circle,color: Colors.green,size: 15,),
      2.widthBox,

      Icon(Icons.highlight_remove_rounded,color: Colors.white,size: 18,).box.roundedFull.color(Colors.red).make(),






    ],
  ).box.white.padding(EdgeInsets.symmetric(vertical: 8)).make();
}
Widget MatchReport(
    {String? team1Image,
      onTap,
      String? team2Image,
      String? team1name,
      String? team2name,
      String? goal,
      String? status}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      children: [
        Text(
          "$team1name",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
          ),
        ),
        SizedBox(width: 5.w),
        CachedNetworkImage(
          imageUrl: "$team1Image",
          progressIndicatorBuilder: (context, url, downloadProgress) {
            return Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
            );
          },
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          errorWidget: (context, url, error) {
            return Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
            );
          },
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              "$status",
              style: TextStyle(
                color: Colors.grey.withOpacity(0.8),
                fontSize: 11.sp,
              ),
            ),
            Text(
              "$goal",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const Spacer(),
        CachedNetworkImage(
          imageUrl: "$team2Image",
          progressIndicatorBuilder: (context, url, downloadProgress) {
            return Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
            );
          },
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          errorWidget: (context, url, error) {
            return Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
            );
          },
        ),
        SizedBox(width: 5.w),
        Text(
          "$team2name",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
          ),
        ),
      ],
    ).onTap(onTap),
  );
}

Widget LeagueInformationBox({String? title,String? value}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    "$title".text.make(),
    "$value".text.color(Colors.black87).make(),
    ],
  ).box.white.padding(EdgeInsets.only(top: 20,bottom: 10,left: 5)).make();
}


Widget pointBox({String? time,String? team1goal,String? team2goal}){

  return Column(


    children: [

      "$time".text.bold.size(22).color(Color(0xFF274893)).make().marginOnly(right: 25),

    3.heightBox,

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        " $team1goal   -   ".text.bold.size(20).make(),


        "$team2goal".text.bold.size(20).make(),
        35.widthBox,

      ],
    ),
      Divider( color: Colors.grey.withOpacity(0.1),),

    ],
  ).box.padding(EdgeInsets.all(5.0)).make();
}

Widget yellowCard({String? time,String? Pname}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      98.widthBox,
      "$time'".text.size(20).bold.make(),
      20.widthBox,

      Container(
        color: Colors.yellow,
        width: 13,
        height: 20,
      ),
      10.widthBox,
      "$Pname".text.size(15).make(),

    ],
  ).marginOnly(top: 5,bottom: 5);
}



Widget exchange({String? time,String? Pname,String? exchangePlayerName}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      125.widthBox,
      "$time'".text.size(20).bold.make(),
      18.widthBox,

      Icon(Icons.arrow_upward,color: Colors.green,size: 12,),
      Icon(Icons.arrow_downward_sharp,color: Colors.red,size: 12,),

      10.widthBox,

     Column(
       children: [

         "$Pname".text.size(15).make(),
         "$exchangePlayerName".text.gray200.size(15).make(),

       ],
     )

    ],
  ).marginOnly(top: 5,bottom: 5);
}

Widget exchange2({String? time,String? Pname,String? exchangePlayerName}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [



      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          "$Pname".text.size(12).make().marginOnly(right: 20),
          "$exchangePlayerName".text.gray200.size(12).make(),

        ],
      ),
      8.widthBox,

      Icon(Icons.arrow_upward,color: Colors.green,size: 12,),
      Icon(Icons.arrow_downward_sharp,color: Colors.red,size: 12,),
      11.widthBox,

      "$time'".text.size(20).bold.make(),

      150.widthBox,



    ],
  ).marginOnly(top: 5,bottom: 5);
}


Widget foulBox({String? time,String? Pname}){

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      105.widthBox,
      "$time'".text.size(20).bold.make(),
      20.widthBox,

      Container(

        width: 20,
        height: 25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icons/Foul Card.png"),fit: BoxFit.cover
          )
        ),
      ),
      10.widthBox,
      "$Pname".text.size(15).make(),

    ],
  ).marginOnly(top: 5,bottom: 5);
}



Widget penaltyBox({String? time,String? Pname,String? penaltyTecker,String? team1Goal,String? team2Goal}){

  return Row(

    children: [
      Column(
        children: [
          "$penaltyTecker".text.make(),

         "penalty".text.color(Colors.black54).make(),

        ],
      ),
     10.widthBox,

     Icon(Icons.sports_soccer),



     10.widthBox,

     Column(
       children: [
         "$time'".text.size(20).bold.make(),
         "$team1Goal - $team2Goal".text.bold.color(Colors.grey.withOpacity(0.5)).make()
       ],
     ),

      20.widthBox,

      Container(
        color: Colors.yellow,
        width: 13,
        height: 20,
      ),

      10.widthBox,
      "$Pname".text.size(15).make(),

    ],
  ).marginOnly(top: 5,bottom: 5,left: 25);
}


Widget penaltyBox2({String? penultycicker2,String? time,String? penaltyTecker,String? team1Goal,String? team2Goal}){

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [

      10.widthBox,


      Column(
        children: [
          "$time'".text.size(20).bold.make(),
          "$team1Goal - $team2Goal".text.bold.color(Colors.grey.withOpacity(0.5)).make()
        ],
      ),

      10.widthBox,

      Icon(Icons.sports_soccer),
      20.widthBox,

      Column(
        children: [
          "$penaltyTecker".text.make(),

          "$penultycicker2".text.color(Colors.black54).make(),

        ],
      ),




    ],
  ).marginOnly(top: 5,bottom: 5,left: 82);
}

Widget LinupBox({String? playerNumer1,String? plyerName1,String? plyerNumber2,String? playerName2}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
      children: [
        "$playerNumer1".text.make(),
        10.widthBox,
        "$plyerName1".text.make()
      ],
    ),

      Row(
        children: [

          10.widthBox,
          "$playerName2".text.make(),
         10.widthBox,
          "$plyerNumber2".text.make(),
        ]
      ),

    ],
  ).box.padding(EdgeInsets.all(10)).make();
}

Widget StatsBox({String? Team1StatusNumber,String? status,String? Team2StatusNumber}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      "$Team1StatusNumber".text.make(),
      "$status".text.make(),
      "$Team2StatusNumber".text.make(),

    ],
  ).box.padding(EdgeInsets.all(10)).make();
}
Widget H2HTobBox({String? win ,String? drawTeam1,String?drawTeam2 }){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
      children: [
        "Win".text.bold.make(),

        5.widthBox,

        "$win".text.make(),

      ],
    ),
      Row(
        children: [
          "Draw".text.bold.make(),
          5.widthBox,
          "$drawTeam1".text.make(),

        ],
      ),
      Row(
        children: [
          "Draw".text.bold.make(),
          5.widthBox,
          "$drawTeam2".text.make(),

        ],
      ),
    ],
  ).paddingAll(10);
}

Widget H2Hbottombox(){
  return Padding(
    padding: const EdgeInsets.only(left: 2.0,right: 2,bottom: 5,top: 4),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 3),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3FgUMP4P8cuZbRxrv6OHBOWx8jiHyMzumPw&s",
                progressIndicatorBuilder:
                    (context, url, downloadProgress) {
                  return Container(
                    width: 25.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                          .withOpacity(0.3),
                    ),
                  );
                },
                imageBuilder:
                    (context, imageProvider) {
                  return Container(
                    width: 25.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return Container(
                    width: 25.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                          .withOpacity(0.3),
                    ),
                  );
                },
              ),

              const SizedBox(width: 5),

              Text(
                "PREMIER LEAGUE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp),
              ),

            ],
          ),
        ),

        Divider(
          thickness: 1,

          color: Colors.grey.withOpacity(0.3),
        ),
        5.heightBox,

        TodaysMatch(
          team1name: "Manchester UTD",
          team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
          team2name:"Fulham" ,
          team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
          status: "Round 1",
          scedule:"12:00" ,
        ).marginSymmetric(horizontal: 5),

        3.heightBox,



      ],
    ),
  );
}

