import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/playerStateTabBarScreens/All_screen.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/playerStateTabBarScreens/Goalsconceded.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/playerStateTabBarScreens/assists.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/playerStateTabBarScreens/goals.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/playerStateTabBarScreens/redCards.dart';
import 'package:velocity_x/velocity_x.dart';

class PlayerState extends StatelessWidget {
  const PlayerState({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                child: "All".text.make(),
              ),
            ),

            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Goals".text.make(),
              ),
            ),

            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Assist".text.make(),
              ),
            ),


            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Goals conceded".text.make(),
              ),
            ),

            Tab(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: "Red card".text.make(),
              ),
            ),



          ],
        ),
        backgroundColor: Colors.black12,
        body:TabBarView(
          children: [

          AllScreen(),

            Goals(),

            Assists(),

            Goalsconceded(),

            Redcards(),


          ],
        ),
      ),
    );
  }
}
