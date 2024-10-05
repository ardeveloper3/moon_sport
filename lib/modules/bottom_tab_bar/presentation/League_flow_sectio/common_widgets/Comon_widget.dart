import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio/full_news_page.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/my_match_details.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

Widget TodaysMatch(
    {String? team1Image,
      onTap,
    String? team2Image,
    String? team1name,
    String? team2name,
    String? scedule,
    String? status}) {
  return Row(
    children: [
      Text(
        "$team1name",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 11.sp,
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

      ),
      const Spacer(),
      Column(

        children: [
          Text(
            "$status",
            style: TextStyle(
            color: Colors.grey.withOpacity(0.8),
              fontSize: 14.sp,
            ),
          ),
          4.heightBox,
          Text(
            "$scedule",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          20.heightBox,
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
          fontSize: 11.sp,
        ),
      ),
    ],
  ).marginSymmetric(horizontal: 10).onTap(onTap);
}

//imageUrlBox

Widget ImageUrlBox({String? image, String? weburl,onTap}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        '$image',
        fit: BoxFit.cover,
      ),

      //TODO
      //in time of backend you have creat a web view system methode
      10.heightBox,

      Text(
        "$weburl",
        style: TextStyle(

          decoration: TextDecoration.underline,
          decorationColor: Color(0xFF269ABF),
          // optional
          decorationThickness: 1,
          // optional
          color: Color(0xFF269ABF),
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
        ),
      ).marginOnly(left: 8).onTap(onTap)
    ],
  ).box.white.rounded.padding(EdgeInsets.only(bottom: 20, top: 4)).make();
}

Widget TopScorer(
    {String? flagImage,
    String? serialNumber,
    String? Playername,
    String? teamName,
    String? goal,
    String? assist}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      "$serialNumber".text.make(),

      //TODO
      //when you the image url CachedNetworkImage widget now im use just for design asset image

      // CachedNetworkImage(
      //   imageUrl:
      //   "$flagImage",
      //   progressIndicatorBuilder:
      //       (context, url, downloadProgress) {
      //     return Container(
      //       width: 30.w,
      //       height: 30.h,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.grey
      //             .withOpacity(0.3),
      //       ),
      //     );
      //   },
      //   imageBuilder:
      //       (context, imageProvider) {
      //     return Container(
      //       width: 30.w,
      //       height: 30.h,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         image: DecorationImage(
      //           image: imageProvider,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     );
      //   },
      //   errorWidget: (context, url, error) {
      //     return Container(
      //       width: 30.w,
      //       height: 30.h,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.grey
      //             .withOpacity(0.3),
      //       ),
      //     );
      //   },
      // ),

//when you in a backend and got the image url  use CachedNetworkImage widget instead of assets. Now im use just for design asset image
      //TODO

      25.widthBox,
      Image.asset("${flagImage}"),
      5.widthBox,
      "$Playername".text.make(),
      27.widthBox,
      "$teamName".text.make(),
      50.widthBox,
      "$goal".text.bold.make(),
      30.widthBox,
      "$assist".text.bold.make(),
    ],
  ).box.padding(EdgeInsets.all(5)).make();
}

Widget MatchShortSummaryBox(
    {String? maxballcarry,
    String? team1Image,
    String? team1Player1,
    String? team1Player2,
    String? team1Scor,
    String? team2Scor,
    String? team2Image,
    team2player1,
    String? team2Player2}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "$maxballcarry".text.white.makeCentered(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              //when you in a backend and got the image url  use CachedNetworkImage widget instead of assets. Now im use just for design asset image
              //TODO

              Image.asset("$team1Image"),
              20.heightBox,
              "$team1Player1".text.white.make(),
              10.heightBox,
              "$team1Player2".text.white.make(),
            ],
          ),
          20.widthBox,
          Row(
            children: [
              " $team1Scor -".text.bold.white.size(30).make(),
              "$team2Scor".text.bold.white.size(30).make(),
            ],
          ),
          20.widthBox,
          Column(
            children: [
              Image.asset("$team2Image"),
              20.heightBox,
              "$team2player1".text.white.make(),
              10.heightBox,
              "$team2Player2".text.white.make(),
            ],
          ),
        ],
      ),
    ],
  )
      .box
      .rounded
      .color(Color(0xFF269ABF))
  .linearGradient([
    Color(0xFF269ABF),
    Colors.black12.withOpacity(0.3),
    
  ])
      .margin(EdgeInsets.all(12))
      .size(300, 200)
      .make();
}

