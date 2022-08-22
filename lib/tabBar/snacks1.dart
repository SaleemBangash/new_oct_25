// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_oct_25/snacks/cheetos.dart';
import 'package:new_oct_25/snacks/doritos.dart';
import 'package:new_oct_25/snacks/kurkure.dart';
import 'package:new_oct_25/snacks/lays.dart';

import '../screens/Cart.dart';
// import 'Cart.dart';
// import 'Favourite.dart';

class Snacks1 extends StatefulWidget {
  const Snacks1({Key? key}) : super(key: key);

  @override
  _Snacks1State createState() => _Snacks1State();
}

class _Snacks1State extends State<Snacks1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
        body: Container(
      child: Card(),
    ));
  }
}
