import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/home_page.dart';
import 'package:my_flutter_app/pages/login_page.dart';
import 'package:my_flutter_app/pages/my_profile_page.dart';
import 'package:my_flutter_app/utils/routes.dart';
import 'package:my_flutter_app/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute:  MyRoutes.loginRoute,
      routes: {
        "/" : (context) => MyProfilePage(),
        MyRoutes.myprofileRoute : (context) => MyProfilePage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(), 
      },
    );
  }
}
