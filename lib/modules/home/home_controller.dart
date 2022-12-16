import 'package:bmi_app_getx/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isSelected = false.obs;
  var bmiStatusColor = "".obs;

  var bmiStatus = "".obs;
  var bmiInterpretation = "".obs;
  var height = 0.0.obs;
  var weight = 0.0.obs;
  var result = 0.0.obs;
  var bmiScore = 0.0.obs;

  void calculateBMI() {
    result.value = weight / ((height / 100) * (height / 100));
    bmiScore = result;

    if (bmiScore.value > 30) {
      bmiInterpretation.value = "Please work to reduce obesity";
      bmiStatus.value = "Obesity";
      bmiStatusColor.value = Colors.pink as String;
    } else if (bmiScore >= 25) {
      bmiStatus.value = "Overweight";
      bmiInterpretation.value = "Do regular exercise & reduce the weight";
      bmiStatusColor.value = Colors.orange as String;
    } else if (bmiScore >= 18.5) {
      bmiStatus.value = "You're healty!";
      bmiInterpretation.value =
          "This value is in the normal range of 20-25 for your age group. Keep up the good work!";
      bmiStatusColor.value = Colors.red as String;
    } else if (bmiScore < 18.5) {
      bmiStatus.value = "Underweight";
      bmiInterpretation.value = "Try to increase the weight";
      bmiStatusColor.value = Colors.red as String;
    }
  }

  void isBMIControl() {
    if (height.value < 50 || height.value > 250) {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'The height value should be in the range of 50 - 250 cm!',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (weight.value < 10 || weight.value > 300) {
      Get.dialog(
        AlertDialog(
          title: const Text('Alert',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          content: const Text(
            'The weight value should be in the range of 10 - 300 kg!',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK',
                  style: TextStyle(
                      color: Color(0xff468FF8),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } else {
      Get.toNamed(Routes.DETAIL, parameters: {
        "bmiStatusColor": bmiStatusColor.value.toString(),
        "bmiStatus": bmiStatus.value,
        "bmiInterpretation": bmiInterpretation.value,
        "bmiScore": bmiScore.value.toString()
      });
      calculateBMI();
    }
    //  catch (e) {
    //   Get.dialog(
    //     AlertDialog(
    //       title: const Text('Alert',
    //           textAlign: TextAlign.justify,
    //           style: TextStyle(
    //               color: Colors.black,
    //               fontSize: 18,
    //               fontWeight: FontWeight.bold)),
    //       content: const Text(
    //         'Please enter a value!',
    //         style: TextStyle(color: Colors.black, fontSize: 12),
    //       ),
    //       actions: <Widget>[
    //         TextButton(
    //           onPressed: () => Get.back(),
    //           child: const Text('Cancel',
    //               style: TextStyle(
    //                   color: Color(0xff468FF8),
    //                   fontSize: 14,
    //                   fontWeight: FontWeight.bold)),
    //         ),
    //         TextButton(
    //           onPressed: () => Get.back(),
    //           child: const Text('OK',
    //               style: TextStyle(
    //                   color: Color(0xff468FF8),
    //                   fontSize: 14,
    //                   fontWeight: FontWeight.bold)),
    //         ),
    //       ],
    //     ),
    //   );
    // }
  }
}
