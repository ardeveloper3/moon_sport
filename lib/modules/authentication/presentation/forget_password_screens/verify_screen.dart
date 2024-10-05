import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/modules/authentication/presentation/forget_password_screens/creat_password_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_textfield.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [

    100.heightBox,
    "Verify Account".text.bold.size(30).makeCentered(),
    10.heightBox,
    "Code has been send to johndoe@gmail.com..Enter the code to verify your account..".text.size(13).makeCentered(),
    40.heightBox,
    CustomTextfield(
      hintText: "Enter your email..",
      title: "email",
    ),
 200.heightBox,
Column(
  children: [
    Row(
      children: [
        30.widthBox,
        "Didn’t Receive Code?".text.color(Color(0xFF269ABF)).makeCentered(),
        5.widthBox,
        "Resend Code".text.color(Colors.grey.withOpacity(0.8)).makeCentered(),

      ],
    ),
    10.heightBox,
    //in time spase set your variable
    "Resend code in 00:59".text.color(Color(0xFF269ABF)).makeCentered(),
30.heightBox,
    CustomButton(
      onTap: () {
Get.to(()=>CreatPasswordPage());
      },
      title: "Verify Account",
    ),
  ],
)

  ],
).p16(),
    );
  }
}
