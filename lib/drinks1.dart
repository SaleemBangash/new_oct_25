import 'package:flutter/material.dart';
import 'package:new_oct_25/Drinks/cocacola.dart';
import 'package:new_oct_25/Drinks/dew.dart';
import 'package:new_oct_25/Drinks/redbull.dart';
import 'package:new_oct_25/Drinks/sprite.dart';

class Drinks1 extends StatefulWidget {
  const Drinks1({Key? key}) : super(key: key);

  @override
  _Drinks1State createState() => _Drinks1State();
}

class _Drinks1State extends State<Drinks1> {
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
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dew())),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(22)),
                      width: width / 2.3,
                      height: height / 3.5,
                      child: Column(children: <Widget>[
                        Image.asset(
                          "assets/images/dew.jpg",
                          height: height / 4.6,
                          fit: BoxFit.cover,
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "Dew",
                          style: TextStyle(
                              fontSize: text * 16, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "20.00SR",
                          style: TextStyle(
                              fontSize: text * 15, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: width / 20,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sprite())),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset(
                            "assets/images/sprite.jpg",
                            height: height / 4.6,
                            fit: BoxFit.cover,
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "Sprite",
                            style: TextStyle(
                                fontSize: text * 16,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold),
                          ),
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
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RedBull())),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(22)),
                      width: width / 2.3,
                      height: height / 3.5,
                      child: Column(children: <Widget>[
                        Image.asset(
                          "assets/images/red.jpg",
                          height: height / 4.6,
                          fit: BoxFit.cover,
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "Red Bull",
                          style: TextStyle(
                              fontSize: text * 16, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "20.00SR",
                          style: TextStyle(
                              fontSize: text * 15, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: width / 20,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CocaCola())),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset("assets/images/cocaCola.jpg"),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "CocaCola",
                            style: TextStyle(
                                fontSize: text * 16,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              SizedBox(
                height: height / 41,
              ),
              //   Row(
              //     children: [
              //       Container(
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
              //                 fontSize: text * 16, fontWeight: FontWeight.bold),
              //           ),
              //           SizedBox(height: height / 93),
              //           Text(
              //             "20.00SR",
              //             style: TextStyle(
              //                 fontSize: text * 15, fontWeight: FontWeight.bold),
              //           ),
              //         ]),
              //       ),
              //       SizedBox(
              //         width: width / 20,
              //       ),
              //       Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey,
              //               borderRadius: BorderRadius.circular(22)),
              //           width: width / 2.3,
              //           height: height / 3.5,
              //           child: Column(children: <Widget>[
              //             Image.asset("assets/images/sheri-silver-7.png"),
              //             SizedBox(
              //               height: height / 93,
              //             ),
              //             Text(
              //               "Strawberry",
              //               style: TextStyle(
              //                   fontSize: text * 20,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: height / 93,
              //             ),
              //             Text(
              //               "20.00SR",
              //               style: TextStyle(
              //                   fontSize: text * 17,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           ])),
              //     ],
              //   ),
              //   SizedBox(
              //     height: height / 41,
              //   ),
              //   Row(
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(
              //             color: Colors.grey,
              //             borderRadius: BorderRadius.circular(22)),
              //         width: width / 2.3,
              //         height: height / 3.5,
              //         child: Column(children: <Widget>[
              //           Image.asset("assets/images/sheri-silver-2.png"),
              //           SizedBox(
              //             height: height / 93,
              //           ),
              //           Text(
              //             "Chocolate",
              //             style: TextStyle(
              //                 fontSize: text * 20, fontWeight: FontWeight.bold),
              //           ),
              //           SizedBox(
              //             height: height / 93,
              //           ),
              //           Text(
              //             "20.00SR",
              //             style: TextStyle(
              //                 fontSize: text * 17, fontWeight: FontWeight.bold),
              //           ),
              //         ]),
              //       ),
              //       SizedBox(
              //         width: width / 20,
              //       ),
              //       Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey,
              //               borderRadius: BorderRadius.circular(22)),
              //           width: width / 2.3,
              //           height: height / 3.5,
              //           child: Column(children: <Widget>[
              //             Image.asset("assets/images/sheri-silver-1.png"),
              //             SizedBox(
              //               height: height / 93,
              //             ),
              //             Text(
              //               "Strawberry",
              //               style: TextStyle(
              //                   fontSize: text * 20,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: height / 93,
              //             ),
              //             Text(
              //               "20.00SR",
              //               style: TextStyle(
              //                   fontSize: text * 17,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           ])),
              //     ],
              //   ),
              // ],
            ]),
          ))),
        ],
      ),
    );
  }
}
