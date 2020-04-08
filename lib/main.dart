import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sourceapp/funny_app/colors.dart';
import 'package:sourceapp/funny_app/views/navigation/navigation.dart';
import 'package:sourceapp/funny_app/views/ui/home_view.dart';
import 'package:sourceapp/funny_app/views/ui/login/register_view.dart';
import 'package:sourceapp/funny_app/views/ui/profile_view.dart';

import 'funny_app/views/ui/login/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project App",
      theme: ThemeData(
        backgroundColor: bgAppbar
      ),
      home: Navigation(),
      initialRoute: '/',
      routes: {
        '/profile': (context) => ProfileView(),
        '/home': (context) => HomeView(),
        '/login': (context) => LoginView(),
        '/register': (context) => RegisterView(),
    },

    );
  }
}
