// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import './Menu1.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_oct_25/Home.dart';

import '../Cart.dart';

class Vanilla extends StatefulWidget {
  const Vanilla({Key? key}) : super(key: key);

  @override
  _VanillaState createState() => _VanillaState();
}

class _VanillaState extends State<Vanilla> {
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
                "assets/images/sheri-silver-1.png",
                width: width / 0.9,
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
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
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
                            padding: const EdgeInsets.only(top: 20, right: 210),
                            child: Text(
                              'Details',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: text * 30,
                                color: const Color(0xff668079),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 180),
                            child: Text(
                              'Vanilla Flavor',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: text * 20,
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
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width / 9,
                                        height: height / 18,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Center(
                                              child: new Text('S',
                                                  style: TextStyle(
                                                      fontSize: text * 16))),
                                          textColor: Color(0xffbaa378),
                                          // 2
                                          color: _hasBeenPressed
                                              ? Colors.white70
                                              : Colors.black,
                                          // 3
                                          onPressed: () => {
                                            setState(() {
                                              _hasBeenPressed =
                                                  !_hasBeenPressed;
                                              _isBeenPressed = true;
                                              _wasBeenPressed = true;
                                            })
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: width / 9,
                                        height: height / 18,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Center(
                                              child: new Text('M',
                                                  style: TextStyle(
                                                      fontSize: text * 16))),
                                          textColor: Color(0xffbaa378),
                                          // 2
                                          color: _isBeenPressed
                                              ? Colors.white70
                                              : Colors.black,
                                          // 3
                                          onPressed: () => {
                                            setState(() {
                                              _isBeenPressed = !_isBeenPressed;
                                              _hasBeenPressed = true;
                                              _wasBeenPressed = true;
                                            })
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: width / 9,
                                        height: height / 18,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: new Text('L',
                                              style: TextStyle(
                                                  fontSize: text * 16)),
                                          textColor: Color(0xffbaa378),
                                          // 2
                                          color: _wasBeenPressed
                                              ? Colors.white70
                                              : Colors.black,
                                          // 3
                                          onPressed: () => {
                                            setState(() {
                                              _wasBeenPressed =
                                                  !_wasBeenPressed;
                                              _hasBeenPressed = true;
                                              _isBeenPressed = true;
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

                                Row(
                                  children: <Widget>[
                                    _itemCount != -1
                                        ? new IconButton(
                                            icon: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.black,
                                                child: new Icon(Icons.remove)),
                                            onPressed: () =>
                                                setState(() => _itemCount--),
                                          )
                                        : new Container(),
                                    new Text(
                                      _itemCount.toString(),
                                      style: TextStyle(fontSize: text * 25),
                                    ),
                                    new IconButton(
                                        icon: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: new Icon(Icons.add)),
                                        onPressed: () =>
                                            setState(() => _itemCount++))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 200),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: text * 25,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 10),
                          Text(
                            'Lorem ipsumm fusahgbfauifa agbvas\nuasgfbub8yadsifb agbfi8ofag iasbvio\n  ibiahgbi9anidn9azsngofnd hgbizsngf\nLorem ipsumm fusahgbfauifa ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 19,
                              color: const Color(0xff2a2a2a),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffbaa378),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: width / 4,
                                    height: height / 17,
                                    child: Center(
                                        child: Text(
                                      "20.00SR",
                                      style: TextStyle(fontSize: text * 16),
                                    ))),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffbaa378),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: width / 4,
                                    height: height / 17,
                                    child: Center(
                                      child: IconButton(
                                        icon: Icon(Icons.shopping_bag_outlined),
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Cart())),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
