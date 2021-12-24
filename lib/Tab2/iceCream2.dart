// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:new_oct_25/Cart.dart';
import 'package:new_oct_25/IceCream/chocolate.dart';
import 'package:new_oct_25/IceCream/strawberry.dart';
import 'package:new_oct_25/IceCream/vanila.dart';

import '../cartIcon.dart';
import '../favourite.dart';

class NewIcream extends StatefulWidget {
  const NewIcream({Key? key}) : super(key: key);

  @override
  _NewIcreamState createState() => _NewIcreamState();
}

class _NewIcreamState extends State<NewIcream> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vanilla()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                width: width / 2.7,
                height: height / 4.45,
                child: Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // elevation: 10.0,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/sheri-silver-1.png",
                            height: 110,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: CartIcon()),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 80,
                              left: 110,
                            ),
                            child: Favourite(),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 110,
                          left: 50,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Vanilla", textAlign: TextAlign.center,
                                // style: TextStyle(
                                //     fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   height: 50,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "20.00SR",
                                // style: TextStyle(
                                //     // fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chocolate()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                width: width / 2.7,
                height: height / 4.45,
                child: Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // elevation: 10.0,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/sheri-silver-2.png",
                            height: 110,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: CartIcon()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 110),
                            child: Favourite(),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 110,
                          left: 50,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Chocolate",
                                // style: TextStyle(
                                //     fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   height: 50,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                "20.00SR",
                                // style: TextStyle(
                                //     // fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chocolate()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                width: width / 2.7,
                height: height / 4.45,
                child: Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // elevation: 10.0,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/sheri-silver-2.png",
                            height: 110,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: CartIcon()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 110),
                            child: Favourite(),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 110,
                          left: 50,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                "Chocolate",
                                // style: TextStyle(
                                //     fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   height: 50,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                "20.00SR",
                                // style: TextStyle(
                                //     // fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Strawberry()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                width: width / 2.7,
                height: height / 4.45,
                child: Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // elevation: 10.0,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/sheri-silver-7.png",
                            height: 110,
                            width: 170,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: CartIcon()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 110),
                            child: Favourite(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 110,
                          left: 50,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                "StrawBerry",
                                // style: TextStyle(
                                //     fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   height: 50,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                "20.00SR",
                                // style: TextStyle(
                                //     // fontSize: text * 14,
                                //     fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
