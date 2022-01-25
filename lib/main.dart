import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/controller/inject/main_injected.dart';
import 'package:panel_admin/controller/my_drawer_controller.dart';
import 'package:panel_admin/screens/dashboard/dashbord_screen.dart';
import 'package:panel_admin/screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme
              .of(context)
              .textTheme),
          canvasColor: secondaryColor),
      initialRoute: MainScreen.routeName,
      initialBinding: MainInjected(),
      getPages: [
        GetPage(name: MainScreen.routeName, page: () => MainScreen()),
        GetPage(
            name: DashboardScreen.routeName,
            page: () => const DashboardScreen()),
      ],
    );
  }
}
