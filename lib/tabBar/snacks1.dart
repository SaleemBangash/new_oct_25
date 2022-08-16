// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_oct_25/snacks/cheetos.dart';
import 'package:new_oct_25/snacks/doritos.dart';
import 'package:new_oct_25/snacks/kurkure.dart';
import 'package:new_oct_25/snacks/lays.dart';

import '../Favourite.dart';
import '../screens/Cart.dart';
// import 'Cart.dart';
// import 'Favourite.dart';

class Snacks1 extends StatefulWidget {
  const Snacks1({Key? key}) : super(key: key);

  @override
  _Snacks1State createState() => _Snacks1State();
}

class _Snacks1State extends State<Snacks1> {
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
                        MaterialPageRoute(builder: (context) => Lays()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              "assets/images/lays.jpg",
                              height: height / 5,
                              fit: BoxFit.fitHeight,
                            ),
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
                                  const EdgeInsets.only(top: 130, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 160, left: 50),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "Lays",
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
                        MaterialPageRoute(builder: (context) => Doritos()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              "assets/images/doritos.jpg",
                              height: height / 5,
                              fit: BoxFit.fitHeight,
                            ),
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
                                  const EdgeInsets.only(top: 130, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 160, left: 50),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "Doritos",
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
                SizedBox(
                  height: height / 41,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cheetos()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              "assets/images/cheetos.jpg",
                              height: height / 5,
                              fit: BoxFit.fitHeight,
                            ),
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
                                  const EdgeInsets.only(top: 130, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 160, left: 50),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "Cheetos",
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
                        MaterialPageRoute(builder: (context) => KurKure()),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.5,
                          height: height / 3.9,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              "assets/images/kurkure.jpg",
                              height: height / 5,
                              fit: BoxFit.fitHeight,
                            ),
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
                                  const EdgeInsets.only(top: 130, left: 110),
                              child: Favourite(),
                            ),
                            // SizedBox(
                            //   height: height / 93,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 160, left: 50),
                              child: Column(
                                children: [
                                  // Favourite(),
                                  Text(
                                    "Kurkure",
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
