import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/controller/my_drawer_controller.dart';
import 'package:panel_admin/responsive.dart';
import 'package:panel_admin/screens/dashboard/dashbord_screen.dart';
import 'package:panel_admin/screens/widgets/slide_menu.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/mainScreen";
  var drawerController = Get.find<MyDrawerController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:drawerController.scaffoldKey,
      drawer: const SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(flex: 1, child: SideMenu()),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      ),
    );
  }
}
