import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:ui/pages/splash_screen.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatefulWidget {
  const LoginUiApp({super.key});

  @override
  State<LoginUiApp> createState() => _LoginUiAppState();
}

class _LoginUiAppState extends State<LoginUiApp> {
  Color _PrimaryColor = HexColor('#DC54FE');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _PrimaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: 'Flutter Login UI'),
    );
  }
}
