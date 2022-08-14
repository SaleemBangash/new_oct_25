// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartIcon extends StatefulWidget {
  const CartIcon({Key? key}) : super(key: key);

  @override
  _CartIconState createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
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
                ? Icon(
                    Icons.favorite,
                    color: Colors.black,
                  )
                : Icon(
                    FontAwesomeIcons.heart,
                    color: Theme.of(context).primaryColor,
                  )));
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