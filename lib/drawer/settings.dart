// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/pinned.dart';
// import 'package:newoct/Home.dart';
// import 'package:newoct/Sidebarr.dart';

import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../Home.dart';

import 'Signin2.dart';
import 'drawer.dart';

class settings extends StatefulWidget {
  settings({
    Key? key,
  }) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  // bool isChecked = false;
  // bool onChecked = false;
  // bool ifChecked = false;
  // bool iChecked = false;
  bool _hasBeenPressed = true;
  bool _isBeenPressed = true;
  // bool _wasBeenPressed = false;
  // String dropdownvalue = 'Apple';
  // var items = [
  //   'Apple',
  //   'Banana',
  //   'Grapes',
  //   'Orange',
  //   'watermelon',
  //   'Pineapple'
  // ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 290, top: 10),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => MyDrawer(),
                ),
              ],
              // ignore: prefer_const_constructors
              child: CircleAvatar(
                  backgroundColor: Color(0xffbaa378),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "25OCT",
                style: TextStyle(
                    fontSize: text * 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffbaa378)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
                child: Text(
              "Settings",
              style: TextStyle(
                  fontSize: text * 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffbaa378)),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Builder(builder: (context) {
                  return Center(
                    child: ElevatedButton(
                      child: Text(
                        "Languages",
                        style: TextStyle(
                            // fontSize: text * 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),

                          //StadiumBorder(),
                          // side: BorderSide(width: 6),
                          minimumSize: Size(350, 40),
                          maximumSize: Size(360, 40),
                          backgroundColor: Color(0xffbaa378)),
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: height / 3,
                              width: width / 2,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                ),

                                //color: Colors.transparent,
                                border: Border.all(
                                    width: 2.0, color: const Color(0xff707070)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Select Your Language",
                                      // style: TextStyle(fontSize: text * 18),
                                    ),
                                  ),
                                  Text(
                                    "Build Your Understanding",
                                    // style: TextStyle(fontSize: text * 15),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: height / 26,
                                      ),
                                      Container(
                                        width: width / 1.7,
                                        height: height / 5,
                                        decoration: BoxDecoration(
                                            color: Color(0xffbaa378),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: height / 39,
                                            ),
                                            Container(
                                              width: width / 2.1,
                                              height: height / 24,
                                              //color: Colors.grey,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40)),
                                                child: Center(
                                                    child: new Text('English',
                                                        style: TextStyle(
                                                            fontSize:
                                                                text * 16))),
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
                                                    // _wasBeenPressed = false;
                                                  })
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: height / 45,
                                            ),
                                            Container(
                                              width: width / 2.1,
                                              height: height / 24,
                                              //color: Colors.grey,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40)),
                                                child: Center(
                                                    child: new Text('Arabic',
                                                        style: TextStyle(
                                                            fontSize:
                                                                text * 16))),
                                                textColor: Color(0xffbaa378),
                                                // 2
                                                color: _isBeenPressed
                                                    ? Colors.white70
                                                    : Colors.black,
                                                // 3
                                                onPressed: () => {
                                                  setState(() {
                                                    _isBeenPressed =
                                                        !_isBeenPressed;
                                                    _hasBeenPressed = true;
                                                    // _wasBeenPressed = false;
                                                  })
                                                },
                                              ),
                                            ),
                                            ElevatedButton(
                                              child: Text(
                                                "Select",
                                                style: TextStyle(
                                                  fontSize: text * 10,
                                                  //color: Colors.black,
                                                  //fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              style: TextButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),

                                                  //StadiumBorder(),
                                                  // side: BorderSide(width: 6),
                                                  minimumSize: Size(40, 20),
                                                  maximumSize: Size(60, 20),
                                                  backgroundColor:
                                                      Colors.grey[500]),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Signin2()));
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );

                            // Container(
                            //     height: height / 3,
                            //     width: width / 2,
                            //     decoration: BoxDecoration(color: Colors.black),
                            //     child: Column(
                            //       children: [
                            //         SizedBox(
                            //           height: height / 12,
                            //         ),
                            //         Container(
                            //           width: width / 1.7,
                            //           height: height / 5,
                            //           decoration:
                            //               BoxDecoration(color: Color(0xffbaa378)),
                            //         ),
                            //       ],
                            //     )

                            //     );
                            // Wrap(
                            //   children: [
                            //     ListTile(
                            //       leading: Icon(Icons.share),
                            //       title: Text('Share'),
                            //     ),
                            //     ListTile(
                            //       leading: Icon(Icons.copy),
                            //       title: Text('Copy Link'),
                            //     ),
                            //     ListTile(
                            //       leading: Icon(Icons.edit),
                            //       title: Text('Edit'),
                            //     ),
                            //   ],
                            // );
                          },
                        );
                      },
                    ),
                  );
                }),
                // ElevatedButton(
                //   child: Text(
                //     "LogIn to Another Account",
                //     style: TextStyle(
                //         // fontSize: text * 18,
                //         color: Colors.black,
                //         fontWeight: FontWeight.bold),
                //   ),
                //   style: TextButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(12)),

                //       //StadiumBorder(),
                //       // side: BorderSide(width: 6),
                //       minimumSize: Size(350, 40),
                //       maximumSize: Size(360, 40),
                //       backgroundColor: Color(0xffbaa378)),
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => Signin2()));
                //   },
                // ),
                ElevatedButton(
                  child: Text(
                    "LogOut",
                    style: TextStyle(
                        // fontSize: text * 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),

                      //StadiumBorder(),
                      // side: BorderSide(width: 6),
                      minimumSize: Size(350, 40),
                      maximumSize: Size(360, 40),
                      backgroundColor: Color(0xffbaa378)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin2()));
                  },
                ),
              ],
            ),
          ),
          // DropdownButton(
          //   value: dropdownvalue,
          //   icon: Icon(Icons.keyboard_arrow_down),
          //   items: items.map((String items) {
          //     return DropdownMenuItem(value: items, child: Text(items));
          //   }).toList(),

          //   // onChanged: (String newValue){
          //   //   setState(() {
          //   //     dropdownvalue = newValue;
          //   //   });
          //   // },
          // ),
          // Builder(
          //   builder: (context) {
          //     return Center(
          //       child: ElevatedButton(
          //         child: Text('Show Modal Bottom Sheet'),
          //         onPressed: () {
          //           showModalBottomSheet(
          //             context: context,
          //             builder: (context) {
          //               return Container(
          //                 height: height / 3,
          //                 width: width / 2,
          //                 decoration: BoxDecoration(
          //                   color: Colors.transparent,
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(50.0),
          //                     topRight: Radius.circular(50.0),
          //                   ),
          //                   //color: Colors.transparent,
          //                   border: Border.all(
          //                       width: 2.0, color: const Color(0xff707070)),
          //                 ),
          //                 child: Column(
          //                   children: [
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                       child: Text(
          //                         "Select Your Language",
          //                         style: TextStyle(fontSize: text * 25),
          //                       ),
          //                     ),
          //                     Text(
          //                       "Build Your Understanding",
          //                       style: TextStyle(fontSize: text * 15),
          //                     ),
          //                     Column(
          //                       children: [
          //                         SizedBox(
          //                           height: height / 26,
          //                         ),
          //                         Container(
          //                           width: width / 1.7,
          //                           height: height / 5,
          //                           decoration: BoxDecoration(
          //                               color: Color(0xffbaa378),
          //                               borderRadius:
          //                                   BorderRadius.circular(16)),
          //                           child: Column(
          //                             children: [
          //                               SizedBox(
          //                                 height: height / 39,
          //                               ),
          //                               Container(
          //                                 width: width / 2.1,
          //                                 height: height / 24,
          //                                 //color: Colors.grey,
          //                                 child: RaisedButton(
          //                                   shape: RoundedRectangleBorder(
          //                                       borderRadius:
          //                                           BorderRadius.circular(40)),
          //                                   child: Center(
          //                                       child: new Text('English',
          //                                           style: TextStyle(
          //                                               fontSize: text * 16))),
          //                                   textColor: Color(0xffbaa378),
          //                                   // 2
          //                                   color: _hasBeenPressed
          //                                       ? Colors.white70
          //                                       : Colors.black,
          //                                   // 3
          //                                   onPressed: () => {
          //                                     setState(() {
          //                                       _hasBeenPressed =
          //                                           !_hasBeenPressed;
          //                                       _isBeenPressed = false;
          //                                       _wasBeenPressed = false;
          //                                     })
          //                                   },
          //                                 ),
          //                               ),
          //                               SizedBox(
          //                                 height: height / 45,
          //                               ),
          //                               Container(
          //                                 width: width / 2.1,
          //                                 height: height / 24,
          //                                 //color: Colors.grey,
          //                                 child: RaisedButton(
          //                                   shape: RoundedRectangleBorder(
          //                                       borderRadius:
          //                                           BorderRadius.circular(40)),
          //                                   child: Center(
          //                                       child: new Text('Urdu',
          //                                           style: TextStyle(
          //                                               fontSize: text * 16))),
          //                                   textColor: Color(0xffbaa378),
          //                                   // 2
          //                                   color: _isBeenPressed
          //                                       ? Colors.white70
          //                                       : Colors.black,
          //                                   // 3
          //                                   onPressed: () => {
          //                                     setState(() {
          //                                       _isBeenPressed =
          //                                           !_isBeenPressed;
          //                                       _hasBeenPressed = false;
          //                                       _wasBeenPressed = false;
          //                                     })
          //                                   },
          //                                 ),
          //                               ),
          //                               ElevatedButton(
          //                                 child: Text(
          //                                   "Select",
          //                                   style: TextStyle(
          //                                     fontSize: text * 15,
          //                                     //color: Colors.black,
          //                                     //fontWeight: FontWeight.bold
          //                                   ),
          //                                 ),
          //                                 style: TextButton.styleFrom(
          //                                     shape: RoundedRectangleBorder(
          //                                         borderRadius:
          //                                             BorderRadius.circular(4)),

          //                                     //StadiumBorder(),
          //                                     // side: BorderSide(width: 6),
          //                                     minimumSize: Size(50, 10),
          //                                     backgroundColor:
          //                                         Colors.grey[500]),
          //                                 onPressed: () {
          //                                   Navigator.push(
          //                                       context,
          //                                       MaterialPageRoute(
          //                                           builder: (context) =>
          //                                               Signin2()));
          //                                 },
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //               );

          //               // Container(
          //               //     height: height / 3,
          //               //     width: width / 2,
          //               //     decoration: BoxDecoration(color: Colors.black),
          //               //     child: Column(
          //               //       children: [
          //               //         SizedBox(
          //               //           height: height / 12,
          //               //         ),
          //               //         Container(
          //               //           width: width / 1.7,
          //               //           height: height / 5,
          //               //           decoration:
          //               //               BoxDecoration(color: Color(0xffbaa378)),
          //               //         ),
          //               //       ],
          //               //     )

          //               //     );
          //               // Wrap(
          //               //   children: [
          //               //     ListTile(
          //               //       leading: Icon(Icons.share),
          //               //       title: Text('Share'),
          //               //     ),
          //               //     ListTile(
          //               //       leading: Icon(Icons.copy),
          //               //       title: Text('Copy Link'),
          //               //     ),
          //               //     ListTile(
          //               //       leading: Icon(Icons.edit),
          //               //       title: Text('Edit'),
          //               //     ),
          //               //   ],
          //               // );
          //             },
          //           );
          //         },
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}

