import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/controller/menu_controller.dart';
import 'package:panel_admin/generated/assets.dart';
import 'package:panel_admin/responsive.dart';
import 'package:panel_admin/screens/dashboard/dashbord_screen.dart';
import 'package:panel_admin/screens/widgets/slide_menu.dart';
import 'package:path_provider/path_provider.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: const SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context))
            Expanded(
                flex: 1,
                child: SideMenu())

         ,
          Expanded(
              flex: 5,
              child: DashboardScreen())
        ],
      ),
    );
  }
}



