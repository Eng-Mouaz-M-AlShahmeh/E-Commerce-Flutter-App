import 'package:get/get.dart';
import '../../../pages/favourite/controller.dart';
import 'package:flutter/material.dart';
import '../../../models/product.model.dart';
import '../../../utils/colors.dart';
import '../../../widgets/product_image.dart';
import 'item_products_add.dart';
import 'item_products_like.dart';

class ListItem extends StatelessWidget {

  final FavController favController = Get.put(FavController());

  final ProductModel product;
  ListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 15,
            color: AppColors.SHADOW,
            offset: Offset(6, 10),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 10,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ProductImage(
                    this.product.image,
                    width: 115,
                    height: 115,
                  ),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          this.product.name,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.DARK,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Text(
                          this.product.dollar,
                          style: TextStyle(
                            fontSize: 21,
                            color: AppColors.LIGHT_ORANGE,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ItemAdd(product),
          ItemLike(product),
        ],
      ),
    );
  }
}
