import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component18 extends StatelessWidget {
  Component18({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 19.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_xt5zvc,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 9.5, end: 10.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_gookb0,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 19.0, start: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_b0pt2b,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_xt5zvc =
    '<svg viewBox="19.5 0.0 19.0 22.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 38.5, 0.0)" d="M 10.99999904632568 0 L 22 19 L 0 19 Z" fill="#2a2a2a" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gookb0 =
    '<svg viewBox="9.5 0.0 19.0 22.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 28.5, 0.0)" d="M 10.99999904632568 0 L 22 19 L 0 19 Z" fill="#2a2a2a" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b0pt2b =
    '<svg viewBox="0.0 0.0 19.0 22.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 19.0, 0.0)" d="M 10.99999904632568 0 L 22 19 L 0 19 Z" fill="#2a2a2a" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
