import 'package:flutter/material.dart';
import '../../../models/category.model.dart';
import '../../../pages/home/controller.dart';
import '../../../utils/colors.dart';
import 'package:get/get.dart';

class ItemCategories extends StatelessWidget {
  final HomeController controller = Get.find();
  final CategoryModel category;
  final bool selected;

  ItemCategories(this.category, this.selected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.selectCategory(category),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.category.name,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: AppColors.DARK.withOpacity(selected ? 1 : 0.3),
              ),
            ),
            Visibility(
              visible: selected,
              child: Container(
                margin: EdgeInsets.only(top: 3),
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                  color: AppColors.hex(category.color),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
