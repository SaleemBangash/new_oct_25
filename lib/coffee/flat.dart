// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:new_oct_25/favourite.dart';
import 'dart:ui' as ui;
import '../Cart.dart';
import 'package:adobe_xd/page_link.dart';
// import '../Component11.dart';
import '../Iconawesomeheart.dart';
import '../Home.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cartIcon.dart';
import '../minus.dart';

class Flat extends StatefulWidget {
  Flat({
    Key? key,
  }) : super(key: key);

  @override
  State<Flat> createState() => _FlatState();
}

class _FlatState extends State<Flat> {
  bool _type = false;
  bool _hasBeenPressed = false;
  bool _isBeenPressed = false;
  bool _wasBeenPressed = false;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      // backgroundColor: const Color(0xff668079),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/flat.jpg",
                width: width / 0.4,
                height: height / 2.1,
                fit: BoxFit.fill,

                //fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => Home(),
                          ),
                        ],
                        child: CircleAvatar(
                            backgroundColor: Color(0xffbaa378),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 20),
                    //   child: Icon(
                    //     Icons.add_alert_rounded,
                    //   ),
                    // )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 300, top: 240),
              //   child: Iconawesomeheart(),
              // ),
              Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 30.0, sigmaY: 20.0),
                      child: Container(
                        height: height / 1.53,
                        width: width / 1.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                          //color: Colors.transparent,
                          border: Border.all(
                              width: 2.0, color: const Color(0xff707070)),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Details',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: text * 15,
                                    color: const Color(0xff668079),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Favourite()
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 200),
                            child: Text(
                              'Flat',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: text * 15,
                                color: const Color(0xff668079),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width / 10,
                                        height: height / 24,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Text('S',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  // fontSize: text * 10
                                                  )),
                                          textColor: Color(0xffbaa378),
                                          // 2
                                          color: _hasBeenPressed
                                              ? Colors.black
                                              : Colors.white70,
                                          // 3
                                          onPressed: () => {
                                            setState(() {
                                              _hasBeenPressed =
                                                  !_hasBeenPressed;
                                              _isBeenPressed = false;
                                              _wasBeenPressed = false;
                                            })
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: width / 10,
                                        height: height / 24,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Center(
                                              child: Text('M',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      // fontSize: text * 16
                                                      ))),
                                          textColor: Color(0xffbaa378),
                                          // 2
                                          color: _isBeenPressed
                                              ? Colors.black
                                              : Colors.white70,
                                          // 3
                                          onPressed: () => {
                                            setState(() {
                                              _isBeenPressed = !_isBeenPressed;
                                              _hasBeenPressed = false;
                                              _wasBeenPressed = false;
                                            })
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: width / 10,
                                        height: height / 24,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Text('L',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  // fontSize: text * 16
                                                  )),
                                          textColor: Color(0xffbaa378),
                                          // 2
                                          color: _wasBeenPressed
                                              ? Colors.black
                                              : Colors.white70,
                                          // 3
                                          onPressed: () => {
                                            setState(() {
                                              _wasBeenPressed =
                                                  !_wasBeenPressed;
                                              _hasBeenPressed = false;
                                              _isBeenPressed = false;
                                            })
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // RaisedButton(
                                //   onPressed: () {},
                                //   color: Colors.amber,
                                //   shape: RoundedRectangleBorder(
                                //       borderRadius:
                                //           BorderRadius.circular(10)),
                                //   child: Text("s"),
                                // ),
                                // child: Text.rich(
                                //   TextSpan(
                                //     style: TextStyle(
                                //       fontFamily: 'Segoe UI',
                                //       fontSize: 20,
                                //       color: const Color(0xff0a0a0a),
                                //     ),
                                //     children: [
                                //       TextSpan(
                                //         text: '300 g.',
                                //         style: TextStyle(
                                //           fontWeight: FontWeight.w700,
                                //         ),
                                //       ),
                                //       TextSpan(
                                //         text: '/',
                                //         style: TextStyle(
                                //           fontWeight: FontWeight.w300,
                                //         ),
                                //       ),
                                //       TextSpan(
                                //         text: '530kcal.  ',
                                //         style: TextStyle(
                                //           color: const Color(0xff668079),
                                //           fontWeight: FontWeight.w300,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                //   textHeightBehavior: TextHeightBehavior(
                                //       applyHeightToFirstAscent: false),
                                //   textAlign: TextAlign.left,
                                // ),

                                Minus()
                              ],
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 200),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: text * 15,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 30),
                            child: Text(
                              'Lorem ipsumm fusahgbfauifa agbvas\nuasgfbub8yadsifb agbfi8ofag iasbvio\n ibiahgbi9anidn9azsngofnd hgbizsngf\nLorem ipsumm fusahgbfauifa ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: const Color(0xff2a2a2a),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffbaa378),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: width / 4.5,
                                    height: height / 23,
                                    child: Center(
                                        child: Text(
                                      "20.00SR",
                                      // style: TextStyle(fontSize: text * 15),
                                    ))),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffbaa378),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: width / 5,
                                          height: height / 23,
                                          child: Center(child: CartIcon())),
                                      Text("Add to Cart")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  )),
              Positioned(
                top: 30,
                child: Padding(
                  padding: const EdgeInsets.only(top: 230, left: 290),
                  child: Favourite(),
                ),
              ),
            ],
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
