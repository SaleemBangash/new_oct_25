// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import './Cart.dart';
import 'package:adobe_xd/page_link.dart';
import './Component11.dart';
import './Iconawesomeheart.dart';
import './Home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatelessWidget {
  Detail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 196.0, middle: 0.5179),
            Pin(size: 233.0, middle: 0.4502),
            child:
                // Adobe XD layer: '25 oct logo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/25 oct logo.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.58), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          // Pinned.fromPins(
          //   Pin(size: 100.0, start: 36.0),
          //   Pin(size: 39.0, start: 103.0),
          //   child: Text(
          //     'Details',
          //     style: TextStyle(
          //       fontFamily: 'Poppins',
          //       fontSize: 28,
          //       color: const Color(0xff2a2a2a),
          //       fontWeight: FontWeight.w700,
          //       shadows: [
          //         Shadow(
          //           color: const Color(0x52000000),
          //           offset: Offset(0, 3),
          //           blurRadius: 6,
          //         )
          //       ],
          //     ),
          //     textAlign: TextAlign.left,
          //   ),
          // ),
          Pinned.fromPins(
            Pin(start: -51.0, end: -15.0),
            Pin(size: 410.0, start: -44.0),
            child:
                // Adobe XD layer: 'sheri-silver-5A0O12…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/sheri-silver-1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -8.0),
            Pin(size: 456.0, end: 0.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                    color: Colors.transparent,
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 217.0, start: 35.0),
            Pin(size: 39.0, middle: 0.467),
            child: Text(
              'Details',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: const Color(0xff2a2a2a),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 217.0, start: 35.0),
            Pin(size: 39.0, middle: 0.517),
            child: Text(
              'Vanilla Flavour',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: const Color(0xff2a2a2a),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 360.6, middle: 0.5896),
            Pin(size: 349.0, end: 11.0),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 361.0,
                  height: 378.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 176.6, end: 0.0),
                        Pin(size: 43.0, end: 53.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeInOut,
                              duration: 0.6,
                              pageBuilder: () => Cart(),
                            ),
                          ],
                          child: SvgPicture.string(
                            _svg_uvz71,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 142.0, start: 0.0),
                        Pin(size: 33.0, middle: 0.1692),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            color: const Color(0xff2a2a2a),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 1.6),
                        Pin(size: 201.0, middle: 0.6044),
                        child: Text(
                          'Lorem ipsumm fusahgbfauifa agbvas\nuasgfbub8yadsifb agbfi8ofag iasbvio\n ibiahgbi9anidn9azsngofnd hgbizsngf\nLorem ipsumm fusahgbfauifa agbvas\nuasgfbub8yadsifb agbfi8ofag iasbvio\n ibiahgbi9anidn9azsngofnd hgbizsngf\nLorem ipsumm fusahgbfauifa ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 19,
                            color: const Color(0xff2a2a2a),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 19.0, end: 45.6),
                        Pin(size: 48.0, start: -1.0),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 36,
                            color: const Color(0xff2a2a2a),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(Pin(size: 123.0, end: 7.1),
                          Pin(size: 31.0, end: 58.0),
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeInOut,
                                duration: 0.6,
                                pageBuilder: () => Cart(),
                              ),
                            ],
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                color: const Color(0xff2a2a2a),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )),
                      Pinned.fromPins(
                        Pin(size: 31.0, end: 7.6),
                        Pin(size: 31.0, start: 12.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff2a2a2a),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 10.0, middle: 0.4766),
                              Pin(size: 10.0, middle: 0.4766),
                              child:
                                  // Adobe XD layer: 'Icon feather-plus' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 1.0, middle: 0.5555),
                                    Pin(start: 0.0, end: 0.0),
                                    child: SvgPicture.string(
                                      _svg_t4ec1q,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 1.0, middle: 0.5555),
                                    child: SvgPicture.string(
                                      _svg_s0unte,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 31.0, middle: 0.7827),
                        Pin(size: 31.0, start: 12.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff2a2a2a),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 12.7, middle: 0.5193),
                              Pin(size: 1.0, middle: 0.5167),
                              child:
                                  // Adobe XD layer: 'Icon feather-minus' (shape)
                                  SvgPicture.string(
                                _svg_ggrqju,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, start: 0.0),
                        Pin(size: 40.0, start: -2.0),
                        child: Component11(),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, middle: 0.184),
                        Pin(size: 40.0, start: 0.0),
                        child: Component11(),
                      ),
                      Pinned.fromPins(
                        Pin(size: 40.0, middle: 0.368),
                        Pin(size: 40.0, start: 0.0),
                        child: Component11(),
                      ),
                      Pinned.fromPins(
                        Pin(size: 18.0, middle: 0.5706),
                        Pin(size: 18.0, end: 66.0),
                        child:
                            // Adobe XD layer: 'Icon feather-plus' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 1.0, middle: 0.5294),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_zi99uo,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, middle: 0.5294),
                              child: SvgPicture.string(
                                _svg_jg5kzm,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 99.0, start: 0.0),
                        Pin(size: 33.0, end: 57.0),
                        child: Text(
                          '20.00 SR',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            color: const Color(0xff2a2a2a),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 85.0, end: 43.0),
            Pin(size: 85.0, middle: 0.3971),
            child: ClipOval(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.6, middle: 0.8043),
            Pin(size: 46.1, middle: 0.4027),
            child:
                // Adobe XD layer: 'Icon awesome-heart' (component)
                Iconawesomeheart(),
          ),
          Pinned.fromPins(
            Pin(size: 31.1, start: 20.0),
            Pin(size: 29.3, start: 24.0),
            child:
                // Adobe XD layer: 'Icon ionic-md-arrow…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 1.0,
                  pageBuilder: () => Home(),
                ),
              ],
              child: SvgPicture.string(
                _svg_d8li0,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_uvz71 =
    '<svg viewBox="193.0 333.0 176.6 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(193.0, 333.0)" d="M 11.04005432128906 0 L 165.600830078125 0 C 171.6980590820312 0 176.640869140625 3.581721782684326 176.640869140625 8 L 176.640869140625 35 C 176.640869140625 39.41827774047852 171.6980590820312 43 165.600830078125 43 L 11.04005432128906 43 C 4.942800998687744 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 4.942800998687744 0 11.04005432128906 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t4ec1q =
    '<svg viewBox="5.0 0.0 1.0 10.0" ><path transform="translate(-12.99, -7.5)" d="M 18 7.500000476837158 L 18 17.51696014404297" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s0unte =
    '<svg viewBox="0.0 5.0 10.0 1.0" ><path transform="translate(-7.5, -12.99)" d="M 7.500000476837158 18 L 17.51696014404297 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ggrqju =
    '<svg viewBox="287.5 27.5 12.7 1.0" ><path transform="translate(280.0, 9.5)" d="M 7.5 18 L 20.2078857421875 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_zi99uo =
    '<svg viewBox="9.0 0.0 1.0 18.0" ><path transform="translate(-8.99, -7.5)" d="M 18 7.5 L 18 25.525146484375" fill="none" stroke="#2a2a2a" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_jg5kzm =
    '<svg viewBox="0.0 9.0 18.0 1.0" ><path transform="translate(-7.5, -8.99)" d="M 7.5 18 L 25.525146484375 18" fill="none" stroke="#2a2a2a" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_d8li0 =
    '<svg viewBox="20.0 24.0 31.1 29.3" ><path transform="translate(14.38, 17.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
