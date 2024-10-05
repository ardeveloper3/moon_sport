import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/modules/authentication/presentation/forget_password_screens/verify_screen.dart';
import 'package:moon_sports/widgets/common_widgets.dart';
import 'package:moon_sports/widgets/custom_button.dart';
import 'package:moon_sports/widgets/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
 leading: CircullerArrow(
     BoxColor:Colors.grey.withOpacity(0.3) ,
     width: 50.0,
     height: 50.0,
     onpress: (){},
     child: Icon(Icons.arrow_back,color: Colors.black,),

 
 ),
),

      body: Column(
        children: [

          30.heightBox,
          "Forgot Password".text.bold.size(30).makeCentered(),
          10.heightBox,
          "No worries! Enter your email address below and we will send you a code to reset password.".text.size(13).makeCentered(),
          40.heightBox,
          CustomTextfield(
            hintText: "Enter your email..",
            title: "4 Digit Code",
          ),
          30.heightBox,

          CustomButton(
            onTap: () {
Get.to(()=>VerifyScreen());
            },
            title: "Send reset code",
          ),

        ],
      ).p16(),
    );
  }
}
