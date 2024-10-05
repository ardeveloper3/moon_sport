import 'package:moon_sports/utils/navigation_utils/navigation.dart';
import 'package:moon_sports/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/widgets/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/navigation_utils/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.sp,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "First Name",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          SizedBox(
                            height: 40.h,
                            child: TextField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'John',
                                hintStyle: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Last Name",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          SizedBox(
                            height: 40.h,
                            child: TextField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Doe',
                                hintStyle: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                CustomTextfield(
                  hintText: "Enter your email",
                  title: "E-mail",
                ),
                CustomTextfield(
                  hintText: "Enter your phone",
                  title: "Phone",
                ),
                CustomTextfield(
                  hintText: "Enter your city",
                  title: "City",
                ),
                CustomTextfield(
                  suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.grey.withOpacity(0.9),),
                  hintText: "********",
                  title: "Password",
                ),
                CustomTextfield(
                  suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.grey.withOpacity(0.9),),
                  hintText: "********",
                  title: "Confirm Password",
                ),
                SizedBox(height: 10.h),

          CustomButton(
            onTap: () {
              Navigation.pushNamed(Routes.bottomNavigationBarScreen);
            },
            title: "Create Account",
          ),

                Column(
                  children: [
                    Row(
                      children: [
                        "By continuing, you agree to our".text.size(7).color(Color(0xFF269ABF)).make(),
                        Text(
                          "Terms of Service",
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
                        ),


                      ],
                    ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       "and".text.color(Color(0xFF269ABF)).make(),
                       10.widthBox,

                       Text(
                         "Privacy Policy.",
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
                       )
                     ],
                   )
                  ],
                ).onTap((){

                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