const String _svg_g9xtvp =
    '<svg viewBox="28.0 23.0 25.0 23.6" ><path transform="translate(-3340.12, -946.35)" d="M 3390.968505859375 978.8743286132812 L 3375.754638671875 978.8743286132812 L 3381.654541015625 973.23046875 C 3382.50048828125 972.32666015625 3382.50048828125 970.9208984375 3381.654541015625 970.0170288085938 C 3380.862060546875 969.1688232421875 3379.531982421875 969.1236572265625 3378.684326171875 969.9163818359375 C 3378.64990234375 969.9486083984375 3378.615966796875 969.982421875 3378.583740234375 970.0170288085938 L 3368.761474609375 979.54296875 C 3368.338623046875 979.962646484375 3368.106689453125 980.5394287109375 3368.121826171875 981.1355590820312 L 3368.121826171875 981.1637573242188 C 3368.106689453125 981.7598876953125 3368.338623046875 982.3358154296875 3368.761474609375 982.75634765625 L 3378.578125 992.2814331054688 C 3379.370849609375 993.12890625 3380.700927734375 993.1740112304688 3381.549072265625 992.38134765625 C 3381.583740234375 992.34912109375 3381.61669921875 992.3161010742188 3381.649169921875 992.2814331054688 C 3382.494873046875 991.3775634765625 3382.494873046875 989.9718627929688 3381.649169921875 989.0680541992188 L 3375.7490234375 983.4241943359375 L 3390.96142578125 983.4241943359375 C 3392.190673828125 983.39599609375 3393.163818359375 982.3777465820312 3393.136474609375 981.1492919921875 C 3393.177734375 979.9336547851562 3392.225341796875 978.9154052734375 3391.009765625 978.8751220703125 L 3390.968505859375 978.8743286132812 Z" fill="#040405" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
