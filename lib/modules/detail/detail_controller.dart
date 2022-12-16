import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  Color? bmiStatusColor;
  String? bmiStatus;
  String? bmiInterpretation;
  String? bmiScore;
  @override
  void onInit() {
    bmiStatusColor = Get.parameters[bmiStatusColor] as Color?;
    bmiStatus = Get.parameters["bmiStatus"];
    bmiInterpretation = Get.parameters["bmiInterpretation"];
    bmiScore = Get.parameters["bmiScore"];
    super.onInit();
  }
}
