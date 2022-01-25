import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/responsive.dart';
import 'package:panel_admin/screens/dashboard/widget/my_files.dart';
import 'package:panel_admin/screens/dashboard/widget/recent_files.dart';
import 'package:panel_admin/screens/dashboard/widget/staraged_details.dart';
import 'package:panel_admin/screens/widgets/header.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = "/dashboardScreen";
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(children: [
         Header(),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    RecentFiles(),
                    if (Responsive.isMobile(context)) ...[
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const StaragedDetails()
                    ]
                  ],
                )),
            if (!Responsive.isMobile(context)) ...[
              const SizedBox(
                width: defaultPadding,
              ),
              const Expanded(flex: 2, child: StaragedDetails()),
            ]
          ],
        ),
      ]),
    ));
  }
}
