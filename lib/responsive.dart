import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile, desktop, tablet;

  const Responsive(
      {Key? key,
      required this.mobile,
      required this.desktop,
      required this.tablet})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    if (_size.width >= 1100) {
      return desktop;
    } else if (_size.width >= 850 ) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
