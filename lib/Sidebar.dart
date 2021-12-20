// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import 'package:newoct/Register1.dart';
import 'dart:ui' as ui;
import './Signin2.dart';
import 'package:adobe_xd/page_link.dart';
import './Location.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Register1.dart';

class Sidebar extends StatelessWidget {
  Sidebar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x002a2a2a),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: -8.0),
            Pin(start: 0.0, end: 0.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 14.0, sigmaY: 14.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 13.0, end: 7.0),
            Pin(size: 74.0, start: 97.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.4,
                      pageBuilder: () => Signin2(),
                    ),
                  ],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.0, end: 6.0),
            Pin(size: 74.0, middle: 0.2418),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.0, end: 6.0),
            Pin(size: 74.0, middle: 0.3709),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.0, end: 6.0),
            Pin(size: 74.0, middle: 0.4965),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeInOut,
                      duration: 0.6,
                      pageBuilder: () => Location(),
                    ),
                  ],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
              Pin(size: 90.0, middle: 0.5939), Pin(size: 36.0, start: 116.0),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeInOut,
                    duration: 0.6,
                    pageBuilder: () => Signin2(),
                  ),
                ],
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    color: const Color(0xff2a2a2a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              )),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.349),
            Pin(size: 31.5, start: 117.3),
            child:
                // Adobe XD layer: 'Icon open-account-l…' (shape)
                SvgPicture.string(
              _svg_r2s8lu,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 164.0, middle: 0.5352),
            Pin(size: 36.0, middle: 0.2528),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(size: 111.0, end: 0.0), Pin(start: 0.0, end: 0.0),
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeInOut,
                          duration: 0.6,
                          pageBuilder: () => Register1(),
                        ),
                      ],
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          color: const Color(0xff2a2a2a),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )),
                Pinned.fromPins(
                  Pin(size: 34.9, start: 0.0),
                  Pin(start: 1.0, end: 0.1),
                  child:
                      // Adobe XD layer: 'Icon awesome-regist…' (shape)
                      SvgPicture.string(
                    _svg_i2izcd,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 178.0, middle: 0.5496),
            Pin(size: 56.0, middle: 0.3736),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 134.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Customer\n     care',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      color: const Color(0xff2a2a2a),
                      fontWeight: FontWeight.w700,
                      height: 0.7692307692307693,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 32.0, start: 0.0),
                  Pin(start: 12.0, end: 12.0),
                  child:
                      // Adobe XD layer: 'Icon material-help-…' (shape)
                      SvgPicture.string(
                    _svg_tno3x,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 167.9, middle: 0.5434),
            Pin(size: 36.0, middle: 0.4966),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 127.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Branches',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      color: const Color(0xff2a2a2a),
                      fontWeight: FontWeight.w700,
                      height: 0.7692307692307693,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 28.9, start: 0.0),
                  Pin(start: 1.0, end: 2.0),
                  child:
                      // Adobe XD layer: 'Icon awesome-buildi…' (shape)
                      SvgPicture.string(
                    _svg_i979am,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 107.0, middle: 0.5208),
            Pin(size: 43.0, start: 13.0),
            child: Text(
              '25 OCT',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                color: const Color(0xff2a2a2a),
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x7a000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_i2izcd =
    '<svg viewBox="132.5 231.0 34.9 34.9" ><path transform="translate(131.94, 230.45)" d="M 20.0645866394043 14.58808612823486 C 20.0645866394043 15.89589881896973 19.37334442138672 16.5871410369873 18.06553268432617 16.5871410369873 L 15.96487617492676 16.5871410369873 L 15.96487617492676 12.63979721069336 L 17.608642578125 12.63979721069336 C 19.62436103820801 12.63979721069336 20.06458854675293 13.25664901733398 20.06458854675293 14.58808612823486 Z M 35.4375 18 C 35.4375 27.6304931640625 27.6304931640625 35.4375 18 35.4375 C 8.3695068359375 35.4375 0.5625 27.63049125671387 0.5625 18 C 0.5625 8.369508743286133 8.369507789611816 0.5625 18 0.5625 C 27.6304931640625 0.5625 35.4375 8.369507789611816 35.4375 18 Z M 25.55233573913574 25.34160995483398 C 22.26670265197754 19.37735176086426 22.50787544250488 19.81251525878906 22.40922546386719 19.64770317077637 C 24.05678749084473 18.5809211730957 25.07723236083984 16.62574195861816 25.07723236083984 14.4104061126709 C 25.07723236083984 10.59637451171875 22.86238861083984 8.13487434387207 17.65940475463867 8.13487434387207 L 12.69063186645508 8.13487434387207 C 11.75863933563232 8.13487434387207 11.00313186645508 8.890381813049316 11.00313186645508 9.82237434387207 L 11.00313186645508 26.15625 C 11.00313186645508 27.08824157714844 11.75863933563232 27.84375 12.69063186645508 27.84375 L 14.27737426757812 27.84375 C 15.20936679840088 27.84375 15.96487426757812 27.08824157714844 15.96487426757812 26.15625 L 15.96487426757812 21.11744499206543 L 17.76177978515625 21.11744499206543 L 20.86460113525391 26.94895172119141 C 21.15762901306152 27.49966621398926 21.73056221008301 27.84381103515625 22.3543815612793 27.84381866455078 L 24.07450675964355 27.84381866455078 C 25.35848236083984 27.84374809265137 26.1718578338623 26.4663257598877 25.55233573913574 25.34160804748535 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r2s8lu =
    '<svg viewBox="134.0 117.3 36.0 31.5" ><path transform="translate(134.0, 117.25)" d="M 13.5 0 L 13.5 4.5 L 31.5 4.5 L 31.5 27 L 13.5 27 L 13.5 31.5 L 36 31.5 L 36 0 L 13.5 0 Z M 18 9 L 18 13.5 L 0 13.5 L 0 18 L 18 18 L 18 22.5 L 27 15.75 L 18 9 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tno3x =
    '<svg viewBox="133.5 326.0 32.0 32.0" ><path transform="translate(130.5, 323.0)" d="M 17.39999961853027 28.60000038146973 L 20.60000038146973 28.60000038146973 L 20.60000038146973 25.40000152587891 L 17.39999961853027 25.40000152587891 L 17.39999961853027 28.60000038146973 Z M 19 3.000000238418579 C 10.16800117492676 3.000000238418579 3.000000238418579 10.16800117492676 3.000000238418579 19 C 3.000000238418579 27.83199882507324 10.16800022125244 35 19 35 C 27.83200073242188 35 35 27.83200073242188 35 19 C 35 10.16800022125244 27.83200073242188 3.000000238418579 19 3.000000238418579 Z M 19 31.79999923706055 C 11.94400119781494 31.79999923706055 6.200000762939453 26.05599975585938 6.200000762939453 19 C 6.200000762939453 11.94400119781494 11.94400119781494 6.200000762939453 19 6.200000762939453 C 26.05599975585938 6.200000762939453 31.79999923706055 11.94400119781494 31.79999923706055 19 C 31.79999923706055 26.05599975585938 26.05599975585938 31.79999923706055 19 31.79999923706055 Z M 19 9.40000057220459 C 15.4640007019043 9.40000057220459 12.60000133514404 12.26399993896484 12.60000133514404 15.80000019073486 L 15.80000019073486 15.80000019073486 C 15.80000019073486 14.04000091552734 17.23999977111816 12.60000133514404 19 12.60000133514404 C 20.76000022888184 12.60000133514404 22.20000076293945 14.04000091552734 22.20000076293945 15.80000019073486 C 22.20000076293945 19 17.39999961853027 18.60000038146973 17.39999961853027 23.80000114440918 L 20.60000038146973 23.80000114440918 C 20.60000038146973 20.20000076293945 25.40000152587891 19.80000114440918 25.40000152587891 15.80000019073486 C 25.40000152587891 12.26399993896484 22.53600120544434 9.40000057220459 19 9.40000057220459 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i979am =
    '<svg viewBox="136.6 420.4 28.9 33.0" ><path transform="translate(136.63, 420.45)" d="M 28.1015625 30.9375 L 26.8125 30.9375 L 26.8125 1.546875 C 26.8125 0.6925488710403442 26.11995124816895 0 25.265625 0 L 3.609375 0 C 2.755048751831055 0 2.0625 0.6925488710403442 2.0625 1.546875 L 2.0625 30.9375 L 0.7734375 30.9375 C 0.3463066518306732 30.9375 0 31.2838077545166 0 31.7109375 L 0 33 L 28.875 33 L 28.875 31.7109375 C 28.875 31.2838077545166 28.52869415283203 30.9375 28.1015625 30.9375 Z M 8.25 4.8984375 C 8.25 4.471306800842285 8.596306800842285 4.125 9.0234375 4.125 L 11.6015625 4.125 C 12.02869319915771 4.125 12.375 4.471306800842285 12.375 4.8984375 L 12.375 7.4765625 C 12.375 7.903693199157715 12.02869319915771 8.25 11.6015625 8.25 L 9.0234375 8.25 C 8.596306800842285 8.25 8.25 7.903693199157715 8.25 7.4765625 L 8.25 4.8984375 Z M 8.25 11.0859375 C 8.25 10.65880680084229 8.596306800842285 10.3125 9.0234375 10.3125 L 11.6015625 10.3125 C 12.02869319915771 10.3125 12.375 10.65880680084229 12.375 11.0859375 L 12.375 13.6640625 C 12.375 14.09119319915771 12.02869319915771 14.4375 11.6015625 14.4375 L 9.0234375 14.4375 C 8.596306800842285 14.4375 8.25 14.09119319915771 8.25 13.6640625 L 8.25 11.0859375 Z M 11.6015625 20.625 L 9.0234375 20.625 C 8.596306800842285 20.625 8.25 20.27869415283203 8.25 19.8515625 L 8.25 17.2734375 C 8.25 16.84630584716797 8.596306800842285 16.5 9.0234375 16.5 L 11.6015625 16.5 C 12.02869319915771 16.5 12.375 16.84630584716797 12.375 17.2734375 L 12.375 19.8515625 C 12.375 20.27869415283203 12.02869319915771 20.625 11.6015625 20.625 Z M 16.5 30.9375 L 12.375 30.9375 L 12.375 25.5234375 C 12.375 25.09630584716797 12.7213077545166 24.75 13.1484375 24.75 L 15.7265625 24.75 C 16.15369415283203 24.75 16.5 25.09630584716797 16.5 25.5234375 L 16.5 30.9375 Z M 20.625 19.8515625 C 20.625 20.27869415283203 20.27869415283203 20.625 19.8515625 20.625 L 17.2734375 20.625 C 16.84630584716797 20.625 16.5 20.27869415283203 16.5 19.8515625 L 16.5 17.2734375 C 16.5 16.84630584716797 16.84630584716797 16.5 17.2734375 16.5 L 19.8515625 16.5 C 20.27869415283203 16.5 20.625 16.84630584716797 20.625 17.2734375 L 20.625 19.8515625 Z M 20.625 13.6640625 C 20.625 14.09119319915771 20.27869415283203 14.4375 19.8515625 14.4375 L 17.2734375 14.4375 C 16.84630584716797 14.4375 16.5 14.09119319915771 16.5 13.6640625 L 16.5 11.0859375 C 16.5 10.65880680084229 16.84630584716797 10.3125 17.2734375 10.3125 L 19.8515625 10.3125 C 20.27869415283203 10.3125 20.625 10.65880680084229 20.625 11.0859375 L 20.625 13.6640625 Z M 20.625 7.4765625 C 20.625 7.903693199157715 20.27869415283203 8.25 19.8515625 8.25 L 17.2734375 8.25 C 16.84630584716797 8.25 16.5 7.903693199157715 16.5 7.4765625 L 16.5 4.8984375 C 16.5 4.471306800842285 16.84630584716797 4.125 17.2734375 4.125 L 19.8515625 4.125 C 20.27869415283203 4.125 20.625 4.471306800842285 20.625 4.8984375 L 20.625 7.4765625 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
