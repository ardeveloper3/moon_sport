import 'package:flutter/material.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class Managerflowvideos extends StatelessWidget {
  const Managerflowvideos({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body:SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [


              videoNewsFeed(
                image: "assets/images/image 19.png",
                headline: "Saudi Pro League will ‘spend significantly’ on stars in their prime",
                url: "https://www.youtube.com/watch?v=8UsWUmKH3gY",
                releastime: "28 May 2024 • 11:02am",
                description:"Exclusive: Chief executive says Saudi clubs, who have often targeted older players, will aim to sign best talent in competition’s...",

              ),

              videoNewsFeed(
                image: "assets/images/image 19.png",
                headline: "Saudi Pro League will ‘spend significantly’ on stars in their prime",
                url: "https://www.youtube.com/watch?v=poVuLhXdSVs",
                releastime: "28 May 2024 • 11:02am",
                description:"Exclusive: Chief executive says Saudi clubs, who have often targeted older players, will aim to sign best talent in competition’s...",

              ),



            ],
          ).box.padding(EdgeInsets.all(10.0)).make(),
        )
    );
  }
}
