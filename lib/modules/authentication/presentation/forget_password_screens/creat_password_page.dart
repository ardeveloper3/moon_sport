import 'package:flutter/material.dart';
import 'package:moon_sports/widgets/custom_button.dart';
import 'package:moon_sports/widgets/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../utils/navigation_utils/navigation.dart';
import '../../../../utils/navigation_utils/routes.dart';
import '../../../../widgets/common_widgets.dart';

class CreatPasswordPage extends StatelessWidget {
  const CreatPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          30.heightBox,
          "Create New Password".text.bold.size(25).makeCentered(),
          10.heightBox,
          "Please enter and confirm your new password. You will need to login after you reset.".text.size(16).makeCentered(),
          40.heightBox,

          CustomTextfield(
            hintText: "********",
            title: "Password",
          ),
          "must contain 8 char".text.make(),

          10.heightBox,
          CustomTextfield(
            hintText: "********",
            title: "Password",
          ),

          180.heightBox,
          CustomButton(
            onTap: () {
              Navigation.pushNamed(Routes.bottomNavigationBarScreen);
            },
            title: "Change Password",
          ),

        ],
      ).p16(),
    );
  }
}
