// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';
import 'dart:ui' as ui;

import 'package:flutter_svg/flutter_svg.dart';

import 'Cart.dart';
import 'Iconawesomeheart.dart';

class Location extends StatefulWidget {
  Location({
    Key? key,
  }) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool _hasBeenPressed = false;
  bool _hadBeenPressed = false;
  bool _wasBeenPressed = false;
  bool _isBeenPressed = false;
  int _currentIndex = 1;
  int _itemCountt = 0;
  // bool _isBeenPressed = false;
  // bool _wasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
        body: Stack(
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  "assets/images/map.jpg",
                  height: height / 2,
                ),
              ],
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 290, top: 10),
                child: PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => Home(),
                    ),
                  ],
                  // ignore: prefer_const_constructors
                  child: CircleAvatar(
                      backgroundColor: Color(0xffbaa378),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              ),
              Center(
                child: Text(
                  "25OCT",
                  style: TextStyle(
                      fontSize: text * 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                "Select Branch (From map)",
                style: TextStyle(
                    fontSize: text * 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ]),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0),
          ),
          child: Container(
            width: width / 5,
            height: height / 2.9,
            decoration: BoxDecoration(color: Color(0xffbaa378)),
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                children: [
                  Container(
                    height: height / 17,
                    width: width / 1.0,
                    decoration: BoxDecoration(
                        color: Color(0xffbaa378),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            height: height / 60,
                            width: width / 3.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: height / 4.5,
                      width: width / 1,
                      decoration: BoxDecoration(
                          border: Border.all(
                            //width: 2,
                            color: Colors.black,
                          ),
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(16)),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image.asset(
                                    "assets/images/sheri-silver-9.png",
                                    width: width / 3.5,
                                    height: height / 4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 130, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Branch1",
                                  style: TextStyle(fontSize: text * 20),
                                ),
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 130, top: 50),
                          //   child: Text(
                          //     "City",
                          //     style: TextStyle(fontSize: text * 20),
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110, top: 50),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "City",
                                    style: TextStyle(fontSize: text * 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: ElevatedButton(
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                          fontSize: text * 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),

                                        //StadiumBorder(),
                                        // side: BorderSide(width: 6),
                                        //minimumSize: Size(100, 10),
                                        backgroundColor: Color(0xffbaa378)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cart()));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 130, top: 120),
                            child: Row(
                              children: [
                                Container(
                                  height: height / 17,
                                  width: width / 4,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      Icon(Icons.add_location,
                                          size: 35, color: Colors.black),
                                      Text(
                                        "200KM",
                                        style: TextStyle(
                                            fontSize: text * 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width / 25,
                                ),
                                Text(
                                  "Open 24/7",
                                  style: TextStyle(
                                      fontSize: text * 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

const String _svg_g7czog =
    '<svg viewBox="14.0 50.0 31.1 29.3" ><path transform="translate(8.38, 43.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g7jj7e =
    '<svg viewBox="357.0 683.0 33.0 33.0" ><path transform="translate(355.5, 681.5)" d="M 18 12 C 14.68499946594238 12 12 14.68499946594238 12 18 C 12 21.31500053405762 14.68499946594238 24 18 24 C 21.31500053405762 24 24 21.31500053405762 24 18 C 24 14.68499946594238 21.31500053405762 12 18 12 Z M 31.40999984741211 16.5 C 30.71999931335449 10.24499988555908 25.7549991607666 5.279999732971191 19.5 4.590000152587891 L 19.5 1.5 L 16.5 1.5 L 16.5 4.590000152587891 C 10.24499988555908 5.28000020980835 5.28000020980835 10.24499988555908 4.590000152587891 16.5 L 1.5 16.5 L 1.5 19.5 L 4.590000152587891 19.5 C 5.28000020980835 25.75500106811523 10.2450008392334 30.72000122070312 16.5 31.40999984741211 L 16.5 34.5 L 19.5 34.5 L 19.5 31.40999984741211 C 25.75500106811523 30.71999931335449 30.72000122070312 25.7549991607666 31.40999984741211 19.5 L 34.5 19.5 L 34.5 16.5 L 31.40999984741211 16.5 Z M 18 28.5 C 12.19499969482422 28.5 7.5 23.80500030517578 7.5 18 C 7.5 12.19499969482422 12.19499969482422 7.5 18 7.5 C 23.80500030517578 7.5 28.5 12.19499969482422 28.5 18 C 28.5 23.80500030517578 23.80500030517578 28.5 18 28.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qsc7dc =
    '<svg viewBox="0.0 0.0 334.0 149.5" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path transform="translate(0.0, 0.0)" d="M 9.40847110748291 0 L 324.5922546386719 0 C 329.7884521484375 0 334.0007629394531 5.313239574432373 334.0007629394531 11.86745262145996 L 334.0007629394531 137.6624603271484 C 334.0007629394531 144.2166748046875 329.7884521484375 149.5299072265625 324.5922546386719 149.5299072265625 L 9.40847110748291 149.5299072265625 C 4.212316036224365 149.5299072265625 0 144.2166748046875 0 137.6624603271484 L 0 11.86745262145996 C 0 5.313239574432373 4.212316036224365 0 9.40847110748291 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_gws5qs =
    '<svg viewBox="130.2 93.0 103.1 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(130.19, 93.0)" d="M 6.442428588867188 0 L 96.63642883300781 0 C 100.1944885253906 0 103.078857421875 3.581721782684326 103.078857421875 8 L 103.078857421875 35 C 103.078857421875 39.41827774047852 100.1944885253906 43 96.63642883300781 43 L 6.442428588867188 43 C 2.884373426437378 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.884373426437378 0 6.442428588867188 0 Z" fill="#f5f1e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_sebzt =
    '<svg viewBox="250.0 44.0 103.1 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(250.0, 44.0)" d="M 6.442428588867188 0 L 96.63642883300781 0 C 100.1944885253906 0 103.078857421875 3.581721782684326 103.078857421875 8 L 103.078857421875 35 C 103.078857421875 39.41827774047852 100.1944885253906 43 96.63642883300781 43 L 6.442428588867188 43 C 2.884373426437378 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.884373426437378 0 6.442428588867188 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ud9jue =
    '<svg viewBox="254.9 93.0 103.1 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(254.92, 93.0)" d="M 6.442428588867188 0 L 96.63642883300781 0 C 100.1944885253906 0 103.078857421875 3.581721782684326 103.078857421875 8 L 103.078857421875 35 C 103.078857421875 39.41827774047852 100.1944885253906 43 96.63642883300781 43 L 6.442428588867188 43 C 2.884373426437378 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.884373426437378 0 6.442428588867188 0 Z" fill="#ffd700" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_p95mp6 =
    '<svg viewBox="136.2 102.0 18.2 26.0" ><path transform="translate(128.72, 99.0)" d="M 16.60000038146973 3 C 11.58199977874756 3 7.5 7.082000255584717 7.5 12.09999942779541 C 7.5 18.92499923706055 16.60000038146973 29 16.60000038146973 29 C 16.60000038146973 29 25.70000076293945 18.92499923706055 25.70000076293945 12.09999942779541 C 25.70000076293945 7.082000255584717 21.61800003051758 3 16.60000038146973 3 Z M 21.79999923706055 13.39999961853027 L 17.89999961853027 13.39999961853027 L 17.89999961853027 17.29999923706055 L 15.30000019073486 17.29999923706055 L 15.30000019073486 13.39999961853027 L 11.39999961853027 13.39999961853027 L 11.39999961853027 10.79999923706055 L 15.30000019073486 10.79999923706055 L 15.30000019073486 6.900000095367432 L 17.89999961853027 6.900000095367432 L 17.89999961853027 10.79999923706055 L 21.79999923706055 10.79999923706055 L 21.79999923706055 13.39999961853027 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mr3ud2 =
    '<svg viewBox="0.0 0.0 334.0 149.5" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path  d="M 9.40847110748291 0 L 324.5922546386719 0 C 329.7884521484375 0 334.0007629394531 5.313239574432373 334.0007629394531 11.86745262145996 L 334.0007629394531 137.6624603271484 C 334.0007629394531 144.2166748046875 329.7884521484375 149.5299072265625 324.5922546386719 149.5299072265625 L 9.40847110748291 149.5299072265625 C 4.212316036224365 149.5299072265625 0 144.2166748046875 0 137.6624603271484 L 0 11.86745262145996 C 0 5.313239574432373 4.212316036224365 0 9.40847110748291 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_yfsg =
    '<svg viewBox="130.4 93.0 103.1 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(130.35, 93.0)" d="M 6.442428588867188 0 L 96.63642883300781 0 C 100.1944885253906 0 103.078857421875 3.581721782684326 103.078857421875 8 L 103.078857421875 35 C 103.078857421875 39.41827774047852 100.1944885253906 43 96.63642883300781 43 L 6.442428588867188 43 C 2.884373426437378 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.884373426437378 0 6.442428588867188 0 Z" fill="#f5f1e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xyn4ja =
    '<svg viewBox="250.9 93.0 103.1 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(250.92, 93.0)" d="M 6.442428588867188 0 L 96.63642883300781 0 C 100.1944885253906 0 103.078857421875 3.581721782684326 103.078857421875 8 L 103.078857421875 35 C 103.078857421875 39.41827774047852 100.1944885253906 43 96.63642883300781 43 L 6.442428588867188 43 C 2.884373426437378 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.884373426437378 0 6.442428588867188 0 Z" fill="#ffd700" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_wkfl2h =
    '<svg viewBox="136.3 102.0 18.2 26.0" ><path transform="translate(128.81, 99.0)" d="M 16.60000038146973 3 C 11.58199977874756 3 7.5 7.082000255584717 7.5 12.09999942779541 C 7.5 18.92499923706055 16.60000038146973 29 16.60000038146973 29 C 16.60000038146973 29 25.70000076293945 18.92499923706055 25.70000076293945 12.09999942779541 C 25.70000076293945 7.082000255584717 21.61800003051758 3 16.60000038146973 3 Z M 21.79999923706055 13.39999961853027 L 17.89999961853027 13.39999961853027 L 17.89999961853027 17.29999923706055 L 15.30000019073486 17.29999923706055 L 15.30000019073486 13.39999961853027 L 11.39999961853027 13.39999961853027 L 11.39999961853027 10.79999923706055 L 15.30000019073486 10.79999923706055 L 15.30000019073486 6.900000095367432 L 17.89999961853027 6.900000095367432 L 17.89999961853027 10.79999923706055 L 21.79999923706055 10.79999923706055 L 21.79999923706055 13.39999961853027 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qutgz2 =
    '<svg viewBox="2248.0 1064.0 81.0 5.1" ><path transform="translate(2247.97, 1037.28)" d="M 2.892874479293823 31.78125 L 78.10761260986328 31.78125 C 79.70538330078125 31.78125 81.00048828125 31.27760124206543 81.00048828125 30.65625 L 81.00048828125 27.84375 C 81.00048828125 27.22239875793457 79.70538330078125 26.71875 78.10761260986328 26.71875 L 2.892874479293823 26.71875 C 1.295103788375854 26.71875 0 27.22239875793457 0 27.84375 L 0 30.65625 C 0 31.27760124206543 1.295103788375854 31.78125 2.892874479293823 31.78125 Z" fill="#fdfdfd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
