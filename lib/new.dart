// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "250ct",
        //   style: TextStyle(color: Colors.black),
        // ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 90,
        automaticallyImplyLeading: false, // Set this height
        flexibleSpace: Container(
          // color: Colors.orange,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        "25OCT",
                        style: TextStyle(
                            fontSize: text * 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Select Branch (From map)",
                      style: TextStyle(
                          fontSize: text * 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: ElevatedButton(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            // fontSize: text * 15,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        style: TextButton.styleFrom(
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(12)),

                            //StadiumBorder(),
                            minimumSize: Size(60, 20),
                            maximumSize: Size(100, 20),
                            backgroundColor: Color(0xffbaa378)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                    "assets/images/map4.png",
                    height: height / 2,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(children: [
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
                  padding: const EdgeInsets.only(top: 280),
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
                                                color: Colors.transparent,
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
                                                            height: 5,
                                                            width: width / 3.5,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Text(
                                                      "Select Branch(Manually)",
                                                      style: TextStyle(
                                                          fontSize: text * 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Container(
                                                      height: height / 4.5,
                                                      width: width / 1,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            //width: 2,
                                                            color: Colors.black,
                                                          ),
                                                          color:
                                                              Colors.grey[350],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              35),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/sheri-silver-9.png",
                                                                    width:
                                                                        width /
                                                                            3.5,
                                                                    height:
                                                                        height /
                                                                            4,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 20),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Branch1",
                                                                  // style: TextStyle(
                                                                  //     fontSize:
                                                                  //         // text *
                                                                  //         //     15
                                                                  //             ),
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 110,
                                                                    top: 50),
                                                            child: Row(
                                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                                  child: Text(
                                                                    "City",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text *
                                                                                15),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 40),
                                                                  child:
                                                                      ElevatedButton(
                                                                    child: Text(
                                                                      "Select",
                                                                      style: TextStyle(
                                                                          // fontSize: text *
                                                                          //     15,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.bold),
                                                                    ),
                                                                    style: TextButton.styleFrom(
                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                                                                        //StadiumBorder(),
                                                                        // minimumSize: Size(60, 30),
                                                                        // maximumSize: Size(100, 30),
                                                                        backgroundColor: Color(0xffbaa378)),
                                                                    onPressed:
                                                                        () {
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 120),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      height /
                                                                          19,
                                                                  width:
                                                                      width / 5,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          400],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12)),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                          Icons
                                                                              .add_location,
                                                                          size:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                      Text(
                                                                        "200KM",
                                                                        style: TextStyle(
                                                                            // fontSize: text *
                                                                            //     10,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: width /
                                                                      25,
                                                                ),
                                                                Text(
                                                                  "Open 24/7",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          text *
                                                                              15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Container(
                                                      height: height / 4.5,
                                                      width: width / 1,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            //width: 2,
                                                            color: Colors.black,
                                                          ),
                                                          color:
                                                              Colors.grey[350],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              35),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/sheri-silver-9.png",
                                                                    width:
                                                                        width /
                                                                            3.5,
                                                                    height:
                                                                        height /
                                                                            4,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 20),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Branch1",
                                                                  style: TextStyle(
                                                                      // fontSize:
                                                                      //     text *
                                                                      //         15
                                                                      ),
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 110,
                                                                    top: 50),
                                                            child: Row(
                                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                                  child: Text(
                                                                    "City",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text *
                                                                                15),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 40),
                                                                  child:
                                                                      ElevatedButton(
                                                                    child: Text(
                                                                      "Select",
                                                                      style: TextStyle(
                                                                          // fontSize: text *
                                                                          //     15,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.bold),
                                                                    ),
                                                                    style: TextButton.styleFrom(
                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                                                                        //StadiumBorder(),
                                                                        // minimumSize: Size(60, 30),
                                                                        // maximumSize: Size(100, 30),
                                                                        backgroundColor: Color(0xffbaa378)),
                                                                    onPressed:
                                                                        () {
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 120),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      height /
                                                                          19,
                                                                  width:
                                                                      width / 5,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          400],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12)),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                          Icons
                                                                              .add_location,
                                                                          size:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                      Text(
                                                                        "200KM",
                                                                        style: TextStyle(
                                                                            // fontSize: text *
                                                                            //     10,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: width /
                                                                      25,
                                                                ),
                                                                Text(
                                                                  "Open 24/7",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          text *
                                                                              15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Container(
                                                      height: height / 4.5,
                                                      width: width / 1,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            //width: 2,
                                                            color: Colors.black,
                                                          ),
                                                          color:
                                                              Colors.grey[350],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              35),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/sheri-silver-9.png",
                                                                    width:
                                                                        width /
                                                                            3.5,
                                                                    height:
                                                                        height /
                                                                            4,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 20),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Branch1",
                                                                  style: TextStyle(
                                                                      // fontSize:
                                                                      //     text *
                                                                      //         15
                                                                      ),
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 110,
                                                                    top: 50),
                                                            child: Row(
                                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                                  child: Text(
                                                                    "City",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text *
                                                                                15),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 40),
                                                                  child:
                                                                      ElevatedButton(
                                                                    child: Text(
                                                                      "Select",
                                                                      style: TextStyle(
                                                                          // fontSize: text *
                                                                          //     15,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.bold),
                                                                    ),
                                                                    style: TextButton.styleFrom(
                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                                                                        //StadiumBorder(),
                                                                        // minimumSize: Size(60, 30),
                                                                        // maximumSize: Size(100, 30),
                                                                        backgroundColor: Color(0xffbaa378)),
                                                                    onPressed:
                                                                        () {
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 120),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      height /
                                                                          19,
                                                                  width:
                                                                      width / 5,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          400],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12)),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                          Icons
                                                                              .add_location,
                                                                          size:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                      Text(
                                                                        "200KM",
                                                                        style: TextStyle(
                                                                            // fontSize: text *
                                                                            //     10,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: width /
                                                                      25,
                                                                ),
                                                                Text(
                                                                  "Open 24/7",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          text *
                                                                              15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Container(
                                                      height: height / 4.5,
                                                      width: width / 1,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            //width: 2,
                                                            color: Colors.black,
                                                          ),
                                                          color:
                                                              Colors.grey[350],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              35),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/sheri-silver-9.png",
                                                                    width:
                                                                        width /
                                                                            3.5,
                                                                    height:
                                                                        height /
                                                                            4,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 20),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Branch1",
                                                                  style: TextStyle(
                                                                      // fontSize:
                                                                      //     text *
                                                                      //         15
                                                                      ),
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 110,
                                                                    top: 50),
                                                            child: Row(
                                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                                  child: Text(
                                                                    "City",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text *
                                                                                15),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 40),
                                                                  child:
                                                                      ElevatedButton(
                                                                    child: Text(
                                                                      "Select",
                                                                      style: TextStyle(
                                                                          // fontSize: text *
                                                                          //     15,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.bold),
                                                                    ),
                                                                    style: TextButton.styleFrom(
                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                                                                        //StadiumBorder(),
                                                                        // minimumSize: Size(60, 30),
                                                                        // maximumSize: Size(100, 30),
                                                                        backgroundColor: Color(0xffbaa378)),
                                                                    onPressed:
                                                                        () {
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 120),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      height /
                                                                          19,
                                                                  width:
                                                                      width / 5,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          400],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12)),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                          Icons
                                                                              .add_location,
                                                                          size:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                      Text(
                                                                        "200KM",
                                                                        style: TextStyle(
                                                                            // fontSize: text *
                                                                            //     10,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: width /
                                                                      25,
                                                                ),
                                                                Text(
                                                                  "Open 24/7",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          text *
                                                                              15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Container(
                                                      height: height / 4.5,
                                                      width: width / 1,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            //width: 2,
                                                            color: Colors.black,
                                                          ),
                                                          color:
                                                              Colors.grey[350],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              35),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/sheri-silver-9.png",
                                                                    width:
                                                                        width /
                                                                            3.5,
                                                                    height:
                                                                        height /
                                                                            4,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 20),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Branch1",
                                                                  // style: TextStyle(
                                                                  //     fontSize:
                                                                  //         text *
                                                                  //             15
                                                                  //             ),
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 110,
                                                                    top: 50),
                                                            child: Row(
                                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                                  child: Text(
                                                                    "City",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text *
                                                                                15),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 40),
                                                                  child:
                                                                      ElevatedButton(
                                                                    child: Text(
                                                                      "Select",
                                                                      style: TextStyle(
                                                                          // fontSize: text *
                                                                          //     15,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.bold),
                                                                    ),
                                                                    style: TextButton.styleFrom(
                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                                                                        //StadiumBorder(),
                                                                        // minimumSize: Size(60, 30),
                                                                        // maximumSize: Size(100, 30),
                                                                        backgroundColor: Color(0xffbaa378)),
                                                                    onPressed:
                                                                        () {
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
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 130,
                                                                    top: 120),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      height /
                                                                          19,
                                                                  width:
                                                                      width / 5,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          400],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12)),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                          Icons
                                                                              .add_location,
                                                                          size:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                      Text(
                                                                        "200KM",
                                                                        style: TextStyle(
                                                                            // fontSize: text *
                                                                            //     10,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: width /
                                                                      25,
                                                                ),
                                                                Text(
                                                                  "Open 24/7",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          text *
                                                                              15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
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
                                          height: 5,
                                          width: width / 3.5,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Select Branch(Manually)",
                                  style: TextStyle(
                                      fontSize: text * 15,
                                      fontWeight: FontWeight.bold),
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
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(35),
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
                                        padding: const EdgeInsets.only(
                                            left: 130, top: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Branch1",
                                              // style: TextStyle(
                                              //     fontSize: text * 15),
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
                                        padding: const EdgeInsets.only(
                                            left: 110, top: 50),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30),
                                              child: Text(
                                                "City",
                                                style: TextStyle(
                                                    fontSize: text * 15),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: ElevatedButton(
                                                child: Text(
                                                  "Select",
                                                  style: TextStyle(
                                                      // fontSize: text * 15,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                style: TextButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),

                                                    //StadiumBorder(),
                                                    minimumSize: Size(60, 30),
                                                    maximumSize: Size(100, 30),
                                                    backgroundColor:
                                                        Color(0xffbaa378)),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Cart()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 130, top: 120),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: height / 19,
                                              width: width / 5,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[400],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.add_location,
                                                      size: 20,
                                                      color: Colors.black),
                                                  Text(
                                                    "200KM",
                                                    style: TextStyle(
                                                        // fontSize: text * 10,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
