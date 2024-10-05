import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moon_sports/modules/bottom_tab_bar/model/calendar_model.dart';
import 'package:get/get.dart';

class MatchController extends GetxController {
  TabController? controller;
  RxBool isMatchISLive = false.obs;

  RxList<String> notificationList = ["FAVOURITES", "ALERTS", "NOTIFICATION HISTORY"].obs;
  RxList<String> matchDetailList = ["OVERVIEW", "MATCHES", "TABLES", "DRAWS", "NEWS", "VIDEOS", "TEAMS", "PLAYER STATS", ].obs;

  RxList<ShowDate> dateCalendar = [
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 30)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 29)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 28)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 27)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 26)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 25)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 24)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 23)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 22)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 21)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 20)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 19)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 18)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 17)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 16)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 15)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 14)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 13)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 12)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 11)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day - 10)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 9)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 8)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 7)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 6)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 5)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 4)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 3)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 2)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day - 1)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .toString()
          .split(' ')
          .first,
      isSelected: true.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 2)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 3)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 4)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 5)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 6)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 7)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 8)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 9)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 10)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 11)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 12)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 13)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 14)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 15)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 16)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 17)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 18)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 19)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 20)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 21)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 22)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 23)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 24)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 25)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 26)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),

    ///
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 27)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 28)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 29)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
    ShowDate(
      date: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 30)
          .toString()
          .split(' ')
          .first,
      isSelected: false.obs,
    ),
  ].obs;

  String timeAgo(String str, bool isMatchIsLive) {
    try {
      String? dateToday = DateTime.now().toString().split(' ').first;
      DateTime d = DateTime.parse(str);
      Duration diff = DateTime.parse(dateToday).difference(d);

      if (diff.inDays == -1) {
        return "Tomorrow";
      }
      if (diff.inDays == 0) {
        return isMatchIsLive ? 'Ongoing' : 'Today';
      }
      if (diff.inDays == 1) {
        return 'Yesterday';
      }
      DateTime parsedDate = DateFormat("yyyy-MM-dd").parse(str);
      final DateFormat formats = DateFormat(' EEE dd MMM');
      String dateString = formats.format(parsedDate);
      return dateString;
    } catch (e) {
      return e.toString();
    }
  }
}
