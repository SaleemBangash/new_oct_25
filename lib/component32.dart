// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'Home.dart';
//import 'package:newoct/Home.dart';

class Component32 extends StatelessWidget {
  Component32({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(start: 0.0, end: 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xffbaa378),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x70000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Pinned.fromPins(
            Pin(start: 115.0, end: 80.0), Pin(size: 25.0, middle: 0.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 1.0,
                  pageBuilder: () => Home(),
                ),
              ],
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: const Color(0xff2a2a2a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            )),
      ],
    );
  }
}
