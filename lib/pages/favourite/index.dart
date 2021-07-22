import '../../utils/colors.dart';
import '../../widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../pages/favourite/controller.dart';
import '../../../widgets/bottom_nav_bar.dart';
import 'widgets/fav_item.dart';

class Favourite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavController>(
      init: FavController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "Favourite",
          ),
          body: Obx(
            () {
          return ListView.separated(
            padding: EdgeInsets.all(25),
            itemCount: controller.appController.favItems.length,
            separatorBuilder: (context, index) => Divider(height: 25),
            itemBuilder: (context, index) {
              return FavItem(controller.appController.favItems.value[index]);
            },
          );
        },
        ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
