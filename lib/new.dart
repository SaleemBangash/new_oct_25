// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_oct_25/bottom_bar.dart';
import 'dart:ui' as ui;
import 'Cart.dart';
import 'Home.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  bool _hasBeenPressed = false;
  bool _isBeenPressed = false;
  bool _wasBeenPressed = false;
  int _itemCount = 0;

  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool _isEnable = false;
  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;
  bool _sixBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PickUp Branch".toUpperCase(),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomBar()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 05),
              child: Center(
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
        // toolbarHeight: 105,
        // automaticallyImplyLeading: false, // Set this height
        // flexibleSpace: Container(
        //   // color: Colors.orange,
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(top: 40),
        //         child: Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(left: 5),
        //               child: PageLink(
        //                 links: [
        //                   PageLinkInfo(
        //                     transition: LinkTransition.Fade,
        //                     ease: Curves.easeOut,
        //                     duration: 0.3,
        //                     pageBuilder: () => Home(),
        //                   ),
        //                 ],
        //                 // ignore: prefer_const_constructors
        //                 child: CircleAvatar(
        //                     backgroundColor: Color(0xffbaa378),
        //                     child: Icon(
        //                       Icons.arrow_back,
        //                       color: Colors.white,
        //                     )),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 100),
        //               child: Text(
        //                 "Pickup Branch",
        //                 style: TextStyle(
        //                     fontSize: text * 30,
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.black),
        //                 textAlign: TextAlign.center,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       // Padding(
        //       //   padding: const EdgeInsets.only(left: 20),
        //       //   child: Row(
        //       //     children: [
        //       //       Text(
        //       //         "Select Branch (From map)",
        //       //         style: TextStyle(
        //       //             fontSize: text * 15,
        //       //             fontWeight: FontWeight.bold,
        //       //             color: Colors.black),
        //       //       ),
        //       //       // Padding(
        //       //       //   padding: const EdgeInsets.only(left: 80),
        //       //       //   child: Container(
        //       //       //     width: 50,
        //       //       //     height: 20,
        //       //       //     decoration: BoxDecoration(
        //       //       //         color: Color(0xffbaa378),
        //       //       //         borderRadius: BorderRadius.circular(5.0)),
        //       //       //     child: Center(
        //       //       //       child: Text(
        //       //       //         "Skip",
        //       //       //         style: TextStyle(
        //       //       //           // fontSize: text * 15,
        //       //       //           color: Colors.black,
        //       //       //           // fontWeight: FontWeight.bold
        //       //       //         ),
        //       //       //       ),
        //       //       //     ),
        //       //       //   ),
        //       //       // ),

        //       //       // Padding(
        //       //       //   padding: const EdgeInsets.only(left: 120),
        //       //       //   child: ElevatedButton(
        //       //       //     child: Text(
        //       //       //       "Skip",
        //       //       //       style: TextStyle(
        //       //       //         // fontSize: text * 15,
        //       //       //         color: Colors.black,
        //       //       //         // fontWeight: FontWeight.bold
        //       //       //       ),
        //       //       //     ),
        //       //       //     style: TextButton.styleFrom(
        //       //       //         // shape: RoundedRectangleBorder(
        //       //       //         //     borderRadius: BorderRadius.circular(12)),

        //       //       //         //StadiumBorder(),
        //       //       //         minimumSize: Size(60, 20),
        //       //       //         maximumSize: Size(100, 20),
        //       //       //         backgroundColor: Color(0xffbaa378)),
        //       //       //     onPressed: () {
        //       //       //       Navigator.push(context,
        //       //       //           MaterialPageRoute(builder: (context) => Home()));
        //       //       //     },
        //       //       //   ),
        //       //       // ),
        //       //     ],
        //       //   ),
        //       // ),

        //     ],
        //   ),
        // ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Text(
          //   "250ct",
          //   style: TextStyle(color: Colors.black),
          // ),
          Stack(
            children: <Widget>[
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Text(
                  //   "250ct",
                  //   style: TextStyle(color: Colors.black),
                  // ),
                  Image.asset(
                    "assets/images/newmap.jpg",
                    height: height / 2,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset("assets/images/pin_icon@2x.png",
                                height: 28, width: 28),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "PickUp From",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        ),
                                        Text(
                                          "No Branch Picked",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ]),
                                ),
                                // SizedBox(width: 100),
                                Image.asset("assets/images/drop_arrow.png",
                                    height: 40, width: 40),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(right: 290, top: 10),
                //   child: PageLink(
                //     links: [
                //       PageLinkInfo(
                //         transition: LinkTransition.Fade,
                //         ease: Curves.easeOut,
                //         duration: 0.3,
                //         pageBuilder: () => Home(),
                //       ),
                //     ],
                //     // ignore: prefer_const_constructors
                //     child: CircleAvatar(
                //         backgroundColor: Color(0xffbaa378),
                //         child: Icon(
                //           Icons.arrow_back,
                //           color: Colors.white,
                //         )),
                //   ),
                // ),
                // Center(
                //   child: Text(
                //     "25OCT",
                //     style: TextStyle(
                //         fontSize: text * 30,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20),
                //   child: Row(
                //     children: [
                //       Text(
                //         "Select Branch (From map)",
                //         style: TextStyle(
                //             fontSize: text * 15,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.black),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 100),
                //         child: ElevatedButton(
                //           child: Text(
                //             "Skip",
                //             style: TextStyle(
                //               // fontSize: text * 15,
                //               color: Colors.black,
                //               // fontWeight: FontWeight.bold
                //             ),
                //           ),
                //           style: TextButton.styleFrom(
                //               // shape: RoundedRectangleBorder(
                //               //     borderRadius: BorderRadius.circular(12)),

                //               //StadiumBorder(),
                //               minimumSize: Size(60, 20),
                //               maximumSize: Size(100, 20),
                //               backgroundColor: Color(0xffbaa378)),
                //           onPressed: () {
                //             Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) => Home()));
                //           },
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ]),
              Padding(
                  padding: const EdgeInsets.only(top: 520),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        width: width / 0.8,
                        height: height / 1.7,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(55.0),
                            topLeft: Radius.circular(55.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      //backgroundColor: Colors.transparent,
                                      //isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50.0),
                                          topRight: Radius.circular(50.0),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) {
                                        return SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: BackdropFilter(
                                            filter: ui.ImageFilter.blur(
                                                sigmaX: 10.0, sigmaY: 10.0),
                                            child: Container(
                                              height: height / 0.7,
                                              width: width / 2,
                                              decoration: BoxDecoration(
                                                color: Color(0xffF5ECE3),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(50.0),
                                                  topRight:
                                                      Radius.circular(50.0),
                                                ),

                                                //color: Colors.transparent,
                                                border: Border.all(
                                                    width: 2.0,
                                                    color: const Color(
                                                        0xff707070)),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: height / 22,
                                                    width: width / 1.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffbaa378),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 4,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xff707070),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  StatefulBuilder(
                                                    builder: (BuildContext
                                                            context,
                                                        StateSetter setState) {
                                                      return GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              _oneBeenPressed =
                                                                  !_oneBeenPressed;
                                                              _twoBeenPressed =
                                                                  false;
                                                              _threeBeenPressed =
                                                                  false;
                                                              _fourBeenPressed =
                                                                  false;
                                                              _fiveBeenPressed =
                                                                  false;
                                                              _sixBeenPressed =
                                                                  false;
                                                            });
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15,
                                                                    vertical:
                                                                        03),
                                                            child: Container(
                                                              height: 70,
                                                              width: width / 1,
                                                              decoration: BoxDecoration(
                                                                  border: _oneBeenPressed
                                                                      ? Border.all(
                                                                          width:
                                                                              1,
                                                                          color: Colors
                                                                              .black)
                                                                      : Border.all(
                                                                          width:
                                                                              0,
                                                                          color: Colors
                                                                              .white),
                                                                  color: Color(
                                                                      0xffFFFFFF),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16)),
                                                              child: Row(
                                                                children: [
                                                                  // Padding(
                                                                  //   padding:
                                                                  //       const EdgeInsets.only(left: 10),
                                                                  //   child: ClipRRect(
                                                                  //     borderRadius: BorderRadius.only(
                                                                  //         topLeft: Radius.circular(15.0),
                                                                  //         bottomLeft:
                                                                  //             Radius.circular(15.0)),
                                                                  //     child: Image.asset(
                                                                  //       "assets/images/sheri-silver-9.png",
                                                                  //       fit: BoxFit.cover,
                                                                  //       width: 120,
                                                                  //       height: 70,
                                                                  //     ),
                                                                  //   ),
                                                                  // ),
                                                                  Container(
                                                                    height: 120,
                                                                    width: 120,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: AssetImage(
                                                                            "assets/images/sheri-silver-9.png",
                                                                          ),
                                                                          fit: BoxFit.cover),
                                                                      // border: Border.all(
                                                                      //   //width: 2,
                                                                      //   color: Colors.black,
                                                                      // ),
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          242,
                                                                          229,
                                                                          229),
                                                                      borderRadius: BorderRadius.only(
                                                                          topLeft: Radius.circular(
                                                                              15.0),
                                                                          bottomLeft:
                                                                              Radius.circular(15.0)),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          right:
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            child:
                                                                                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "Branch1",
                                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                                              ),
                                                                              // SizedBox(
                                                                              //   width: 80,
                                                                              // ),
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    "assets/images/time_icon.png",
                                                                                    height: 15,
                                                                                    width: 15,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 03,
                                                                                  ),
                                                                                  Text(
                                                                                    "6:00AM-12:30PM",
                                                                                    style: TextStyle(
                                                                                      fontSize: 10,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      color: Theme.of(context).primaryColor,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Image.asset("assets/images/24-hours@2x.png", width: 30, height: 30),
                                                                              Text("OPEN 24/7",
                                                                                  style: TextStyle(
                                                                                    fontSize: 9,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Theme.of(context).primaryColor,
                                                                                  )),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),

                                                              // Padding(
                                                              //   padding: const EdgeInsets.only(
                                                              //       left: 130, top: 120),
                                                              //   child: Row(
                                                              //     children: [
                                                              //       Text(
                                                              //         "Open 24/7",
                                                              //         style: TextStyle(
                                                              //             fontSize: text * 15,
                                                              //             fontWeight: FontWeight.bold),
                                                              //       )
                                                              //     ],
                                                              //   ),
                                                              // )
                                                            ),
                                                          ));
                                                    },
                                                  ),
                                                  StatefulBuilder(builder:
                                                      (BuildContext context,
                                                          StateSetter
                                                              setState) {
                                                    return GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _twoBeenPressed =
                                                                !_twoBeenPressed;
                                                            _oneBeenPressed =
                                                                false;
                                                            _threeBeenPressed =
                                                                false;
                                                            _fourBeenPressed =
                                                                false;
                                                            _fiveBeenPressed =
                                                                false;
                                                            _sixBeenPressed =
                                                                false;
                                                          });
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 03),
                                                          child: Container(
                                                            height: 70,
                                                            width: width / 1,
                                                            decoration:
                                                                BoxDecoration(

                                                                    // border: Border.all(
                                                                    //   //width: 2,
                                                                    //   color: Colors.black,
                                                                    // ),
                                                                    color: Color(
                                                                        0xffFFFFFF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16)),
                                                            child: Row(
                                                              children: [
                                                                // Padding(
                                                                //   padding:
                                                                //       const EdgeInsets.only(left: 10),
                                                                //   child: ClipRRect(
                                                                //     borderRadius: BorderRadius.only(
                                                                //         topLeft: Radius.circular(15.0),
                                                                //         bottomLeft:
                                                                //             Radius.circular(15.0)),
                                                                //     child: Image.asset(
                                                                //       "assets/images/sheri-silver-9.png",
                                                                //       fit: BoxFit.cover,
                                                                //       width: 120,
                                                                //       height: 70,
                                                                //     ),
                                                                //   ),
                                                                // ),
                                                                Container(
                                                                  height: 120,
                                                                  width: 120,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                          "assets/images/sheri-silver-9.png",
                                                                        ),
                                                                        fit: BoxFit.cover),
                                                                    // border: Border.all(
                                                                    //   //width: 2,
                                                                    //   color: Colors.black,
                                                                    // ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            242,
                                                                            229,
                                                                            229),
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                15.0),
                                                                        bottomLeft:
                                                                            Radius.circular(15.0)),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        vertical:
                                                                            10),
                                                                    child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 10),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  "Branch1",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                                                ),
                                                                                // SizedBox(
                                                                                //   width: 80,
                                                                                // ),

                                                                                // Image.asset(
                                                                                //     "assets/images/24-hours.png",
                                                                                //     width:
                                                                                //         40,
                                                                                //     height:
                                                                                //         40),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                              height: 5),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(
                                                                                bottom: 5,
                                                                                left: 10,
                                                                                right: 10),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Image.asset(
                                                                                      "assets/images/time_icon.png",
                                                                                      height: 15,
                                                                                      width: 15,
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 03,
                                                                                    ),
                                                                                    Text(
                                                                                      "6:00AM-12:30PM",
                                                                                      style: TextStyle(
                                                                                        fontSize: 10,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        color: Theme.of(context).primaryColor,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                // Text(
                                                                                //     "OPEN 24/7",
                                                                                //     style:
                                                                                //         TextStyle(
                                                                                //       fontSize: 12,
                                                                                //       color: Theme.of(context).primaryColor,
                                                                                //     )),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ]),
                                                                  ),
                                                                )
                                                              ],
                                                            ),

                                                            // Padding(
                                                            //   padding: const EdgeInsets.only(
                                                            //       left: 130, top: 120),
                                                            //   child: Row(
                                                            //     children: [
                                                            //       Text(
                                                            //         "Open 24/7",
                                                            //         style: TextStyle(
                                                            //             fontSize: text * 15,
                                                            //             fontWeight: FontWeight.bold),
                                                            //       )
                                                            //     ],
                                                            //   ),
                                                            // )
                                                          ),
                                                        ));
                                                  }),
                                                  StatefulBuilder(builder:
                                                      (BuildContext context,
                                                          StateSetter
                                                              setState) {
                                                    return GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _oneBeenPressed =
                                                                !_oneBeenPressed;
                                                            _twoBeenPressed =
                                                                false;
                                                            _threeBeenPressed =
                                                                false;
                                                            _fourBeenPressed =
                                                                false;
                                                            _fiveBeenPressed =
                                                                false;
                                                            _sixBeenPressed =
                                                                false;
                                                          });
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 03),
                                                          child: Container(
                                                            height: 70,
                                                            width: width / 1,
                                                            decoration:
                                                                BoxDecoration(

                                                                    // border: Border.all(
                                                                    //   //width: 2,
                                                                    //   color: Colors.black,
                                                                    // ),
                                                                    color: Color(
                                                                        0xffFFFFFF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16)),
                                                            child: Row(
                                                              children: [
                                                                // Padding(
                                                                //   padding:
                                                                //       const EdgeInsets.only(left: 10),
                                                                //   child: ClipRRect(
                                                                //     borderRadius: BorderRadius.only(
                                                                //         topLeft: Radius.circular(15.0),
                                                                //         bottomLeft:
                                                                //             Radius.circular(15.0)),
                                                                //     child: Image.asset(
                                                                //       "assets/images/sheri-silver-9.png",
                                                                //       fit: BoxFit.cover,
                                                                //       width: 120,
                                                                //       height: 70,
                                                                //     ),
                                                                //   ),
                                                                // ),
                                                                Container(
                                                                  height: 120,
                                                                  width: 120,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                          "assets/images/sheri-silver-9.png",
                                                                        ),
                                                                        fit: BoxFit.cover),
                                                                    // border: Border.all(
                                                                    //   //width: 2,
                                                                    //   color: Colors.black,
                                                                    // ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            242,
                                                                            229,
                                                                            229),
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                15.0),
                                                                        bottomLeft:
                                                                            Radius.circular(15.0)),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        vertical:
                                                                            10),
                                                                    child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 10),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  "Branch1",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                                                ),
                                                                                // SizedBox(
                                                                                //   width: 80,
                                                                                // ),

                                                                                // Image.asset(
                                                                                //     "assets/images/24-hours.png",
                                                                                //     width:
                                                                                //         40,
                                                                                //     height:
                                                                                //         40),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                              height: 5),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(
                                                                                bottom: 5,
                                                                                left: 10,
                                                                                right: 10),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Image.asset(
                                                                                      "assets/images/time_icon.png",
                                                                                      height: 15,
                                                                                      width: 15,
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 03,
                                                                                    ),
                                                                                    Text(
                                                                                      "6:00AM-12:30PM",
                                                                                      style: TextStyle(
                                                                                        fontSize: 10,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        color: Theme.of(context).primaryColor,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                // Text(
                                                                                //     "OPEN 24/7",
                                                                                //     style:
                                                                                //         TextStyle(
                                                                                //       fontSize: 12,
                                                                                //       color: Theme.of(context).primaryColor,
                                                                                //     )),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ]),
                                                                  ),
                                                                )
                                                              ],
                                                            ),

                                                            // Padding(
                                                            //   padding: const EdgeInsets.only(
                                                            //       left: 130, top: 120),
                                                            //   child: Row(
                                                            //     children: [
                                                            //       Text(
                                                            //         "Open 24/7",
                                                            //         style: TextStyle(
                                                            //             fontSize: text * 15,
                                                            //             fontWeight: FontWeight.bold),
                                                            //       )
                                                            //     ],
                                                            //   ),
                                                            // )
                                                          ),
                                                        ));
                                                  }),
                                                  StatefulBuilder(builder:
                                                      (BuildContext context,
                                                          StateSetter
                                                              setState) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _oneBeenPressed =
                                                              !_oneBeenPressed;
                                                          _twoBeenPressed =
                                                              false;
                                                          _threeBeenPressed =
                                                              false;
                                                          _fourBeenPressed =
                                                              false;
                                                          _fiveBeenPressed =
                                                              false;
                                                          _sixBeenPressed =
                                                              false;
                                                        });
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 15,
                                                                vertical: 03),
                                                        child: Container(
                                                          height: 70,
                                                          width: width / 1,
                                                          decoration:
                                                              BoxDecoration(

                                                                  // border: Border.all(
                                                                  //   //width: 2,
                                                                  //   color: Colors.black,
                                                                  // ),
                                                                  color: Color(
                                                                      0xffFFFFFF),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16)),
                                                          child: Row(
                                                            children: [
                                                              // Padding(
                                                              //   padding:
                                                              //       const EdgeInsets.only(left: 10),
                                                              //   child: ClipRRect(
                                                              //     borderRadius: BorderRadius.only(
                                                              //         topLeft: Radius.circular(15.0),
                                                              //         bottomLeft:
                                                              //             Radius.circular(15.0)),
                                                              //     child: Image.asset(
                                                              //       "assets/images/sheri-silver-9.png",
                                                              //       fit: BoxFit.cover,
                                                              //       width: 120,
                                                              //       height: 70,
                                                              //     ),
                                                              //   ),
                                                              // ),
                                                              Container(
                                                                height: 120,
                                                                width: 120,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                        "assets/images/sheri-silver-9.png",
                                                                      ),
                                                                      fit: BoxFit.cover),
                                                                  // border: Border.all(
                                                                  //   //width: 2,
                                                                  //   color: Colors.black,
                                                                  // ),
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          242,
                                                                          229,
                                                                          229),
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15.0),
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              15.0)),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          10),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 10),
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Branch1",
                                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                                              ),
                                                                              // SizedBox(
                                                                              //   width: 80,
                                                                              // ),
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    "assets/images/time_icon.png",
                                                                                    height: 15,
                                                                                    width: 15,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 03,
                                                                                  ),
                                                                                  Text(
                                                                                    "6:00AM-12:30PM",
                                                                                    style: TextStyle(
                                                                                      fontSize: 10,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      color: Theme.of(context).primaryColor,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ]),
                                                                      ),
                                                                      Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Image.asset(
                                                                              "assets/images/24-hours@2x.png",
                                                                              width: 30,
                                                                              height: 30),
                                                                          Text(
                                                                              "OPEN 24/7",
                                                                              style: TextStyle(
                                                                                fontSize: 9,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Theme.of(context).primaryColor,
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),

                                                          // Padding(
                                                          //   padding: const EdgeInsets.only(
                                                          //       left: 130, top: 120),
                                                          //   child: Row(
                                                          //     children: [
                                                          //       Text(
                                                          //         "Open 24/7",
                                                          //         style: TextStyle(
                                                          //             fontSize: text * 15,
                                                          //             fontWeight: FontWeight.bold),
                                                          //       )
                                                          //     ],
                                                          //   ),
                                                          // )
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _oneBeenPressed =
                                                            !_oneBeenPressed;
                                                        _twoBeenPressed = false;
                                                        _threeBeenPressed =
                                                            false;
                                                        _fourBeenPressed =
                                                            false;
                                                        _fiveBeenPressed =
                                                            false;
                                                        _sixBeenPressed = false;
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 15,
                                                          vertical: 03),
                                                      child: Container(
                                                        height: 70,
                                                        width: width / 1,
                                                        decoration:
                                                            BoxDecoration(

                                                                // border: Border.all(
                                                                //   //width: 2,
                                                                //   color: Colors.black,
                                                                // ),
                                                                color: Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16)),
                                                        child: Row(
                                                          children: [
                                                            // Padding(
                                                            //   padding:
                                                            //       const EdgeInsets.only(left: 10),
                                                            //   child: ClipRRect(
                                                            //     borderRadius: BorderRadius.only(
                                                            //         topLeft: Radius.circular(15.0),
                                                            //         bottomLeft:
                                                            //             Radius.circular(15.0)),
                                                            //     child: Image.asset(
                                                            //       "assets/images/sheri-silver-9.png",
                                                            //       fit: BoxFit.cover,
                                                            //       width: 120,
                                                            //       height: 70,
                                                            //     ),
                                                            //   ),
                                                            // ),
                                                            Container(
                                                              height: 120,
                                                              width: 120,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                        image:
                                                                            AssetImage(
                                                                          "assets/images/sheri-silver-9.png",
                                                                        ),
                                                                        fit: BoxFit
                                                                            .cover),
                                                                // border: Border.all(
                                                                //   //width: 2,
                                                                //   color: Colors.black,
                                                                // ),
                                                                color: Color(
                                                                    0xffFFFFFF),

                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            15.0),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15.0)),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        10),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.symmetric(horizontal: 10),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Branch1",
                                                                              style: TextStyle(fontWeight: FontWeight.bold),
                                                                            ),
                                                                            // SizedBox(
                                                                            //   width: 80,
                                                                            // ),

                                                                            // Image.asset(
                                                                            //     "assets/images/24-hours.png",
                                                                            //     width:
                                                                            //         40,
                                                                            //     height:
                                                                            //         40),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              5),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            bottom:
                                                                                5,
                                                                            left:
                                                                                10,
                                                                            right:
                                                                                10),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Row(
                                                                              children: [
                                                                                Image.asset(
                                                                                  "assets/images/time_icon.png",
                                                                                  height: 15,
                                                                                  width: 15,
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 03,
                                                                                ),
                                                                                Text(
                                                                                  "6:00AM-12:30PM",
                                                                                  style: TextStyle(
                                                                                    fontSize: 10,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Theme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            // Text(
                                                                            //     "OPEN 24/7",
                                                                            //     style:
                                                                            //         TextStyle(
                                                                            //       fontSize: 12,
                                                                            //       color: Theme.of(context).primaryColor,
                                                                            //     )),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                            )
                                                          ],
                                                        ),

                                                        // Padding(
                                                        //   padding: const EdgeInsets.only(
                                                        //       left: 130, top: 120),
                                                        //   child: Row(
                                                        //     children: [
                                                        //       Text(
                                                        //         "Open 24/7",
                                                        //         style: TextStyle(
                                                        //             fontSize: text * 15,
                                                        //             fontWeight: FontWeight.bold),
                                                        //       )
                                                        //     ],
                                                        //   ),
                                                        // )
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  height: height / 25,
                                  width: width / 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbaa378),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 4,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Color(0xff707070),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _hasBeenPressed = !_hasBeenPressed;
                                      // _oneBeenPressed = false;
                                      // _threeBeenPressed = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      height: 70,
                                      width: width / 1,
                                      decoration: BoxDecoration(
                                          border: _hasBeenPressed
                                              ? Border.all(
                                                  //width: 2,
                                                  color: Colors.black,
                                                )
                                              : Border.all(
                                                  width: 0,
                                                  color: Colors.white,
                                                ),
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Row(
                                        children: [
                                          // Padding(
                                          //   padding:
                                          //       const EdgeInsets.only(left: 10),
                                          //   child: ClipRRect(
                                          //     borderRadius: BorderRadius.only(
                                          //         topLeft: Radius.circular(15.0),
                                          //         bottomLeft:
                                          //             Radius.circular(15.0)),
                                          //     child: Image.asset(
                                          //       "assets/images/sheri-silver-9.png",
                                          //       fit: BoxFit.cover,
                                          //       width: 120,
                                          //       height: 70,
                                          //     ),
                                          //   ),
                                          // ),
                                          Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/sheri-silver-9.png",
                                                  ),
                                                  fit: BoxFit.cover),
                                              // border: Border.all(
                                              //   //width: 2,
                                              //   color: Colors.black,
                                              // ),
                                              color: Color.fromARGB(
                                                  255, 242, 229, 229),
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(15.0),
                                                  bottomLeft:
                                                      Radius.circular(15.0)),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Branch1",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          // SizedBox(
                                                          //   width: 80,
                                                          // ),
                                                          Row(
                                                            children: [
                                                              Image.asset(
                                                                "assets/images/time_icon.png",
                                                                height: 15,
                                                                width: 15,
                                                              ),
                                                              SizedBox(
                                                                width: 03,
                                                              ),
                                                              Text(
                                                                "6:00AM-12:30PM",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ]),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                          "assets/images/24-hours@2x.png",
                                                          width: 30,
                                                          height: 30),
                                                      Text("OPEN 24/7",
                                                          style: TextStyle(
                                                            fontSize: 9,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),

                                      // Padding(
                                      //   padding: const EdgeInsets.only(
                                      //       left: 130, top: 120),
                                      //   child: Row(
                                      //     children: [
                                      //       Text(
                                      //         "Open 24/7",
                                      //         style: TextStyle(
                                      //             fontSize: text * 15,
                                      //             fontWeight: FontWeight.bold),
                                      //       )
                                      //     ],
                                      //   ),
                                      // )
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),

          Positioned(
            bottom: 0.1,
            child: Padding(
              padding: const EdgeInsets.symmetric(),
              child: Container(
                  width: 400,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF).withOpacity(0.7),
                    // border: Border.all(width: 1),
                  ),
                  child: Center(
                      child: Text("CONFIRM",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)))),
            ),
          ),
        ],
      ),
    );
  }
}
