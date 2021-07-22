import 'package:flutter/material.dart';
import '../../../widgets/appbar_action.dart';
import '../../../widgets/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../../../pages/cart/controller.dart';
import '../../../utils/colors.dart';
import 'widgets/cart_list.dart';
import 'widgets/cart_total.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "Cart",
            leadings: [
              CustomAppBarAction(
                () { Get.back(); },
                Icons.arrow_back_ios_outlined,
                // quantity: controllerHome.cartQuantity,
              )
            ],
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
      },
    );
  }
}
