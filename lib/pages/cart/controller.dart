import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../../../controller.dart';
import '../../../models/cart_item.model.dart';

class CartController extends GetxController {
  AppController appController = Get.find();

  String get total {
    double fold = appController.cartItems.value.fold(0, (subtotal, cartItem) {
      return subtotal + cartItem.product.price * cartItem.quantity;
    });
    return fold.toStringAsFixed(2) + " SAR";
  }

  deleteItem(CartItemModel cartItemModel) {
    appController.cartItems.removeWhere((cartItem) {
      return cartItem.product.id == cartItemModel.product.id;
    });
  }

  placeOrder() {
    double fold = appController.cartItems.value.fold(0, (subtotal, cartItem) {
      return subtotal + cartItem.product.price * cartItem.quantity;
    });
    if(fold.toStringAsFixed(2) == '0.00') {
      Get.back();
      Get.snackbar(
        "Error",
        "The cart is empty!",
        backgroundColor: AppColors.DARK,
        colorText: AppColors.WHITE,
        padding: EdgeInsets.all(15),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(25),
        icon: Icon(Icons.error_outline, color: AppColors.RED,
            size: 21),
      );
    } else {
      appController.cartItems.clear();
      Get.back();
      Get.snackbar(
        "Placed",
        "Order placed with success!",
        backgroundColor: AppColors.DARK,
        colorText: AppColors.WHITE,
        padding: EdgeInsets.all(15),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(25),
        icon: Icon(Icons.check_circle_outlined, color: AppColors.LIGHT_ORANGE,
            size: 21),
      );
    }
  }
}
