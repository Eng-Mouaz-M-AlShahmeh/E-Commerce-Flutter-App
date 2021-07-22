import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/cart_item.model.dart';
import '../../../pages/cart/controller.dart';
import '../../../utils/colors.dart';
import '../../../widgets/product_image.dart';
import 'cart_item_button.dart';

class CartItem extends StatelessWidget {
  final CartController cartController = Get.find();
  final CartItemModel cartItem;
  CartItem(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ProductImage(
          this.cartItem.product.image,
          height: 80,
          width: 80, padding: 0,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                this.cartItem.product.name,
                style: TextStyle(
                  fontSize: 19,
                  color: AppColors.DARK,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Obx(
                    () {
                      return Text(
                        "${this.cartItem.quantity.toString()}x ",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.DARK,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  Text(
                    this.cartItem.product.dollar,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.ORANGE,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            CartItemButton(Icons.minimize, this.cartItem.decrementQuantity),
            SizedBox(width: 10),
            CartItemButton(Icons.add, this.cartItem.incrementQuantity),
            SizedBox(width: 10),
            CartItemButton(Icons.delete_outline, () => cartController.deleteItem(this.cartItem)),
          ],
        )
      ],
    );
  }
}
