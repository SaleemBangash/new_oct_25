// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:new_oct_25/Checkout.dart';
import 'package:new_oct_25/bottomsheet.dart';
import 'package:new_oct_25/cartIcon.dart';
import 'package:new_oct_25/minus.dart';
import 'package:new_oct_25/new.dart';
import 'package:new_oct_25/paymentmethod.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';

import './Wishlist.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

import 'Iconawesomeheart.dart';

class Cart extends StatefulWidget {
  Cart({
    Key? key,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _currentIndex = 0;
  int _itemCount = 0;
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
          "Your Cart".toUpperCase(),
          style: TextStyle(fontSize: 17),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => New())));
            },
            child: Image.asset("assets/images/back_errow.png")),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                              Image.asset("assets/images/drop_arrow.png",
                                  height: 40, width: 40),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xffFFF8F0),
                  // border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "time to picup /dining".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffACACAC)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/time_icon@2x.png",
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "8:30 pm /dining".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                        "assets/images/sheri-silver-1.png",
                        height: 120,
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
                                  CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    radius: 10,
                                    child: Icon(
                                      Icons.close,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: Text(
                                "Caramel",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
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
                                  const EdgeInsets.only(left: 15, right: 20),
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
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Divider(
                                      //   thickness: 10,
                                      //   // endIndent: 200,
                                      //   color: Colors.black,
                                      // ),
                                      Text(
                                        "120 SR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Minus()
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

          SizedBox(
            height: 5.0,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 05),
            child: SizedBox(
              // margin: EdgeInsets.all(12),
              height: 50,
              width: 200,

              child: TextFormField(
                maxLines: 3,
                style: TextStyle(
                  color: Colors.white,
                  // fontSize: 30,
                  //height: 1.5
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  //fillColor: Colors.grey[300],
                  //suffixText: "@gmail.com",
                  prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 40, left: 20),
                      child: Image.asset("assets/images/voucher.png",
                          height: 30, width: 30)),
                  filled: true,
                  fillColor: Color(0xffFFF8F0),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PaymentMethod())));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        height: 10,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xff84C5B1),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Text(
                            "Apply Code",
                            style: TextStyle(
                                // fontSize: text * 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // labelStyle: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.bold),

                  //labelText: "Enter PickUp Time",
                  labelStyle: TextStyle(
                      color: Color(0xffACACAC),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  labelText: "Enter Coupon Code",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                  contentPadding: EdgeInsets.only(left: 20),
                ),
                // validator: (email) {
                //   if (isEmailValid("email"))
                //     return null;
                //   else
                //     return 'Enter a valid email address';
                // },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xffFFF8F0),
                  // border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "0.00 SA".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 40),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.transparent,
          //       border: Border.all(
          //         color: Colors.black,
          //       ),
          //     ),
          //     width: width / 1.0,
          //     height: 80,
          //     child: Center(
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ConfirmationSlider(
          //           height: 54.0,
          //           width: 250,
          //           backgroundColor: Color(0xffbaa378),
          //           foregroundColor: Colors.black87,
          //           backgroundShape: BorderRadius.circular(10),
          //           foregroundShape: BorderRadius.circular(16),
          //           text: "Swipe To Order",
          //           textStyle: TextStyle(
          //               fontSize: text * 17,
          //               color: Colors.white,
          //               fontWeight: FontWeight.bold),
          //           onConfirmation: () => Navigator.push(context,
          //               MaterialPageRoute(builder: (context) => Checkout())),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
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
