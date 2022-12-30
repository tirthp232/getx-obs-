import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  List<IconData> icon = [
    Icons.home,
    Icons.edit,
    Icons.pedal_bike,
    Icons.ac_unit_rounded,
  ];

  var selectIndex = 0.obs;
  var select = true.obs;
}
