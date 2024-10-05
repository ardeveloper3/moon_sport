
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

Widget TournamentTopBox({String? title,String? round,String? image}){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CachedNetworkImage(
        imageUrl:
        "$image",
        progressIndicatorBuilder:
            (context, url, downloadProgress) {
          return Container(
            width: 50.w,
            height: 50.h,
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
            width: 50.w,
            height: 50.h,
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
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey
                  .withOpacity(0.3),
            ),
          );
        },
      ),
      10.widthBox,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "$title".text.bold.make(),
          5.heightBox,
          "$round".text.make(),


        ],
      ),

    ],
  ).paddingAll(10);
}

Widget teamIdentity({image,String? teamName,String? status}){
  return Column(
    children: [
      Image.asset("$image"),
      5.heightBox,
      "$teamName".text.semiBold.make(),

      "$status".text.size(8).make(),

    ],
  ).marginSymmetric(horizontal: 10,vertical: 7);
}



class TeamsearchBox extends StatelessWidget {

  String? hintText;


  TeamsearchBox({
    super.key,

    this.hintText,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(height: 5.h),
          Container(
            height: 43.h,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            
            child: TextField(
              decoration: InputDecoration(

                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: hintText ?? 'Doe',
                hintStyle: TextStyle(
                  fontSize: 15.sp,
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget RankingBox({String? srNo,image,String? TeamName}){
  return Row(
    children: [
      "$srNo".text.bold.make(),
      27.widthBox,
      Image.asset("$image",scale: 2,),
      10.widthBox,
      "$TeamName".text.bold.make()
    ],
  ).paddingAll(14);
}

Widget TeamComparism({String? title,onTap}){
  return Column(
    children: [
      Center(
        child: IconButton(
          onPressed: onTap,
          icon: Icon(Icons.add,size: 50,color: Colors.white,),).box.color(Color(0xFF269ABF)).size(120, 120).roundedFull.make(),


      ),

      18.heightBox,

      "$title".text.bold.white.makeCentered().box.color(Color(0xFF269ABF)).padding(EdgeInsets.symmetric(horizontal: 18,vertical: 14)).make()
    ],
  ).marginOnly(right: 20,left: 15);
}

Widget SubcomparsmBox({image,String? teamName,String ? status,onTap}){
  return Center(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("$image",).box.clip(Clip.antiAlias).roundedFull.make(),
        5.heightBox,
        "$teamName".text.white.semiBold.make(),
    
        "$status".text.white.size(8).make(),
    
      ],
    )
  ).box.size(140, 170).rounded.color(Colors.white.withOpacity(0.6)).margin(EdgeInsets.all(10)).make().onTap(onTap);
}

Widget PointIndicator({performance1,performance2,String? team1goal,String? team2goal,String? title,}){
  return Column(
    children: [
      "$title".text.makeCentered(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          "$team1goal".text.size(16).bold.make().marginOnly(left: 20),

          "$team2goal".text.bold.size(16).make().marginOnly(right: 20),
        ],
      ),

      Container(
        decoration: BoxDecoration(
          color: performance1 > performance2 ? Colors.red: performance2 > performance1 ? Colors.blue  : Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(30)


        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 10,
              width:  26.3* performance1,

              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),

                      bottomLeft: Radius.circular(10)
                  )
              ),
            ),

            Container(
              height: 10,
              width: 27.0* performance2,

              decoration: BoxDecoration(
                  color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )
              ),
            ),

          ],

        ),
      ),
    ],
  ).box.white.rounded.margin(EdgeInsets.all(10)).size(330,70).make();
}



