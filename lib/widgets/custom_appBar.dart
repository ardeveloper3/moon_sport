import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.backGroundColor,
    this.title,
    this.leading,
    this.leadingIconColor,
    this.action,
    this.centerTitle,
    this.elevation,
    this.leadingWidth,
    this.shadowColor,
    this.bottom,
    this.appBarSize,
    this.toolbarHeight,
    this.horizontalPadding,
    this.automaticallyImplyLeading,

  });

  final Color? backGroundColor;

  final Color? shadowColor;
  final Color? leadingIconColor;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? action;
  final double? elevation;
  final double? leadingWidth;
  final double? appBarSize;
  final bool? centerTitle;
  final bool? automaticallyImplyLeading;
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      backgroundColor: backGroundColor ?? Colors.yellow,
      title: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 20,
        ),
        child: title,
      ),
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      leading: leading,
      // leading: (automaticallyImplyLeading ?? true) && leading == null
      //     ? IconButton(
      //         icon: ImageIcon(
      //           const AssetImage(
      //             AssetsPath.leftArrowForward,
      //           ),
      //           size: SizeUtils.horizontalBlockSize * 4,
      //         ),
      //         onPressed: () {
      //           Get.back();
      //         },
      //       )
      //     : leading,
      actions: action,
      elevation: elevation ?? 0,
      centerTitle: centerTitle ?? false,
      shadowColor: shadowColor ?? Colors.white10,
      leadingWidth: leadingWidth,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarSize ?? 58);
}
