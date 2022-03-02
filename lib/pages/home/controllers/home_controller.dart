import 'package:get/get.dart';

class HomeController {
  var count = 0.obs;
  increment() {
    count++;
  }

  decrement() {
    count--;
  }
}
