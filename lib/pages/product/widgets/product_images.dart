import '../../../widgets/product_image.dart';
import 'package:flutter/material.dart';
import '../../../models/product.model.dart';
import 'package:get/get.dart';
// import '../../../pages/product/controller.dart';

class ProductImages extends StatelessWidget {
  // final ProductController controller = Get.find();
  final ProductModel product;
  ProductImages(this.product);

  @override
  Widget build(BuildContext context) {
    return
        // Text(this.product.image);
      Expanded(
      child: Obx(
        () => ProductImage(
          this.product.image,
          height: Get.width - 50,
          width: Get.width,
          // padding: 25,
        ),
      ),
    );
  }
}
