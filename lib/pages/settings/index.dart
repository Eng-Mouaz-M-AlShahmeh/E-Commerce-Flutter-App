import '../../widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../pages/settings/controller.dart';
import '../../../widgets/bottom_nav_bar.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(
            "Settings",
          ),
          body: Center(
            child: Text('Under maintenance!'),
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}

