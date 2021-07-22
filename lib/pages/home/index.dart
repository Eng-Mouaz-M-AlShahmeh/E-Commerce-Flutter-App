import 'package:flutter/material.dart';
import '../../../widgets/bottom_nav_bar.dart';
import '../../../widgets/custom_appbar.dart';
import 'package:get/get.dart';
import '../../../pages/home/controller.dart';
import '../../../utils/colors.dart';
import '../../../widgets/appbar_action.dart';
import 'widgets/list_products.dart';
import 'widgets/list_categories.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "E-Commerce App",
            actions: [
              Obx(
                () => CustomAppBarAction(
                  () => Get.toNamed("/cart"),
                  Icons.shopping_cart_outlined,
                  quantity: controller.cartQuantity,
                ),
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: ListCategories(),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 25,
                ),
                sliver: HomeList(),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
