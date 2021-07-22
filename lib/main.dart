/* ...........................
Developed by: Eng Mouaz M. Al-Shahmeh
............................. */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/splash.dart';
import 'controller.dart';
import 'routes.dart';
import 'utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(AppController());

    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
          );
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'E-Commerce App',
            theme: ThemeData(
              primarySwatch: AppColors.WHITE,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute: "/",
            getPages: routes(),
          );
        }
      },
    );
  }
}
