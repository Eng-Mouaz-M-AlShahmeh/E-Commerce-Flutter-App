import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../models/product.model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../../../controller.dart';

class FavController extends GetxController {
  AppController appController = Get.find();

  addProductToFavList(ProductModel product) {
    try {
      appController.favItems.value.firstWhere((favItem) {
        return favItem.id == product.id;
      });
    } catch (error) {
      appController.favItems.add(product);
    }
    Get.snackbar(
      "Added",
      "Product added to favourite successfully!",
      backgroundColor: AppColors.DARK,
      colorText: AppColors.WHITE,
      padding: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(25),
      icon: Icon(Icons.check_circle_outlined, color: AppColors.ORANGE,
          size: 21),
    );
  }

  deleteItemFromFavList(ProductModel product) {
    appController.favItems.removeWhere((favItem) {
      return favItem.id == product.id;
    });
    Get.snackbar(
      "Removed",
      "Product removed from favourite successfully!",
      backgroundColor: AppColors.DARK,
      colorText: AppColors.WHITE,
      padding: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(25),
      icon: Icon(Icons.check_circle_outlined, color: AppColors.ORANGE,
          size: 21),
    );
  }

}
