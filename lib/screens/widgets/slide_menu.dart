import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:panel_admin/generated/assets.dart';

class SideMenu extends StatelessWidget {
  static const routeName = "./sideMenu";
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset(Assets.imagesLogo)),
            DrawerListItem(
              press: () {},
              title: 'Dashbord',
              svg: Assets.iconsMenuDashbord,
            ),
            DrawerListItem(
              press: () {},
              title: 'Transaction',
              svg: Assets.iconsMenuTran,
            ),
            DrawerListItem(
              press: () {},
              title: 'Task',
              svg: Assets.iconsMenuTask,
            ),
            DrawerListItem(
              press: () {},
              title: 'Store',
              svg: Assets.iconsMenuStore,
            ),
            DrawerListItem(
              press: () {},
              title: 'Notification',
              svg: Assets.iconsMenuNotification,
            ),
            DrawerListItem(
              press: () {},
              title: 'Profile',
              svg: Assets.iconsMenuProfile,
            ),
            DrawerListItem(
              press: () {},
              title: 'Setting',
              svg: Assets.iconsMenuSetting,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  final String title, svg;
  final VoidCallback press;

  const DrawerListItem({
    Key? key,
    required this.title,
    required this.svg,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svg,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
