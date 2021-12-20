// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Splash extends StatelessWidget {
  Splash({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a2a2a),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 196.0, middle: 0.5179),
            Pin(size: 308.0, middle: 0.5049),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 9.0, end: 8.0),
                  Pin(size: 71.0, end: 0.0),
                  child: Text(
                    '25 OCT',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 50,
                      color: const Color(0xffcba26e),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 75.0),
                  child:
                      // Adobe XD layer: '25 oct logo' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/asset-3.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
