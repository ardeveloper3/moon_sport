import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moon_sports/modules/bottom_tab_bar/presentation/League_flow_sectio//common_widgets/Comon_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class TablesScreen extends StatelessWidget {
  const TablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ListTile(
             leading:  "Group A".text.bold.size(20).make(),
             trailing:Icon(Icons.arrow_forward_ios,size: 20,) ,
           ),
            2.heightBox,

            Column(
              children: [
                Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "#".text.make().p4(),
                    17.widthBox,

                    "Team".text.make().p4(),
                    25.widthBox,
                    "M ".text.make().p4(),

                    "W".text.make().p4(),

                    "D".text.make().p4(),

                    "L".text.make().p4(),
                    10.widthBox,
                    "G".text.make().p4(),
                    4.widthBox,
                    "PTS".text.bold.make().p4(),

                  ],
                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),


                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


              

              ],

            ).box.white.margin(EdgeInsets.only(bottom: 20.0)).padding(EdgeInsets.all(10)).rounded.make(),


            30.heightBox,

            ListTile(
              leading:  "Group B".text.bold.size(20).make(),
              trailing:Icon(Icons.arrow_forward_ios,size: 20,) ,
            ),
            2.heightBox,

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "#".text.make().p4(),
                    17.widthBox,

                    "Team".text.make().p4(),
                    25.widthBox,
                    "M ".text.make().p4(),

                    "W".text.make().p4(),

                    "D".text.make().p4(),

                    "L".text.make().p4(),
                    10.widthBox,
                    "G".text.make().p4(),
                    4.widthBox,
                    "PTS".text.bold.make().p4(),

                  ],
                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),


                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),




              ],

            ).box.white.margin(EdgeInsets.only(bottom: 20.0)).padding(EdgeInsets.all(10)).rounded.make(),


            30.heightBox,

            ListTile(
              leading:  "Group C".text.bold.size(20).make(),
              trailing:Icon(Icons.arrow_forward_ios,size: 20,) ,
            ),
            2.heightBox,

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "#".text.make().p4(),
                    17.widthBox,

                    "Team".text.make().p4(),
                    25.widthBox,
                    "M ".text.make().p4(),

                    "W".text.make().p4(),

                    "D".text.make().p4(),

                    "L".text.make().p4(),
                    10.widthBox,
                    "G".text.make().p4(),
                    4.widthBox,
                    "PTS".text.bold.make().p4(),

                  ],
                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),


                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),




              ],

            ).box.white.margin(EdgeInsets.only(bottom: 20.0)).padding(EdgeInsets.all(10)).rounded.make(),

            30.heightBox,



            ListTile(
              leading:  "Group D".text.bold.size(20).make(),
              trailing:Icon(Icons.arrow_forward_ios,size: 20,) ,
            ),


            2.heightBox,


            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    "#".text.make().p4(),
                    17.widthBox,

                    "Team".text.make().p4(),
                    25.widthBox,
                    "M ".text.make().p4(),

                    "W".text.make().p4(),

                    "D".text.make().p4(),

                    "L".text.make().p4(),
                    10.widthBox,
                    "G".text.make().p4(),
                    4.widthBox,
                    "PTS".text.bold.make().p4(),

                  ],
                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),


                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),


                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),

                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),

                GroupBox(
                  serialNumber: "1",
                  flagImage:"assets/images/549 1.png" ,
                  teamName:"Man city" ,
                  M: "38",
                  W: "29",
                  D: "6",
                  L:"3" ,
                  G: "99:26",
                  PTS:"93" ,

                ),




              ],

            ).box.white.margin(EdgeInsets.only(bottom: 20.0)).padding(EdgeInsets.all(10)).rounded.make(),



          ],
        ).marginSymmetric(vertical: 10,horizontal: 10),
      )
    );
  }
}