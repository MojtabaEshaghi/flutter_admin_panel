import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/controller/menu_controller.dart';
import 'package:panel_admin/screens/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admi n Panel',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          canvasColor: secondaryColor),
      home:MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(ctx)=>MenuController())
        ],
        child: MainScreen(),
      ),
    );
  }
}
