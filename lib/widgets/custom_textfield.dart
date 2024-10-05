import 'package:moon_sports/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/widgets/custom_button.dart';

class CustomTextfield extends StatelessWidget {
  String? title;
  String? hintText;
  Widget? suffixIcon;

  CustomTextfield({
    super.key,
    this.title,
    this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title ?? "Last Name",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            height: 43.h,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                hintText: hintText ?? 'Doe',
                hintStyle: TextStyle(
                  fontSize: 15.sp,
                ),
                suffixIcon: suffixIcon ?? const SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
