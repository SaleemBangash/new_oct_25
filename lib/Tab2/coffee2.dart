import 'package:flutter/material.dart';
import 'package:new_oct_25/coffee/americano.dart';
import 'package:new_oct_25/coffee/dopio.dart';
import 'package:new_oct_25/coffee/flat.dart';
import 'package:new_oct_25/coffee/lungo.dart';

import '../cartIcon.dart';
import '../favourite.dart';

class NewCoffee extends StatefulWidget {
  const NewCoffee({Key? key}) : super(key: key);

  @override
  _NewCoffeeState createState() => _NewCoffeeState();
}

class _NewCoffeeState extends State<NewCoffee> {
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
                MaterialPageRoute(builder: (context) => Americano()),
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
                            "assets/images/americano.jpg",
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
                                "Americano",
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
                MaterialPageRoute(builder: (context) => Dopio()),
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
                            "assets/images/doppio.jpg",
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
                          left: 60,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Dopio",
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
                MaterialPageRoute(builder: (context) => Flat()),
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
                            "assets/images/flat.jpg",
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
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Flat",
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
                MaterialPageRoute(builder: (context) => Lungo()),
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
                            "assets/images/lungo.jpg",
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
                          left: 60,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Lungo",
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
