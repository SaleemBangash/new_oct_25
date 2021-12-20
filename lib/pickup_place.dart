import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class pickup_place extends StatelessWidget {
  pickup_place({
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
          Pin(start: 15.0, end: 15.0),
          Pin(size: 28.0, middle: 0.5294),
          child: Text(
            'Pickup Place',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              color: const Color(0xff2a2a2a),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
