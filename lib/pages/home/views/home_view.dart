import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_pract/pages/colors/colors.dart';
import 'package:get_pract/pages/home/controllers/home_controller.dart';
import 'package:get_pract/services/api_services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final apiServices = Get.find<ApiServices>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: const TextStyle(fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: red,
                  child: IconButton(
                    onPressed: () {
                      print(homeController.count);
                      homeController.decrement();
                    },
                    icon: const Icon(Icons.exposure_minus_1),
                    color: black,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: red,
                  child: IconButton(
                    onPressed: () {
                      print(homeController.count);
                      homeController.increment();
                    },
                    icon: const Icon(Icons.plus_one),
                    color: black,
                  ),
                ),
              ],
            ),
            FlatButton(
              onPressed: () {
                Get.defaultDialog(title: "This is dialog");
                Get.snackbar("Title", "This is getx snackbar",
                    snackPosition: SnackPosition.BOTTOM);

                Get.toNamed("/details");
                print(apiServices.fetchText());
              },
              child: const Text("Go to detail"),
              color: red,
              textColor: white,
            ),
          ],
        ),
      ),
    );
  }
}
