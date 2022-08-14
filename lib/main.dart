import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_oct_25/Home.dart';
import 'package:new_oct_25/new.dart';
import 'package:new_oct_25/splash_screen.dart';
import 'package:new_oct_25/utils/app_theme.dart';
import 'package:new_oct_25/utils/size_config.dart';

SizeConfig? sizeConfig;

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.data(),
      home: const SplashScreen(),
    );
  }
}
