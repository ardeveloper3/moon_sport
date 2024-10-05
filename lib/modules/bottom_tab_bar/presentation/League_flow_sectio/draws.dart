import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:velocity_x/velocity_x.dart';

class Draws extends StatelessWidget {
  const Draws({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.3),

        appBar: ButtonsTabBar(


          decoration: BoxDecoration(

             color:  Color(0xFF269ABF),
            borderRadius: BorderRadius.circular(30),


          ),
          

          unselectedBackgroundColor: Colors.grey.withOpacity(0.2),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),


          tabs: [

            Tab(
             child: Padding(
               padding: EdgeInsets.all(10.0),
               child: "Round of 16".text.make(),
             ),
            ),

            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Querter final".text.make(),
              ),
            ),

            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Semi Final".text.make(),
              ),
            ),


            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Final".text.make(),
              ),
            ),




          ],
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 7.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(

                        children: [
                          drawsPanel(
                            time: "Ft",
                            clockTime: '',
                            team1Name:"Manchester City" ,
                            team1flagImage: "assets/images/345 1.png",
                            team1goal: "3",
                            team2Name: "Arsenal",
                            team2flagImage: "assets/images/345 1.png",
                            team2goal:"3" ,

                          ),
                          20.heightBox,

                          drawsPanel(
                            time: "Ft",
                            clockTime: '',
                            team1Name:"Manchester City" ,
                            team1flagImage: "assets/images/345 1.png",
                            team1goal: "3",
                            team2Name: "Arsenal",
                            team2flagImage: "assets/images/345 1.png",
                            team2goal:"3" ,

                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Row(
                          children: [
                            Image.asset("assets/icons/Rectangle 3.png"),
                            Image.asset("assets/icons/Line 14.png",scale: 2,),


                          ],
                        ),
                      )




                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 7.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(

                        children: [
                          drawsPanel(
                            time: "1 Jul",
                            clockTime: '22:21',
                            team1Name:"Manchester City" ,
                            team1flagImage: "assets/images/345 1.png",
                            team1goal: "3",
                            team2Name: "Arsenal",
                            team2flagImage: "assets/images/345 1.png",
                            team2goal:"3" ,

                          ),
                          20.heightBox,

                          drawsPanel(
                            time: "Ft",
                            clockTime: "22:21",
                            team1Name:"Manchester City" ,
                            team1flagImage: "assets/images/345 1.png",
                            team1goal: "3",
                            team2Name: "Arsenal",
                            team2flagImage: "assets/images/345 1.png",
                            team2goal:"3" ,

                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Row(
                          children: [
                            Image.asset("assets/icons/Rectangle 3.png"),
                            Image.asset("assets/icons/Line 14.png",scale: 2,),


                          ],
                        ),
                      )




                    ],
                  ),
                ),
              ],
            ),

            Center(
              child: Text('all good '),
            ),
            Center(
              child: Text('all good '),
            ),

            Center(
              child: Text('all good '),
            ),



          ],
        ),
      ),
    );
  }
}
