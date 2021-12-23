import 'package:flutter/material.dart';

class Large extends StatefulWidget {
  const Large({Key? key}) : super(key: key);

  @override
  _LargeState createState() => _LargeState();
}

class _LargeState extends State<Large> {
  bool _type = false;
  bool _hasBeenPressed = false;
  bool _isBeenPressed = true;
  bool _wasBeenPressed = true;
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
            child: Text('L',
                style: TextStyle(
                    // fontSize: text * 10
                    )),
            textColor: Color(0xffbaa378),
            // 2
            color: _hasBeenPressed ? Colors.black : Colors.white70,
            // 3
            onPressed: () => {
              setState(() {
                _hasBeenPressed = !_hasBeenPressed;
                _isBeenPressed = false;
                _wasBeenPressed = false;
              })
            },
          ),
        ),
      ],
    );
  }
}
