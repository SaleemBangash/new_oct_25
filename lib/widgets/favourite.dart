// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool _type = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              setState(() {
                _type = !_type;
              });
            },
            child: _type
                ? Image.asset("assets/images/favorite.png")
                : Image.asset("assets/images/favoritee.png")));
  }
}
// IconButton(
//           icon: Icon(
//             Icons.favorite,
//             color: _type ? Colors.red : Colors.black,
//           ),
//           onPressed: () {
//             setState(() {
//               _type = !_type;
//             });
//           },
//         ),