import 'package:flutter/material.dart';

class Minus extends StatefulWidget {
  const Minus({Key? key}) : super(key: key);

  @override
  _MinusState createState() => _MinusState();
}

class _MinusState extends State<Minus> {
  int _currentIndex = 0;
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _itemCount != -1
            ? new IconButton(
                icon: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: new Icon(
                      Icons.remove,
                      size: 15,
                    )),
                onPressed: () => setState(() => _itemCount--),
              )
            : new Container(),
        new Text(
          _itemCount.toString(),
          style: TextStyle(fontSize: 15),
        ),
        new IconButton(
            icon: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.black,
                child: new Icon(
                  Icons.add,
                  size: 15,
                )),
            onPressed: () => setState(() => _itemCount++))
      ],
    );
  }
}
