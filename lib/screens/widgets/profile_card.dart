import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panel_admin/generated/assets.dart';
import 'package:panel_admin/responsive.dart';

import '../../constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Colors.white10)),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesProfilePic,
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text(
                "Angela Morgan",
                style: TextStyle(color: Colors.white),
              ),
            ),
          const Icon(CupertinoIcons.down_arrow)
        ],
      ),
    );
  }
}
