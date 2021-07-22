import '../../../pages/favourite/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/product.model.dart';
import '../../../utils/colors.dart';

class ItemLike extends StatelessWidget {

  final FavController favController = Get.find();

  final ProductModel product;
  ItemLike(this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: SizedBox(
        width: 40,
        height: 40,
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            ),
          ),
          child: Obx(() {
            return Icon(
              Icons.favorite_border,
              size: 21,
              color: product.like ? AppColors.ORANGE : AppColors.LIGHT_GREY,
            );
          }),
          onPressed: () {
            if(product.like == false) {
              favController.addProductToFavList(product);
              product.like = !product.like;
            } else {
              favController.deleteItemFromFavList(product);
              product.like = !product.like;
            }
          },
        ),
      ),
    );
  }
}
