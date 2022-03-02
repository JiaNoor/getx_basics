import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_pract/pages/details/bindings/details_binding.dart';
import 'package:get_pract/pages/details/views/details_view.dart';
import 'package:get_pract/pages/home/bindings/home_binding.dart';
import 'package:get_pract/pages/home/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Store',
      getPages: [
        GetPage(
            name: "/home", page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(
            name: "/details",
            page: () => DetailScreen(),
            binding: DetailBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