Widget smallTextButton({String? title, bool? isSelected, onTap}) {
  return "$title"
      .text
      .color(isSelected == true ? Colors.white : Colors.black12)
      .make()
      .box
      .rounded
      .margin(EdgeInsets.all(10))
      .padding(EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0))
      .color(isSelected == true ? Color(0xFF269ABF) : Colors.white)
      .make()
      .onTap(onTap);
}

Widget GroupBox({
  String? flagImage,
  String? serialNumber,
  String? teamName,
  String? M,
  String? W,
  String? D,
  String? L,
  String? G,
  String? PTS,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 3,
        height: 30,
        color: Colors.blue,
      ),
      5.widthBox,

      "$serialNumber".text.make(),
      //TODO
      //check down
      //TODO
      //when you the image url CachedNetworkImage widget now im use just for design asset image

      // CachedNetworkImage(
      //   imageUrl:
      //   "$flagImage",
      //   progressIndicatorBuilder:
      //       (context, url, downloadProgress) {
      //     return Container(
      //       width: 30.w,
      //       height: 30.h,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.grey
      //             .withOpacity(0.3),
      //       ),
      //     );
      //   },
      //   imageBuilder:
      //       (context, imageProvider) {
      //     return Container(
      //       width: 30.w,
      //       height: 30.h,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         image: DecorationImage(
      //           image: imageProvider,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     );
      //   },
      //   errorWidget: (context, url, error) {
      //     return Container(
      //       width: 30.w,
      //       height: 30.h,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.grey
      //             .withOpacity(0.3),
      //       ),
      //     );
      //   },
      // ),

//when you in a backend and got the image url  use CachedNetworkImage widget instead of assets. Now im use just for design asset image
      //TODO

      32.widthBox,
      Image.asset(
        "${flagImage}",
        scale: 3,
      ),
      5.widthBox,

      "$teamName".text.size(7).make(),

      10.widthBox,
      "$M".text.bold.make(),
      17.widthBox,
      "$W".text.bold.make(),
      15.widthBox,

      "$D".text.bold.make(),
      17.widthBox,

      "$L".text.bold.make(),
      14.widthBox,

      "$G".text.bold.make(),
      17.widthBox,

      "$PTS".text.bold.make(),
    ],
  ).box.make();
}

Widget drawsPanel({
  String? clockTime,
  String? time,
  String? team1Name,
  String? team1goal,
  String? team1flagImage,
  String? team2Name,
  String? team2goal,
  String? team2flagImage,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "$time".text.size(15).bold.make(),
          "$clockTime".text.size(12).bold.make(),
        ],
      ),
      16.widthBox,
      VerticalDivider(
        color: Colors.grey.withOpacity(0.5),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "$team1flagImage",
                scale: 3,
              ),
              10.widthBox,
              "$team1Name".text.make(),
            ],
          ),
          20.heightBox,
          Row(
            children: [
              Image.asset(
                "$team2flagImage",
                scale: 3,
              ),
              10.widthBox,
              "$team2Name".text.make(),
            ],
          ),
        ],
      ),
      60.widthBox,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              10.heightBox,
              "$team1goal".text.size(15).bold.make(),
              15.heightBox,
              "$team2goal".text.size(15).bold.make(),
            ],
          )
        ],
      )
    ],
  ).box.white.rounded.height(90).width(300).padding(EdgeInsets.all(10)).make();
}

Widget newsfeed(
    {String? image,
    String? headLine,
    String? description,
    String? releaseTime}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        '$image',
        fit: BoxFit.cover,
      ),

      //TODO
      //in time of backend you have creat a web view system methode

      "$headLine".text.bold.size(20).make().marginOnly(left: 10.0),
      8.heightBox,
      "$description".text.make().marginOnly(left: 10.0),
      8.heightBox,
      "$releaseTime".text.make().marginOnly(left: 10.0),
    ],
  )
      .box
      .white
      .rounded
      .padding(EdgeInsets.only(bottom: 20, top: 4))
      .margin(EdgeInsets.only(bottom: 20.0))
      .make().onTap((){

        Get.to(()=>FullNewsPage());
  });
}


class videoNewsFeed extends StatelessWidget {

  final String? image;
  final String? headline;
  final String? description;
  final String? url;
  final String? releastime;


  const videoNewsFeed({super.key, this.image, this.headline, this.description, this.url, this.releastime});

