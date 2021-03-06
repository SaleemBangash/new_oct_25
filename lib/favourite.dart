import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool _type = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              Icons.favorite,
              color: _type ? Colors.red : Colors.black,
            ),
            onPressed: () {
              setState(() {
                _type = !_type;
              });
            },
          ),
        )
      ],
    );
  }
}
