// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:new_oct_25/Checkout.dart';
import 'package:new_oct_25/bottomsheet.dart';
import 'package:new_oct_25/cartIcon.dart';
import 'package:new_oct_25/drawer/Signin2.dart';
import 'package:new_oct_25/minus.dart';
import 'package:new_oct_25/new.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class OrderDetail extends StatefulWidget {
  OrderDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  int _currentIndex = 0;
  int _itemCount = 0;
  bool aChecked = false;
  bool bChecked = false;
  bool isChecked = false;
  int _currentStep = 0;

  // Determines whether the stepper's orientation is vertical or horizontal
  // This variable can be changed by using the switch below
  bool _isVerticalStepper = true;

  // This function will be triggered when a step is tapped
  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  // This function will be called when the continue button is tapped
  _stepContinue() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  // This function will be called when the cancel button is tapped
  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xfffF5ECE3),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "order detail".toUpperCase(),
          style: TextStyle(fontSize: 17),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => New())));
            },
            child: Image.asset("assets/images/back_errow.png")),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ordere number".toUpperCase(),
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffACACAC),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "#25462465".toUpperCase(),
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffACACAC),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(

                      // border: Border.all(
                      //   //width: 2,
                      //   color: Colors.black,
                      // ),

                      color: Color(0xffFFF8F0),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "order tracking".toUpperCase(),
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff82C5B1C),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "9:30 PM".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "order time".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff707070),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: Image.asset(
                              "assets/images/splash_icon.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "9:30 PM".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Deliever time".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff707070),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "ordered items".toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffACACAC),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 250,
                width: 370,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "items & quantity".toUpperCase(),
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffBAA378),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "price".toUpperCase(),
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffBAA378),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ice Cream with Cramil",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "x3",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xffBAA378),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "120 SA",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Regular",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffACACAC),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ice Cream                     ",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "x3",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xffBAA378),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "120 SA",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Large",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffACACAC),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "COD",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "15 SR",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VAT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "0.0 SR",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "120 SA",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffBAA378),
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "135 SA".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffBAA378),
                                fontSize: 17),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 70,
                width: 370,
                decoration: BoxDecoration(

                    // border: Border.all(
                    //   //width: 2,
                    //   color: Colors.black,
                    // ),

                    color: Color(0xffFFF8F0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Status",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff474747),
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "COD",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff474747),
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff474747),
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Sending",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff474747),
                                fontSize: 17),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffBAA378),
                      // border: Border.all(width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "255 SA".toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Total is inclusive of VAT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Bottomsheet()
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
