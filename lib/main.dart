import 'dart:async';
import 'package:moon_sports/e_pen_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future main() async {
  await ScreenUtil.ensureScreenSize();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EPenApp());
}
