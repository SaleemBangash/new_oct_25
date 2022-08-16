// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/Cart.dart';
import '../screens/Home.dart';
import '../screens/Wishlist.dart';

class BottomBar extends StatefulWidget {
  // final Widget body;
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [Cart(), Home(), Wishlist()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: widget.body,
      body: Center(
        child: screens[_selectedIndex], //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        // key: globalKey,
        type: BottomNavigationBarType.fixed,

        // currentIndex: _currentIndex,
        backgroundColor: Color(0xffbaa378),

        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),

        unselectedItemColor: Colors.black,
        iconSize: 25,
        // selectedLabelStyle: Colors.accents,
        // unselectedLabelStyle: textTheme.caption,
        // onTap: _onItemTapped,
        // currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cartShopping,
              size: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              size: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 25,
            ),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // selectedFontSize: 20,

        onTap: _onItemTapped,
      ),
    );
  }
}
