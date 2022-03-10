// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_oct_25/Drinks/cocacola.dart';
import 'package:new_oct_25/Drinks/dew.dart';
import 'package:new_oct_25/Drinks/redbull.dart';
import 'package:new_oct_25/Drinks/sprite.dart';

import '../cartIcon.dart';
import '../favourite.dart';

class NewDrinks extends StatefulWidget {
  const NewDrinks({Key? key}) : super(key: key);

  @override
  _NewDrinksState createState() => _NewDrinksState();
}

class _NewDrinksState extends State<NewDrinks> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dew()),
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
                            "assets/images/dew.jpg",
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
                            padding: const EdgeInsets.only(top: 80, left: 120),
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
                          left: 60,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Dew",
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
                MaterialPageRoute(builder: (context) => Sprite()),
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
                            "assets/images/sprite.jpg",
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
                            padding: const EdgeInsets.only(top: 80, left: 120),
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
                          left: 60,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Sprite",
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
                MaterialPageRoute(builder: (context) => CocaCola()),
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
                            "assets/images/cocaCola.jpg",
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
                            padding: const EdgeInsets.only(top: 80, left: 120),
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
                          left: 60,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                "CocaCola",
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
                MaterialPageRoute(builder: (context) => RedBull()),
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
                            "assets/images/red.jpg",
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
                            padding: const EdgeInsets.only(top: 80, left: 120),
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
                          left: 60,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                "Red Bull",
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
          ],
        ),
      ),
    );
  }
}
