import 'package:bmi_app_getx/modules/detail/detail_controller.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailsController());
  }
}
