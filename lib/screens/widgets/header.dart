import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/controller/my_drawer_controller.dart';
import 'package:panel_admin/responsive.dart';
import 'package:panel_admin/screens/widgets/profile_card.dart';
import 'package:panel_admin/screens/widgets/search_field.dart';

class Header extends StatelessWidget {
   Header({
    Key? key,
  }) : super(
      key: key);

  var drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: () {drawerController.controlMenu();}, icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))...[
          Text(
            "Dashboard",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white),
          ),

          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1)
        ],

        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}
