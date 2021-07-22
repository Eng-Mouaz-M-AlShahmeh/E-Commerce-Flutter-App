import 'package:flutter/material.dart';
import '../../../models/product.model.dart';
import '../../../utils/colors.dart';
import 'package:get/get.dart';

class ItemAdd extends StatelessWidget {
  final ProductModel product;
  ItemAdd(this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: SizedBox(
        width: 40,
        height: 40,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.LIGHT_ORANGE),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          child: Icon(
            Icons.shopping_bag,
            size: 21,
            color: AppColors.WHITE,
          ),
          onPressed: () {
            Get.toNamed("/products/${this.product.id.toString()}");
          },
        ),
      ),
    );
  }
}
