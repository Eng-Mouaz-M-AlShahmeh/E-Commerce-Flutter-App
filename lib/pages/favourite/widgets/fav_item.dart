import '../../../models/product.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../widgets/product_image.dart';
import '../controller.dart';
import 'fav_item_button.dart';

class FavItem extends StatelessWidget {
  final FavController favInitController = Get.put(FavController());
  final FavController favController = Get.find();
  final ProductModel favItem;
  FavItem(this.favItem);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ProductImage(
          this.favItem.image,
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
                this.favItem.name,
                style: TextStyle(
                  fontSize: 19,
                  color: AppColors.DARK,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Text(
                    this.favItem.dollar,
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
            FavItemButton(Icons.delete_outline_outlined, () => favController.deleteItemFromFavList(this.favItem)),
          ],
        )
      ],
    );
  }
}
