// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_oct_25/IceCream/chocolate.dart';
import 'package:new_oct_25/IceCream/strawberry.dart';
import 'package:new_oct_25/IceCream/vanila.dart';
import 'package:new_oct_25/Favourite.dart';
import 'package:new_oct_25/cartIcon.dart';

import '../Cart.dart';

// import 'Cart.dart';

class IceCream extends StatefulWidget {
  const IceCream({Key? key}) : super(key: key);

  @override
  _IceCreamState createState() => _IceCreamState();
}

class _IceCreamState extends State<IceCream> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: ListView(
        children: [
          Scrollbar(
              child: SingleChildScrollView(
                  child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vanilla()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset("assets/images/sheri-silver-1.png"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  backgroundColor: Color(0xffbaa378),
                                  child: CartIcon()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 110, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 150, left: 50),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "Vanilla",
                                    // style: TextStyle(
                                    //     // fontSize: text * 14,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "20.00SR",
                                    // style: TextStyle(
                                    //     // fontSize: text * 14,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                          ])),
                    ),
                    SizedBox(
                      width: width / 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Chocolate()),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          // borderRadius: BorderRadius.only(
                          //   bottomLeft: Radius.circular(40.0),
                          //   bottomRight: Radius.circular(40.0),
                          // ),
                        ),
                        width: width / 2.6,
                        height: height / 4.45,
                        child: Card(
                          color: Colors.grey[200],

                          // elevation: 10.0,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/sheri-silver-2.png",
                                    height: 120,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                        backgroundColor: Color(0xffbaa378),
                                        child: CartIcon()),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 70, left: 100),
                                    child: Favourite(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Chocolate",
                                // style: TextStyle(
                                //     fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "20.00SR",
                                // style: TextStyle(
                                //     // fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        // decoration: BoxDecoration(
                        //     color: Colors.grey,
                        //     borderRadius: BorderRadius.circular(22)),
                        // width: width / 2.5,
                        // height: height / 3.9,
                        // child: Stack(children: <Widget>[
                        //   Image.asset("assets/images/sheri-silver-2.png"),
                        //   Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: CircleAvatar(
                        //       backgroundColor: Color(0xffbaa378),
                        //       child: IconButton(
                        //         icon: Icon(
                        //           Icons.shopping_bag_outlined,
                        //           color: Colors.white,
                        //         ),
                        //         onPressed: () => Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) => Cart())),
                        //       ),
                        //     ),
                        //   ),
                        //   Padding(
                        //     padding:
                        //         const EdgeInsets.only(top: 110, left: 110),
                        //     child: Favourite(),
                        //   ),
                        //   // SizedBox(
                        //   //   height: height / 93,
                        //   // ),
                        //   Padding(
                        //     padding:
                        //         const EdgeInsets.only(top: 150, left: 40),
                        //     child: Column(
                        //       children: [
                        //         // Favourite(),
                        //         Text(
                        //           "Chocolate",
                        //           // style: TextStyle(
                        //           //     fontSize: text * 14,
                        //           //     fontWeight: FontWeight.bold),
                        //         ),
                        //         Text(
                        //           "20.00SR",
                        //           // style: TextStyle(
                        //           //     fontSize: text * 14,
                        //           //     fontWeight: FontWeight.bold),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        //   // SizedBox(
                        //   //   height: height / 93,
                        //   // ),
                        // ])
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 41,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vanilla()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset("assets/images/sheri-silver-1.png"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart())),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 110, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 150, left: 50),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "Vanilla",
                                    // style: TextStyle(
                                    //     fontSize: text * 14,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "20.00SR",
                                    // style: TextStyle(
                                    //     fontSize: text * 14,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                          ])),
                    ),
                    SizedBox(
                      width: width / 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Strawberry()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset("assets/images/sheri-silver-7.png"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart())),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 110, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 150, left: 40),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "StrawBerry",
                                    // style: TextStyle(
                                    //     fontSize: text * 14,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "20.00SR",
                                    // style: TextStyle(
                                    //     fontSize: text * 14,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                          ])),
                    ),
                  ],
                ),

                // Row(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //           color: Colors.grey,
                //           borderRadius: BorderRadius.circular(22)),
                //       width: width / 2.3,
                //       height: height / 3.5,
                //       child: Column(children: <Widget>[
                //         Image.asset("assets/images/sheri-silver-1.png"),
                //         SizedBox(
                //           height: height / 93,
                //         ),
                //         Text(
                //           "Strawberry",
                //           style: TextStyle(
                //               fontSize: text * 20, fontWeight: FontWeight.bold),
                //         ),
                //         SizedBox(
                //           height: height / 93,
                //         ),
                //         Text(
                //           "20.00SR",
                //           style: TextStyle(
                //               fontSize: text * 17, fontWeight: FontWeight.bold),
                //         ),
                //       ]),
                //     ),
                //     SizedBox(
                //       width: width / 20,
                //     ),
                //     Container(
                //         decoration: BoxDecoration(
                //             color: Colors.grey,
                //             borderRadius: BorderRadius.circular(22)),
                //         width: width / 2.3,
                //         height: height / 3.5,
                //         child: Column(children: <Widget>[
                //           Image.asset("assets/images/sheri-silver-7.png"),
                //           SizedBox(
                //             height: height / 93,
                //           ),
                //           Text(
                //             "Strawberry",
                //             style: TextStyle(
                //                 fontSize: text * 20,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //           SizedBox(
                //             height: height / 93,
                //           ),
                //           Text(
                //             "20.00SR",
                //             style: TextStyle(
                //                 fontSize: text * 17,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ])),
                //   ],
                // ),
                // SizedBox(
                //   height: height / 41,
                // ),
                // Row(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //           color: Colors.grey,
                //           borderRadius: BorderRadius.circular(22)),
                //       width: width / 2.3,
                //       height: height / 3.5,
                //       child: Column(children: <Widget>[
                //         Image.asset("assets/images/sheri-silver-2.png"),
                //         SizedBox(
                //           height: height / 93,
                //         ),
                //         Text(
                //           "Chocolate",
                //           style: TextStyle(
                //               fontSize: text * 20, fontWeight: FontWeight.bold),
                //         ),
                //         SizedBox(
                //           height: height / 93,
                //         ),
                //         Text(
                //           "20.00SR",
                //           style: TextStyle(
                //               fontSize: text * 17, fontWeight: FontWeight.bold),
                //         ),
                //       ]),
                //     ),
                //     SizedBox(
                //       width: width / 20,
                //     ),
                //     Container(
                //         decoration: BoxDecoration(
                //             color: Colors.grey,
                //             borderRadius: BorderRadius.circular(22)),
                //         width: width / 2.3,
                //         height: height / 3.5,
                //         child: Column(children: <Widget>[
                //           Image.asset("assets/images/sheri-silver-1.png"),
                //           SizedBox(
                //             height: height / 93,
                //           ),
                //           Text(
                //             "Strawberry",
                //             style: TextStyle(
                //                 fontSize: text * 20,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //           SizedBox(
                //             height: height / 93,
                //           ),
                //           Text(
                //             "20.00SR",
                //             style: TextStyle(
                //                 fontSize: text * 17,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ])),
                //   ],
                // ),
              ],
            ),
          ))),
        ],
      ),
    );
  }
}
