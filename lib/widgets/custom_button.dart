import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/bouncing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final VoidCallback? onTap;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomButton({
    super.key,
    this.icon,
    this.title,
    this.onTap,
    this.color, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Bouncing(
      onPressed: onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: color ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title ?? "Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              icon != null
                  ? Icon(
                      icon ?? Icons.arrow_forward,
                      color: Colors.white,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
