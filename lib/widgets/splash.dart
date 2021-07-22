import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ORANGE,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              color: AppColors.WHITE,
              size: MediaQuery.of(context).size.width * 0.65,
            ),
            SizedBox(height: 15),
            Text(
              'E-Commerce App',
              style: TextStyle(
                color: AppColors.WHITE,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CupertinoActivityIndicator(
              radius: 15,
            ),
          ],
        ),
      ),
    );
  }
}
