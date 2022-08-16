// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class Plus extends StatefulWidget {
  const Plus({Key? key}) : super(key: key);

  @override
  _PlusState createState() => _PlusState();
}

class _PlusState extends State<Plus> {
  int _currentIndex = 0;
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _itemCount != -1
            ? GestureDetector(
                onTap: () {
                  setState(() => _itemCount--);
                },
                child: new Image.asset("assets/images/sub_item.png"))
            : new Container(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Text(
            _itemCount.toString(),
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        new GestureDetector(
            onTap: () {
              setState(() => _itemCount++);
            },
            child: new Image.asset("assets/images/add_item.png"))
      ],
    );
  }
}
// Row(
//       children: <Widget>[
//         _itemCount != -1
//             ? new IconButton(
//                 icon: CircleAvatar(
//                     radius: 12,
//                     backgroundColor: Color(0xff84C5B1),
//                     child: new Icon(
//                       Icons.remove,
//                       size: 15,
//                       color: Colors.black,
//                     )),
//                 onPressed: () => setState(() => _itemCount--),
//               )
//             : new Container(),
//         new Text(
//           _itemCount.toString(),
//           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//         ),
//         new IconButton(
//             icon: CircleAvatar(
//                 radius: 12,
//                 backgroundColor: Color(0xff84C5B1),
//                 child: new Icon(
//                   Icons.add,
//                   size: 15,
//                   color: Colors.black,
//                 )),
//             onPressed: () => setState(() => _itemCount++))
//       ],
//     );
 