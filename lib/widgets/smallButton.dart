// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Small extends StatefulWidget {
  const Small({Key? key}) : super(key: key);

  @override
  _SmallState createState() => _SmallState();
}

class _SmallState extends State<Small> {
  bool _type = false;

  bool _hasBeenPressed = false;
  bool _isBeenPressed = false;
  bool _wasBeenPressed = false;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Stack(
      children: [
        Container(
          width: width / 10,
          height: height / 24,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Text('S',
                style: TextStyle(
                    // fontSize: text * 10
                    )),
            textColor: Color(0xffbaa378),
            // 2
            color: _isBeenPressed ? Colors.black : Colors.white70,
            // 3
            onPressed: () => {
              setState(() {
                _isBeenPressed = !_isBeenPressed;
                _hasBeenPressed = false;
                _wasBeenPressed = false;
              })
            },
          ),
        ),
      ],
    );
  }
}
