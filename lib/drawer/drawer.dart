// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adobe_xd/page_link.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_oct_25/Location.dart';
import 'package:new_oct_25/account.dart';
import 'package:new_oct_25/customer_care.dart';
import 'package:new_oct_25/drawer/order_detail.dart';
import 'package:new_oct_25/drawer/order_history.dart';
// import 'package:new_oct_25/Register1.dart';
// import 'package:new_oct_25/Signin2.dart';
import 'package:new_oct_25/drawer/settings.dart';

import 'package:new_oct_25/new.dart';
// import 'package:new_oct_25/settings.dart';

import '../Home.dart';
// import 'Home.dart';
import 'Register1.dart';
import 'Signin2.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int? groupValue = 0;
  bool _type = false;
  bool _typee = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Drawer(
      child: Container(
        color: Color(0xffbaa378),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/menu_logo.png"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "ROYAT CAFE",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome Back,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Muhammad Qurashi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff474747)),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 20),
            //         child: PageLink(
            //           links: [
            //             PageLinkInfo(
            //               transition: LinkTransition.Fade,
            //               ease: Curves.easeOut,
            //               duration: 0.3,
            //               pageBuilder: () => Home(),
            //             ),
            //           ],
            //           child: CircleAvatar(
            //               backgroundColor: Colors.black,
            //               child: Icon(
            //                 Icons.arrow_back,
            //                 color: Color(0xffbaa378),
            //               )),
            //         ),
            //       ),
            //       // Padding(
            //       //   padding: const EdgeInsets.only(right: 20),
            //       //   child: Icon(
            //       //     Icons.add_alert_rounded,
            //       //   ),
            //       // )
            //     ],
            //   ),

            // ),
            // DrawerHeader(
            //     child: Column(
            //   // mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Image.asset("assets/images/menu_logo.png"),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Text(
            //       "ROYAT CAFE",
            //       style: TextStyle(color: Colors.black, fontSize: 20),
            //     ),
            //     Text(
            //       "Welcome Back,",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //           fontSize: 17,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //     Text(
            //       "Fida Qurashi",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //           fontSize: 17,
            //           fontWeight: FontWeight.bold,
            //           color: Color(0xff474747)),
            //     ),
            //   ],
            // )

            //     //     child: Row(
            //     //   children: [
            //     //     CircleAvatar(
            //     //       radius: 43,
            //     //       backgroundColor: Colors.black,
            //     //       child: CircleAvatar(
            //     //         radius: 40,
            //     //         backgroundColor: Colors.white,
            //     //       ),
            //     //     ),
            //     //     Divider(
            //     //       height: 10,
            //     //       color: Colors.black,
            //     //     ),
            //     //     Column(
            //     //       mainAxisAlignment: MainAxisAlignment.center,
            //     //       children: [
            //     //         Text("Welcome"),
            //     //         SizedBox(
            //     //           height: 10,
            //     //         ),
            //     //         Padding(
            //     //           padding: const EdgeInsets.all(8.0),
            //     //           child: Container(
            //     //             height: 30,
            //     //             child: OutlineButton(
            //     //               onPressed: () {},
            //     //               child: Text("Login"),
            //     //               shape: RoundedRectangleBorder(
            //     //                   borderRadius: BorderRadius.circular(12),
            //     //                   side: BorderSide(width: 2)),
            //     //             ),
            //     //           ),
            //     //         )
            //     //       ],
            //     //     )
            //     //   ],
            //     // )
            //     ),

            Padding(
              padding: const EdgeInsets.all(1.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderHistory())),
                child: ListTile(
                    title: Center(
                  child: Text(
                    "Order History",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderDetail())),
                child: ListTile(
                    title: Center(
                  child: Text(
                    "Order Detail",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CustomerCare())),
              child: ListTile(
                  title: Center(
                child: Text(
                  "Customer Care",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountDetails())),
              child: ListTile(
                  title: Center(
                child: Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register1())),
              child: ListTile(
                  title: Center(
                child: Text(
                  "Favorites",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => settings())),
              child: ListTile(
                  title: Center(
                child: Text(
                  "Branches",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
            ),
            SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              // padding: EdgeInsets.all(12.0),
              child: CupertinoSlidingSegmentedControl<int>(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                thumbColor: Colors.black,
                padding: EdgeInsets.all(10.0),
                groupValue: groupValue,
                children: {
                  0: Text(
                    "العربي",
                    style: TextStyle(
                        fontSize: 16,
                        color: _type ? Colors.black : Colors.white),
                  ),
                  1: Text(
                    "English",
                    style: TextStyle(
                        fontSize: 16,
                        color: _typee ? Colors.white : Colors.black),
                  ),
                },
                onValueChanged: (value) {
                  setState(() {
                    _type = !_type;
                    _typee = !_typee;
                    groupValue = value;
                  });
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/twitter.png",
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/snapchat.png"),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/instagram.png"),
              ],
            ),

            // listTile(icon: Icons.app_registration_outlined, title: "Register"),
            // listTile(icon: Icons.person_pin, title: "Customer Care"),
            // listTile(icon: Icons.post_add_rounded, title: "Branches"),
            // listTile(icon: Icons.settings, title: "Settings"),

            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   height: 350,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text("Contact Support"),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         children: [
            //           Text("Call Us At:"),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Text("1234678")
            //         ],
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         children: [
            //           Text("Email Us At:"),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Text("abc@gmail.com")
            //         ],
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget buildSegment(String text) {
    return Container(
      child: Text(
        text,
        style:
            TextStyle(fontSize: 22, color: _type ? Colors.black : Colors.white),
      ),
    );
  }
}

listTile({required IconData icon, required String title}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 20,
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}
