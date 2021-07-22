import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../pages/cart/controller.dart';
import '../../../utils/colors.dart';
import '../../../widgets/organic_button.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        border: Border(
          top: BorderSide(
            color: AppColors.LIGHT,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "TOTAL",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.DARK,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Obx(
                    () {
                      return Text(
                        controller.total,
                        style: TextStyle(
                          fontSize: 26,
                          color: AppColors.LIGHT_ORANGE,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: OrganicButton(
                controller.placeOrder,
                "PURCHASE",
                Icons.chevron_right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
