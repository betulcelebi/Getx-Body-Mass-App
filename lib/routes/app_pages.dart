import 'package:bmi_app_getx/modules/detail/detail_binding.dart';
import 'package:bmi_app_getx/modules/detail/detail_screen.dart';
import 'package:bmi_app_getx/modules/home/home_binding.dart';
import 'package:bmi_app_getx/modules/home/home_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => const DetailScreen(),
      binding: DetailBinding(),
    )
  ];
}
