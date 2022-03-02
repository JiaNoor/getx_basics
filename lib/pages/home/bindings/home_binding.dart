import 'package:get/get.dart';
import 'package:get_pract/pages/home/controllers/home_controller.dart';
import 'package:get_pract/services/api_services.dart';

class HomeBinding extends Bindings {
  void dependencies() {
    Get.put(HomeController());
    Get.put(ApiServices());
  }
}