  @override
  Widget build(BuildContext context) {


    void _launchVideo()async{
      final link = "${url}";
      await launchUrl(
        Uri.parse(link),
        mode: LaunchMode.externalApplication,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(

          height: 150,
          

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image:AssetImage('$image'),
                  fit: BoxFit.cover
              )
          ),
          child: Center(
            child: Icon(Icons.play_arrow,color: Colors.black,size: 40,).box.size(70, 70).color(Colors.white.withOpacity(0.7)).roundedFull.clip(Clip.antiAlias).make(),
          ),
        ).onTap((){
          _launchVideo();
        }),



        //TODO
        //in time of backend you have creat a web view system methode

        "$headline".text.bold.size(20).make().marginOnly(left: 10.0),
        8.heightBox,
        "$description".text.make().marginOnly(left: 10.0),
        8.heightBox,
        "$releastime".text.make().marginOnly(left: 10.0),
      ],
    )
        .box
        .white
        .rounded
        .padding(EdgeInsets.only(bottom: 20, top: 4))
        .margin(EdgeInsets.only(bottom: 20.0))
        .make();;
  }
}

Widget perticipateTeam({String? image,String? name}){

  return Center(
    child: Column(
mainAxisAlignment: MainAxisAlignment.center,
      children: [
        10.heightBox,

        //TODO when you got image ling you can use catchimagewidget

       Image.asset('$image'),



       "$name".text.bold.make(),



      ],
    ).box.border(color: Colors.black12).white.size(130, 130).make(),
  );


}

Widget Pleyerperformance(
    {String? flagImage,
      String? serialNumber,
      String? Playername,

      String? RT,
      }) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.widthBox,
          "$serialNumber".text.size(20).make(),

          //TODO
          //when you the image url CachedNetworkImage widget now im use just for design asset image

          // CachedNetworkImage(
          //   imageUrl:
          //   "$flagImage",
          //   progressIndicatorBuilder:
          //       (context, url, downloadProgress) {
          //     return Container(
          //       width: 30.w,
          //       height: 30.h,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.grey
          //             .withOpacity(0.3),
          //       ),
          //     );
          //   },
          //   imageBuilder:
          //       (context, imageProvider) {
          //     return Container(
          //       width: 30.w,
          //       height: 30.h,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         image: DecorationImage(
          //           image: imageProvider,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     );
          //   },
          //   errorWidget: (context, url, error) {
          //     return Container(
          //       width: 30.w,
          //       height: 30.h,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.grey
          //             .withOpacity(0.3),
          //       ),
          //     );
          //   },
          // ),

      //when you in a backend and got the image url  use CachedNetworkImage widget instead of assets. Now im use just for design asset image
          //TODO

          25.widthBox,
          Image.asset("${flagImage}",fit: BoxFit.cover,).box.roundedFull.size(25, 25).clip(Clip.antiAlias).make(),
          5.widthBox,
          "$Playername".text.color(Colors.black).make(),

          105.widthBox,
          "$RT".text.bold.make(),

        ],
      ),
      Divider(
        color: Colors.grey.withOpacity(0.5),
      )
    ],
  ).box.padding(EdgeInsets.all(5)).make();
}


Widget HomeBox(){
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

             150.widthBox,

              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black54,
                size: 20,
              ).onTap((){
                Get.to(()=>MyMatchDetails());
              })
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

        Divider(thickness: 1, color: Colors.grey.withOpacity(0.3),),

        3.heightBox,

        TodaysMatch(
          team1name: "Manchester UTD",
          team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
          team2name:"Fulham" ,
          team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
          status: "Round 1",
          scedule:"12:00" ,
        ).marginSymmetric(horizontal: 5),


      ],
    ),
  );
}


Widget HomeBox2(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
      Row(
        children: [
      20.widthBox,
      Image.asset('assets/images/image 2.png',fit: BoxFit.fill,).box.size(60, 60).roundedFull.clip(Clip.antiAlias).make(),
      "PREMIER LEAGUE".text.bold.size(20).make(),
      Icon(Icons.arrow_forward_ios,)
        ],
      ),
          Divider(

            color: Colors.grey.withOpacity(0.1),
            height: 0.1,
          ),

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

      TodaysMatch(
        team1name: "Manchester UTD",
        team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
        team2name:"Fulham" ,
        team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
        status: "Round 1",
        scedule:"12:00" ,
      ),
      Divider(

        color: Colors.grey.withOpacity(0.1),
        height: 0.1,
      ),
      TodaysMatch(
        team1name: "Manchester UTD",
        team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
        team2name:"Fulham" ,
        team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
        status: "Round 1",
        scedule:"12:00" ,
      ),
        ],
      )

        ],
      ).box.white.make(),
    ),
  );
}


Widget FullNewsBox({String? image,String? headline,String? shortdiscription,String? longDiscription}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      "$headline".text.black.bold.size(18).make(),
      10.heightBox,
      "$shortdiscription".text.make(),
      20.heightBox,

      Image.asset(
        '$image',
        fit: BoxFit.cover,
      ),
      20.heightBox,
      
      "$longDiscription".text.size(15).make(),
      
    ],
  );
}
