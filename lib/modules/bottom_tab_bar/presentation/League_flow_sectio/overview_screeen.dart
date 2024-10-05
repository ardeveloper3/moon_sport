import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moon_sports/Match_overview_section/Match_overview_section.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class OverviewScreeen extends StatelessWidget {
  const OverviewScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                 

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Match",
                        style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ).marginOnly(left: 10),
                     Divider(
                       color: Colors.grey.withOpacity(0.5),
                        thickness: 0.4,
                      ),

                      TodaysMatch(
                        onTap: (){
                          Get.to(()=>MatchOverviewSection());
                        },
                          team1name: "Manchester UTD",
                          team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                          team2name:"Fulham" ,
                          team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                          status: "Round 1",
                        scedule:"12:00" ,
                      ),

                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 0.4,
                      ),



                      TodaysMatch(
                        onTap: (){
                          Get.to(()=>MatchOverviewSection());
                        },
                        team1name: "Manchester UTD",
                        team1Image:"https://logos-world.net/wp-content/uploads/2020/06/Manchester-United-logo.png" ,
                        team2name:"Fulham" ,
                        team2Image:"https://thumbs.dreamstime.com/b/fulham-england-football-club-emblem-transparent-background-vector-illustration-fulham-england-football-club-emblem-275657691.jpg" ,
                        status: "Round 1",
                        scedule:"12:00" ,
                      ),


                      SizedBox(height: 10.h),


                    ],
                  ),
                ),
              ),
            ),

            10.heightBox,

  ImageUrlBox(

    image: "assets/images/image 19.png",

    weburl: "https// www.xyz.com",
    onTap: (){}

  ),

20.heightBox,
"Top Scorer".text.size(20).bold.black.make(),
10.heightBox,


Column(
  children: [
    Row(

      children: [
        "#".text.make().p4(),
        17.widthBox,

        "Player".text.make().p4(),
        30.widthBox,
        "Team ".text.make().p4(),
        70.widthBox,
        "G".text.bold.make().p4(),
        40.widthBox,
        "A".text.bold.make().p4(),


      ],
    ),
    Divider(
      color: Colors.grey.withOpacity(0.5),
    ),

    TopScorer(
      flagImage: "assets/images/Flag.png",
      serialNumber: "1",
      Playername: "Ashik",
      teamName:"bdbooool" ,
      goal:"45" ,
      assist:"23" ,
    ),

    Divider(
      color: Colors.grey.withOpacity(0.5),
    ),

    TopScorer(
      flagImage: "assets/images/Flag.png",
      serialNumber: "1",
      Playername: "Ashik",
      teamName:"bdbooool" ,
      goal:"45" ,
      assist:"23" ,
    ),

    Divider(
      color: Colors.grey.withOpacity(0.5),
    ),


    TopScorer(
      flagImage: "assets/images/Flag.png",
      serialNumber: "1",
      Playername: "Ashik",
      teamName:"bdbooool" ,
      goal:"45" ,
      assist:"23" ,
    ),


    Divider(
      color: Colors.grey.withOpacity(0.5),
    ),



    TopScorer(
      flagImage: "assets/images/Flag.png",
      serialNumber: "1",
      Playername: "Ashik",
      teamName:"bdbooool" ,
      goal:"45" ,
      assist:"23" ,
    ),

    Divider(
      color: Colors.grey.withOpacity(0.5),
    ),


    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "See All".text.makeCentered(),
        Icon(Icons.arrow_forward_ios)

      ],
    ).box.white.size(double.infinity, 50).p12.make()



  ],

).box.white.padding(EdgeInsets.all(6)).margin(EdgeInsets.only(bottom: 20.0)).rounded.make(),




          ],
        ).marginSymmetric(horizontal: 10.0),
      ),
    );
  }
}
