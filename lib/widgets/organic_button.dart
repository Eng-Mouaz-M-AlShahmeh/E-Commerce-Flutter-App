import 'package:flutter/material.dart';
import '../utils/colors.dart';

class OrganicButton extends StatelessWidget {
  final Function? action;
  final String? label;
  final IconData? icon;
  OrganicButton(this.action, this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
        foregroundColor: MaterialStateProperty.all(AppColors.WHITE),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      onPressed: () { action!(); },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              this.label!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.DARK,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.LIGHT_ORANGE,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              this.icon,
              color: AppColors.WHITE,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
