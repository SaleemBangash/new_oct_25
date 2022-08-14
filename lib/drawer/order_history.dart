// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../cartIcon.dart';
import '../minus.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        title: Text(
          "ORDER HISTORY",
          style: TextStyle(fontSize: 17),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Drawer())));
            },
            child: Image.asset("assets/images/back_errow.png")),
      ),
      backgroundColor: const Color(0xffF5ECE3),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
              child: Container(
                height: 150,
                width: 270,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/item.png",
                          height: 130,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 140,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/sheri-silver-1.png",
                    //           ),
                    //           fit: BoxFit.cover),
                    //       // border: Border.all(
                    //       //   //width: 2,
                    //       //   color: Colors.black,
                    //       // ),
                    //       color: Color.fromARGB(255, 242, 229, 229),
                    //       borderRadius: BorderRadius.circular(16)),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    //   child: VerticalDivider(
                    //     color: Color(0xffBAA378),
                    //     thickness: 4,
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ice Cream Box",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ORDER NO # 123456",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffBAA378),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 18,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xff84C5B1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              "TRACK ORDER",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Caramel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color(0xffACACAC)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "extra toping, caramel, cheez\n,same like before, to add extra one",
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffACACAC)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/time_icon@2x.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "8:30 pm /dining".toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "assets/images/pin_icon@2x.png",
                                              height: 20,
                                              width: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PickUp From",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                      Text(
                                                        "No Branch Picked",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                    ]),
                                              ),
                                              // SizedBox(width: 100),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Order Status/',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: 'Preparing',
                                                  style: TextStyle(
                                                      color: Color(0xffBAA378)))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "120 SR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
              child: Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/item.png",
                          height: 130,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 140,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/sheri-silver-1.png",
                    //           ),
                    //           fit: BoxFit.cover),
                    //       // border: Border.all(
                    //       //   //width: 2,
                    //       //   color: Colors.black,
                    //       // ),
                    //       color: Color.fromARGB(255, 242, 229, 229),
                    //       borderRadius: BorderRadius.circular(16)),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    //   child: VerticalDivider(
                    //     color: Color(0xffBAA378),
                    //     thickness: 4,
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ice Cream Box",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ORDER NO # 123456",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffBAA378),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 18,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xff84C5B1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              "TRACK ORDER",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Caramel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color(0xffACACAC)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "extra toping, caramel, cheez\n,same like before, to add extra one",
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffACACAC)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/time_icon@2x.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "8:30 pm /dining".toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "assets/images/pin_icon@2x.png",
                                              height: 20,
                                              width: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PickUp From",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                      Text(
                                                        "No Branch Picked",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                    ]),
                                              ),
                                              // SizedBox(width: 100),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Order Status/',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: 'Preparing',
                                                  style: TextStyle(
                                                      color: Color(0xffBAA378)))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "120 SR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
              child: Container(
                height: 160,
                width: 290,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/item.png",
                          height: 130,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 140,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/sheri-silver-1.png",
                    //           ),
                    //           fit: BoxFit.cover),
                    //       // border: Border.all(
                    //       //   //width: 2,
                    //       //   color: Colors.black,
                    //       // ),
                    //       color: Color.fromARGB(255, 242, 229, 229),
                    //       borderRadius: BorderRadius.circular(16)),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    //   child: VerticalDivider(
                    //     color: Color(0xffBAA378),
                    //     thickness: 4,
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ice Cream Box",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ORDER NO # 123456",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffBAA378),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 18,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xff84C5B1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              "TRACK ORDER",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Caramel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color(0xffACACAC)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "extra toping, caramel, cheez\n,same like before, to add extra one",
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffACACAC)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/time_icon@2x.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "8:30 pm /dining".toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "assets/images/pin_icon@2x.png",
                                              height: 20,
                                              width: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PickUp From",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                      Text(
                                                        "No Branch Picked",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                    ]),
                                              ),
                                              // SizedBox(width: 100),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Order Status/',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: 'Diliverd',
                                                  style: TextStyle(
                                                      color: Color(0xffBAA378)))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "120 SR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
              child: Container(
                height: 160,
                width: 290,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/item.png",
                          height: 130,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 140,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/sheri-silver-1.png",
                    //           ),
                    //           fit: BoxFit.cover),
                    //       // border: Border.all(
                    //       //   //width: 2,
                    //       //   color: Colors.black,
                    //       // ),
                    //       color: Color.fromARGB(255, 242, 229, 229),
                    //       borderRadius: BorderRadius.circular(16)),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    //   child: VerticalDivider(
                    //     color: Color(0xffBAA378),
                    //     thickness: 4,
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ice Cream Box",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ORDER NO # 123456",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffBAA378),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 18,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xff84C5B1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              "TRACK ORDER",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Caramel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color(0xffACACAC)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "extra toping, caramel, cheez\n,same like before, to add extra one",
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffACACAC)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/time_icon@2x.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "8:30 pm /dining".toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "assets/images/pin_icon@2x.png",
                                              height: 20,
                                              width: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PickUp From",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                      Text(
                                                        "No Branch Picked",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                    ]),
                                              ),
                                              // SizedBox(width: 100),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Order Status/',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: 'Rejected',
                                                  style: TextStyle(
                                                      color: Color(0xffBAA378)))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "120 SR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
              child: Container(
                height: 160,
                width: 290,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/item.png",
                          height: 130,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 140,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/sheri-silver-1.png",
                    //           ),
                    //           fit: BoxFit.cover),
                    //       // border: Border.all(
                    //       //   //width: 2,
                    //       //   color: Colors.black,
                    //       // ),
                    //       color: Color.fromARGB(255, 242, 229, 229),
                    //       borderRadius: BorderRadius.circular(16)),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    //   child: VerticalDivider(
                    //     color: Color(0xffBAA378),
                    //     thickness: 4,
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ice Cream Box",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ORDER NO # 123456",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffBAA378),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 18,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xff84C5B1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              "TRACK ORDER",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Caramel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color(0xffACACAC)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "extra toping, caramel, cheez\n,same like before, to add extra one",
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffACACAC)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/time_icon@2x.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "8:30 pm /dining".toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "assets/images/pin_icon@2x.png",
                                              height: 20,
                                              width: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PickUp From",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                      Text(
                                                        "No Branch Picked",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                    ]),
                                              ),
                                              // SizedBox(width: 100),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Order Status/',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: 'Order Confirmed',
                                                  style: TextStyle(
                                                      color: Color(0xffBAA378)))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "120 SR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
              child: Container(
                height: 160,
                width: 290,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/item.png",
                          height: 130,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 140,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/sheri-silver-1.png",
                    //           ),
                    //           fit: BoxFit.cover),
                    //       // border: Border.all(
                    //       //   //width: 2,
                    //       //   color: Colors.black,
                    //       // ),
                    //       color: Color.fromARGB(255, 242, 229, 229),
                    //       borderRadius: BorderRadius.circular(16)),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    //   child: VerticalDivider(
                    //     color: Color(0xffBAA378),
                    //     thickness: 4,
                    //   ),
                    // ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ice Cream Box",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ORDER NO # 123456",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffBAA378),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 18,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Color(0xff84C5B1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              "TRACK ORDER",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Caramel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Color(0xffACACAC)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Text(
                                  "extra toping, caramel, cheez\n,same like before, to add extra one",
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffACACAC)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/time_icon@2x.png",
                                      height: 17,
                                      width: 17,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "8:30 pm /dining".toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "assets/images/pin_icon@2x.png",
                                              height: 20,
                                              width: 20),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PickUp From",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                      Text(
                                                        "No Branch Picked",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8),
                                                      ),
                                                    ]),
                                              ),
                                              // SizedBox(width: 100),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Order Status/',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: 'Order Placed',
                                                  style: TextStyle(
                                                      color: Color(0xffBAA378)))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "120 SR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
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
          ],
        ),
      ),
    );
  }
}
