import 'package:get/route_manager.dart';
import 'pages/cart/index.dart';
import 'pages/home/index.dart';
import 'pages/product/index.dart';
import 'pages/settings/index.dart';
import 'pages/favourite/index.dart';

routes() => [
  GetPage(name: "/", page: () => Home()),
  GetPage(name: "/products/:id", page: () => Product()),
  GetPage(name: "/cart", page: () => Cart()),
  GetPage(name: "/settings", page: () => Settings()),
  GetPage(name: "/favourite", page: () => Favourite()),
];