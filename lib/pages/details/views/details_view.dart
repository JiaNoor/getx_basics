import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_pract/pages/home/controllers/home_controller.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("${homeController.count}"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
            //print(homeController.count);
          },
        ),
      ),
    );
  }
}
