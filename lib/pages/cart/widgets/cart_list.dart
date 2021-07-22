import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../pages/cart/controller.dart';
import 'cart_item.dart';

class CartList extends StatelessWidget {
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ListView.separated(
          padding: EdgeInsets.all(25),
          itemCount: controller.appController.cartItems.length,
          separatorBuilder: (context, index) => Divider(height: 25),
          itemBuilder: (context, index) {
            return CartItem(controller.appController.cartItems.value[index]);
          },
        );
      },
    );
  }
}
