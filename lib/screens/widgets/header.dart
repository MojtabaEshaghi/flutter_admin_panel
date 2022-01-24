import 'package:flutter/material.dart';
import 'package:panel_admin/responsive.dart';
import 'package:panel_admin/screens/widgets/profile_card.dart';
import 'package:panel_admin/screens/widgets/search_field.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
