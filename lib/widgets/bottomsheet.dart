// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/Cart.dart';
import '../screens/Home.dart';
import '../screens/Wishlist.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  int _currentIndex = 1;

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            // onTap: onTabTapped, // new
            // currentIndex: _currentIndex,
            backgroundColor: Color(0xffbaa378),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,

            selectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: text * 15),

            unselectedItemColor: Colors.black,
            iconSize: 25,

            //elevation: 5,
            items: [
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                    child: Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                    ),
                  ),
                  label: ('Cart'
                      // style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Icon(Icons.home)),
                label: ('Home'
                    // style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wishlist()),
                    );
                  },
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ),
                label: ('Favourite'
                    // style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                //backgroundColor: Colors.white,
              ),
              // BottomNavigationBarItem(
              //   icon: InkWell(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => Profile()),
              //       );
              //     },
              //     child: Icon(
              //       Icons.person,
              //       color: Colors.black,
              //     ),
              //   ),
              //   title: Text(
              //     'Profile',
              //   ),
              //   backgroundColor: Colors.white,
              // ),
            ],
            // type: BottomNavigationBarType.shifting,
            // currentIndex: _selectedIndex,
            // selectedItemColor: Colors.black,
            // iconSize: 40,
            // onTap: _onItemTapped,
            // elevation: 5
          ),
        ),
      ],
    );
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }
}
