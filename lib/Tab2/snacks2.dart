import 'package:flutter/material.dart';
import 'package:new_oct_25/snacks/cheetos.dart';
import 'package:new_oct_25/snacks/doritos.dart';
import 'package:new_oct_25/snacks/kurkure.dart';
import 'package:new_oct_25/snacks/lays.dart';

import '../cartIcon.dart';
import '../favourite.dart';

class NewSnacks extends StatefulWidget {
  const NewSnacks({Key? key}) : super(key: key);

  @override
  _NewSnacksState createState() => _NewSnacksState();
}

class _NewSnacksState extends State<NewSnacks> {
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
                MaterialPageRoute(builder: (context) => Lays()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  //  borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(15.0),
                  //   bottomRight: Radius.circular(15.0),
                  // ),
                  // borderRadius: BorderRadius.circular(25.0),
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
                            "assets/images/lays.jpg",
                            height: 110,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                                backgroundColor: Color(0xffbaa378),
                                child: CartIcon()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70, left: 110),
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
                                "Lays",
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
                MaterialPageRoute(builder: (context) => Kurkure()),
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
                            "assets/images/kurkure.jpg",
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
                            padding: const EdgeInsets.only(top: 70, left: 110),
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
                                "KurKure",
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
                MaterialPageRoute(builder: (context) => Cheetos()),
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
                            "assets/images/cheetos.jpg",
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
                            padding: const EdgeInsets.only(top: 70, left: 110),
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
                                "Cheetos",
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
                MaterialPageRoute(builder: (context) => Doritos()),
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
                            "assets/images/doritos.jpg",
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
                            padding: const EdgeInsets.only(top: 70, left: 110),
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
                                "Doritos",
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
