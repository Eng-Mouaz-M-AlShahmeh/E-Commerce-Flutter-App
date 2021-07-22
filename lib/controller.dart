import '../../models/product.model.dart';
import 'package:get/get.dart';
import 'models/cart_item.model.dart';

class AppController extends GetxController{

  RxList<CartItemModel> cartItems = RxList<CartItemModel>([]);
  RxList<ProductModel> favItems = RxList<ProductModel>([]);

  RxInt _bottomNavIndex = 0.obs;
  set bottomNavIndex(int value) => _bottomNavIndex.value = value;
  int get bottomNavIndex => _bottomNavIndex.value;

  switchIndex(int index) {
    _bottomNavIndex.value = index;
    if(_bottomNavIndex.value == 0) {
      Get.offAndToNamed("/");
    } else if (_bottomNavIndex.value == 1) {
      Get.offAndToNamed("/favourite");
    } else if (_bottomNavIndex.value == 2) {
      Get.offAndToNamed("/settings");
    }
  }

}