import 'package:flutter/material.dart';
import '../../../pages/home/controller.dart';
import '../../../widgets/appbar_action.dart';
import '../../../widgets/custom_appbar.dart';
import 'package:get/get.dart';
import '../../../pages/product/controller.dart';
import '../../../utils/colors.dart';
import '../../widgets/product_image.dart';
import 'widgets/product_details.dart';

class Product extends StatelessWidget {
  final HomeController controllerHome = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT_GREY,
          appBar: CustomAppBar(
            "Product",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Icons.arrow_back_ios_outlined,
                quantity: controllerHome.cartQuantity,
              )
            ],
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Obx(
                  () => ProductImage(
                    controller.product.image,
                    height: Get.width - 50,
                    padding: 25,
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Obx(
            () => ProductDetails(controller.product),
          ),
        );
      },
    );
  }
}
