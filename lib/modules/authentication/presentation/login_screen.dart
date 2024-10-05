import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moon_sports/modules/authentication/presentation/forget_password_screens/forget_password_screen.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/utils/constants.dart';
import 'package:moon_sports/utils/navigation_utils/navigation.dart';
import 'package:moon_sports/utils/navigation_utils/routes.dart';
import 'package:moon_sports/widgets/common_widgets.dart';
import 'package:moon_sports/widgets/custom_button.dart';
import 'package:moon_sports/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 15.h, right: 15.w, left: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  CustomTextfield(
                    hintText: "Enter your email",
                    title: "E-mail",
                  ),
                  CustomTextfield(
                    suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.grey.withOpacity(0.9),),
                    hintText: "********",
                    title: "Password",
                  ),

                  10.heightBox,
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        // optional
                        decorationThickness: 1,
                        // optional
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ).onTap((){
                    Get.to(()=>ForgetPasswordScreen());
                    }),),


                  SizedBox(height: 30.h),
                  CustomButton(
                    onTap: () {
                      Navigation.pushNamed(Routes.bottomNavigationBarScreen);
                    },
                    title: "Login",
                  ),
                  20.heightBox,
                  "Or sign in with".text.makeCentered(),
                  10.heightBox,
                 Row(
                   children: [

                     SmallButton(
                         image: "assets/icons/google_logo.png",
                         onpress: (){

                         },

                     ),

                     SmallButton(
                       image: "assets/icons/facebook_logo.png",
                       onpress: (){

                       },

                     ),
                   ],
                 ),
                  20.heightBox,
                  CustomButton(
                    onTap: () {
                      Navigation.pushNamed(Routes.registerScreen);
                    },
                    title: "Sign up",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
