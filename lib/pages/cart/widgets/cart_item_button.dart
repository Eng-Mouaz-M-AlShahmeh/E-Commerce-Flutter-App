import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class CartItemButton extends StatelessWidget {
  final IconData? icon;
  final Function? action;
  CartItemButton(this.icon, this.action);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.WHITE),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
        onPressed: () {
          return action!();
        },
        child: Center(
          child: Icon(
            icon,
            color: AppColors.ORANGE,
            size: 15,
          ),
        ),
      ),
    );
  }
}
