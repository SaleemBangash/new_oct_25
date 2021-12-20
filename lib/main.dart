import 'package:flutter/material.dart';
import 'package:new_oct_25/Home.dart';
import 'package:new_oct_25/new.dart';
// import 'package:newoct/Home.dart';
// import 'package:newoct/Location.dart';
// import 'package:newoct/Sidebar.dart';
// import 'package:newoct/Splash.dart';
// import 'package:newoct/snacks/kurkure.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const New(),
    );
  }
}
