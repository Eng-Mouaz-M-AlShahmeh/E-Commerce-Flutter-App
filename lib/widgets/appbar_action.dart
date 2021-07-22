import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomAppBarAction extends StatelessWidget {
  final Function? action;
  final IconData? icon;
  final int? quantity;

  CustomAppBarAction(this.action, this.icon, {this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: 50,
        height: 50,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.WHITE),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          onPressed: () {
            action!();
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Icon(
                icon,
                size: 21,
                color: AppColors.ORANGE,
              ),
              Visibility(
                visible: (quantity == null || quantity == 0) ? false : true,
                child: Positioned(
                  top: -5,
                  right: -10,
                  child: Container(
                    width: 15,
                    height: 15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.DARK,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      quantity.toString(),
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.WHITE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
