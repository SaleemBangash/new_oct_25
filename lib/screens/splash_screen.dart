// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_oct_25/screens/new.dart';

import '../main.dart';
import '../utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  double value = 0;
  @override
  // void initState() {
  //   _load();
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller?.repeat();
    _load();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2A2A2A),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/splash_icon.png"),
              SizedBox(
                height: 5,
              ),
              Text(
                "ROYAT CAFE",
                style: TextStyle(
                    color: Color(0xffbaa378),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }

  _load() {
    Future.delayed(const Duration(milliseconds: 9000), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => New()));
    });
  }

  // void downloadData() {
  //   new Timer.periodic(Duration(seconds: 1), (Timer timer) {
  //     setState(() {
  //       if (value == 1) {
  //         timer.cancel();
  //       } else {
  //         value = value + 0.1;
  //       }
  //     });
  //   });
  // }
}
