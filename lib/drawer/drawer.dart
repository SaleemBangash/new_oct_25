// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:new_oct_25/Location.dart';
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
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xffbaa378),
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
            DrawerHeader(
                child: Center(
              child: Text(
                "25OCT",
                style: TextStyle(
                    fontSize: text * 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
                //     child: Row(
                //   children: [
                //     CircleAvatar(
                //       radius: 43,
                //       backgroundColor: Colors.black,
                //       child: CircleAvatar(
                //         radius: 40,
                //         backgroundColor: Colors.white,
                //       ),
                //     ),
                //     Divider(
                //       height: 10,
                //       color: Colors.black,
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text("Welcome"),
                //         SizedBox(
                //           height: 10,
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Container(
                //             height: 30,
                //             child: OutlineButton(
                //               onPressed: () {},
                //               child: Text("Login"),
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(12),
                //                   side: BorderSide(width: 2)),
                //             ),
                //           ),
                //         )
                //       ],
                //     )
                //   ],
                // )
                ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signin2())),
                child: ListTile(
                    leading: Icon(
                      Icons.login,
                      size: 20,
                    ),
                    title: Text(
                      "SignIn",
                      style: TextStyle(
                          // fontSize: text * 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register1())),
                child: ListTile(
                    leading: Icon(
                      Icons.app_registration,
                      size: 20,
                    ),
                    title: Text(
                      "Registration",
                      style: TextStyle(
                          // fontSize: text * 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => New())),
                child: ListTile(
                    leading: Icon(
                      Icons.headphones,
                      size: 20,
                    ),
                    title: Text(
                      "Customer Care",
                      style: TextStyle(
                          // fontSize: text * 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => New())),
                child: ListTile(
                    leading: Icon(
                      Icons.person_pin,
                      size: 20,
                    ),
                    title: Text(
                      "Branches",
                      style: TextStyle(
                          // fontSize: text * 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settings())),
                child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 20,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          // fontSize: text * 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
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
