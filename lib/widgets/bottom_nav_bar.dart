import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';
import '../utils/colors.dart';

class BottomNavBar extends StatelessWidget {
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
            () {
              return BottomNavigationBar(
                onTap: (value) => appController.switchIndex(value),
                currentIndex: appController.bottomNavIndex,
                unselectedItemColor: AppColors.DARK,
                selectedItemColor: AppColors.ORANGE,
                backgroundColor: AppColors.LIGHT_GREY,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_border,
                    ),
                    label: 'Favourite',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: 'Settings',
                  ),
                ],
              );
            },
    );
  }
}
